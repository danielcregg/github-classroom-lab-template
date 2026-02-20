# GitHub Classroom Lab Template

![Java](https://img.shields.io/badge/Java-ED8B00?style=flat-square&logo=openjdk&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=flat-square&logo=githubactions&logoColor=white)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)

A template repository for Java programming labs using GitHub Classroom with automated test grading via GitHub Actions.

## Overview

This project serves as a proof-of-concept template for first-year Java programming labs, leveraging GitHub Codespaces for a browser-based development environment and GitHub Classroom for automated submission management. Students complete Java exercises involving `Scanner` input/output, and their code is automatically compiled and tested using JUnit 5 with the system-lambda library for console I/O verification.

## Features

- Four structured Java exercises focusing on `Scanner` input and console output
- Automated grading via GitHub Actions and GitHub Classroom autograding
- JUnit 5 test suite with system-lambda for stdin/stdout testing
- VS Code Dev Container for a consistent Java development environment
- Shell-based test runner for compiling and executing individual exercise tests
- Each exercise worth 25 points (100 total)

## Prerequisites

- **Java 8** or higher (Java 8 is used in the CI workflow)
- **Git** for version control
- A **GitHub** account with access to GitHub Classroom

## Getting Started

### Installation

1. Use this template to create a new GitHub Classroom assignment, or clone it directly:
   ```bash
   git clone https://github.com/danielcregg/github-classroom-lab-template.git
   cd github-classroom-lab-template
   ```

2. Open in GitHub Codespaces or a local Dev Container for a pre-configured Java environment.

### Usage

Complete each exercise by writing your Java code in the corresponding file (`Exercise1.java` through `Exercise4.java`) where indicated by the `// YOUR CODE HERE` comment.

Run a test for a specific exercise locally:
```bash
./bin/run_test.sh Exercise1
```

Submit your work:
```bash
git add .
git commit -m "Complete exercises"
git push origin main
```

Pushing to `main` triggers the GitHub Classroom autograding workflow, which compiles and runs the JUnit tests for all four exercises.

## Tech Stack

- **Java** - Programming language for exercises and tests
- **JUnit 5** - Testing framework
- **system-lambda** - Library for testing console I/O in JUnit 5
- **Hamcrest** - Matcher library for expressive test assertions
- **GitHub Actions** - CI/CD for automated grading
- **GitHub Codespaces** - Browser-based development environment

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
