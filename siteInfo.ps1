
. .\connection.ps1


function Get-SiteTitleURL($cmd,$context) {
    #Function to display the overall Web 
    #Also being used to test if website returns object
        $context.Load($cmd) 
        $context.ExecuteQuery() 
        Write-Host "RESULTS: Get-SiteTitleURL"
        Write-Host " Current web title is '$($cmd.Title)', $($cmd.Url)"
        Write-Host "____________________________"
    
    }


. .\cred.ps1

$context = Get-SchoolContext $connectionDict
$web = $context.Web
Get-SiteTitleURL $web $context