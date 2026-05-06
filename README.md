# orbit-sys-thread-lens

`orbit-sys-thread-lens` keeps a focused R implementation around systems programming. The project goal is to build an R toolkit that studies thread behavior through node-edge fixtures, with cycle and reachability reports and bounded memory input sets.

## Why I Keep It Small

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Orbit Sys Thread Lens Review Notes

`edge` and `baseline` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Included Behavior

- `fixtures/domain_review.csv` adds cases for allocation pressure and dirty state.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/orbit-sys-thread-walkthrough.md` walks through the case spread.
- The R code includes a review path for `guard slack` and `allocation pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Internal Model

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The R code keeps the review rule close to the tests.

## Try It Locally

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Validation

The check exercises the source code and the review fixture. `edge` is the high score at 240; `baseline` is the low score at 122.

## Scope

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
