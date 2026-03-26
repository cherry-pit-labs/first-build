# 5. Install Node.js

**Node.js** is a program that lets you run JavaScript outside of a web browser. Why do you need it? Two reasons:

1. **Claude Code runs on it.** Claude Code is built with Node.js. You need it installed before Claude Code will work.
2. **Many projects use it.** If you build a web app, a bot, or a CLI tool, there's a good chance it'll use Node.js.

We're going to install Node.js using something called **fnm** (Fast Node Manager) instead of downloading it directly.

**Why fnm instead of the direct installer?**
- It lets you have multiple versions of Node.js and switch between them easily
- It doesn't require admin/root privileges
- It avoids permission issues that the direct installer can cause
- It works the same way on Windows, Mac, and Linux

---

## Windows: Set PowerShell Execution Policy

Before installing fnm on Windows, you need to allow PowerShell to run scripts. By default, Windows blocks this for security reasons. You'll change this setting so that PowerShell can run the fnm setup that activates automatically when you open a terminal.

1. Open **PowerShell as Administrator:** right-click the Start button → select **Terminal (Admin)** or search for "PowerShell" → right-click → **Run as administrator**
2. Run this command:
   ```powershell
   Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
   ```

   **What's happening here:**
   - `Set-ExecutionPolicy` changes which scripts PowerShell is allowed to run
   - `-Scope CurrentUser` applies this setting only to your user account, not the whole system
   - `-ExecutionPolicy RemoteSigned` allows scripts you write on your computer to run freely, while scripts downloaded from the internet must be signed by a trusted publisher

3. If prompted to confirm, type `Y` and press Enter
4. Close this admin terminal. You won't need admin privileges for the remaining steps.

> This setting persists across all future terminal sessions. You only need to do this once.

> **Mac / Linux users:** Skip this section. You don't need to change execution policy.

## Install fnm

<details>
<summary>Windows</summary>

Open a regular (non-admin) PowerShell or terminal and run:

```powershell
winget install Schniz.fnm
```

**What's happening here:**
- `winget install` tells the Windows package manager to install a program
- `Schniz.fnm` is the unique identifier for fnm in the winget catalog

Next, **set up your shell profile.** This step tells PowerShell to activate fnm every time you open a terminal:

```powershell
if (!(Test-Path $PROFILE)) { New-Item -Path $PROFILE -Force }
Add-Content -Path $PROFILE -Value 'fnm env --use-on-cd --shell powershell | Out-String | Invoke-Expression'
```

**What's happening here:**
- The first line creates your PowerShell profile file if it doesn't already exist
- The second line adds a command to that profile file. Every time you open a new terminal, this command activates fnm so you can use Node.js

**What's a shell profile?** It's a script that runs automatically every time you open a new terminal window. Think of it like startup settings for your command line. The file lives at `$PROFILE`. You can type that in PowerShell to see the exact path.

**Close and reopen your terminal** (or restart VS Code). This is important so the new profile command is recognized.

Verify fnm installed:
```powershell
fnm --version
```

You should see something like:
```
fnm 1.39.0
```

</details>

<details>
<summary>Mac / Linux</summary>

Install fnm with the install script:

```bash
curl -fsSL https://fnm.vercel.app/install | bash
```

**What's happening here:**
- `curl` downloads content from a URL
- `-fsSL` is a set of flags: fail silently on errors, show errors, follow redirects, and keep it clean
- `https://fnm.vercel.app/install` is the URL of the fnm install script
- `| bash` passes the downloaded script to Bash to run it

### 🔒 Security Note

This command downloads a script from the internet and runs it immediately. This is a common installation pattern, but you should know that it requires trust in the source. In this case, fnm is a well-known, open-source project with thousands of users. You can review the script before running it by visiting the URL in your browser first. In general, only run `curl | bash` commands from sources you trust.

This adds fnm to your shell profile automatically. **Close and reopen your terminal** (or run `source ~/.bashrc` / `source ~/.zshrc`) for it to take effect.

Verify fnm installed:
```bash
fnm --version
```
You should see something like:
```
fnm 1.39.0
```

</details>

## Install Node.js Using fnm

Now use fnm to install the latest LTS (Long Term Support) version of Node.js:

```bash
fnm install --lts
fnm use lts-latest
```

**What's happening here:**
- `fnm install --lts` downloads and installs the latest LTS version of Node.js
- `fnm use lts-latest` tells fnm to activate that version so you can use it

You should see output like:
```
Installing Node v20.11.0 (x64)
Done installing Node v20.11.0 (x64)
Using Node v20.11.0
```

These commands are the same on Windows, Mac, and Linux.

**LTS** means Long Term Support. It's the stable, recommended version. New features go to the "current" version first, but LTS is what you want for reliable development.

## Verify It Worked

Run these two commands:

```bash
node --version
```
You should see something like:
```
v20.11.0
```
As long as it's version 18 or above, you're good.

```bash
npm --version
```
You should see something like:
```
10.2.3
```

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

← [Install Git](04-Install-Git) | **Next:** [Install Claude Code](06-Install-Claude-Code) →
