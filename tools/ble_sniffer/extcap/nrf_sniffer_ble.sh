#!/bin/bash

script_path=$(dirname "$0")

uv venv --clear ~/.cache/nrf_sniffer
uv sync
uv run python "$script_path/nrf_sniffer_ble.py" "$@"
