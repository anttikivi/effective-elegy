#!/usr/bin/env pwsh

# Copyright (c) 2020 Antti Kivi
# Licensed under the MIT License

$VersionParameters = @{
  Name = "Version"
  Value = (Get-Content -Path (Join-Path $PSScriptRoot "version.txt"))
  Option = "Constant"
}
New-Variable @VersionParameters
New-Variable -Name "Name" -Value "Effective Elegy" -Option Constant

Write-Output "Running the PowerShell build script of $Name"

Write-Output "Building $Name version $Version"

New-Variable -Name "SourceDirectoryName" -Value "src" -Option Constant
New-Variable -Name "DistributionDirectoryName" -Value "dist" -Option Constant

New-Variable -Name "RootDirectory" -Value "." -Option Constant
$SourceDirectoryParameters = @{
  Name = "SourceDirectory"
  Value = "$RootDirectory\$SourceDirectoryName"
  Option = "Constant"
}
New-Variable @SourceDirectoryParameters
$DistributionDirectoryParameters = @{
  Name = "DistributionDirectory"
  Value = "$RootDirectory\$DistributionDirectoryName"
  Option = "Constant"
}
New-Variable @DistributionDirectoryParameters

$ProductFileNameParameters = @{
  Name = "ProductFileName"
  Value = "effective-elegy-$Version.txt"
  Option = "Constant"
}
New-Variable @ProductFileNameParameters

$ProductFileParameters = @{
  Name = "ProductFile"
  Value = "$DistributionDirectory\$ProductFileName"
  Option = "Constant"
}
New-Variable @ProductFileParameters

New-Variable -Name "SourceFiles" -Option Constant -Value @(
  "$SourceDirectory\preamble.txt",
  "$SourceDirectory\body.txt",
  "$SourceDirectory\future.txt",
  "$SourceDirectory\warranty.txt"
)

# Check the build directory and destination file

if (-not (Test-Path "$DistributionDirectory")) {
  Write-Output "No distribution directory found"
  Write-Output "Thus, creating directory '$DistributionDirectory'"
  New-Item -Path "$DistributionDirectory" -ItemType "directory"
  Write-Output "Created directory '$DistributionDirectory'"
}

if (Test-Path "$ProductFile") {
  Write-Output "File '$ProductFile' already exists"
  Write-Output "Thus, it'll be deleted before the build is performed"
  Remove-Item $ProductFile
  Write-Output "Deleted file '$ProductFile'"
}

# Build the licence

Write-Output "Building the licence to file '$ProductFile'"

New-Item $ProductFile -ItemType "file"

for ($Index = 0; $Index -lt $SourceFiles.Length; $Index++) {
  $SourceFile = $SourceFiles[$Index]
  Write-Output "Concatenating file '$SourceFile'"
  Get-Content $SourceFile | Add-Content $ProductFile
  if ($Index -ne ($SourceFiles.Length - 1)) {
    Add-Content -Path $ProductFile -Value ""
  }
}

(Get-Content $ProductFile).replace("{VERSION}", "$Version") | Set-Content $ProductFile

Write-Output "Built the licence to file '$ProductFile'"

# Print the final licence

Write-Output "The licence is currently the following:`r`n"

Get-Content $ProductFile | Write-Output
