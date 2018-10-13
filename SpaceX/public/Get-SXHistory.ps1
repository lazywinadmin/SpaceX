function Get-SXHistory {
  <#
  .SYNOPSIS
  Retrieve SpaceX historical events
  
  .DESCRIPTION
  Retrieve SpaceX historical events

  .PARAMETER ID
  Specify the historical event ID
  
  .EXAMPLE
  Get-SXHistory

  .EXAMPLE
  Get-SXHistory -ID 1
  
  .NOTES
  https://github.com/lazywinadmin/spacex
  #>
  [CmdletBinding()]
  PARAM($ID)
  try{
      if($ID)
      {
          $Splat = @{
              Uri = "https://api.spacexdata.com/v3/history/$ID"
          }
      }
      else{
          $Splat = @{
              Uri = "https://api.spacexdata.com/v3/history"
          }
      }

      (Invoke-RestMethod @Splat)
  }
  catch{
      $PSCmdlet.ThrowTerminatingError($_)
  }
}