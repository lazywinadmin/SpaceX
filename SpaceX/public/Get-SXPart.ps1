function Get-SXPart {
    [CmdletBinding()]
    PARAM(
        [Parameter(Mandatory=$true)]
        [ValidateSet("Capsule","Core")]
        $Type,

        [Parameter(ParameterSetName='Caps')]
        $CapsuleSerial,

        [Parameter(ParameterSetName = 'Core')]
        $CoreSerial)
    try {
        if ($Type -eq 'Capsule') {
            IF($CapsuleSerial){
                $Splat = @{
                    Uri = "https://api.spacexdata.com/v2/parts/caps?capsule_serial=$capsuleserial"
                }
            }else{
                $Splat = @{
                    Uri = "https://api.spacexdata.com/v2/parts/caps"
                }
            }
        }
        elseif ($Type -eq 'Core') {
            IF ($CoreSerial) {
                $Splat = @{
                    Uri = "https://api.spacexdata.com/v2/parts/cores?core_serial=$CoreSerial"
                }
            }
            else {
                $Splat = @{
                    Uri = "https://api.spacexdata.com/v2/parts/cores"
                }
            }
        }

        Invoke-RestMethod @Splat
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($_)
    }
}