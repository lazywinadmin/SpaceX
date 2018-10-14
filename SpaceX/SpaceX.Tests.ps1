$ThisModule = $MyInvocation.MyCommand.Path -replace '\.Tests\.ps1$'
$ThisModuleName = $ThisModule | Split-Path -Leaf

Get-Module -Name $ThisModuleName -All | Remove-Module -Force -ErrorAction Ignore

Import-Module -Name "$ThisModule.psm1" -Force -ErrorAction Stop

Describe 'Get-SXApi' {
    Context 'no parameters' {
        $returnedData = Get-SXApi
        
        It 'gets a single object' {
            $returnedData.getType() | Should Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXCapsule' {
    Context 'no parameters' {
        $returnedData = Get-SXCapsule
        
        It 'gets an object array' {
            $returnedData.getType() | Should Be 'System.Object[]'
        }
    }
    
    Context 'specify Capsule' {
        $returnedData = Get-SXCapsule -Capsule C109
        
        It 'gets a single object' {
            $returnedData.getType() | Should Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXCompany' {
    Context 'no parameters' {
        $returnedData = Get-SXCompany
        
        It 'gets a single object' {
            $returnedData.getType() | Should Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXCore' {
    Context 'no parameters' {
        $returnedData = Get-SXCore
        
        It 'gets an object array' {
            $returnedData.getType() | Should Be 'System.Object[]'
        }
    }
    
    Context 'specify Serial' {
        $returnedData = Get-SXCore -Serial B1032
        
        It 'gets a single object' {
            $returnedData.getType() | Should Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXDragon' {
    Context 'no parameters' {
        $returnedData = Get-SXDragon
        
        It 'gets an object array' {
            $returnedData.getType() | Should Be 'System.Object[]'
        }
    }
    
    Context 'specify ID' {
        $returnedData = Get-SXDragon -ID dragon1
        
        It 'gets a single object' {
            $returnedData.getType() | Should Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXHistory' {
    Context 'no parameters' {
        $returnedData = Get-SXHistory
        
        It 'gets an object array' {
            $returnedData.getType() | Should Be 'System.Object[]'
        }
    }
    
    Context 'specify ID' {
        $returnedData = Get-SXHistory -ID 1
        
        It 'gets a single object' {
            $returnedData.getType() | Should Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXLaunch' {
    Context 'no parameters' {
        $returnedData = Get-SXLaunch
        
        It 'gets an object array' {
            $returnedData.getType() | Should Be 'System.Object[]'
        }
    }
    
    Context 'specify Latest' {
        $returnedData = Get-SXLaunch -Latest
        
        It 'gets a single object' {
            $returnedData.getType() | Should Be 'System.Management.Automation.PSCustomObject'
        }
    }
    
    Context 'specify Upcoming' {
        $returnedData = Get-SXLaunch -Upcoming
        
        It 'gets an object array' {
            $returnedData.getType() | Should Be 'System.Object[]'
        }
    }
}


Describe 'Get-SXLaunchpad' {
    Context 'no parameters' {
        $returnedData = Get-SXLaunchpad
        
        It 'gets an object array' {
            $returnedData.getType() | Should Be 'System.Object[]'
        }
    }
    
    Context 'specify Launchpad' {
        $returnedData = Get-SXLaunchpad -Launchpad stls
        
        It 'gets a single object' {
            $returnedData.getType() | Should Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXMission' {
    Context 'no parameters' {
        $returnedData = Get-SXMission
        
        It 'gets an object array' {
            $returnedData.getType() | Should Be 'System.Object[]'
        }
    }
    
    Context 'specify Mission' {
        $returnedData = Get-SXMission -Mission F3364BF
        
        It 'gets a single object' {
            $returnedData.getType() | Should Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXPayload' {
    Context 'no parameters' {
        $returnedData = Get-SXPayload
        
        It 'gets an object array' {
            $returnedData.getType() | Should Be 'System.Object[]'
        }
    }
    
    Context 'specify PayloadID' {
        $returnedData = Get-SXPayload -PayloadID "CRS-19"
        
        It 'gets a single object' {
            $returnedData.getType() | Should Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXRoadster' {
    Context 'no parameters' {
        $returnedData = Get-SXRoadster
        
        It 'gets a single object' {
            $returnedData.getType() | Should Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXRocket' {
    Context 'no parameters' {
        $returnedData = Get-SXRocket
        
        It 'gets an object array' {
            $returnedData.getType() | Should Be 'System.Object[]'
        }
    }
    
    Context 'specify Rocket' {
        $returnedData = Get-SXRocket -Rocket falconheavy
        
        It 'gets a single object' {
            $returnedData.getType() | Should Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXShip' {
    Context 'no parameters' {
        $returnedData = Get-SXShip
        
        It 'gets an object array' {
            $returnedData.getType() | Should Be 'System.Object[]'
        }
    }
    
    Context 'specify ShipID' {
        $returnedData = Get-SXShip -ShipID RACHEL
        
        It 'gets a single object' {
            $returnedData.getType() | Should Be 'System.Management.Automation.PSCustomObject'
        }
    }
}