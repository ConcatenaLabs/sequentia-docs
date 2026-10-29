# The Sequentia testnet

Sequentia is a Bitcoin sidechain for asset tokenization and disintermediated exchanges.
Anyone can issue an asset on it, every asset can pay transaction fees, and every block
is anchored to a Bitcoin block. The testnet at
[sequentiatestnet.com](https://sequentiatestnet.com) is the place to try all of it.
Its coins and assets carry no value, so experiment freely.

This guide covers everything the site offers:

| | What it is for |
|---|---|
| [The web wallet](web-wallet.md) | A wallet in your browser for bitcoin and every Sequentia asset. The quickest way in. |
| [The faucet](faucet.md) | Free testnet coins: the Sequence token (tSEQ) and sample assets. |
| [Sequentia Core](sequentia-core.md) | The full node and desktop wallet, for Linux and Windows. |
| [The explorer](explorer.md) | Every block, transaction and asset on the chain, and the Bitcoin testnet4 chain it anchors to. |
| [Compages](compages.md) | Bring assets in from Ethereum (Sepolia) and Solana (devnet), or peg bitcoin as SBTC. |
| [Staking pools](staking-pools.md) | Who produces blocks, and how to lend your stake's weight to one of them. |
| [Emissio](emissio.md) | Earn Sequence tokens, paid at mainnet launch, for testing and reporting problems. |

New here? Start with [Getting started](getting-started.md). Something not working? Check
the [status page](status-and-reports.md) first, then report it.

## Four things that set Sequentia apart

**Bitcoin anchoring.** Every Sequentia block names a Bitcoin block. If Bitcoin
reorganises that block away, Sequentia reorganises with it, at once. On the testnet the
parent chain is Bitcoin testnet4.

**Native bitcoin.** A Sequentia wallet holds real bitcoin beside its Sequentia assets, at
the same `tb1…` address. Bitcoin needs no bridge to be used with Sequentia.

**Fees in any asset.** A transaction pays its fee in whichever asset a block producer
accepts. The Sequence token (SEQ, tSEQ on the testnet) is one choice among the others;
its only special role is staking, which is how block producers are chosen.

**Transparent by default.** Addresses and amounts are public, as on Bitcoin.
Confidential transfers, which hide the amount and the asset, are available whenever you
choose them, one transfer at a time.
