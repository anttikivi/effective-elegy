# Contributing to Effective Elegy

:+1::tada: First off, thanks for taking the time to contribute! :tada::+1:

There are many ways in which you can contribute, beyond writing code. The goal of this document is to provide a high-level overview of how you can get involved.

The following is a set of guidelines for contributing to Effective Elegy. These are mostly guidelines, not rules. Use your best judgment and feel free to propose changes to this document in a pull request.

#### Table of Contents

[Code of Conduct](#code-of-conduct)

[How Can I Contribute?](#how-can-i-contribute)
- [Reporting Bugs](#reporting-bugs)
- [Suggesting Enhancements](#suggesting-enhancements)
- [Your First Code Contribution](#your-first-code-contribution)
- [Pull Requests](#pull-requests)

[Style Guides](#style-guides)
- [Git Commit Messages](#git-commit-messages)

## Code of Conduct

This project and everyone participating in it are governed by the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md). By participating, you’re expected to uphold this code. Please report unacceptable behaviour to antti.kivi@visiosto.fi.

## How Can I Contribute?

### Reporting Bugs

This section guides you through submitting a bug report for Effective Elegy. Following these guidelines helps the maintainers and the community understand your report :pencil: and find related reports :mag_right:.

Before creating bug reports, please check [this list](#before-submitting-a-bug-report) as you might find out that you don’t need to create one. When you are creating a bug report, please [include as many details as possible](#how-do-i-submit-a-good-bug-report). Fill out [the required template](.github/ISSUE_TEMPLATE/bug_report.md), the information it asks for helps us resolve issues faster.

> **Note:** If you find a **Closed** issue that seems like it addresses the same problem that you have in mind, open a new issue and include a link to the original issue in the body of your new one.

#### Before Submitting a Bug Report

- **Check if the problem still exists [in the latest version of Effective Elegy](https://github.com/anttikivi/effective-elegy/releases/latest).**
- **Perform a [cursory search](https://github.com/issues?q=is%3Aissue+user%3Aanttikivi)** to see if the problem has already been reported. If it has and the issue is still open, add a comment to the existing issue instead of opening a new one.

#### How Do I Submit a (Good) Bug Report?

Bugs are tracked as [GitHub issues](https://guides.github.com/features/issues). Just create an issue on the repository and provide the following information by filling in the [template](.github/ISSUE_TEMPLATE/bug_report.md).

Explain the problem and include additional details to help the maintainers fix the problem:

- **Use a clear and descriptive title** for the issue to identify the problem.
- **Explain which behaviour you expected to have instead and why.**

### Suggesting Enhancements

This section guides you through submitting an enhancement suggestion for Effective Elegy, including completely new clauses and minor improvements to existing ones. Following these guidelines helps the maintainers and the community understand your suggestion :pencil: and find related suggestions :mag_right:.

Before creating enhancement suggestions, please check [this list](#before-submitting-an-enhancement-suggestion) as you might find out that you don’t need to create one. When you are creating an enhancement suggestion, please [include as many details as possible](#how-do-i-submit-a-good-enhancement-suggestion). Fill in the [template](.github/ISSUE_TEMPLATE/feature_request.md), including the steps that you imagine you would take if the feature you’re requesting existed.

#### Before Submitting an Enhancement Suggestion

- **Check if you’re using the [latest version of Effective Elegy](https://github.com/anttikivi/effective-elegy/releases/latest).**
- **Perform a [cursory search](https://github.com/issues?q=is%3Aissue+user%3Aanttikivi)** to see if the enhancement has already been suggested. If it has, add a comment to the existing issue instead of opening a new one.

#### How Do I Submit a (Good) Enhancement Suggestion?

Enhancement suggestions are tracked as [GitHub issues](https://guides.github.com/features/issues). Just create an issue on that repository and provide the following information:

- **Use a clear and descriptive title** for the issue to identify the suggestion.
- **Provide a step-by-step description of the suggested enhancement** in as many details as possible.
- **Provide specific examples to demonstrate the steps**. Include copiable snippets which you use in those examples.
- **Describe the current behaviour** and **explain which behaviour you expected to see instead** and why.
- **Specify which version of Effective Elegy you’re using.**

### Your First Contribution

Unsure where to begin contributing to Effective Elegy? You can start by looking through these `good first issue` and `help wanted` issues:

* [`good first issue`][good-first-issue]: issues which should only require a little writing.
* [`help wanted`][help-wanted]: issues which should be a bit more involved than `good first issue` issues.

Both issue lists are sorted by total number of comments. While not perfect, number of comments is a reasonable proxy for impact a given change will have.

### Pull Requests

Please follow these steps to have your contribution considered by the maintainers:

1. Follow the instructions in the [pull request template](PULL_REQUEST_TEMPLATE.md).
2. Follow the [style guides](#style-guides).
3. After you submit your pull request, verify that all [status checks](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-status-checks) are passing.

    <details><summary>What if the status checks are failing?</summary>If a status check is failing and you believe that the failure is unrelated to your change, please leave a comment on the pull request explaining why you believe the failure is unrelated. A maintainer will re-run the status check for you. If we conclude that the failure was a false positive, then we will open an issue to track that problem with our status check suite.</details>

While the prerequisites above must be satisfied prior to having your pull request reviewed, the reviewers may ask you to complete additional design work, tests, or other changes before your pull request can be ultimately accepted.

## Style Guides

### Git Commit Messages

* Use the present tense (‘Add feature’, not ‘Added feature’).
* Use the imperative mood (‘Move cursor to...’ not ‘Moves cursor to...’).
* Try to limit the first line to 72 characters or fewer.
* Reference issues and pull requests liberally after the first line.

[good-first-issue]:https://github.com/search?q=is%3Aopen+is%3Aissue+label%3Agood+first+issue+user%3Aanttikivi+sort%3Acomments-desc
[help-wanted]:https://github.com/search?q=is%3Aopen+is%3Aissue+label%3Ahelp+wanted+user%3Aanttikivi+sort%3Acomments-desc
