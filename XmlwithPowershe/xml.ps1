

# Read in the file contents and return the version node's value.
$SampleFilePath = "-------\sample.xml"
[ xml ]$fileContents = Get-Content -Path $SampleFilePath
return $fileContents.package.metadata.version
<#return $fileContents.package.metadata.title
return $fileContents.package.metadata.authors
return $fileContents.package.metadata.requireLicenseAcceptance
return $fileContents.package.metadata.version#>