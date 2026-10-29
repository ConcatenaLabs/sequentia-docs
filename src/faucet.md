# The faucet

The faucet at [sequentiatestnet.com/faucet](https://sequentiatestnet.com/faucet) sends
free testnet coins to any Sequentia testnet address:

| Asset | What it is |
|---|---|
| tSEQ | The Sequence token on the testnet: stake it, or spend it like any other asset |
| USDX | A test dollar, sent in amounts large enough to try the platforms that price in dollars |
| EURX | A test euro |
| GOLD, SILVR, OILX | Test commodity tokens |

**All of them** sends one of each.

## How to ask

1. Copy an address from your wallet:
   - the web wallet: **Receive** (its Receive tab can also ask the faucet itself);
   - Sequentia Core: **Receive → Create new receiving address**;
   - a node: `sequentia-cli getnewaddress`.
2. Paste it into the faucet, choose the asset and send.
3. The page shows the transaction; it confirms within about a minute.

## Limits

- One payment of each asset per address, and per connection, each hour.
- tSEQ is paid from a reserve that releases one payment every few minutes. When it asks you
  to wait, try again a little later.
- Addresses starting `tb1` are the usual ones. Confidential addresses (`tsqb1…`) receive
  every asset except tSEQ.

The amount of each asset is shown on the page.
