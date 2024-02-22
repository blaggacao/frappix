# Frappix Scope

## Introduction

Frappix bridges the gap between system depedencies and such that are already available in Python.

It brings the power of the _entire_ software ecosystem to Frappe, not only the Python ecosystem.

It achieves this by plugging into the [one of the biggest](https://repology.org/) software repositories to date.

System dependencies are declared by their identifier in `pyproject.toml` and are then mapped to their available implementation from the backing software repository.

When a user wants to start working on a project wired with Frappix, it is _guaranteed_ for him to be productive at exactly _on command_ away. Furthermore, the exact same environment used for development is recycled to produce a variety of production grade runtime artifacts, such as:

- MicroVMs
- VMs
- Entire Host Operating System (fully configured)
- OCI Containers

Whatever deployment scenario can be supported by this infrastructure.

The purpose, hence, of this work is to expand the _unified expierience_ of the frappe ecosystem beyond its current boundary which it inherits from its language ecosystems.

## Project Objectives

- Quality assured and continually maintained onboarding story into the frappe framework
- A comprehensive development environment for Linux & MacOS (Windows on WSL2, only)
- Fully supported deployment targets: VM, MicroVM, Host OS, OCI Container
- Appropriate documentation at its layer of the stack with clear interlinking to upstream documentation

## Scope

- QA further the onboarding experience of the status quo
- Ensure cross-platform support of the development enviroment
- Implement OCI, MicroVM in addition to the status quo
- Evaluate perfomance improvements of the associated tooling
- Elaborate user and technical documentation

## Resources

- Lead developer
- Community contributions welcome!
- Close collaboration with Frappe staff for upstreaming necessary changes

## Risk

- Sometimes a slow turnover of upstream PRs
