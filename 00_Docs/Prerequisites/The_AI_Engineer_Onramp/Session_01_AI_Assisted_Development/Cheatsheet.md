# 🚀 Session 1 Cheatsheet: Advanced Backend Assignment

## ⚙️ **Setup Requirements**

### Required Accounts & Tools
- ✅ GitHub account
- ✅ OpenAI API key ([create here](https://platform.openai.com/api-keys))
- ✅ VS Code installed (officially supported; any other AI-IDE works too)
- ✅ Python 3.12–3.14 (3.13 recommended)
- ✅ Node.js 24 & npm installed
- ✅ `uv` package manager (Python)

> All of the above are installed and verified by the one-click [Initial Setup](../../Initial_Setup/README.md).

### Test Your Setup
```bash
# Check Python
python --version  # Should be 3.8+

# Check Node
node --version
npm --version

# Install uv (if needed)
curl -LsSf https://astral.sh/uv/install.sh | sh
```

---

## 📋 **The Assignment Flow**

### **Part 1: Backend Setup (15 min)**
1. **Clone** your repo in your editor (`Cmd+Shift+P` → Git: Clone)
2. **Copy** `app.py` from `Advanced_assignment/` folder
3. **Install** dependencies: `uv sync`
4. **Run** backend: `uv run uvicorn app:app --reload`
5. **Test** at [http://localhost:8000/docs](http://localhost:8000/docs)

### **Part 2: Frontend with v0 (20 min)**
1. **Go to** [v0.dev](https://v0.dev)
2. **Upload** your `app.py` file
3. **Prompt**: *"Create a React frontend that connects to this sentiment analysis API. Include a text input and display the sentiment result."*
4. **Download** using npx command: `npx create-v0-app@latest frontend`
5. **Install**: `cd frontend && npm install --legacy-peer-deps`
6. **Run**: `npm run dev`

### **Part 3: Connect Them (10 min)**
1. **Fix CORS** (if needed) - ask your AI assistant to add CORS middleware to `app.py`
2. **Update** frontend API calls to `http://localhost:8000`
3. **Run both**:
   - Terminal 1: `uv run uvicorn app:app --reload`
   - Terminal 2: `cd frontend && npm run dev`

---

## 🔑 **Key Commands Reference**

### Backend (FastAPI)
```bash
# Install dependencies
uv sync

# Run server
uv run uvicorn app:app --reload

# Test with curl
curl -X POST "http://localhost:8000/sentiment" \
     -H "Content-Type: application/json" \
     -d '{"text": "I love this!"}'
```

### Frontend (React)
```bash
# Install (use if errors)
npm install --legacy-peer-deps

# Run dev server
npm run dev

# Kill port 3000 if stuck
kill -9 $(lsof -ti tcp:3000)
```

### Git Workflow
```bash
# Commit backend
git add .
git commit -m "feat: add sentiment analysis backend"
git push origin main

# Commit frontend
git add .
git commit -m "feat: add v0 frontend connected to backend"
git push origin main
```

---

## 🎯 **What the Backend Does**

The `app.py` provides:
- **POST /sentiment** - Analyzes text sentiment
- **GET /health** - Health check
- **GET /** - API info
- **GET /docs** - Interactive API docs (Swagger)

**Simple sentiment logic:**
- Contains "good"/"love" → positive
- Contains "bad"/"hate" → negative
- Otherwise → neutral

---

## 🐛 **Common Issues & Fixes**

| Problem                      | Solution                             |
|------------------------------|--------------------------------------|
| Port 8000 in use             | `kill -9 $(lsof -ti tcp:8000)`       |
| Port 3000 in use             | `kill -9 $(lsof -ti tcp:3000)`       |
| npm install fails            | Use `npm install --legacy-peer-deps` |
| CORS errors                  | Add CORS middleware to `app.py`      |
| Frontend can't reach backend | Check URLs point to `localhost:8000` |

---

## ✅ **Success Checklist**

To complete this assignment, verify you can:
- [ ] Run backend at `localhost:8000`
- [ ] See docs at `localhost:8000/docs`
- [ ] Test sentiment endpoint with curl or Swagger
- [ ] Run frontend at `localhost:3000`
- [ ] Submit text and see sentiment response
- [ ] Have both running simultaneously

---

## 💡 **Pro Tips**

- **Keep terminals open** - You need 2 terminals running (backend + frontend)
- **Test backend first** - Verify it works before connecting frontend
- **Use Swagger UI** - Easier than curl for testing (`/docs`)
- **Ask your AI assistant for help** - It can fix CORS, update API calls, debug errors
- **Check the network tab** - Use browser DevTools to see API requests

---

## 📚 **Helpful Links**

- Backend README: `Advanced_assignment/README_backend.md`
- Full Assignment: `Assignment.md`
- FastAPI Docs: [https://fastapi.tiangolo.com](https://fastapi.tiangolo.com)
- v0.dev: [https://v0.dev](https://v0.dev)

---

**Remember**: The goal is to understand the full stack - backend API → frontend UI → connected system. Take it step by step! 🎯
