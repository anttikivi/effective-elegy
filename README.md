# Effective Elegy

![](https://github.com/anttikivi/effective-elegy/workflows/Main%20workflow/badge.svg)

Effective Elegy is the licence-to-be of [Obliging Ode](https://github.com/anttikivi/unsung-anthem) and [Unsung Anthem](https://github.com/anttikivi/unsung-anthem). Its main design goal is to be simple while enabling proprietary use. It makes it possible to have the source code of a program freely available while not open source.

Effective Elegy and its helper script themselves are licensed under [MIT Licence](https://github.com/anttikivi/effective-elegy/blob/develop/LICENCE).

## Installing

The released versions of Effective Elegy are available on the [Releases page](https://github.com/anttikivi/effective-elegy/releases). Each release contains the version of the licence as a downloadable text file.

## Contribute

Contributions to Effective Elegy are welcome and encouraged! There are many ways to [contribute](https://github.com/anttikivi/unsung-anthem/blob/develop/CONTRIBUTING.md) to it. Even though the contribution guidelines don’t reside within this repository, they apply.

This project adheres to the Contributor Covenant [Code of Conduct](https://github.com/anttikivi/unsung-anthem/blob/develop/CODE_OF_CONDUCT.md). By participating, you’re expected to uphold this code. Please report unacceptable behaviour to antti.kivi@visiosto.fi.

## Building

While the licence is short and simple, you must build it from a few source files before it can be used. This repository has helper script that do the building for you.

First clone the GitHub repository of Effective Elegy.

**Via HTTPS:** If you’re checking out sources as read-only, HTTPS works best.

    git clone https://github.com/anttikivi/effective-elegy.git

**Via SSH:** If you’re planning on regularly making direct commits, cloning over SSH may provide a better experience (it requires [uploading SSH keys to GitHub](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/))

    git clone git@github.com:anttikivi/effective-elegy.git

After cloning the source, run the build script.

    cd effective-elegy
    ./util/build
