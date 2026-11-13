# Neptune Community Garage

Public feedback for 280 cars: Buff, Nerf, Keep, notes, per-car history, search and CSV totals. Display names are self-reported, not verified accounts.

## Run
Requires Node.js 24+. Run `npm start`, then open http://localhost:32010. Run `npm test` for API validation and restart-persistence checks.

## Railway
Deploy this repository using the included Dockerfile. Attach a persistent volume at `/data` before accepting submissions. Set `DATA_DIR=/data`; use one replica. Generate a public domain. SQLite is stored at `/data/feedback.sqlite`; do not delete the volume. Configure Railway volume backups.

## GitHub Pages
The static site can be served from `docs/` on the main branch. Its config.js must set NEPTUNE_API to the Railway HTTPS domain. Set Railway ALLOWED_ORIGINS to `https://lcrplbd.github.io` to allow submissions from Pages. The Railway deployment also serves the frontend directly.

## Data
cars.json is the car-code catalogue. Feedback is stored separately on the volume and is never included in this repository. Redeploying application code does not reseed or replace feedback. Names and notes are public; do not submit private information. Basic request limits and a honeypot reduce automated noise; this is a feedback board, not an authenticated voting system.
