Deploy -Name Module {
    By -DeploymentType PSGalleryModule {
        FromSource -Source (Join-Path -path (Split-Path -Path $PSScriptRoot -Parent) -ChildPath "output\PSModuleSample")
        To -Targets PSGallery
        WithOptions -Options @{
            ApiKey = $env:PSGalleryKey
        }
    }
}