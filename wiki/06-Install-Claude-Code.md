# 6. Install Claude Code

Claude Code is an **AI assistant that lives in your terminal.** It can read your project files, write code, run commands, and explain what's happening  - all through a conversation in plain English. For this project, it's your tutor: it reads the `CLAUDE.md` file in your project and uses it to guide how it teaches you.

---

## Install Claude Code

Open your terminal (in VS Code: `` Ctrl+` ``) and run:

```bash
npm install -g @anthropic-ai/claude-code
```

**What's happening here:**
- `npm install` - "Install a package"
- `-g` - "Globally" (available everywhere on your computer, not just in one project folder)
- `@anthropic-ai/claude-code` - The name of the package to install

This may take a minute. You'll see progress output ending with something like:
```
added 1 package in 15s
```

## Verify It Installed

```bash
claude --version
```

You should see something like:
```
1.0.12 (Claude Code)
```

If you get "command not found," close and reopen your terminal, then try again.

> **We're not launching Claude Code yet.** We'll do that after cloning the project so it can read the project's instruction file. For now, knowing it's installed is enough.

---

← [Install Node.js](05-Install-Node) | **Next:** [Clone This Repo](07-Clone-This-Repo) →
