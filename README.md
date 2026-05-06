# sonar-gfx-font-scope

`sonar-gfx-font-scope` keeps a focused Dart implementation around graphics. The project goal is to design a Dart verification harness for font systems, covering stream reduction, windowed input fixtures, and failure-oriented tests.

## Why It Exists

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Sonar Gfx Font Scope Review Notes

The first comparison I would make is `render budget` against `geometry span` because it shows where the rule is most opinionated.

## Features

- `fixtures/domain_review.csv` adds cases for geometry span and atlas pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/sonar-gfx-font-walkthrough.md` walks through the case spread.
- The Dart code includes a review path for `render budget` and `geometry span`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Dart implementation avoids hidden state so fixture changes are easy to reason about.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 254, which lands in `ship`. The most cautious case is `baseline` at 133, which lands in `watch`.

## Limitations And Roadmap

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
