Deploy -Name Module {
    By -DeploymentType PSGalleryModule {
        FromSource -Source $env:modulePath\$env:moduleName\$env:moduleName.psd1
        To -Targets PSGallery
        WithOptions -Options @{
            ApiKey = $env:PSGalleryKey
        }
    }
}