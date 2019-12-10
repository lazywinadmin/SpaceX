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
                Path = "missions/$Mission"
            }
        }
        else{
            $Splat = @{
                Path = "missions"
            }
        }

        (Get-SXData @Splat)
    }
    catch{
        $PSCmdlet.ThrowTerminatingError($_)
    }
}