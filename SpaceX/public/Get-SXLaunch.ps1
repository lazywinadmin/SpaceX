function Get-SXLaunch {
    <#
    .SYNOPSIS
    Retrieve SpaceX launch data
    
    .DESCRIPTION
    Retrieve SpaceX launch data
    
    .PARAMETER Latest
    Just get data for the latest launch
    
    .PARAMETER Upcoming
    Just get data for upcoming launches
    
    .EXAMPLE
    Get-SXLaunch
    Gets data for all the launches

    .EXAMPLE
    Get-SXLaunch -Latest
    Gets data for the latest launch

    .EXAMPLE
    Get-SXLaunch -Upcoming
    Gets data for upcoming launches
    
    .NOTES
    https://github.com/lazywinadmin/SpaceX
    #>
    [CmdletBinding(DefaultParameterSetName='Default')]
    PARAM(
        [Parameter(ParameterSetName='Latest')][switch]$Latest,
        [Parameter(ParameterSetName='Upcoming')][switch]$Upcoming)
    try {
        if ($Latest) {
            $Splat = @{
                Path = "launches/latest"
            }
        }
        elseif ($Upcoming) {
            $Splat = @{
                Path = "launches/upcoming"
            }
        }

        else {
            $Splat = @{
                Path = "launches"
            }
        }

        (Get-SXData @Splat)
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($_)
    }
}