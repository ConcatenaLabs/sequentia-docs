# Compages

Compages, at [sequentiatestnet.com/bridge](https://sequentiatestnet.com/bridge/), brings
assets from other chains onto Sequentia and takes them back. On the testnet it connects:

| From | You send | You receive on Sequentia |
|---|---|---|
| Ethereum (Sepolia) | ether or any ERC-20 | the matching asset, ticker ending `.e` |
| Solana (devnet) | SOL or any SPL token | the matching asset, ticker ending `.s` |
| Bitcoin (testnet4) | BTC | SBTC, bitcoin pegged 1:1 |

Compages is run by an operator who holds what is deposited; returning the Sequentia asset
releases the original.

## Bring an asset in from Ethereum

1. Choose **Ethereum (Sepolia)** and **Connect wallet** (an Ethereum wallet with Sepolia
   ether for gas).
2. Choose the asset and the amount, and paste your Sequentia address, or press **Use my
   Sequentia wallet**.
3. **Deposit**, and approve it in your Ethereum wallet.
4. The steps show as they complete: deposit sent, Ethereum finality, minting, delivered.
   **Track a deposit** finds one again later.

Solana works the same way from **Solana (devnet)**: get a deposit address, send to it, and
the asset arrives on Sequentia.

## Send it back

Under **Sequentia → Ethereum**, enter the Ethereum address that should receive the funds and
press **Get my redemption address**. Send the bridged asset to that Sequentia address from
any Sequentia wallet. The vault releases the original once the return's Bitcoin anchor is
buried deep enough that a Bitcoin reorganisation cannot undo it, so a return takes longer
than a deposit.

## Bitcoin needs no bridge

Every Sequentia wallet holds real bitcoin at its `tb1…` address. To use bitcoin with
Sequentia, send it to that address as it is.

SBTC, bitcoin pegged 1:1 on Sequentia and backed by BTC held in a reserve, is for the two
things native bitcoin cannot do on the Sequentia chain: confidential transfers, and
anything that needs a covenant, such as a limit order that rests on the chain until it is
filled. **Bitcoin → SBTC** gives you a deposit address; **SBTC → Bitcoin** gives you a
return address.
