function Get-SXRoadster {
  <#
  .SYNOPSIS
  Retrieve current SpaceX Roadster orbit data
  
  .DESCRIPTION
  Retrieve current SpaceX Roadster orbit data

  .EXAMPLE
  Get-SXRoadster
  
  .NOTES
  https://github.com/lazywinadmin/spacex
  #>
  [CmdletBinding()]
  PARAM()
  try{
      $Splat = @{
          Uri = "https://api.spacexdata.com/v3/roadster"
      }
      (Invoke-RestMethod @Splat)
  }
  catch{
      $PSCmdlet.ThrowTerminatingError($_)
  }
}