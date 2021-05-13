

# Read in the file contents and return the version node's value.
$SampleFilePath = "-------\sample.xml"
[ xml ]$fileContents = Get-Content -Path $SampleFilePath
return $fileContents.package.metadata.version
