# The explorer

The explorer at [sequentiatestnet.com/explorer](https://sequentiatestnet.com/explorer/)
shows everything on the Sequentia testnet: blocks, transactions, addresses and issued
assets. Its twin at [sequentiatestnet.com/testnet4](https://sequentiatestnet.com/testnet4/)
shows Bitcoin testnet4, the chain Sequentia anchors to.

## Look something up

Paste into the search box:

- an **address**, to see its balance in each asset and every transaction that touched it;
- a **transaction id**, to see its inputs, outputs, fee (in the asset that paid it) and the
  block that confirmed it;
- a **block** height or hash;
- an **asset id**, to see the asset's name, ticker, issuance and supply.

## What you see on Sequentia

- **Assets by name.** Registered assets show their ticker and their own decimals.
- **Fees in any asset.** A transaction's fee is listed in the asset it was paid in.
- **Transparent by default.** Amounts and assets are public. A confidential output shows
  that a payment happened, without its amount or asset.
- **Contracts.** A spend of a known contract (an escrow, a drip, an order) is named after
  its template.

## Data for scripts

The explorer's data is the Esplora REST API, at
`https://sequentiatestnet.com/api/` for Sequentia and
`https://sequentiatestnet.com/testnet4/api/` for Bitcoin testnet4. For example:

```sh
curl https://sequentiatestnet.com/api/blocks/tip/height
curl https://sequentiatestnet.com/api/address/<address>
```
