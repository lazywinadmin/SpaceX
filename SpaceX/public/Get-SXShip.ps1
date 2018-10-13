function Get-SXShip {
  <#
  .SYNOPSIS
  Retrieve SpaceX ship data
  
  .DESCRIPTION
  Retrieve SpaceX ship data (ASDS drone ships, tugs, fairing recovery ships, and various support ships)

  .PARAMETER Ship
  Specify the ship name
  
  .EXAMPLE
  Get-SXShip

  .EXAMPLE
  Get-SXShip -Ship "RACHEL"
  
  .NOTES
  https://github.com/lazywinadmin/spacex
  #>
  [CmdletBinding()]
  PARAM($Ship)
  try{
      if($Ship)
      {
          $Splat = @{
              Uri = "https://api.spacexdata.com/v3/ships/$Ship"
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