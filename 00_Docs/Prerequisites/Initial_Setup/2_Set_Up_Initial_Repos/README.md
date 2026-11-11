# 🧑‍💻 Initial Repo Setup

This is the **one-time setup** of your local and remote Git repositories for the course. For the routine you'll run each week after this, see [Your Weekly Git Workflow](../4_Your_Weekly_Git_Workflow/README.md); for the mental model behind `origin`, `upstream`, and `local`, see [Version Control](../3_Version_Control/README.md).

## Setting Up Your Local and Remote Git Repos

You might be wondering: "*How do I make changes to this very repo that I’m reading right now?*" 

Short answer: **You don’t**!

Let’s set up the repo that you *will make changes to every week when doing your assignments.*

### 0. Pre-Requisites

First, do these things:

- Complete the [Environment Setup](../README.md) first. The one-click setup installs Git, creates your SSH key, and walks you through adding it to GitHub (and sets up WSL2/PowerShell on Windows).

### 1. Create a Brand New GitHub Repo

You can follow [this guide](https://docs.github.com/en/repositories/creating-and-managing-repositories/quickstart-for-repositories) if you need to, but creating a blank repo is pretty straightforward. A few notes on the settings you should use, as shown below.

1. Please use the **repository name** that corresponds to your cohort! e.g., `AIE11`. Don't get fancy with the name - your life will be easier if you keep the name simple.
2. The process will be easiest if you make sure **Add a README file is deselected**.

![image](https://i.imgur.com/WQtlxc5.png)

🎉 Congrats! *You’ve just created an empty remote repository on GitHub.*

### 2 Get [Secure Shell Protocol (SSH)](https://en.wikipedia.org/wiki/Secure_Shell) Address

Once you've created your new repository, copy the repo’s SSH address. You'll want to copy this address as shown below. Click the 'copy' icon at the end of the address bar 

![image](https://i.imgur.com/62QNyfz.png)

### 3️⃣ Clone Your GitHub Repo Locally

Execute the command:

```
git clone git@github.com:yourusername/yourrepo.git
```

Then we need to Change Directory, or `cd` into our newly cloned repository!

```
cd yourrepo
```

> *If you see a warning message like: `warning: You appear to have cloned an empty repository`that means you've done everything right!
> 

🎉 Congrats! *You’ve just cloned your empty remote repo locally to your machine using an SSH key.*

### 4️⃣ Add Class Repo as an Upstream Remote

First, run this command (but make sure to replace the XX with your cohort number):

```markdown
git remote add upstream git@github.com:AI-Maker-Space/AIEXX.git
```

Verify both remotes are connected. *You should see both "origin" (your repo) and "upstream" (class repo)*.

```
git remote -v
```

You should see an output very similar to this (your origin will be a different address)

```
origin  git@github.com:chris-alexiuk/AIE11.git (fetch)
origin  git@github.com:chris-alexiuk/AIE11.git (push)
upstream        git@github.com:AI-Maker-Space/AIE11.git (fetch)
upstream        git@github.com:AI-Maker-Space/AIE11.git (push)

```

🎉 Congrats! *You’ve just connected AI Makerspace’s remote class repo (which we manage) to your remote class repo (which you manage)!*

### 5️⃣ Your First [Pull](https://git-scm.com/docs/git-pull)

It’s time to pull down the course materials from AI Makerspace’s remote repository, which is upstream of both your local and remote repos.

> *You will do this each week as new assignments are released!
> 

```markdown
git pull upstream main --allow-unrelated-histories
```

🎉 Congrats! *You’ve just pulled down course materials from AI Makerspace’s remote repo, **down to your local repository**.*

### 6️⃣ Your First [Push](https://git-scm.com/docs/git-push)

Now we need to push everything up from our local repo to our remote repository on GitHub.com

```markdown
git push origin main
```

🎉 Congrats! *You just pushed the course materials in your local repo up to your remote repo (origin) on GitHub.com. 

> During steps 5️⃣ and 6️⃣, notice the use of `main`.`main` is simply the name given to the [default branch](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-branches#about-the-default-branch) in a repo.
> 

### Thinking Questions

- What are three lessons you've learned from this?
- What is one [lesson that you have not yet learned](https://www.loom.com/share/b34e4bd657f74892ac9a01f774113b4d)?
