#!/bin/bash

script_path=$(dirname "$0")
cd "$script_path" || exit
CACHE_DIR="$HOME/.cache/nrf_sniffer"
uv venv --clear "${CACHE_DIR}"
uv sync
# shellcheck disable=SC1091
source "${CACHE_DIR}/bin/activate" || exit 1
uv run python "$script_path/nrf_sniffer_ble.py" "$@"
