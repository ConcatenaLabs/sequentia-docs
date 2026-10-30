# Sequentia Core

Sequentia Core is the full node and its desktop wallet. It downloads and checks every
block itself, follows Bitcoin testnet4 to check each block's anchor, and is the software
block producers run. It is built from
[ConcatenaLabs/Sequentia](https://github.com/ConcatenaLabs/Sequentia).

## Download

[sequentiatestnet.com/download/core](https://sequentiatestnet.com/download/core/) has the
current release for Linux (x86-64) and Windows (64-bit), and a `SHA256SUMS` file to check
the download against:

```sh
sha256sum -c SHA256SUMS --ignore-missing
```

## Install and run

**Linux.** Extract the tarball and start the desktop wallet:

```sh
tar xzf sequentia-core-*-linux-x86_64.tar.gz
cd sequentia-core-*/
bin/sequentia-qt
```

**Windows.** Run the installer, then open **Sequentia Core** from the Start menu.

Sequentia Core connects to the testnet on its own; no configuration is needed. The first
start downloads the chain, which takes a while. The wallet is usable once the progress
bar at the bottom is gone.

To make a wallet, press **Create a new wallet** (or **File → Create Wallet**). Save a copy
of it with **File → Backup Wallet**, and keep the copy private: it holds the keys.

## Run it as a node

The same download carries the daemon and its command-line client:

```sh
bin/sequentiad -daemon
bin/sequentia-cli getblockchaininfo     # height and sync progress
bin/sequentia-cli getanchorstatus       # the tip's Bitcoin anchor, and whether it checks
bin/sequentia-cli createwallet mywallet
bin/sequentia-cli getnewaddress
bin/sequentia-cli stop
```

The data directory is `~/.elements` on Linux and `%APPDATA%\Elements` on Windows, and the
configuration file in it is `elements.conf`. The testnet is the default chain, so no
`chain=` line is needed.

## What the wallet does

- **Send and receive** bitcoin and any Sequentia asset. Every address starting `tb1` works
  on both chains: the same address receives bitcoin and Sequentia assets.
- **Pay fees in any accepted asset.** The fee is shown in that asset's own units.
- **Issue assets**: your own token, with a name and a ticker registered on the asset
  registry.
- **Stake and delegate** from the **Staking** tab: see [Staking pools](staking-pools.md).
- **Confidential transfers** when you want them: a confidential address hides the amount
  and the asset of the payments it receives.

## Following Bitcoin

Each Sequentia block names a Bitcoin testnet4 block. Sequentia Core checks those anchors
against Bitcoin, and if Bitcoin reorganises an anchored block away, the node reorganises
Sequentia to match. `getanchorstatus` shows the anchor of the newest block and whether it
checked.
