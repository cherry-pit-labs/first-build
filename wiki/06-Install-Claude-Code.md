# 6. Install Claude Code

Claude Code is an **AI assistant that lives in your terminal.** It can read your project files, write code, run commands, and explain what's happening  - all through a conversation in plain English. For this project, it's your tutor: it reads the `CLAUDE.md` file in your project and uses it to guide how it teaches you.

---

## Install Claude Code

Open your terminal (in VS Code: `` Ctrl+` ``) and run:

```bash
npm install -g @anthropic-ai/claude-code
```

**What's happening here:**
- `npm install`  - "Install a package"
- `-g`  - "Globally" (available everywhere on your computer, not just in one project folder)
- `@anthropic-ai/claude-code`  - The name of the package to install

This may take a minute. You'll see some progress output.

## Verify It Installed

```bash
claude --version
```

You should see a version number. If you get "command not found," close and reopen your terminal, then try again.

## First Launch

Let's test it out:

```bash
claude
```

The first time you run Claude Code, it will ask you to authenticate with your Anthropic account. Follow the prompts  - it will typically open a browser window where you log in.

Once authenticated, you'll see a chat-like interface in your terminal. Try asking it something simple:

```
What files are in this directory?
```

Claude Code will look at the files in your current folder and tell you what it sees. That's it  - you're talking to an AI that understands your project.

Type `/exit` to close Claude Code for now. We'll come back to it soon.

## What is CLAUDE.md?

You'll notice the project has a file called `CLAUDE.md` in the root folder. This is special  - Claude Code reads it automatically every time it starts.

Think of `CLAUDE.md` as a **set of instructions for your AI tutor.** It tells Claude Code:
- Who you are (a complete beginner)
- How to teach you (concepts before code, always explain, quiz you to make sure you understand)
- What you're building (filled in during your first session)
- Rules to follow (never skip explanations, always check for security issues, keep documentation updated)

You can read `CLAUDE.md` yourself  - it's written in plain English. Understanding what's in it helps you know what to expect from your tutor.

### 🔒 Security Note

Claude Code can **read and write files** in your project folder. It can also **run commands** in your terminal. That sounds powerful (and it is), but it's designed to be safe:

- It will **ask for your permission** before doing anything potentially destructive (deleting files, installing packages, etc.)
- It works **within your project folder**  - it's not browsing your entire computer
- If something feels wrong, you can always say **no** to a proposed action
- You can review everything it does in real-time  - nothing happens behind your back

The key habit: **read what Claude Code proposes before approving it.** This isn't just about safety  - it's how you learn. Understanding what each action does is the whole point.

---

← [Install Node.js](05-Install-Node) | **Next:** [Clone This Repo](07-Clone-This-Repo) →
