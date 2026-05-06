# Review Journal

I treated `sonar-gfx-font-scope` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its graphics focus without claiming live deployment or external usage.

## Cases

- `baseline`: `geometry span`, score 133, lane `watch`
- `stress`: `atlas pressure`, score 154, lane `ship`
- `edge`: `shader drift`, score 213, lane `ship`
- `recovery`: `render budget`, score 254, lane `ship`
- `stale`: `geometry span`, score 208, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
