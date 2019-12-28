# ---------------------------------------------------------------------------- #
#                         Obliging Ode & Unsung Anthem
# ---------------------------------------------------------------------------- #
#
# This source file is part of the Obliging Ode and Unsung Anthem projects.
#
# Copyright (c) 2019 Antti Kivi
# Licensed under the MIT License
#
# ---------------------------------------------------------------------------- #

New-Variable -Name "Version" -Value "0.1.0-dev.1" -Option Constant
New-Variable -Name "Name" -Value "Effective Elegy" -Option Constant

Write-Output "Building $Name version $Version"

New-Variable -Name "SourceDirectoryName" -Value "src" -Option Constant
New-Variable -Name "DistributionDirectoryName" -Value "dist" -Option Constant
New-Variable -Name "BuildDirectoryName" -Value "build" -Option Constant

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
  Value = "EFFECTIVE_ELEGY-$Version.txt"
  Option = "Constant"
}
New-Variable @ProductFileNameParameters

$ProductFileParameters = @{
  Name = "ProductFile"
  Value = "$DistributionDirectory/$ProductFileName"
  Option = "Constant"
}
New-Variable @ProductFileParameters

# Set the source files

New-Variable -Name "SourceFiles" -Option Constant -Value @(
  "$SourceDirectory/preamble.txt",
  "$SourceDirectory/body.txt"
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

Write-Output "Concatenating the source files: $SourceFiles"
Get-Content $SourceFiles | Set-Content $ProductFile

Write-Output "Built the licence to file '$ProductFile'"

# Print the final licence

Write-Output "The licence is currently the following:\n"

Get-Content $ProductFile | Write-Output
