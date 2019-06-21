function Get-SXPayload {
  <#
  .SYNOPSIS
  Retrieve all past and upcoming SpaceX payload launches
  
  .DESCRIPTION
  Retrieve all past and upcoming SpaceX payload launches

  .PARAMETER PayloadID
  Specify the Payload ID
  
  .EXAMPLE
  C:\PS> Get-SXPayload
  Gets data about all the payloads

  .EXAMPLE
  C:\PS> Get-SXPayload -PayloadID "CRS-19"
  Gets data for the payload with the specified ID
  
  .NOTES
  https://github.com/lazywinadmin/SpaceX
  #>
  [CmdletBinding()]
  PARAM($PayloadID)
  try{
      if($PayloadID)
      {
          $Splat = @{
              Path = "payloads/$PayloadID"
          }
      }
      else{
          $Splat = @{
              Path = "payloads"
          }
      }

      (Get-SXData @Splat)
  }
  catch{
      $PSCmdlet.ThrowTerminatingError($_)
  }
}