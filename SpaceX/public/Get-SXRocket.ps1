function Get-SXRocket {
    <#
    .SYNOPSIS
    Retrieve SpaceX rocket data
    
    .DESCRIPTION
    Retrieve SpaceX rocket data

    .PARAMETER Rocket
    Specify the rocket name
    
    .EXAMPLE
    Get-SXRocket

    .EXAMPLE
    Get-SXRocket -Rocket Falconheavy
    
    .NOTES
    https://github.com/lazywinadmin/spacex
    #>
    [CmdletBinding()]
    PARAM($Rocket)
    try{
        if($Rocket)
        {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v2/rockets/$Rocket"
            }
        }
        else{
            $Splat = @{
                Uri = "https://api.spacexdata.com/v2/rockets"
            }
        }

        (Invoke-RestMethod @Splat)
    }
    catch{
        $PSCmdlet.ThrowTerminatingError($_)
    }
}