# Status and problem reports

## Is it working?

The status page at [sequentiatestnet.com/status](https://sequentiatestnet.com/status/) says
whether the testnet is healthy right now:

- **The chain:** its height, how long ago the last block came (one is expected about
  every minute), and whether the newest block's Bitcoin anchor is current.
- **Each service:** the explorer, the web wallet, the faucet, Compages, the staking
  pools, Emissio and the Sequentia Core download, each **Working** or **Not working**, with its
  checks over the last hour and its share of passed checks over the last day.

Every service is checked once a minute through its public address, so the page sees what
you see. If something you use is marked **Not working**, it is already known.

## Report a problem from the web wallet

**More → Report a problem** in the [web wallet](web-wallet.md) sends a report without
leaving it:

1. **What happened?** What you did, what you expected, and what happened instead.
2. **Emissio account code** (optional): paste it to be credited if the report is accepted.
3. **Send report.** The wallet answers with the report's number.

The report includes the wallet's version, its mode and its recent errors, with anything
that looks like an address or a key removed. It never includes your recovery phrase or
your keys, and the wallet refuses a description that contains words of your phrase. Your
address is added only if you tick **Also send my address**, and **What will be sent**
shows the exact report before you send it.

## Report a problem from anywhere else

The **Bugs** page on [Emissio](https://sequentiatestnet.com/emissio/) takes a report about
any part of the testnet, with the steps to reproduce it and a screenshot. Security
issues go to Emissio's **Security** page instead, privately.

A good report says what you did step by step, what you expected, what happened, and when.
Accepted reports are rewarded by severity.
