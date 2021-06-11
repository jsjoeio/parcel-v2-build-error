#!/usr/bin/env bash
set -euo pipefail


main() {
  yarn run tsc
}

main "$@"

