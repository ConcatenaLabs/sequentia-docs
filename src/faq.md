# FAQ

## Do testnet coins have any value?

No. tSEQ, the sample assets and testnet bitcoin are for testing only, and the testnet
can be reset. What you earn on [Emissio](emissio.md) is a separate balance, paid in
Sequence tokens at mainnet launch.

## What is the difference between Sequentia, the Sequence token, SEQ and tSEQ?

Sequentia is the network. The Sequence token is its token; its ticker is SEQ, and on
the testnet tSEQ.

## Which asset pays my fees?

Any asset that block producers accept. Your wallet offers the assets you hold that are
accepted, and shows the fee in that asset's own units before you sign. The Sequence
token has no special place in fees.

## How long does a payment take?

It shows at once and confirms in the next block, about a minute later. A payment from the
web wallet to another wallet's receive code arrives in seconds. A trade with bitcoin waits
for Bitcoin blocks and can take an hour or more.

## When is a payment final?

A confirmed payment stands as long as Bitcoin does not reorganise the Bitcoin block its
Sequentia block anchors to. If Bitcoin reorganises that block away, Sequentia
reorganises with it. Services that release funds elsewhere, such as Compages, wait until
the anchor is buried deep enough.

## Is the bitcoin in my wallet real bitcoin?

Yes: native bitcoin on Bitcoin testnet4, held at the same `tb1…` address as your
Sequentia assets. SBTC is a separate asset, bitcoin pegged 1:1 on Sequentia, needed only
for confidential transfers and covenants. See [Compages](compages.md).

## Are my transactions private?

They are public by default, as on Bitcoin: anyone can see addresses, amounts and assets
on the explorer. Confidential transfers hide the amount and the asset; you choose them
per transfer, by receiving at a confidential address (`tsqb1…`).

## I lost my wallet.

- **Web wallet:** choose **Import a recovery phrase**.
- **Sequentia Core:** restore the backup file. Open **Window → Node window**, choose the
  **Console** tab and run `restorewallet "<a name>" "<path to the backup>"`.

Without the phrase or the backup nobody can recover the wallet for you. On the testnet,
create a new wallet and ask the faucet again.

## Someone else has my recovery phrase or my wallet backup.

Treat that wallet as lost: create a new one and move what it holds. On the testnet this
costs nothing; on any real network it is how coins are stolen.

## Can I issue my own asset?

Yes. In Sequentia Core (the **Assets** tab), or with `sequentia-cli issueasset`, an asset is issued in one
transaction. Register its name and ticker so wallets and the explorer show them.

## Where do I ask for help?

Check the [status page](status-and-reports.md) for known problems, then send a report
from the web wallet (**More → Report a problem**) or on Emissio's **Bugs** page.
