function Get-SXShip {
  <#
  .SYNOPSIS
  Retrieve SpaceX ship data

  .DESCRIPTION
  Retrieve SpaceX ship data (ASDS drone ships, tugs, fairing recovery ships, and various support ships)

  .PARAMETER ShipID
  Specify the ship ID

  .EXAMPLE
  C:\PS> Get-SXShip
  Gets data about all ships

  .EXAMPLE
  C:\PS> Get-SXShip -ShipID RACHEL
  Gets data aobut the ship with the specified Ship ID

  .NOTES
  https://github.com/lazywinadmin/SpaceX
  #>
  [CmdletBinding()]
  PARAM($ShipID)
  try{
      if($ShipID)
      {
          $Splat = @{
              Path = "ships/$ShipID"
          }
      }
      else{
          $Splat = @{
              Path = "ships"
          }
      }

      (Get-SXData @Splat)
  }
  catch{
      $PSCmdlet.ThrowTerminatingError($_)
  }
}