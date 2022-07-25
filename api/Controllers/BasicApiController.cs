using Microsoft.AspNetCore.Mvc;
using System.Management.Automation;
using System.Security;
using Microsoft.WindowsAzure.Storage.Auth;
using Microsoft.WindowsAzure.Storage.Blob;

namespace api.Controllers
{
    [ApiController]
    [Route("runps")]
    public class RunPsController : ControllerBase
    {
        [HttpPost("execut", Name = "TrueString")]
        public ActionResult Execute(AzureFunctionJobMessage message)
        {
            try
            {
                System.Diagnostics.Trace.TraceInformation($"RequestId:{message.RequestId}");
                System.Diagnostics.Trace.TraceInformation($"ScriptFileName:{message.ScriptFileName}");
                System.Diagnostics.Trace.TraceInformation($"ScriptLocation:{message.ScriptLocation}");
                System.Diagnostics.Trace.TraceInformation($"ListTitle:{message.ListTitle}");
                System.Diagnostics.Trace.TraceInformation($"ParentWebUrl:{message.ParentWebUrl}");
                System.Diagnostics.Trace.TraceInformation($"TraceId:{message.TraceId}");

                var username = this.HttpContext.Request.Headers["username"];
                var password = this.HttpContext.Request.Headers["password"];

                System.Diagnostics.Trace.TraceInformation($"username:{username}");
                System.Diagnostics.Trace.TraceInformation($"password:{password}");

                RunPnpPowershell(username, password, message).GetAwaiter().GetResult();
                System.Diagnostics.Trace.TraceInformation($"Finish");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Trace.TraceInformation($"Exception {ex.ToString()}");
            }
            return this.Ok();
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
