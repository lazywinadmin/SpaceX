function Get-SXCore {
  <#
  .SYNOPSIS
  Retrieve SpaceX Core data
  
  .DESCRIPTION
  Retrieve SpaceX Core data

  .PARAMETER Serial
  Specify the Core Serial
  
  .EXAMPLE
  C:\PS> Get-SXCore
  Gets data about all the cores

  .EXAMPLE
  C:\PS> Get-SXCore -Serial B1032
  Gets data about the core with the specified serial
  
  .NOTES
  https://github.com/lazywinadmin/SpaceX
  #>
  [CmdletBinding()]
  PARAM($Serial)
  try{
      if($Serial)
      {
          $Splat = @{
              Path = "cores/$Serial"
          }
      }
      else{
          $Splat = @{
              Path = "cores"
          }
      }

      (Get-SXData @Splat)
  }
  catch{
      $PSCmdlet.ThrowTerminatingError($_)
  }
}