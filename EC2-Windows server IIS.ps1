<powershell>
#install IIS
Import-Module ServerManager;
Install-WindowsFeature web-server, web-server -IncludeAllSubFeature;
Install-WindowsFeature web-mgmt-tools;

#install example (static website)
Start-sleep -Seconds 120;
Remove-item -recurse c:\inetpub\wwwroot\*;
(New-Object System.Net.WebClient).DownloadFile("https://github.com/cuatrovientos-ci/AWS-Testing/index.html", "c:\inetpub\wwwroot\index.html");
Start-sleep -Seconds 120;
</powershell>
