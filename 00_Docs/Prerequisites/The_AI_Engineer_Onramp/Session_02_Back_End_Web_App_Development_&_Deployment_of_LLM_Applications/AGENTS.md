# Agent Instructions — Session 02 (Backend Web App Development)

> **These rules extend the repository's root [`AGENTS.md`](../../../../AGENTS.md).**
> Apply the root `AGENTS.md` first, then the additions below. They refine — they do not replace — the root instructions; where they are silent, the root `AGENTS.md` governs, and its teaching-assistant and safety rules always apply.
>
> This is an **example** of the conventions you can give your own AI coding assistant. Keep these in a single `AGENTS.md` at your project root — it is the harness-agnostic standard, so one file works across every coding agent instead of tool-specific rule files.

## Code Structure & Organization

- Enforce one clear entry point (main.tsx, api.py, etc.)
- Require descriptive folder names (/components, /hooks, /services)
- Limit file size (e.g., warn if file >300 lines)
- Require each component to live in its own file
- Enforce consistent imports (absolute paths, no deep relative ../../../)

## 🎨 Naming Conventions

- **Variables:** camelCase
- **Components & Classes:** PascalCase
- **Constants:** UPPER_SNAKE_CASE

## 🌊 GitFlow Workflow

Follow these GitFlow best practices for professional branch development:

### 🏗️ Set up `main` and `develop`

**Clone your repository:**
```bash
# Clone your repository and navigate into it
git clone git@github.com:yourname/yourrepo.git   # Clones the repository using SSH
cd yourrepo                                      # Changes directory to your new repo
```

**Create the `develop` branch:**
```bash
git checkout -b develop
git push -u origin develop
```

### 📦 Prepare a Release

**Create a release branch from `develop`:**
```bash
git checkout develop
git pull origin develop
git checkout -b release/1.2.0
git push -u origin release/1.2.0
```

**Only bug fixes and version updates:**
```bash
git add .
git commit -m "Fix login validation bug"
git push
```

### 🚢 Release to Production

**Merge the release branch into `main`:**
```bash
git checkout main
git pull origin main
git merge --no-ff release/1.2.0
git push origin main
```

**Tag the release:**
```bash
git tag -a v1.2.0 -m "Release version 1.2.0"
git push origin v1.2.0
```

### 🔄 Merge Release Back into `develop`

**Keep bug fixes in sync:**
```bash
git checkout develop
git pull origin develop
git merge --no-ff release/1.2.0
git push origin develop
```

**Clean up:**
```bash
git branch -d release/1.2.0
git push origin --delete release/1.2.0
```
