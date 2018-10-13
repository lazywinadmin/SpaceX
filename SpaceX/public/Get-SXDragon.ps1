function Get-SXDragon {
  <#
  .SYNOPSIS
  Retrieve SpaceX Dragon Capsule data
  
  .DESCRIPTION
  Retrieve SpaceX Dragon Capsule data

  .PARAMETER ID
  Specify the Dragon Capsule ID
  
  .EXAMPLE
  Get-SXDragon

  .EXAMPLE
  Get-SXDragon -ID dragon1
  
  .NOTES
  https://github.com/lazywinadmin/spacex
  #>
  [CmdletBinding()]
  PARAM($ID)
  try{
      if($ID)
      {
          $Splat = @{
              Uri = "https://api.spacexdata.com/v3/dragons/$ID"
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