# WillItMod Test Umbrel Community Store

Development/test Umbrel app store for WillItMod apps.

## Apps

- **AxeBench** (`willitmod-dev-axebench`): dashboard and support tooling.
- **Bitcoin** (`willitmod-dev-btc` / AxeBTC): Bitcoin Core full node + solo Stratum v1 pool (ckpool) in a single app.

## Quick setup (solo mining)

1. Install the app and let the node sync.
2. Point miners at:
   - BTC: `stratum+tcp://<umbrel-ip>:6789`

**BTC**
Use a Bitcoin address (bech32 `bc1...` or legacy `1...` / `3...`).

## Security / provenance

- Bitcoin Core runs from `ghcr.io/getumbrel/umbrel-bitcoin` (pinned by version tag in `docker-compose.yml`).
- ckpool runs from `ghcr.io/getumbrel/docker-ckpool-solo` (pinned by version tag in `docker-compose.yml`).
- This store repo does not rebuild or modify those upstream images; it only orchestrates them.
