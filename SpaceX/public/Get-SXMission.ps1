function Get-SXMission {
    <#
    .SYNOPSIS
    Retrieve SpaceX mission data
    
    .DESCRIPTION
    Retrieve SpaceX mission data

    .PARAMETER Mission
    Specify the mission ID
    
    .EXAMPLE
    Get-SXMission

    .EXAMPLE
    Get-SXMission -MissionId F3364BF
    
    .NOTES
    https://github.com/lazywinadmin/spacex
    #>
    [CmdletBinding()]
    PARAM($Mission)
    try{
        if($Mission)
        {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v3/missions/$Mission"
            }
        }
        else{
            $Splat = @{
                Uri = "https://api.spacexdata.com/v3/missions"
            }
        }

        (Invoke-RestMethod @Splat)
    }
    catch{
        $PSCmdlet.ThrowTerminatingError($_)
    }
}