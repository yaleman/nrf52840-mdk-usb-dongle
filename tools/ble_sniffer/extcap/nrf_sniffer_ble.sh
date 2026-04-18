#!/bin/bash

script_path=$(dirname "$0")
cd "$script_path" || exit
export VIRTUAL_ENV="$HOME/.cache/nrf_sniffer"
if [ ! -d "$VIRTUAL_ENV" ]; then
    uv venv --clear "${VIRTUAL_ENV}"
fi
uv sync --active --quiet
uv run --active nrf-sniffer-ble "$@"
