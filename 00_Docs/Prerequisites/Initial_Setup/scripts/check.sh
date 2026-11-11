#!/usr/bin/env bash
# =============================================================================
#  check.sh  —  verify your AI Engineer environment (Mac/Linux/WSL2)
#
#  Thin wrapper around the OFFICIAL setup script, which is the single source of
#  truth and is maintained upstream:
#    https://github.com/AI-Maker-Space/Interactive-Dev-Environment-for-AI-Engineers
#
#  The one-click setup (see ../README.md) installs that script into ~/ai-eng.
#  This wrapper just runs it in --check mode (report only, changes nothing). If
#  you don't have it yet, it fetches a copy first.
#
#  Usage:  bash check.sh
# =============================================================================
set -euo pipefail

AI_ENG="${AI_ENG_HOME:-$HOME/ai-eng}"
SETUP="$AI_ENG/setup.sh"
URL="https://raw.githubusercontent.com/AI-Maker-Space/Interactive-Dev-Environment-for-AI-Engineers/main/setup.sh"

if [ ! -f "$SETUP" ]; then
  echo "No ${SETUP/#$HOME/~} found; fetching the official setup from upstream..."
  mkdir -p "$AI_ENG"
  if ! curl -fsSL "$URL" -o "$SETUP"; then
    echo "Could not download the setup script. Check your connection and see ../README.md." >&2
    exit 1
  fi
fi

exec bash "$SETUP" --check
