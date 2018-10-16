function Get-SXMission {
    <#
    .SYNOPSIS
    Retrieve SpaceX mission data
    
    .DESCRIPTION
    Retrieve SpaceX mission data

    .PARAMETER Mission
    Specify the mission ID
    
    .EXAMPLE
    C:\PS> Get-SXMission
    Gets data for all the missions

    .EXAMPLE
    C:\PS> Get-SXMission -Mission F3364BF
    Gets data for the mission with the specified Mission ID
    
    .NOTES
    https://github.com/lazywinadmin/SpaceX
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