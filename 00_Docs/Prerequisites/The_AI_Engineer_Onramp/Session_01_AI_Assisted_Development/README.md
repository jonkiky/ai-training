# 🪂 Session 1 Overview: Kickoff & AI-Assisted Interactive Development Environment Setup

| ⏺️ Recording                                                                                                                                  | 🖼️ Slides                                                                                                                                                               | 👨‍💻 Repo       |
|:---------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------|
| [Recording!](https://us02web.zoom.us/rec/share/ztpkCP9S-eTyVe7CCFLpF2CM3_PWu-P81DBGmcZeYAW7DtSK9VL1elHIoDjdm_oW.RC-nq31aDuoYziOV) (f1#j7Nr^) | [Slides](https://www.canva.com/design/DAG6SNRlYoI/bpELIN03JVB1xNkd9yo8lA/edit?utm_content=DAG6SNRlYoI&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton) | You are here! |


In session 1, we’ll kick off the cohort! You’ll get introduced to **AI Makerspace** and to how we operate **The AI Engineer Onramp Bootcamp**. You’ll also meet the staff who will guide your journey (Instructors, Peer Supporters) and the people who will be on the same adventure (your Journey Group)!

## **📛 Required Tooling & Account Setup**

1. 🧑‍💻 Set up an **AI-powered code editor** as your [AI-Assisted Interactive Development Environment (AI-IDE)](https://github.com/AI-Maker-Space/Awesome-AIM-Index/blob/main/README.md).
2. 🔑 Set up an **API key** for [OpenAI](https://platform.openai.com/docs/models). Start [here](https://platform.openai.com/docs/quickstart/step-2-set-up-your-api-key) to create an OpenAI key that you can use throughout the course!
   - **Security Best Practice**: When storing API keys, create a `.env` file in your project root. This file is already included in [.gitignore](/.gitignore#L138) to prevent accidentally committing secrets to version control.

## **🧑‍💻 Recommended Pre-Work**

1. 🔀 Review the prerequisite Git & LLM/Agent material in `1` through `6` 
2. 📚 Read the following relevant papers and blogs on **AI-Assisted Development**:
    - [Claude Code: Best Practices for Agentic Coding](https://www.anthropic.com/engineering/claude-code-best-practices) (Apr 2025)
    - [Not All AI-Assisted Programming Is Vibe-Coding](https://simonwillison.net/2025/Mar/19/vibe-coding/) — by Simon Willison (Mar 2025)
3. 📚 Read the following relevant papers on **Prompting LLMs**:
    - [Principled Instructions Are All You Need for Questioning LLaMA-1/2, GPT-3.5/4](https://arxiv.org/abs/2312.16171) (Dec 2023)
    - [Chain-of-Thought Prompting Elicits Reasoning in Large Language Models](https://arxiv.org/abs/2201.11903) (Jan 2022)
    - [Language Models Are Few-Shot Learners](https://arxiv.org/abs/2005.14165) (May 2020)

## **🤔 Concepts**

The core **concepts** we’ll cover in Session 1 fall under two themes:

### **Software Engineering Using Branch Development**

1. Basic [Git Branching](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell)
2. Remote vs. Local Git Repositories — [Working with Remotes](https://git-scm.com/book/ms/v2/Git-Basics-Working-with-Remotes)
3. Agent rules (system-level instructions for coding agents)

### **Large Language Model Application Programming Interfaces (LLM APIs)**

1. The [Chat Completions](https://platform.openai.com/docs/api-reference/chat) model

---

## **⌨️ Code**

The **code** for this session flows directly from these core concepts, and includes:

1. Our detailed Git Flow
2. AI-Assisted Branch Development Using agent rules
3. Sending requests and getting responses using LLM APIs

## 🤩 **For Fun**

- Original [vibe coding tweet](https://x.com/karpathy/status/1886192184808149383) by Andrej Karpathy
- The [Way of Code](https://www.thewayofcode.com/) by Rick Rubin and an [interview on its cultural impact](https://www.youtube.com/watch?v=6BDsFUvPqI0)
