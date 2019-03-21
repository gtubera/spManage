#This code will establish a connection to the Sharepoint endpoint of my site

Add-Type -Path "C:\Program Files\Common Files\microsoft shared\Web Server Extensions\16\ISAPI\Microsoft.SharePoint.Client.dll"
Add-Type -Path "C:\Program Files\Common Files\microsoft shared\Web Server Extensions\16\ISAPI\Microsoft.SharePoint.Client.Runtime.dll"
    


function Get-SchoolContext($connection) {

    $loginname = $connection.usr
    $pwd = $connection.pwd
    $siteUrl = $connection.url

    $ctx = New-Object Microsoft.SharePoint.Client.ClientContext($siteUrl)
    $ctx.Credentials = New-Object Microsoft.SharePoint.Client.SharePointOnlineCredentials($loginname, $pwd)

    return $ctx

    }




#$ctx.Dispose()