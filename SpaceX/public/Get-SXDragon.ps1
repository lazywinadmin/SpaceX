function Get-SXDragon {
  <#
  .SYNOPSIS
  Retrieve SpaceX Dragon Capsule data
  
  .DESCRIPTION
  Retrieve SpaceX Dragon Capsule data

  .PARAMETER DragonID
  Specify the Dragon Capsule ID
  
  .EXAMPLE
  Get-SXDragon

  .EXAMPLE
  Get-SXPaylod -DragonID "dragon1"
  
  .NOTES
  https://github.com/lazywinadmin/spacex
  #>
  [CmdletBinding()]
  PARAM($DragonID)
  try{
      if($DragonID)
      {
          $Splat = @{
              Uri = "https://api.spacexdata.com/v3/dragons/$DragonID"
          }
      }
      else{
          $Splat = @{
              Uri = "https://api.spacexdata.com/v3/dragons"
          }
      }

      (Invoke-RestMethod @Splat)
  }
  catch{
      $PSCmdlet.ThrowTerminatingError($_)
  }
}