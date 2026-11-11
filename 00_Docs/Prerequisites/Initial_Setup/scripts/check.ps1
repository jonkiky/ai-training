# =============================================================================
#  check.ps1  —  verify your AI Engineer environment (Windows)
#
#  Thin wrapper around the OFFICIAL setup script, which is the single source of
#  truth and is maintained upstream:
#    https://github.com/AI-Maker-Space/Interactive-Dev-Environment-for-AI-Engineers
#
#  The one-click setup (see ..\README.md) installs that script into $HOME\ai-eng.
#  This wrapper just runs it in -Check mode (report only, changes nothing). If
#  you don't have it yet, it fetches a copy first.
#
#  Usage:  powershell -ExecutionPolicy Bypass -File check.ps1
# =============================================================================
$ErrorActionPreference = "Stop"

$aiEng = if ($env:AI_ENG_HOME) { $env:AI_ENG_HOME } else { Join-Path $HOME "ai-eng" }
$setup = Join-Path $aiEng "setup.ps1"
$url   = "https://raw.githubusercontent.com/AI-Maker-Space/Interactive-Dev-Environment-for-AI-Engineers/main/setup.ps1"

if (-not (Test-Path $setup)) {
  Write-Host "No $setup found; fetching the official setup from upstream..."
  New-Item -ItemType Directory -Force -Path $aiEng | Out-Null
  try {
    Invoke-RestMethod $url -OutFile $setup
  } catch {
    Write-Error "Could not download the setup script. Check your connection and see ..\README.md."
    exit 1
  }
}

powershell -ExecutionPolicy Bypass -File $setup -Check
