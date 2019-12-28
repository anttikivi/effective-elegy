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

New-Variable -Name "VERSION" -Value "0.1.0-dev.1" -Option Constant
New-Variable -Name "NAME" -Value "Effective Elegy" -Option Constant

Write-Output "Building $NAME version $VERSION"

New-Variable -Name "SOURCE_DIRECTORY_NAME" -Value "src" -Option Constant
New-Variable -Name "DISTRIBUTION_DIRECTORY_NAME" -Value "dist" -Option Constant

New-Variable -Name "ROOT_DIRECTORY" -Value "." -Option Constant
$SourceDirectoryParameters = ${
  Name = "SOURCE_DIRECTORY"
  Value = "$ROOT_DIRECTORY\$SOURCE_DIRECTORY_NAME"
  Option = Constant
}
New-Variable @SourceDirectoryParameters

$DistributionDirectoryParameters = @{
  Name = "DISTRIBUTION_DIRECTORY"
  Value = "$ROOT_DIRECTORY\$DISTRIBUTION_DIRECTORY_NAME"
  Option = Constant
}
New-Variable @DistributionDirectoryParameters

$ProductFileNameParameters = @{
  Name = "PRODUCT_FILE_NAME"
  Value = "EFFECTIVE_ELEGY-$VERSION.txt"
  Option = Constant
}
New-Variable @ProductFileNameParameters

$ProductFileParameters = @{
  Name = "PRODUCT_FILE"
  Value = "$DISTRIBUTION_DIRECTORY/$PRODUCT_FILE_NAME"
  Option = Constant
}
New-Variable @ProductFileParameters

# Set the source files

New-Variable -Name "SOURCE_FILES" -Option Constant -Value @(
  "$SOURCE_DIRECTORY/preamble.txt",
  "$SOURCE_DIRECTORY/body.txt"
)

# Check the build directory and destination file

if (-not (Test-Path "$DISTRIBUTION_DIRECTORY")) {
  Write-Output "No distribution directory found"
  Write-Output "Thus, creating directory '$DISTRIBUTION_DIRECTORY'"
  New-Item -Path "$DISTRIBUTION_DIRECTORY" -ItemType "directory"
  Write-Output "Created directory '$DISTRIBUTION_DIRECTORY'"
}

if (Test-Path "$PRODUCT_FILE") {
  Write-Output "File '$PRODUCT_FILE' already exists"
  Write-Output "Thus, it'll be deleted before the build is performed"
  Remove-Item $PRODUCT_FILE
  Write-Output "Deleted file '$PRODUCT_FILE'"
}

# Build the licence

Write-Output "Building the licence to file '$PRODUCT_FILE'"

foreach ($file in $SOURCE_FILES) {
  Write-Output "Concatenating file '$file'"
  Get-Content $file | Set-Content $PRODUCT_FILE
}

Write-Output "Built the licence to file '$PRODUCT_FILE'"

# Print the final licence

Write-Output "The licence is currently the following:\n"

Get-Content $PRODUCT_FILE | Write-Output
