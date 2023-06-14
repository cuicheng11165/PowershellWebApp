using Microsoft.AspNetCore.Mvc;
using System.Management.Automation;
using System.Security;
using Microsoft.WindowsAzure.Storage.Auth;
using Microsoft.WindowsAzure.Storage.Blob;
using System.Text;
using Microsoft.SharePoint.Client;


namespace api.Controllers
{


    [ApiController]
    [Route("runps")]
    public class RunPsController : ControllerBase
    {
        [HttpPost("execut", Name = "execut")]
        public String Execute(AzureFunctionJobMessage message)
        {
            var sb = new StringBuilder();
            try
            {
                sb.AppendLine($"RequestId:{message.RequestId}");
                sb.AppendLine($"ScriptFileName:{message.ScriptFileName}");
                sb.AppendLine($"ScriptLocation:{message.ScriptLocation}");
                sb.AppendLine($"ListTitle:{message.ListTitle}");
                sb.AppendLine($"ParentWebUrl:{message.ParentWebUrl}");
                sb.AppendLine($"TraceId:{message.TraceId}");

                var username = this.HttpContext.Request.Headers["username"];
                var password = this.HttpContext.Request.Headers["password"];

                sb.AppendLine($"username:{username}");
                sb.AppendLine($"password:{password}");

                RunPnpPowershell(username, password, message).GetAwaiter().GetResult();
                sb.AppendLine($"Finish");
            }
            catch (Exception ex)
            {
                sb.AppendLine($"Exception {ex.ToString()}");
                return sb.ToString();
            }
            return "sucessful";

        }

        [HttpPost("gcchexecute", Name = "gcchexecute")]
        public String GccHighExecute(AzureFunctionJobMessage message)
        {
            var sb = new StringBuilder();
            try
            {
                sb.AppendLine($"RequestId:{message.RequestId}");
                sb.AppendLine($"ScriptFileName:{message.ScriptFileName}");
                sb.AppendLine($"ScriptLocation:{message.ScriptLocation}");
                sb.AppendLine($"ListTitle:{message.ListTitle}");
                sb.AppendLine($"ParentWebUrl:{message.ParentWebUrl}");
                sb.AppendLine($"TraceId:{message.TraceId}");

                var username = this.HttpContext.Request.Headers["username"];
                var password = this.HttpContext.Request.Headers["password"];

                sb.AppendLine($"username:{username}");
                sb.AppendLine($"password:{password}");

                var context = new ClientContext("https://m365x92321900.sharepoint.com/sites/miaSite");
                context.Credentials = new SharePointOnlineCredentials("admin's@M365x92321900.onmicrosoft.com", "GaBigQa!@");
                var list = context.Web.Lists.GetByTitle("Library01");

                list.RootFolder.Files.Add(new FileCreationInformation
                {
                    Content = Encoding.UTF8.GetBytes(sb.ToString()),
                    Overwrite = true,
                    Url = $"{message.RequestId}.txt"
                });
                context.ExecuteQueryAsync().Wait();
                
                sb.AppendLine($"Finish");
            }
            catch (Exception ex)
            {
                sb.AppendLine($"Exception {ex.ToString()}");
                return sb.ToString();
            }
            return "sucessful";

        }


        async static Task RunPnpPowershell(String userName, String password, AzureFunctionJobMessage message)
        {
            var secureString = new SecureString();
            Array.ForEach(password.ToCharArray(), item => secureString.AppendChar(item));
            var credential = new PSCredential(userName, secureString);

            using (PowerShell powerShell = PowerShell.Create())
            {
                if (Environment.OSVersion.ToString().Contains("Windows"))
                {
                    var psCommand = powerShell.AddCommand("Set-ExecutionPolicy");
                    psCommand.AddParameter("ExecutionPolicy", "Unrestricted");
                    psCommand.AddParameter("Scope", "Process");
                    psCommand.AddParameter("Confirm", false);
                    psCommand.AddParameter("Force");
                    var psResult = await powerShell.InvokeAsync();

                }

                var path = Path.Combine(System.AppDomain.CurrentDomain.BaseDirectory, @"PnP.PowerShell\1.10.0\PnP.PowerShell.psd1");
                powerShell.Commands.Clear();
                var psCommand1 = powerShell.AddCommand("Import-Module");
                psCommand1.AddParameter("Name", path);
                psCommand1.AddParameter("Force");
                var psResult1 = await powerShell.InvokeAsync();


                powerShell.Commands.Clear();
                var psCommand2 = powerShell.AddCommand("Connect-PnPOnline");


                psCommand2.AddParameter("Url", message.ParentWebUrl);
                psCommand2.AddParameter("Credential", credential);
                var psResult2 = await powerShell.InvokeAsync();
                psCommand2.Commands.Clear();

                var client = new HttpClient();
                var scriptFile = client.GetStringAsync(message.ScriptLocation).GetAwaiter().GetResult();


                var script = @$"
$listTitle = '{message.ListTitle}'
$requestId = '{message.RequestId}'
$parentWeb = '{message.ParentWebUrl}'
" + scriptFile;
                powerShell.AddScript(script);
                var psResult4 = await powerShell.InvokeAsync();
            }
            //}
        }



    }

    public class AzureFunctionJobMessage
    {
        /// <summary>
        /// Current dynamic request id
        /// </summary>
        public String RequestId { get; set; }

        /// <summary>
        /// the script location on storage
        /// </summary>
        public String ScriptLocation { get; set; }
        public String ScriptFileName { get; set; }

        /// <summary>
        /// trace id of the activity
        /// </summary>
        public String TraceId { set; get; }

        public String ListTitle { set; get; }

        public String ParentWebUrl { set; get; }
    }


}
