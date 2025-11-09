#/bin/bash -eux

pnpm install

pnpm exec playwright install --with-deps
