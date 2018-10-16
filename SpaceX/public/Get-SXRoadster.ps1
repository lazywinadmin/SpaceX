function Get-SXRoadster {
  <#
  .SYNOPSIS
  Retrieve current SpaceX Roadster orbit data
  
  .DESCRIPTION
  Retrieve current SpaceX Roadster orbit data

  .EXAMPLE
  Get-SXRoadster
  Gets data about the roadster
  
  .NOTES
  https://github.com/lazywinadmin/SpaceX
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