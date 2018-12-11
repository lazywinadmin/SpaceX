function Get-SXData
{
    <#
    .SYNOPSIS
    Retrieve data from the SpaceX API
    
    .DESCRIPTION
    Retrieve data from the SpaceX API. When the module was initialised,
    tests were performed to see whether TLS v1.2 needs to be manually
    enabled. If so, then it is enabled before making the call and reset
    again afterwards.
    
    .PARAMETER Path
    The path to the specific API being queried
    
    .EXAMPLE
    Get-SXData -Path missions
    Invokes the URL https://api.spacexdata.com/v3/missions
    
    .NOTES
    https://github.com/lazywinadmin/SpaceX
    #>
[CmdletBinding()]
PARAM($Path)
    If ($script:SecurityProtocolTweakRequired) {
        $originalSecurityProtocol = [Net.ServicePointManager]::SecurityProtocol
        
        [Net.ServicePointManager]::SecurityProtocol = ([Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12)
        Write-Verbose "Temporarily changing SecurityProtocol from [$originalSecurityProtocol] to [$([Net.ServicePointManager]::SecurityProtocol)]"
    }
    
    Try {
        Invoke-RestMethod -Uri https://api.spacexdata.com/v3/$Path
    }
    
    Finally {
        If ($script:SecurityProtocolTweakRequired) {
            [Net.ServicePointManager]::SecurityProtocol = $originalSecurityProtocol
            Write-Verbose "Resetting SecurityProtocol back to [$([Net.ServicePointManager]::SecurityProtocol)]"
        }
    }
} 