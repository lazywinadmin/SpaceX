#Get public and private function definition files.
$Public = @(Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue)
$Private = @(Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue)

#Dot source the files
Foreach ($import in @($Public + $Private))
{
	TRY
	{
		. $import.fullname
	}
	CATCH
	{
		Write-Error -Message "Failed to import function $($import.fullname): $_"
	}
}

# Export all the functions
Export-ModuleMember -Function $Public.Basename -Alias *

# Test to see if we can query the API now, or if we need to specifically
# tell PowerShell to allow TLS v1.2 (minimum supported by SpaceX API)
$SecurityProtocolTweakRequired = $False
TRY
{
	Get-SXApi|Out-Null
	# If no exception, then it must have worked - carry on"
}
CATCH [System.Net.WebException]
{
	# First attempt failed - enable TLS v1.2 and try again"
	$script:SecurityProtocolTweakRequired = $true

	TRY
	{
		Get-SXApi|Out-Null
		# If no exception, then it must have worked this time - carry on"
	}
	CATCH [System.Net.WebException]
	{
		# Still got an exception - must be another issue, re-raise it"
		throw
	}
}
