# 🍺 Open Cloud Agents: Homebrew Tap

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![Homebrew](https://img.shields.io/badge/Homebrew-Formula-orange.svg?logo=homebrew&logoColor=white)](Formula/ocagents.rb)
[![Release](https://img.shields.io/badge/Version-v1.3.0-blue.svg)](https://github.com/open-cloud-agents/open-cloud-agents/releases)

Official [Homebrew](https://brew.sh/) tap for the **Open Cloud Agents** universal CLI (`ocagents`).

---

## ⚡ Quickstart

### Option 1: Tap, Trust, and Install (Recommended)

```bash
brew tap open-cloud-agents/tap
brew trust open-cloud-agents/tap    # Required on Homebrew 4.4+ for third-party taps
brew install ocagents
```

### Option 2: Direct One-Liner

```bash
brew install open-cloud-agents/tap/ocagents
```

> [!NOTE]
> If Homebrew 4.4+ prompts with *"Refusing to load formula from untrusted tap"*, simply run:  
> `brew trust open-cloud-agents/tap` and re-run the install command.

---

## 🔍 Verification

Once installed, verify that `ocagents` (and its short alias `oca`) is active:

```bash
# View CLI status and loaded agent models
ocagents info

# List the 7-Agent Master Suite
ocagents list

# Run with the short alias
oca --help
```

---

## 🔄 Upgrading

Keep your specialist agents up to date with the latest cloud security guardrails and LLM prompts:

```bash
brew update
brew upgrade ocagents
```

---

## 🗑️ Uninstallation

```bash
brew uninstall ocagents
brew untap open-cloud-agents/tap
```

---

## 📦 What's Inside?

The `ocagents` formula packages:
* The **7-Agent Master Suite** (Principal Cloud Architect, Security Compliance Commander, FinOps Cost Optimizer, DevSecOps Reviewer, DevSecOps Engineer, GitOps Release Manager, SRE Reliability Engineer).
* Comprehensive cloud skills (`terraform`, `kubernetes`, `aws-well-architected`, `ai-safety-governance`).
* Standalone executable wrapper with zero third-party Python runtime overhead.

---

## 📄 License & Attribution

* Licensed under the [Apache License 2.0](LICENSE) (c) 2026 Ibrahim Jimoh.
* Maintained by **[Open Cloud Agents](https://github.com/open-cloud-agents)**.
* Upstream Codebase: [open-cloud-agents](https://github.com/open-cloud-agents/open-cloud-agents).
