# Add user to group
$groupName = "FSLogix Profile Exclude List"
$userName = "adminaz"
Add-LocalGroupMember -Group $groupName -Member $userName

# Create output directory if it doesn't exist
$outputPath = "C:\temp"
if (-not (Test-Path -Path $outputPath)) {
    New-Item -ItemType Directory -Path $outputPath | Out-Null
}

# Output script result to a text file
$outputFile = Join-Path -Path $outputPath -ChildPath "output.txt"
$scriptResult = "User '$userName' added to group '$groupName'"
$scriptResult | Out-File -FilePath $outputFile

# Create 'temp' folder if it doesn't exist
$tempFolder = Join-Path -Path $outputPath -ChildPath "temp"
if (-not (Test-Path -Path $tempFolder)) {
    New-Item -ItemType Directory -Path $tempFolder | Out-Null
}
