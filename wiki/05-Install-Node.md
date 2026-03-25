# 5. Install Node.js

**Node.js** is a program that lets you run JavaScript outside of a web browser. Why do you need it? Two reasons:

1. **Claude Code runs on it.** Claude Code is built with Node.js - you need it installed before Claude Code will work.
2. **Many projects use it.** If you build a web app, a bot, or a CLI tool, there's a good chance it'll use Node.js.

We're going to install Node.js using something called **fnm** (Fast Node Manager) instead of downloading it directly. This is the way professional developers do it.

**Why fnm instead of the direct installer?**
- It lets you have multiple versions of Node.js and switch between them easily
- It doesn't require admin/root privileges
- It avoids permission issues that the direct installer can cause
- It works the same way on Windows, Mac, and Linux

---

## Install fnm

**Windows:**

1. Open PowerShell and run:
   ```powershell
   winget install Schniz.fnm
   ```
   > **What's `winget`?** It's Windows' built-in package manager - a way to install programs from the command line instead of downloading installers from websites. It comes pre-installed on Windows 10 (version 1809+) and Windows 11.

2. **Set up your shell profile.** This step tells PowerShell to activate fnm every time you open a terminal. Run this command:
   ```powershell
   if (!(Test-Path $PROFILE)) { New-Item -Path $PROFILE -Force }
   Add-Content -Path $PROFILE -Value 'fnm env --use-on-cd --shell powershell | Out-String | Invoke-Expression'
   ```
   > **What's a shell profile?** It's a script that runs automatically every time you open a new terminal window. Think of it like startup settings for your command line. The file lives at `$PROFILE` - you can type that in PowerShell to see the exact path.

3. **Close and reopen your terminal** (or restart VS Code) - this is important so the new commands are recognized.

4. Verify fnm installed:
   ```powershell
   fnm --version
   ```

<details>
<summary>Mac / Linux</summary>

Install fnm with the install script:

```bash
curl -fsSL https://fnm.vercel.app/install | bash
```

This adds fnm to your shell profile automatically. **Close and reopen your terminal** (or run `source ~/.bashrc` / `source ~/.zshrc`) for it to take effect.

Verify fnm installed:
```bash
fnm --version
```

</details>

## Install Node.js Using fnm

Now use fnm to install the latest LTS (Long Term Support) version of Node.js:

```bash
fnm install --lts
fnm use lts-latest
```

These commands are the same on Windows, Mac, and Linux - that's one of the nice things about fnm.

**LTS** means Long Term Support - it's the stable, recommended version. New features go to the "current" version first, but LTS is what you want for reliable development.

## Verify It Worked

Run these two commands:

```bash
node --version
```
You should see something like `v20.11.0` (or higher). As long as it's 18 or above, you're good.

```bash
npm --version
```
You should see something like `10.2.3` (or higher).

## What's npm?

**npm** stands for Node Package Manager. It comes bundled with Node.js automatically.

Think of npm as an **app store for code**. When developers write useful tools or libraries, they publish them to npm so others can install and use them. Instead of writing everything from scratch, you can install a "package" that someone else already built and tested.

For example, you'll use npm to install Claude Code in the next step.

Some numbers to put this in perspective: npm has over **2 million packages**. It's the largest software registry in the world.

### 🔒 Security Note

Those 2 million packages? They're written by strangers on the internet. Most are fine, but some aren't. Here's the rule:

**Never blindly install a package you found in a random forum or blog post.** Before installing anything with npm:
- Check who wrote it (is it a known company or developer?)
- Check how many downloads it has (popular packages are generally safer)
- Check when it was last updated (abandoned packages may have unpatched vulnerabilities)

Claude Code will help you vet packages as your project progresses. This is one of the security habits we'll build over time.

---

← [GitHub Basics](04-GitHub-Basics) | **Next:** [Install Claude Code](06-Install-Claude-Code) →
