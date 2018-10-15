function Get-SXCapsule {
    <#
    .SYNOPSIS
    Retrieve SpaceX capsule data
    
    .DESCRIPTION
    Retrieve SpaceX capsule data
    
    .PARAMETER Capsule
    The serial number of a specific capsule
    
    .EXAMPLE
    C:\PS> Get-SXCapsule
    Gets data about all the capsules

    .EXAMPLE
    C:\PS> Get-SXCapsule -Capsule C109
    Gets data about the capsule with the specified serial
    
    .NOTES
    https://github.com/lazywinadmin/SpaceX
    #>
    [CmdletBinding()]
    PARAM($Capsule)
    try {
        if ($Capsule) {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v3/capsules/$Capsule"
            }
        }
        else {
            $Splat = @{
                Uri = "https://api.spacexdata.com/v3/capsules"
            }
        }

        (Invoke-RestMethod @Splat)
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($_)
    }
}