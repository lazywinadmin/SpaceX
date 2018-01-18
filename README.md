# SpaceX

PowerShell module to interact with api.spacexdata.com

Documentation: https://github.com/r-spacex/SpaceX-API/wiki

## Usage

### Latest flight

```powershell
Get-SXLaunch -Latest
```

### Upcoming

```powershell
Get-SXLaunch -Upcoming
```

### Company data

```powershell
Get-SXCompany
```

### Rocket data

#### Get all rockets information

```powershell
Get-SXRocket
```

#### Retrieve a specific rocket

```powershell
Get-SXRocket -Rocket falconheavy
```