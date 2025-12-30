# WillItMod Dev Umbrel Community Store

Development/test Umbrel app store for WillItMod apps.

## Apps

- **Bitcoin Cash Node** (`willitmod-bch-node`): BCH full node (BCHN) with pruning enabled by default.
- **Bitcoin Cash Solo Pool** (`willitmod-bch-solo-pool`): Stratum v1 solo pool (ckpool) wired for BCH.

## Quick setup (BCH solo mining)

1. Install **Bitcoin Cash Node** and let it fully sync.
2. Install **Bitcoin Cash Solo Pool**.
3. Edit `data/config/ckpool.conf` inside the solo pool app and set:
   - `url` to your node RPC host/port (default `umbrel.local:28332`)
   - `pass` to your BCH node app password (Umbrel: “Show default credentials”)
4. Restart the solo pool app and point miners at `stratum+tcp://<umbrel-ip>:3333`.

## Address format note

ckpool is Bitcoin-focused; for BCH payouts, legacy Base58 addresses (`1...` / `3...`) are usually the most compatible username format.

