function Get-SXCompany
{
PARAM()
    Invoke-RestMethod -Uri https://api.spacexdata.com/v2/info
}