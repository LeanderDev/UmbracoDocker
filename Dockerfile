FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019
#RUN powershell -NoProfile -Command Remove-Item -Recurse C:\inetpub\wwwroot\*
WORKDIR /inetpub/wwwroot/Umbraco

COPY UmbracoCms.8.5.2 /inetpub/wwwroot/Umbraco
#RUN powershell -NoProfile -Command \
#    Import-Module IISAdministration; \
#    New-IISSite -Name "Site" -PhysicalPath C:\inetpub\wwwroot -BindingInformation "*:8080:"
#RUN powershell New-WebVirtualDirectory -Site 'Site' -Name Umbraco -physicalPath C:\inetpub\wwwroot\Umbraco
#RUN powershell ConvertTo-WebApplication 'IIS:\Sites\Site\Umbraco'
#EXPOSE 80
#EXPOSE 8080
#EXPOSE 8172
#EXPOSE 443