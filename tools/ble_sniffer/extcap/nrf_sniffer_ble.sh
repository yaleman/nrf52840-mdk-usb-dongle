#!/bin/bash

set -eux

script_path=$(dirname "$0")
cd "$script_path" || exit
export VIRTUAL_ENV="$HOME/.cache/nrf_sniffer"
uv venv --clear "${VIRTUAL_ENV}"
uv sync --active
# shellcheck disable=SC1091
# source "${VIRTUAL_ENV}/bin/activate" || exit 1
uv run nrf-sniffer-ble "$@"
