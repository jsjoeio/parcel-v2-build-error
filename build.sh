#!/usr/bin/env bash
set -euo pipefail


main() {
  yarn run tsc

  yarn browserify out/register.js -o out/register.js
  # yarn browserify out/serviceWorker.js -o out/serviceWorker.js
  # yarn browserify out/pages/login.js - out/pages/login.js
  # yarn browserify out/pages/vscode.js - out/pages/vscode.js
  # yarn browserify src/browser/register.ts -p [ tsify --noImplicitAny] > out/register.js

}

main "$@"

