#!/bin/sh

set -e

npm install
npm rebuild node-sassC

SHELL=/bin/sh exec npm run watch
