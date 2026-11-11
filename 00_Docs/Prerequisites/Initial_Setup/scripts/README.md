# Setup Verification Scripts

The officially supported way to install and verify your environment is the one-click setup in [Initial Setup](../README.md). It installs the canonical `setup.sh` / `setup.ps1` — maintained upstream in [Interactive-Dev-Environment-for-AI-Engineers](https://github.com/AI-Maker-Space/Interactive-Dev-Environment-for-AI-Engineers) — into `~/ai-eng`, and you verify with:

- **Mac/Linux:** `bash ~/ai-eng/setup.sh --check`
- **Windows:** `powershell -ExecutionPolicy Bypass -File $HOME\ai-eng\setup.ps1 -Check`

This folder provides thin convenience wrappers that run **exactly that official check** (fetching the upstream script if you don't have it yet). They never change anything — they run in check-only mode.

## Usage

### Mac/Linux
```bash
bash 00_Docs/Prerequisites/Initial_Setup/scripts/check.sh
```

### Windows
```powershell
powershell -ExecutionPolicy Bypass -File 00_Docs\Prerequisites\Initial_Setup\scripts\check.ps1
```

You want to see **All good**. If you see anything else, re-run the full setup (without `--check`) from [Initial Setup](../README.md) to install or fix what's missing.

> **Single source of truth:** these wrappers defer to the upstream `setup.sh` / `setup.ps1`. Nothing here duplicates or modifies the official setup logic, so there's no second copy to drift out of sync.
