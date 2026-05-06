# orbit-sys-thread-lens

`orbit-sys-thread-lens` is a R project for Systems programming. It turns build an R toolkit that studies thread behavior through node-edge fixtures, with cycle and reachability reports and bounded memory input sets into a small local model with readable fixtures and a direct verification command.

## Reading Orbit Sys Thread Lens

Start with the README, then open `metadata/project.json` to check the constants behind the examples. After that, `fixtures/cases.csv` shows the compact path and `examples/extended_cases.csv` gives a wider look at the same rule.

## Purpose

This is not a wrapper around a service. It is a self-contained project that shows how the model behaves when demand, capacity, latency, risk, and weight move in different directions.

## Files Worth Reading

- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## What It Does

- Includes extended examples for bounds checks, including `recovery` and `degraded`.
- Documents low-level invariants tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.
- Adds a repository audit script that checks structure before running the language verifier.

## Design Sketch

The core is a scoring model over demand, capacity, latency, risk, and weight. That keeps memory shape, resource pressure, and bounds checks in one explicit decision path. The threshold is 167, with risk penalty 7, latency penalty 3, and weight bonus 6. The R version keeps the model as simple functions over named lists for easy analysis use.

## Setup

Install R and run the commands from the repository root. The project does not need credentials or a hosted service.

## Fixture Notes

The extended cases are not random smoke tests. `degraded` keeps pressure on the review path, while `recovery` shows the model when capacity and weight are strong enough to clear the threshold.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Verification

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Next Directions

- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add one more systems programming fixture that focuses on a malformed or borderline input.

## Limits

The repository favors determinism over breadth. It does not pull live data, keep secrets, or depend on network access for verification.
