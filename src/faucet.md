# The faucet

The faucet at [sequentiatestnet.com/faucet](https://sequentiatestnet.com/faucet) sends
free testnet coins to a web wallet's receive code or to any Sequentia testnet address:

| Asset | What it is |
|---|---|
| BTC | Bitcoin on testnet4, the Bitcoin test network the Sequentia testnet anchors to |
| tSEQ | The Sequence token on the testnet: stake it, or spend it like any other asset |
| USDX | A test dollar, sent in amounts large enough to try the platforms that price in dollars |
| EURX | A test euro |
| GOLD, SILVR, OILX | Test commodity tokens |

**All of them** sends one of each.

## How to ask

1. Copy a receive code or an address from your wallet:
   - the web wallet: **Receive → Copy receive code** (its Receive tab can also ask the
     faucet itself);
   - Sequentia Core: **Receive → Create new receiving address**;
   - a node: `sequentia-cli getnewaddress`.
2. Paste it into the faucet and choose the asset.
3. The page says what was sent. An asset on the Sequentia testnet confirms within about a
   minute. BTC sent to a web wallet's receive code is in the wallet within seconds; BTC
   sent to a `tb1` address is paid on testnet4 and arrives after a Bitcoin block.

## Limits

- The faucet pays each asset once per wallet and once per address. Once your wallet has an
  asset from the faucet, trade for more of it in the wallet; you can still ask for each
  asset it has not received.
- One network is paid each asset for at most ten different wallets a day. When yours has
  reached that, the faucet says when it can pay again.
- tSEQ is paid from a reserve that releases one payment every few minutes, for everyone.
  When it asks you to wait, try again a little later.
- Addresses starting `tb1` are the usual ones. Confidential addresses (`tsqb1…`) receive
  every asset except tSEQ.

The amount of each asset is shown on the page.
