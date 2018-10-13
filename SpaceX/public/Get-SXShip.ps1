function Get-SXShip {
  <#
  .SYNOPSIS
  Retrieve SpaceX ship data
  
  .DESCRIPTION
  Retrieve SpaceX ship data (ASDS drone ships, tugs, fairing recovery ships, and various support ships)

  .PARAMETER ShipID
  Specify the ship ID
  
  .EXAMPLE
  Get-SXShip

  .EXAMPLE
  Get-SXShip -ShipID RACHEL
  
  .NOTES
  https://github.com/lazywinadmin/spacex
  #>
  [CmdletBinding()]
  PARAM($ShipID)
  try{
      if($ShipID)
      {
          $Splat = @{
              Uri = "https://api.spacexdata.com/v3/ships/$ShipID"
          }
      }
      else{
          $Splat = @{
              Uri = "https://api.spacexdata.com/v3/ships"
          }
      }

      (Invoke-RestMethod @Splat)
  }
  catch{
      $PSCmdlet.ThrowTerminatingError($_)
  }
}