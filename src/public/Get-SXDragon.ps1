function Get-SXDragon {
  <#
  .SYNOPSIS
  Retrieve SpaceX Dragon Capsule data

  .DESCRIPTION
  Retrieve SpaceX Dragon Capsule data

  .PARAMETER ID
  Specify the Dragon Capsule ID

  .EXAMPLE
  C:\PS> Get-SXDragon
  Gets data about all the dragons

  .EXAMPLE
  Get-SXDragon -ID dragon1
  Gets data about the dragon with the specified ID

  .NOTES
  https://github.com/lazywinadmin/SpaceX
  #>
  [CmdletBinding()]
  PARAM($ID)
  try{
      if($ID)
      {
          $Splat = @{
              Path = "dragons/$ID"
          }
      }
      else{
          $Splat = @{
              Path = "dragons"
          }
      }

      (Get-SXData @Splat)
  }
  catch{
      $PSCmdlet.ThrowTerminatingError($_)
  }
}