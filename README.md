<div align="center">
  <img src="artwork/logo.svg" width="250" style="border-radius:20%"/>
  <h1>Frappix</h1>
  <p>A Frappe Development & Deployment Environment</span>
</div>

---

[![Chat on Matrix](https://img.shields.io/matrix/frappix:matrix.org?server_fqdn=matrix.org&style=for-the-badge)](https://matrix.to/#/#frappix:matrix.org)

<sub>It is best for now, to join the community in the chat until the docs are more elaborate!</sub>

Frappix is a development and deployment environment designed to cover the full software delivery lifecycle from development to deployment and operation for Frappe-based projects.

It is intended for developers and operator alike in their respective role in customer-facing or educational projects.

It can be used in simple scenarios to prototype apps that could later be run on Frappé Cloud but also for very complex production deployments which required extensive customization and fork-like patching of the upstream framework.

### Motivation

Frappix bridges the gap between system dependencies and such that are already available in Python.

It brings the power of the _entire_ software ecosystem to Frappé, not only the Python ecosystem.

It leverages Nix to achieve (close to) reproducible builds of your deployment artifacts, while Nixpkgs is leveraged for its vast amount of up to date and readily available packages across various language ecosystems.

For example, it is near trivial to set up and run a LLM efficiently via llama.cpp alongside your production setup, while it _is_ trivial to provide a swalwart email service in-scope on the same project, set up a nightly backup with StorJ, tweak your database performance with hugepages, host you plausible analytics instance alongside, or even spin up an entire private chat solution based on the Matrix protocol, etc.

### Battle tested

Frappix, and it's predecessor, has served the author very well during the last year in a complex and highly sofisticated production environment.

Please contact me via the above Matrix Chat or the [Frappé Forum](https://discuss.frappe.io/) if you have any further inquiry.
