# sequentia-docs

The tester guide for the Sequentia testnet, served at
[sequentiatestnet.com/docs](https://sequentiatestnet.com/docs/). Sequentia is a Bitcoin
sidechain for asset tokenization and disintermediated exchanges; this guide explains how
to use what the public testnet site offers: the faucet, Sequentia Core, the explorer,
Compages, the staking pools, Emissio, the status page and problem reports, with an FAQ.

It is an [mdBook](https://github.com/rust-lang/mdBook): Markdown pages under `src/`, in
the order `src/SUMMARY.md` gives, built into a static site.

## Build

```sh
./build.sh          # fetches the pinned mdBook once into .tools/, checks it, builds into book/
```

To preview while editing, run the fetched binary's server and open the address it prints:

```sh
.tools/mdbook serve --open
```

`build.sh` names the mdBook release and its SHA-256; change both together to move to
another release.

## Publish

The testnet box builds from its clone of this repository and serves `book/` at `/docs/`.
Its host configuration lives in
[sequentia-testnet-ops](https://github.com/ConcatenaLabs/sequentia-testnet-ops): after a
merge here, on the box,

```sh
cd /root/sequentia/sequentia-testnet-ops && bin/apply-docs.sh
```

pulls this repository, builds it and installs the result in `/srv/docs`.

## Writing for this guide

- Write for someone who arrived today: the present tense, what each thing is and how to
  use it. No history, no version numbers, no "new" or "soon".
- Name only what the site's front page offers. A product the site does not list publicly
  has no page and no mention here.
- The network is Sequentia; its token is the Sequence token (SEQ, tSEQ on the testnet).
- Check every menu name, command and limit against the product itself before writing it.
