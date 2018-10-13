function Get-SXPayload {
  <#
  .SYNOPSIS
  Retrieve all past and upcoming SpaceX payload launches
  
  .DESCRIPTION
  Retrieve all past and upcoming SpaceX payload launches

  .PARAMETER PayloadID
  Specify the Payload ID
  
  .EXAMPLE
  Get-SXPayload

  .EXAMPLE
  Get-SXPaylod -PayloadID "CRS-19"
  
  .NOTES
  https://github.com/lazywinadmin/spacex
  #>
  [CmdletBinding()]
  PARAM($PayloadID)
  try{
      if($PayloadID)
      {
          $Splat = @{
              Uri = "https://api.spacexdata.com/v3/payloads/$PayloadID"
          }
      }
      else{
          $Splat = @{
              Uri = "https://api.spacexdata.com/v3/payloads"
          }
      }

      (Invoke-RestMethod @Splat)
  }
  catch{
      $PSCmdlet.ThrowTerminatingError($_)
  }
}