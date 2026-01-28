---
layout: post
title: "AI in the Future"
date: 2026-01-28 17:15:00 -0800
categories: AI Software-Development
excerpt: "A prediction: software development will shift from hand-editing code to generating full frontends and backends from guidelines and rules—moving toward immutable, versioned systems."
---

AI is going to change software development in a way that feels bigger than “better autocomplete.”

My prediction is simple:

## Development will be done with guidelines and rules

Instead of treating code as the source of truth, we’ll treat **constraints** as the source of truth:

- product and UX guidelines
- architectural rules
- security and compliance policies
- domain invariants
- performance budgets
- data contracts

These become the system. The code becomes an artifact.

## New versions will be generated, not patched

Today, most teams “upgrade” a system by editing what exists:

- tweak the frontend component
- refactor a backend service
- patch a bug
- chase a dependency update

In the future, when we want to ship a new version, we’ll do something closer to:

1. Update the guidelines and rules
2. Re-generate the full frontend and backend
3. Run verification (tests, static analysis, policy checks)
4. Deploy the new version as a clean artifact

Instead of spending weeks touching dozens of files, we’ll spend time refining the rules that shape the system.

## The future is immutable code

I think the end state looks like **immutable codebases**:

- every release is generated deterministically from rules + inputs
- changes are expressed as versioned rule updates (not ad-hoc edits)
- rollbacks are trivial (redeploy a previous artifact)
- audits are clearer (diff the rules and inputs)
- drift is reduced (the generator enforces consistency)

That doesn’t mean there’s no creativity or craftsmanship. It means the craftsmanship moves up a layer:

- designing better constraints
- defining clearer boundaries
- encoding intent so the system can be rebuilt cleanly at any time

## Why this matters

If this happens, we’ll stop optimizing for “how fast can we edit the code” and start optimizing for:

- how clearly we can describe intent
- how safely we can enforce rules
- how reliably we can reproduce systems
- how quickly we can generate a verified release

In that world, the best engineers won’t just be great coders—they’ll be great at turning messy real-world needs into precise, testable, versioned guidance.

---

If you’re building today, you can start moving in this direction already:

- encode conventions (linters, formatters, policies)
- define contracts (OpenAPI, schemas, typed interfaces)
- treat infrastructure as code
- automate verification (tests + security checks)

Because once the rules are clear, the code can be generated.

