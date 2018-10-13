function Get-SXCore {
  <#
  .SYNOPSIS
  Retrieve SpaceX Core data
  
  .DESCRIPTION
  Retrieve SpaceX Core data

  .PARAMETER Serial
  Specify the Core Serial
  
  .EXAMPLE
  Get-SXCore

  .EXAMPLE
  Get-SXCore -Serial B1032
  
  .NOTES
  https://github.com/lazywinadmin/spacex
  #>
  [CmdletBinding()]
  PARAM($Serial)
  try{
      if($Serial)
      {
          $Splat = @{
              Uri = "https://api.spacexdata.com/v3/cores/$Serial"
          }
      }
      else{
          $Splat = @{
              Uri = "https://api.spacexdata.com/v3/cores"
          }
      }

      (Invoke-RestMethod @Splat)
  }
  catch{
      $PSCmdlet.ThrowTerminatingError($_)
  }
}