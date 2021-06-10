#!/usr/bin/env bash
set -euo pipefail


main() {
  parcel build \
    --public-url "." \
    --dist-dir dist \
    --no-optimize \
    src/browser/register.ts \
    src/browser/serviceWorker.ts \
    src/browser/pages/login.ts \
    src/browser/pages/vscode.ts
}

main "$@"

