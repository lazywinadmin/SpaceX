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
    Gets data about all the rockets

    .EXAMPLE
    Get-SXRocket -Rocket falconheavy
    Gets data about the rocket with the specified Rocket ID
    
    .NOTES
    https://github.com/lazywinadmin/SpaceX
    #>
    [CmdletBinding()]
    PARAM($Rocket)
    try{
        if($Rocket)
        {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v3/rockets/$Rocket"
            }
        }
        else{
            $Splat = @{
                Uri = "https://api.spacexdata.com/v3/rockets"
            }
        }

        (Invoke-RestMethod @Splat)
    }
    catch{
        $PSCmdlet.ThrowTerminatingError($_)
    }
}