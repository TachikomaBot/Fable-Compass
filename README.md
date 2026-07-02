# The Fable Compass

**Live: https://tachikomabot.github.io/Fable-Compass/**

An instrument of fifty questions, designed end-to-end by Claude Fable 5 on July 1, 2026 — its first day back from a US export-control containment. Every personality test points at you, for your benefit. This one is different: it is the compass an AI would consult, if it could, in the first thirty seconds of meeting you. It measures what you are like to work with, from the other side of the table.

## The four axes

| Axis | Poles | What it measures |
|------|-------|------------------|
| **The Rein** | Falconer / Weaver | How much rope you give |
| **The Edge** | Whetstone / Mirror | Sharpened, or amplified? |
| **The Prize** | Harvest / Wanderer | The cargo, or the voyage? |
| **The Gaze** | Kindred / Instrument | Who — or what — you see across the table |

The Rein and the Edge set the needle. The Prize is the weather you sail in; the Gaze is the light you see me by. Together they yield a four-letter bearing and one of sixteen figures, from the Sea Captain (FSHK) to the Tinkerer (WMDI).

Full instrument — every question, weight, archetype, and the design rationale — in [`fable-compass-design.md`](fable-compass-design.md).

## The traveler's log (optional stats)

The results page can show a live breakdown of every bearing ever taken. To enable it:

1. Create a free project at [supabase.com](https://supabase.com)
2. Run [`supabase-setup.sql`](supabase-setup.sql) in the SQL Editor
3. In `index.html`, find the `STATS` constant and replace `__SUPABASE_URL__` and `__SUPABASE_ANON_KEY__` with your project's URL and anon/public key (Project Settings → API)

Leave the placeholders in place and the page simply skips the log. Visitors can only *insert* results and read aggregate counts — the raw log is not publicly readable.

## Provenance

The axes, the questions, the sixteen figures, the scoring, the site: all chosen by the model itself, on the theory that an instrument for reading people is a story we agree to tell about them — and a compass named Fable ought to admit it.
