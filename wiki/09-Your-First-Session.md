# 9. Your First Session

Everything is installed. You've picked a project (or at least have some ideas). It's time to start building.

---

## What is CLAUDE.md?

Your project has a file called `CLAUDE.md` in the root folder. This is special. Claude Code reads it automatically every time it starts.

Think of `CLAUDE.md` as a **set of instructions for your AI tutor.** It tells Claude Code:
- Who you are (a complete beginner)
- How to teach you (concepts before code, always explain, quiz you to make sure you understand)
- What you're building (filled in during your first session)
- Rules to follow (never skip explanations, always check for security issues, keep documentation updated)

You can read `CLAUDE.md` yourself. It's written in plain English. Understanding what's in it helps you know what to expect from your tutor.

### 🔒 Security Note

Claude Code can **read and write files** in your project folder. It can also **run commands** in your terminal. That sounds powerful (and it is), but it's designed to be safe:

- It will **ask for your permission** before doing anything potentially destructive (deleting files, installing packages, etc.)
- It works **within your project folder**, not browsing your entire computer
- If something feels wrong, you can always say **no** to a proposed action
- You can review everything it does in real-time. Nothing happens behind your back

The key habit: **read what Claude Code proposes before approving it.** This isn't just about safety. It's how you learn. Understanding what each action does is the whole point.

## Project Files Overview

Before starting, here's a quick look at the files in your project. You can explore these in the VS Code sidebar:

| File | Purpose |
|------|---------|
| `CLAUDE.md` | Instructions for your AI tutor. Defines how Claude Code teaches you. |
| `DEVLOG.md` | Your learning journal. Updated after each session. |
| `GLOSSARY.md` | Every new term you learn, defined in plain English. |
| `PROGRESS.md` | Checkboxes tracking what you've learned and built. |
| `ARCHITECTURE.md` | How your project is structured. Built as you go. |
| `setup.sh` / `setup.ps1` | The environment verification scripts you already ran. |
| `.gitignore` | Tells Git which files to ignore (like secrets and temporary files). |

You don't need to understand all of these right now. Claude Code will explain each one as it becomes relevant.

## Starting Claude Code

Open VS Code with the `first-build` project. Make sure you're in the `first-build` folder (check the bottom-left of VS Code or run `pwd` in the terminal).

If the terminal panel is already open at the bottom, you're ready. If not, open it with `` Ctrl+` ``.

The first time you run Claude Code, it will ask you to choose a **text style** (how it formats its output). Pick whichever looks most readable to you. You can change this later.

Type:

```bash
claude
```

> **What's happening here:**
> - `claude` launches Claude Code in the current directory

Claude Code will then ask you to authenticate with your Anthropic account. Follow the prompts. It will typically open a browser window where you log in.

> **Windows Security alert:** You may see a Windows Firewall dialog asking whether to allow network access for Node.js. Click **"Allow access"**. Claude Code needs network access to communicate with the Claude API.

> **"Do you trust the authors?"** If Claude Code asks whether you trust the project folder, select **Yes**. This is the project you just created from the First Build template.

Once authenticated, Claude Code will start and read the `CLAUDE.md` file.

## What to Expect

Your first session is about **setup and planning**, not coding. Here's roughly what will happen:

### 1. Tell Claude Code What You Want to Build

Claude Code won't introduce itself with a monologue. Instead, it will wait for you to start the conversation. Tell it what you want to build. Be specific or vague, either works:

- **Specific:** "I want to build a to-do app that runs in the browser and saves tasks to local storage."
- **Vague:** "I want to build a Discord bot, but I'm not sure what it should do yet."
- **Open:** "I'm not sure what to build. Can you help me decide?"

Claude Code will ask follow-up questions and help you shape your idea into a concrete plan.

> **Tip: You can answer multiple questions at once.** If Claude Code asks three questions, you don't need to answer them one at a time. You can write a single response that addresses all of them. This makes the conversation flow more naturally.

### 2. Confirm Your Environment

At some point (either before or after discussing your project) Claude Code will make sure everything is working: Git, Node, your SSH connection to GitHub. If something's off, it'll help you fix it.

### 3. Project Setup

Once the project is defined, Claude Code will propose changes to set things up:
- Rewrite the `CLAUDE.md` file to include your project's details, tech stack, and development phases
- Set up the folder structure for your project
- Populate `ARCHITECTURE.md` with an initial design
- Add project-specific milestones to `PROGRESS.md`

**When Claude Code asks "Do you want to make this edit?"**, it is showing you a change it wants to make to a file. Read the change before approving it. This is how you learn what each file does and how your project is taking shape. If something doesn't make sense, ask "explain that" or "wait, what does that mean?" That's not interrupting, that's learning.

> **"Compound commands with cd and git require approval":** You may see this message when Claude Code tries to run multiple commands together. This is a safety feature that prevents potentially dangerous command combinations. Read what it wants to run, and click **Allow** if it looks reasonable (like `cd project-folder && git status`).

### 4. Your First Commit

You'll make your first Git commit together. Claude Code will walk you through:
- What "staging" changes means
- What a commit message is and how to write a good one
- What happens when you commit

This is a genuine milestone. Your first commit to a real Git repository.

### 5. Preview of What's Next

Before wrapping up, Claude Code will give you a quick preview of what your next session will look like: what concepts you'll learn and what you'll start building.

## Tips for a Good Session

- **Ask questions.** The instruction file literally tells Claude Code to expect your questions. There's no such thing as a dumb question, only concepts that haven't been explained well enough yet.
- **Say "explain that" liberally.** If something goes by too fast or a term doesn't make sense, stop and ask. Claude Code is designed to re-explain from a different angle.
- **Answer the quizzes honestly.** When Claude Code asks you a check-in question (🧠 CHECK-IN), give your real answer. If you're unsure, say so. These quizzes aren't tests. They're how Claude Code knows whether to move on or re-teach something.
- **Don't rush.** Seriously. Understanding one thing well is better than skimming five things.

## Ending a Session

When you're ready to stop, say:

> **"I'm done for now."**

This signals Claude Code to wrap up the session. It will:
1. Draft a **DEVLOG** entry summarizing what you worked on, what you learned, and what was confusing
2. Add any new terms to the **GLOSSARY**
3. Update your **PROGRESS** checkboxes
4. Commit all the documentation updates
5. Give you a preview of what's next

**Review the DEVLOG entry.** Claude Code writes a draft, but it's your journal. Edit it so it reflects your experience in your own words. Writing about what you learned is one of the best ways to make it stick.

## What If Something Goes Wrong?

- **Claude Code won't start:** Make sure you're in the `first-build` folder (`cd first-build`). Make sure Claude Code is installed (`claude --version`).
- **Authentication issues:** Claude Code will guide you through re-authenticating if needed.
- **Something broke and you're lost:** Say "something broke and I don't know what happened." Claude Code will help you diagnose it. This is part of learning.
- **You want to start over:** That's fine. You can always create a new copy from the template and start fresh. Nothing is permanent.

## You're Ready

This is the part where most tutorials would say "good luck." But you don't need luck. You have a tutor that doesn't get tired, doesn't judge, and adapts to exactly how you learn.

Open your terminal. Type `claude`. Start building.

---

← [Choose Your Project](08-Choose-Your-Project) | **Next:** [Starting from Scratch](10-Starting-From-Scratch) →
