@rem Copyright (c) 2020 Antti Kivi
@rem Licensed under the MIT License

@echo on

echo Please note that this script should not be used in production
echo The Windows batch file script is for testing only, to compile the ^
licence, please use the Bourne shell script

set /p version=<%~dp0\version.txt
set name=Effective Elegy

echo Running the Windows batch file build script of %name%
echo Building %name% version %version%

set source_directory_name=src
set distribution_directory_name=dist

set root_directory=%cd%

set source_directory=%root_directory%\%source_directory_name%
set distribution_directory=%root_directory%\%distribution_directory_name%

set temporary_file_name=tmp.txt
set product_file_name=effective-elegy-%version%.txt

set temporary_file=%distribution_directory%\%temporary_file_name%
set product_file=%distribution_directory%\%product_file_name%

set backup_extension=.tmp

@rem Set the source files.

set source_files=%source_directory%\preamble.txt ^
%source_directory%\body.txt ^
%source_directory%\future.txt ^
%source_directory%\warranty.txt

@rem Check the build directory and the destination file.

if not exist %distribution_directory% (
  echo No distribution directory found
  echo Thus, creating directory '%distribution_directory%'
  md %distribution_directory%
  echo Created directory '%distribution_directory%'
)

if exist %product_file% (
  echo File '%product_file%' already exists
  echo Thus, it'll be deleted before the build is performed
  del %product_file%
  echo Deleted file '%product_file%'
)

if exist %temporary_file% (
  echo File '%temporary_file%' already exists
  echo Thus, it'll be deleted before the build is performed
  del %temporary_file%
  echo Deleted file '%temporary_file%'
)

@rem Build the licence.

echo Building the licence to file '%product_file%'

type nul > %temporary_file%

for %%f in (%source_files%) do (
  echo Concatenating file '%%f'
  type %%f >> %temporary_file%
)

set search={VERSION}
set replace=%version%

for /f "delims=" %%i in ('type "%temporary_file%" ^& break ^> "%temporary_file%"') do (
  set line=%%i
  setlocal enabledelayedexpansion
  set "line=!line:*]=!"
  if defined line "set line=!line:%search%=%replace%!"
  >>"%temporary_file%" echo(!line!
  endlocal
)

type %temporary_file% > %product_file%

del %temporary_file%

echo Built the licence to file '%product_file%'

@rem Print the final licence.

echo The licence is currently the following:& echo.

type %product_file%

@rem Print one empty line to make the shell output look better.

echo.
