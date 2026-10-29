# Staking pools

Sequentia's blocks are produced by stakers: holders of the Sequence token who lock it in a
staking output. The more stake a key holds, the more often it is chosen to propose a
block, and a committee of stakers certifies each block. A block's reward is the fees of
the transactions in it, in whatever assets they were paid.

The board at [sequentiatestnet.com/pools](https://sequentiatestnet.com/pools/) lists every
staker producing blocks: its stake, how much was delegated to it and by how many, how
reliably it produces, and what it has committed on-chain to paying the people who
delegate to it.

## Stake

Staking takes at least **40,000 tSEQ**, which the [faucet](faucet.md) can provide. The
stake stays in your wallet, locked by your own key, and can be withdrawn after an
unbonding delay.

- **Sequentia Core:** the **Staking** tab.
- **A node:**

  ```sh
  sequentia-cli -rpcwallet=<wallet> getnewaddress
  sequentia-cli -rpcwallet=<wallet> getaddressinfo <address>     # its "pubkey"
  sequentia-cli -rpcwallet=<wallet> registerstake <pubkey> 40000
  sequentia-cli -rpcwallet=<wallet> startstaking
  ```

A stake produces blocks only while its node is running. If you would rather not run one,
delegate.

## Delegate

Delegating lends your stake's weight to a pool and shares in the rewards of the blocks it
produces.

- **Your coins stay yours.** The staking output keeps your key as its only spending
  condition; the pool never holds anything of yours.
- **You can leave at any time**, in one action, without anyone's permission.
- **What you trust the pool with is the reward.** Its payout commitment is on-chain, and
  any change has to be announced 1,440 blocks (about a day) in advance. The board puts
  pending announcements at the top.

From **Sequentia Core**: the **Staking** tab lists the pools; pick one and delegate. From
a node:

```sh
sequentia-cli -rpcwallet=<wallet> delegatestake "<pool key>"
sequentia-cli -rpcwallet=<wallet> listdelegations
sequentia-cli -rpcwallet=<wallet> undelegatestake
```

## Read the board

| Column | Meaning |
|---|---|
| Payout | **Proportional** (your share of every reward, minus the fee, claimable on-chain), **Lottery** (each block pays one delegator, drawn by stake), **Fixed address** (every block pays one address the operator named), or **None** (the operator keeps every reward) |
| Fee | The pool's share of the rewards |
| Production | Blocks produced over the last 500 against what its stake entitles it to: **On target**, **Missing blocks** or **Offline** |

## Run a pool

In Sequentia Core, open the **Staking** tab and choose **Run a staking pool**, then pick a
payout type and a fee. From a node:

```sh
sequentia-cli -rpcwallet=<wallet> -named announcepayout mode=split commission_bp=500
```

`mode=lottery` makes a lottery pool and `mode=direct address=…` a fixed address; the fee is
in basis points (500 is 5%). The pool appears on the board once the announcement is mined.
