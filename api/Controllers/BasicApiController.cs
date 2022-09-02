using Microsoft.AspNetCore.Mvc;
using System.Management.Automation;
using System.Security;
using Microsoft.WindowsAzure.Storage.Auth;
using Microsoft.WindowsAzure.Storage.Blob;
using System.Text;
using Microsoft.SharePoint.Client;
using Cloud.Governance.Client.Api;
using Cloud.Governance.Client.Client;
using Cloud.Governance.Client.Model;

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

                RunPnpPowershell(username, password, message, false, null).GetAwaiter().GetResult();
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

                var context = new ClientContext("https://m365x14268897.sharepoint.com/sites/scBasic01");
                context.Credentials = new SharePointOnlineCredentials("admin's@M365x14268897.onmicrosoft.com", "GaBigQa!@");
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

        [HttpPost("librarytemplate", Name = "esdcdemo librarytemplate")]
        public String ESDCDemo(AzureFunctionJobMessage message)
        {
            var username = this.HttpContext.Request.Headers["username"];
            var password = this.HttpContext.Request.Headers["password"];

            var requestMetadata = GetMetadata(message.RequestId);
            RunPnpPowershell(username, password, message, true, requestMetadata).GetAwaiter().GetResult();
            return "successful";
        }

        async static Task RunPnpPowershell(String userName, String password, AzureFunctionJobMessage message, Boolean invokeWithParameter, Dictionary<String, String> metadata)
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

                InitPowerShellSciprt(powerShell, message, invokeWithParameter, metadata);
                var psResult4 = await powerShell.InvokeAsync();
            }
            //}
        }

        private static void InitPowerShellSciprt(PowerShell powerShell, AzureFunctionJobMessage message, Boolean byParameter, Dictionary<String, String> metadata)
        {
            var client = new HttpClient();
            var scriptFile = client.GetStringAsync(message.ScriptLocation).GetAwaiter().GetResult();
            if (byParameter)
            {
                powerShell.AddScript(scriptFile);
                powerShell.AddParameter("libraryName", message.ListTitle);
                if (metadata != null)
                {
                    powerShell.AddParameter("metadata", metadata);
                }
            }
            else
            {
                var script = @$"
                    $listTitle = '{message.ListTitle}'
                    $requestId = '{message.RequestId}'
                    $parentWeb = '{message.ParentWebUrl}'
                    " + scriptFile;
                powerShell.AddScript(script);
            }
        }
        private Dictionary<String, String> GetMetadata(String requestId)
        {
            var metadata = new Dictionary<String, String>();
            //You can find the Modern API Endpoint in Cloud Governance admin user guide for your environment.
            Configuration.Default.BasePath = "https://graph.sharepointguild.com/governance";
            // Configure API key authorization: ClientSecret
            Configuration.Default.AddApiKey("clientSecret", "oQOkPR5VdlS3Vv2c6UynWkMOajcJmlbi6aS9Q4jOgNptzLdCeVsXd2BgNuajCSc/yPkmNYfgUHf9XMm4+aT9CuPzwfU36TnogphknFenNLc9KAwqn5qnfFQ84gEXVdf86iRasnUV150zimwt5idYqIqjHmoucooSGoaSQz6M9/KG+b35naK1S2eeI/BN9yGectCPitVO+DwcCfEsJ4tINheG7U6oXeiq1t1M5WAAypYqqKSvDz+f+gPtQ+mUPo3DpjaUcTVnNdbAKoUxJgzUXZ1PlpgB71vY++hah+frDcbI+ZWufcRzMnrKtbtTLjZvIHI5YVKrRcFO21hws/A/rA==");

            // Configure API key authorization: UserPrincipalName
            Configuration.Default.AddApiKey("userPrincipalName", "simmon@baron.space");

            //default is 
            var requestsApi = new RequestsApi(Configuration.Default);
            var request = requestsApi.GetDynamicRequest(new Guid(requestId));

            if (request.Metadatas != null)
            {
                request.Metadatas.ForEach(m =>
                {
                    metadata[m.Name] = m.ValueString;
                });
            }
            request.ActivityGalleries.ForEach(x =>
            {
                if (x.GalleryMetadata != null)
                {
                    x.GalleryMetadata.ForEach(m => metadata[m.Name] = m.ValueString);
                }
            });
            return metadata;
        }
    }

    public class AzureFunctionJobMessage
    {
        /// <summary>
        /// Current dynamic request id
        /// </summary>
        public String RequestId { get; set; }

        /// <summary>
        /// the library template script location on storage
        /// </summary>
        public String ScriptLocation { get; set; }

        /// <summary>
        /// the library template script name
        /// </summary>
        public String ScriptFileName { get; set; }

        /// <summary>
        /// trace id of the activity
        /// </summary>
        public String TraceId { set; get; }

        public String ListTitle { set; get; }

        public String ParentWebUrl { set; get; }
    }


}
