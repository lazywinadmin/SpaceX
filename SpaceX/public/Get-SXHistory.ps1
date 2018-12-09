function Get-SXHistory {
  <#
  .SYNOPSIS
  Retrieve SpaceX historical events
  
  .DESCRIPTION
  Retrieve SpaceX historical events

  .PARAMETER ID
  Specify the historical event ID
  
  .EXAMPLE
  C:\PS> Get-SXHistory
  Gets all the history data

  .EXAMPLE
  C:\PS> Get-SXHistory -ID 1
  Gets data for the history event with the specified ID
  
  .NOTES
  https://github.com/lazywinadmin/SpaceX
  #>
  [CmdletBinding()]
  PARAM($ID)
  try{
      if($ID)
      {
          $Splat = @{
              Path = "history/$ID"
          }
      }
      else{
          $Splat = @{
              Path = "history"
          }
      }

      (Get-SXData @Splat)
  }
  catch{
      $PSCmdlet.ThrowTerminatingError($_)
  }
}