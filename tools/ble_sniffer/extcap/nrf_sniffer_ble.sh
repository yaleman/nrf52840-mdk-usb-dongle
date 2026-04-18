#!/bin/bash

script_path=$(dirname "$0")
cd "$script_path" || exit
VIRTUAL_ENV="$HOME/.cache/nrf_sniffer"
uv venv --clear "${VIRTUAL_ENV}"
uv sync
# shellcheck disable=SC1091
source "${VIRTUAL_ENV}/bin/activate" || exit 1
uv run python "$script_path/nrf_sniffer_ble.py" "$@"
