function Get-SXRocket {
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

        Invoke-RestMethod @Splat
    }
    catch{
        $PSCmdlet.ThrowTerminatingError($_)
    }
}