# The web wallet

The web wallet at [sequentiatestnet.com/wallet](https://sequentiatestnet.com/wallet/) is a
self-custodial wallet that runs entirely in your browser. It holds bitcoin (Bitcoin
testnet4) and every Sequentia asset under one recovery phrase. Your keys are made and kept
in the browser; the site never sees them.

## Create or restore

- **Create new wallet** makes a new twelve-word recovery phrase. Write it down before you
  confirm it.
- **Import a recovery phrase** restores an existing wallet.

The wallet lives in this browser's storage. Clearing the site's data removes it from the
browser, and your phrase brings it back. Never type the phrase into a website, a form or a
message, including a problem report.

## Balance

Each asset has one figure, and the total at the top is in your reference currency
(choose it with **Show values in**). BTC is always the first row. An amount that has
arrived but cannot be spent yet shows as "arriving" under its figure.

## Receive

**Receive** shows a **receive code**: one code for any asset and any amount, BTC
included. A payment from another Sequentia wallet to a receive code arrives in seconds.
Each code is paid once, and a new one appears when it is. Any Bitcoin wallet reads the same
code as a plain bitcoin address request. The faucet can pay it directly from the Receive tab.

## Send

Paste a receive code, an address or an invoice under **Recipient**, choose the asset and
the amount, and review. The review shows what arrives and the fee, in the asset that pays
it. Nothing is signed until you press **Send**.

## Trade

The **Swap** tab trades one asset for another: choose what you pay, what you get and how
much, then **Review** and **Trade**. The market above the form shows the last price, the
chart and recent trades. A trade with bitcoin settles after the next Bitcoin blocks, so it
can take an hour or more; the row in **Your trades** says what is already done.

## Modes

**Settings** (the gear) switches between user mode, where the wallet chooses how each
payment travels, and developer mode, which shows every route by name with its own balance
and manual controls. Each wallet keeps its own setting.

## Report a problem

**More → Report a problem** sends a report without leaving the wallet:

1. **What happened?** What you did, what you expected, and what happened instead.
2. **Emissio account code** (optional): paste it to be credited if the report is accepted.
3. **Send report.** The wallet answers with the report's number.

The report includes the wallet's version, its mode and its recent errors, with anything
that looks like an address or a key removed. It never includes your recovery phrase or
your keys, and the wallet refuses a description that contains words of your phrase. Your
address is added only if you tick **Also send my address**, and **What will be sent**
shows the exact report before you send it.
