# 9. Your First Session

Everything is installed. You've picked a project (or at least have some ideas). It's time to start building.

---

## Starting Claude Code

Open VS Code. Make sure you're in the `first-build` folder (check the bottom-left of VS Code or run `pwd` in the terminal).

Open the terminal (`` Ctrl+` ``) and type:

```bash
claude
```

The first time you run Claude Code, it will ask you to authenticate with your Anthropic account. Follow the prompts  - it will typically open a browser window where you log in.

Once authenticated, Claude Code will start, read the `CLAUDE.md` file, and greet you.

## What to Expect

Your first session is about **setup and planning**, not coding. Here's roughly what will happen:

### 1. Introductions

Claude Code will introduce itself and check in with you. It knows (from `CLAUDE.md`) that you're a complete beginner, so it'll keep things friendly and clear.

### 2. Confirm Your Environment

Claude Code will make sure everything is working  - Git, Node, your SSH connection to GitHub. If something's off, it'll help you fix it.

### 3. Choose and Refine Your Project

Tell Claude Code what you want to build. Be specific or vague  - either works:

- **Specific:** "I want to build a to-do app that runs in the browser and saves tasks to local storage."
- **Vague:** "I want to build a Discord bot, but I'm not sure what it should do yet."
- **Open:** "I'm not sure what to build. Can you help me decide?"

Claude Code will ask follow-up questions and help you shape your idea into a concrete plan.

### 4. Project Setup

Once the project is defined, Claude Code will:
- Rewrite the `CLAUDE.md` file to include your project's details, tech stack, and development phases
- Set up the folder structure for your project
- Populate `ARCHITECTURE.md` with an initial design
- Add project-specific milestones to `PROGRESS.md`

It will **explain every step** as it goes. If anything doesn't make sense, say "explain that" or "wait, what does that mean?"  - that's not interrupting, that's learning.

### 5. Your First Commit

You'll make your first Git commit together. Claude Code will walk you through:
- What "staging" changes means
- What a commit message is and how to write a good one
- What happens when you commit

This is a genuine milestone. Your first commit to a real Git repository.

### 6. Preview of What's Next

Before wrapping up, Claude Code will give you a quick preview of what your next session will look like  - what concepts you'll learn, what you'll start building.

## Tips for a Good Session

- **Ask questions.** The instruction file literally tells Claude Code to expect your questions. There's no such thing as a dumb question  - only concepts that haven't been explained well enough yet.
- **Say "explain that" liberally.** If something goes by too fast or a term doesn't make sense, stop and ask. Claude Code is designed to re-explain from a different angle.
- **Answer the quizzes honestly.** When Claude Code asks you a check-in question (🧠 CHECK-IN), give your real answer. If you're unsure, say so. These quizzes aren't tests  - they're how Claude Code knows whether to move on or re-teach something.
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

**Review the DEVLOG entry.** Claude Code writes a draft, but it's your journal  - edit it so it reflects your experience in your own words. Writing about what you learned is one of the best ways to make it stick.

## What If Something Goes Wrong?

- **Claude Code won't start:** Make sure you're in the `first-build` folder (`cd first-build`). Make sure Claude Code is installed (`claude --version`).
- **Authentication issues:** Claude Code will guide you through re-authenticating if needed.
- **Something broke and you're lost:** Say "something broke and I don't know what happened." Claude Code will help you diagnose it. This is part of learning.
- **You want to start over:** That's fine. You can always create a new copy from the template and start fresh. Nothing is permanent.

## You're Ready

This is the part where most tutorials would say "good luck." But you don't need luck  - you have a tutor that doesn't get tired, doesn't judge, and adapts to exactly how you learn.

Open your terminal. Type `claude`. Start building.

---

← [Choose Your Project](08-Choose-Your-Project) | [Back to Home](Home)
