$thisModule = $myInvocation.MyCommand.Path -replace '\.Tests\.ps1$'
$thisModuleName = $thisModule | Split-Path -Leaf

Get-Module -Name $thisModuleName -All | Remove-Module -Force -ErrorAction Ignore

Import-Module -Name "$thisModule.psm1" -Force -ErrorAction Stop

<#
    Generic tests
#>
Describe 'comment based help' {
    $allFunctions = Get-Command -Module $thisModuleName

    foreach  ($function in $allFunctions) {
        # Retrieve the Help of the function
        $help = Get-Help -Name $function -Full

        $notes = ($help.alertSet.alert.text -split '\n')

        # Parse the function using AST
        $ast = [System.Management.Automation.Language.Parser]::ParseInput((Get-Content function:$function), [ref]$null, [ref]$null)

        Context "$function"{
            It 'has Synopsis' {$help.Synopsis | Should -Not -BeNullOrEmpty}
            It 'has Description' {$help.Description | Should -Not -BeNullOrEmpty}
            It 'has Github URL in Notes' { $notes[0].trim() | Should -BeExactly "https://github.com/lazywinadmin/SpaceX" }

            # Get the parameters declared in the Comment Based Help
            $helpParameters = $help.parameters.parameter

            # Get the parameters declared in the AST PARAM() Block
            $astParameters = $ast.ParamBlock.Parameters.Name.variablepath.userpath

            It 'has the correct number of parameters' {
                $helpParameters.name.count -eq $astParameters.count | Should -BeTrue
            }

            # Parameter Description
            # IF ASTParameters are found
            If (-not [String]::IsNullOrEmpty($astParameters)) {
                $helpParameters | ForEach-Object {
                    It "has a description for parameter $($_.Name)" {
                        $_.description | Should -Not -BeNullOrEmpty
                    }
                }
            }

            # Examples
            It 'has Examples' {
                $help.examples.example.code.count | Should -BeGreaterThan 0
            }
            write-host $help.examples.example.code

            # Examples - Remarks (small description that comes with the example)
            $exampleNumber = 0
            foreach ($example in $help.examples.example)
            {
                $exampleNumber ++
                It "has remarks for Example $exampleNumber" {
                    (-join $example.remarks.text) | Should -Not -BeNullOrEmpty
                }
            }
        }
    }
}

<#
    Test individual functions
#>

Describe 'Get-SXApi' {
    Context 'no parameters' {
        $returnedData = Get-SXApi
        
        It 'gets a single object' {
            $returnedData.getType() | Should -Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXCapsule' {
    Context 'no parameters' {
        $returnedData = Get-SXCapsule
        
        It 'gets an object array' {
            $returnedData.getType() | Should -Be 'System.Object[]'
        }
    }
    
    Context 'specify Capsule' {
        $returnedData = Get-SXCapsule -Capsule C109
        
        It 'gets a single object' {
            $returnedData.getType() | Should -Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXCompany' {
    Context 'no parameters' {
        $returnedData = Get-SXCompany
        
        It 'gets a single object' {
            $returnedData.getType() | Should -Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXCore' {
    Context 'no parameters' {
        $returnedData = Get-SXCore
        
        It 'gets an object array' {
            $returnedData.getType() | Should -Be 'System.Object[]'
        }
    }
    
    Context 'specify Serial' {
        $returnedData = Get-SXCore -Serial B1032
        
        It 'gets a single object' {
            $returnedData.getType() | Should -Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXDragon' {
    Context 'no parameters' {
        $returnedData = Get-SXDragon
        
        It 'gets an object array' {
            $returnedData.getType() | Should -Be 'System.Object[]'
        }
    }
    
    Context 'specify ID' {
        $returnedData = Get-SXDragon -ID dragon1
        
        It 'gets a single object' {
            $returnedData.getType() | Should -Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXHistory' {
    Context 'no parameters' {
        $returnedData = Get-SXHistory
        
        It 'gets an object array' {
            $returnedData.getType() | Should -Be 'System.Object[]'
        }
    }
    
    Context 'specify ID' {
        $returnedData = Get-SXHistory -ID 1
        
        It 'gets a single object' {
            $returnedData.getType() | Should -Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXLaunch' {
    Context 'no parameters' {
        $returnedData = Get-SXLaunch
        
        It 'gets an object array' {
            $returnedData.getType() | Should -Be 'System.Object[]'
        }
    }
    
    Context 'specify Latest' {
        $returnedData = Get-SXLaunch -Latest
        
        It 'gets a single object' {
            $returnedData.getType() | Should -Be 'System.Management.Automation.PSCustomObject'
        }
    }
    
    Context 'specify Upcoming' {
        $returnedData = Get-SXLaunch -Upcoming
        
        It 'gets an object array' {
            $returnedData.getType() | Should -Be 'System.Object[]'
        }
    }
    
    Context 'specify both Latest and Upcoming' {
        $returnedData = Get-SXLaunch -Latest
        
        It 'is disallowed' {
            {Get-SXLaunch -Latest -Upcoming} | Should -Throw
        }
    }
}


Describe 'Get-SXLaunchpad' {
    Context 'no parameters' {
        $returnedData = Get-SXLaunchpad
        
        It 'gets an object array' {
            $returnedData.getType() | Should -Be 'System.Object[]'
        }
    }
    
    Context 'specify Launchpad' {
        $returnedData = Get-SXLaunchpad -Launchpad stls
        
        It 'gets a single object' {
            $returnedData.getType() | Should -Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXMission' {
    Context 'no parameters' {
        $returnedData = Get-SXMission
        
        It 'gets an object array' {
            $returnedData.getType() | Should -Be 'System.Object[]'
        }
    }
    
    Context 'specify Mission' {
        $returnedData = Get-SXMission -Mission F3364BF
        
        It 'gets a single object' {
            $returnedData.getType() | Should -Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXPayload' {
    Context 'no parameters' {
        $returnedData = Get-SXPayload
        
        It 'gets an object array' {
            $returnedData.getType() | Should -Be 'System.Object[]'
        }
    }
    
    Context 'specify PayloadID' {
        $returnedData = Get-SXPayload -PayloadID "CRS-19"
        
        It 'gets a single object' {
            $returnedData.getType() | Should -Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXRoadster' {
    Context 'no parameters' {
        $returnedData = Get-SXRoadster
        
        It 'gets a single object' {
            $returnedData.getType() | Should -Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXRocket' {
    Context 'no parameters' {
        $returnedData = Get-SXRocket
        
        It 'gets an object array' {
            $returnedData.getType() | Should -Be 'System.Object[]'
        }
    }
    
    Context 'specify Rocket' {
        $returnedData = Get-SXRocket -Rocket falconheavy
        
        It 'gets a single object' {
            $returnedData.getType() | Should -Be 'System.Management.Automation.PSCustomObject'
        }
    }
}


Describe 'Get-SXShip' {
    Context 'no parameters' {
        $returnedData = Get-SXShip
        
        It 'gets an object array' {
            $returnedData.getType() | Should -Be 'System.Object[]'
        }
    }
    
    Context 'specify ShipID' {
        $returnedData = Get-SXShip -ShipID RACHEL
        
        It 'gets a single object' {
            $returnedData.getType() | Should -Be 'System.Management.Automation.PSCustomObject'
        }
    }
}