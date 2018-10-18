# Retrieve current path
#$Module = Resolve-Path -Path ..\ #$myInvocation.MyCommand.Path -replace '\.Tests\.ps1$'
#$ModuleName = $Module | Split-Path -Leaf

# Find the Manifest file
$Module = Split-path -Path (Split-Path -Parent -Path $MyInvocation.MyCommand.Definition)
"Module $module"
$ModuleName = Split-path -Path $Module -Leaf
"ModuleName $modulename"
$ManifestFile = "$(Split-path (Split-Path -Parent -Path $MyInvocation.MyCommand.Definition))\$ModuleName\$ModuleName.psd1"
"Manifest $ManifestFile "
# Unload any module with same name
Get-Module -Name $ModuleName -All | Remove-Module -Force -ErrorAction Ignore

# Import Module
$ModuleInformation = Import-Module -Name $ManifestFile -Force -ErrorAction Stop -PassThru

# Get the functions present in the Manifest
$ExportedFunctions = $ModuleInformation.ExportedFunctions.Values.name
#"Exported function = $ExportedFunctions"
# Get the functions present in the Public folder
$PS1Functions = Get-ChildItem -path  "$Module\$ModuleName\public\*.ps1"
#"PS1 function = $($PS1Functions.basename)"

Compare-Object -ReferenceObject $ExportedFunctions -DifferenceObject $PS1Functions.basename -PassThru


Describe "$ModuleName Module - Testing Manifest File (.psd1)"{
    Context "Manifest"{
        It "Should contains RootModule"{
            $ModuleInformation.RootModule | Should not BeNullOrEmpty
        }
        It "Should contains Author"{
            $ModuleInformation.Author | Should not BeNullOrEmpty
        }
        It "Should contains Company Name"{
            $ModuleInformation.CompanyName | Should not BeNullOrEmpty
        }
        It "Should contains Description"{
            $ModuleInformation.Description | Should not BeNullOrEmpty
        }
        It "Should contains Copyright"{
            $ModuleInformation.Copyright | Should not BeNullOrEmpty
        }
        It "Should contains License"{
            $ModuleInformation.LicenseURI | Should not BeNullOrEmpty
        }
        It "Should contains a Project Link"{
            $ModuleInformation.ProjectURI | Should not BeNullOrEmpty
        }
        It "Should contains a Tags (For the PSGallery)"{
            $ModuleInformation.Tags.count | Should not BeNullOrEmpty
        }
    }
}
<#
    Generic tests
#>
Describe "$ModuleName Module - Functions Comment based help" {
    foreach  ($function in $ExportedFunctions) {
        # Retrieve the Help of the function
        $Help = Get-Help -Name $Function -Full

        # Parse the function using AST
        $AST = [System.Management.Automation.Language.Parser]::ParseInput((Get-Content function:$Function), [ref]$null, [ref]$null)

        Context "$Function - Help"{

            It "Synopsis"{ $help.Synopsis | Should not BeNullOrEmpty }
            It "Description"{ $help.Description | Should not BeNullOrEmpty }

            # Get the parameters declared in the Comment Based Help
            $RiskMitigationParameters = 'Whatif', 'Confirm'
            $HelpParameters = $help.parameters.parameter | Where-Object name -NotIn $RiskMitigationParameters

            # Get the parameters declared in the AST PARAM() Block
            $ASTParameters = $ast.ParamBlock.Parameters.Name.variablepath.userpath

            It "Parameter - Compare Count Help/AST" {
                $HelpParameters.name.count -eq $ASTParameters.count | Should Be $true
            }

            # Parameter Description
            If (-not [String]::IsNullOrEmpty($ASTParameters)) # IF ASTParameters are found
            {
                $HelpParameters | ForEach-Object {
                    It "Parameter $($_.Name) - Should contains description"{
                        $_.description | Should not BeNullOrEmpty
                    }
                }
            }

            # Examples
            it "Example - Count should be greater than 0"{
                $Help.examples.example.code.count | Should BeGreaterthan 0
            }

            # Examples - Remarks (small description that comes with the example)
            foreach ($Example in $Help.examples.example)
            {
                it "Example - Remarks on $($Example.Title)"{
                    $Example.remarks | Should not BeNullOrEmpty
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

        It 'gets result' {
            $returnedData|Should not BeNullOrEmpty
        }
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
    
    Context 'specify both Latest and Upcoming' {
        It 'is disallowed' {
            {Get-SXLaunch -Latest -Upcoming} | Should -Throw
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