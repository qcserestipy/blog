---
title: "Ship by Day. Sleep at Night — GitOps that Works in Production"
description: "Pragmatic GitOps, calmer operations, and lessons from real delivery systems."
date: 2025-10-03T15:31:34+02:00
draft: false
hidemeta: false
comments: false
showToc: false
searchHidden: false
tags: ["gitops", "devops", "reliability"]
categories: ["General"]
---

# GitOps that Works in Production

I work on making delivery predictable and operations quiet. The goal is straightforward: reduce firefighting, lower operational noise, and keep infrastructure reproducible instead of handcrafted.

This site is mostly practical experience: what held up under production load, what broke, and what I’d change next time. Expect a mix of GitOps workflows (Argo CD / Crossplane), CI/CD approaches that stay traceable, and infrastructure practices with AWS CDK, Helm, and Kustomize. I lean on declarative systems, automated reconciliation, and observability first—not because it’s trendy, but because it reduces uncertainty.

### Principles (kept practical)
Automation where repetition creeps in. Declarative over procedural drift. Safe re-runs (idempotency) as a default. Design for recovery and clarity rather than false perfection. Observe early: logs, metrics, and traces in place before scaling. Favor simplicity over clever abstractions—especially at 2 a.m.

### What to Expect
You’ll see examples and small patterns with real trade‑offs, stories behind architectural decisions, recovery notes expressed as lightweight playbooks, and clearly labeled opinions on where GitOps genuinely helps—and where it can mislead.

### Audience
If you’re moving toward Git-driven ops, trying to ease on-call, or unwinding brittle deployment pipelines, you may find something useful here.

### Stack in Practice
Kubernetes, Argo CD, AWS CDK, Helm, Kustomize, AWS Cloud, GitHub Actions, Go, Python, Bash—joined with testing and observability from the start.

If there’s a scenario you want covered or something unclear, open an issue or reach out: https://github.com/qcserestipy.

Let’s keep delivery steady and incidents boring.
