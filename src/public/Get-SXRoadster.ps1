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
          Path = "roadster"
      }
      (Get-SXData @Splat)
  }
  catch{
      $PSCmdlet.ThrowTerminatingError($_)
  }
}