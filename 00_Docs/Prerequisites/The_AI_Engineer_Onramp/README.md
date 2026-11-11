# AI Engineering Onramp

This folder contains materials for the **AI Engineer onramp** — a 4-week live session series designed to help prepare for the AI Engineering Bootcamp.

> ℹ️ _If you don't have experience building end-to-end applications, or you didn't **really** understand [The AI Engineer Challenge](https://aimakerspace.io/aie-challenge) when you completed it, this material may be useful to you. If you're already a senior software engineer, it may not be._

---

## 🔗 Quick Access

| 📰 Session Topic                 | ⏺️ Recording                                                                                                                                   | 🖼️ Slides                                                                                                                                                               | 👨‍💻 Repo                                                                                                                                                 |
|:---------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------|
| AI Assisted Development          | [Recording!](https://us02web.zoom.us/rec/share/ztpkCP9S-eTyVe7CCFLpF2CM3_PWu-P81DBGmcZeYAW7DtSK9VL1elHIoDjdm_oW.RC-nq31aDuoYziOV) (f1#j7Nr^)  | [Slides](https://www.canva.com/design/DAG6SNRlYoI/bpELIN03JVB1xNkd9yo8lA/edit?utm_content=DAG6SNRlYoI&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton) | [Repo](https://github.com/AI-Maker-Space/AIE11/tree/main/00_Onramp_Sessions/Session_01_AI_Assisted_Development)                                         |
| Backend Development & Deployment | [Recording!](https://us02web.zoom.us/rec/share/IXFR3_h72eZ1TbXWWVRiaE4xTSQIPBnpIRZUR-M5450uR8CIo-5kza1ixH9BanrA.KKu-OIqI1YHr3cfZ ) (=7Ld3A2L) | [Slides](https://www.canva.com/design/DAG492HUYsU/d98h86nIBAbpLsJ2TBFriQ/edit?utm_content=DAG492HUYsU&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton) | [Repo](https://github.com/AI-Maker-Space/AIE11/tree/main/00_Onramp_Sessions/Session_02_Back_End_Web_App_Development_%26_Deployment_of_LLM_Applications) |
| Connecting Frontend              | [Recording!](https://us02web.zoom.us/rec/share/LUaI1ZfiHiS8CKPdkiLdV3P7nC28VdfdgQevT8QSQZ1nxhrBQ5OZMdiRTcxkdcdG.XuT4aDzDRCfgJ42M) (Ys&0R.s3)  | [Slides](https://www.canva.com/design/DAG6SJk52Ac/h9ESc8SDgV9ARGtHs70sHQ/edit?utm_content=DAG6SJk52Ac&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton) | [Repo](https://github.com/AI-Maker-Space/AIE11/tree/main/00_Onramp_Sessions/Session_03_Connecting_Frontend_UIs_to_Backend_Deployments)                  |
| Complex End to End               | [Recording!](https://us02web.zoom.us/rec/share/0XHmXdmnULUwBUsRGaDeHYP6yZcuzZZADyd42X3Nrbxi73X8dUYuC4YSvBHRVxBC.8g8j2q03cpENfEnb) (y^X2R#Qx)  | [Slides](https://www.canva.com/design/DAG6SMVEUDw/xmV9dQcJlpCNr-tYpL5hZw/edit?utm_content=DAG6SMVEUDw&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton) | [Repo](https://github.com/AI-Maker-Space/AIE11/tree/main/00_Onramp_Sessions/Session_04_Bulding_Complex_End_to_End_LLM_Applications)                     |

## 📚 The stack we'll use is made up of best-practice tools:

- 🐙 Version Control: [GitHub](https://github.com/)
- 🐚 CLI: Shell for Unix-like OS ([WSL](https://ubuntu.com/desktop/wsl))
- 📦 Package & Env Management: [uv](https://docs.astral.sh/uv/)
- 📓 Python Notebooks: [Jupyter](https://jupyter.org/) / [Colab](https://colab.google/)
- 🖱️ Code Editor: [VS Code](https://code.visualstudio.com/) (officially supported; other AI-IDEs work too, but you're on your own for debugging)
- 🤖 CLI Coding Agent: [Claude Code](https://claude.com/download) (officially supported; any other agent works too)
- 🧠 LLM: [OpenAI GPT models](https://platform.openai.com/docs/models)
  - **Security**: Store API keys in a `.env` file (already in [.gitignore](/.gitignore#L138))
- 🎨 User Interface: Vibe-coded with [v0](https://v0.app/)
- ⚡ Web App Framework: [FastAPI](https://fastapi.tiangolo.com/)
- ☁️ Deployment: [Vercel](https://vercel.com/) & [Render](https://render.com/docs)


## 🔍 Verify Your Setup

Your development environment is installed and verified with the one-click setup in [Initial Setup](../Initial_Setup/README.md). To re-check it at any time, run the setup script with `--check` (this only verifies — it makes no changes):

### Mac/Linux
```bash
bash ~/ai-eng/setup.sh --check
```

### Windows
```powershell
powershell -ExecutionPolicy Bypass -File $HOME\ai-eng\setup.ps1 -Check
```

You want to see **All good**. If you see anything else, re-run the setup without `--check` to install or fix what's missing. See [Initial Setup](../Initial_Setup/README.md) for full instructions.

