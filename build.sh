#!/usr/bin/env bash
set -euo pipefail


main() {
  parcel build \
    --public-url "." \
    --out-dir dist \
    --no-minify \
    src/browser/register.ts \
    src/browser/serviceWorker.ts \
    src/browser/pages/login.ts \
    src/browser/pages/vscode.ts
}

main "$@"

