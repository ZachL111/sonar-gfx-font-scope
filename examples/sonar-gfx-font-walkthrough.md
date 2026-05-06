# Sonar Gfx Font Scope Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | geometry span | 133 | watch |
| stress | atlas pressure | 154 | ship |
| edge | shader drift | 213 | ship |
| recovery | render budget | 254 | ship |
| stale | geometry span | 208 | ship |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `baseline` becomes less cautious without a clear reason, I would inspect the drag input first.
