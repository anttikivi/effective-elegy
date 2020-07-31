# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com), and this project adheres to [Semantic Versioning](https://semver.org).

## [Unreleased]

### Added

- This changelog file for documenting changes to the project.
- List of code owners for GitHub.
- Ability to use environment variables in the version of the project.

### Removed

- Windows batch file script for concatenating the licence.

## [0.5.0] - 2020-03-21

### Added

- Clause allowing to change the terms and conditions of the licence in future version.

## [0.4.0] - 2020-03-21

### Changed

- Clause forbidding the distribution of the Software to also explicitly include modified copies.

## [0.3.0] - 2020-03-20

### Added

- Code of conduct.
- Clause forbidding the distribution of the Software.

### Changed

- Fix Bourne shell build script error caused by differences between `sed` on Linux and macOS.

### Removed

- GitHub Action for counting the lines of code.

## [0.2.0] - 2020-03-20

### Added

- Single file containing all of the template information for pull requests.
- GitHub Action for counting the lines of code.

### Changed

- Name of the file containing the project’s version from `util/elegy-version` to `util/version.txt`.
- Name of the output file to lower case.

### Removed

- Separate pull request template files (`.github/PULL_REQUEST_TEMPLATE/bug_fix.md`, `.github/PULL_REQUEST_TEMPLATE/documentation.md`, `.github/PULL_REQUEST_TEMPLATE/feature_change.md`, and `.github/PULL_REQUEST_TEMPLATE/performance_improvement.md`).

## [0.1.0] - 2020-03-20

### Added

- README telling the basic information about the project and its usage.
- Build scripts for Bourne shell and PowerShell that concatenate the project from its source files.
- Simple permissive base of the licence.
- MIT License as the licence of the project itself.
- Templates for creating issues and pull requests.
- Continuous integration using Ubuntu, macOS, and Windows on GitHub Actions.

[unreleased]: https://github.com/anttikivi/effective-elegy/compare/v0.5.0...HEAD
[0.5.0]: https://github.com/anttikivi/effective-elegy/compare/v0.4.0...v0.5.0
[0.4.0]: https://github.com/anttikivi/effective-elegy/compare/v0.3.0...v0.4.0
[0.3.0]: https://github.com/anttikivi/effective-elegy/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/anttikivi/effective-elegy/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/anttikivi/effective-elegy/releases/tag/v0.1.0
