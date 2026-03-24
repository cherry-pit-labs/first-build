# 5. Install Node.js

**Node.js** is a program that lets you run JavaScript outside of a web browser. Why do you need it? Two reasons:

1. **Claude Code runs on it.** Claude Code is built with Node.js — you need it installed before Claude Code will work.
2. **Many projects use it.** If you build a web app, a bot, or a CLI tool, there's a good chance it'll use Node.js.

We're going to install Node.js using something called **nvm** (Node Version Manager) instead of downloading it directly. This is the way professional developers do it.

**Why nvm instead of the direct installer?**
- It lets you have multiple versions of Node.js and switch between them easily
- It avoids permission issues that the direct installer can cause
- It makes upgrading painless

---

## Install nvm

**Windows:**

On Windows, we use **nvm-windows** (a version of nvm made specifically for Windows).

1. Go to the [nvm-windows releases page](https://github.com/coreybutler/nvm-windows/releases)
2. Under the latest release, download `nvm-setup.exe`
3. Run the installer. Accept the defaults.
4. **Close and reopen your terminal** (or restart VS Code) after the install — this is important so the new commands are recognized.

<details>
<summary>Mac / Linux</summary>

Open your terminal and run this command:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
```

Then **close and reopen your terminal** (or run `source ~/.bashrc` / `source ~/.zshrc`).

Verify nvm installed:
```bash
nvm --version
```

</details>

## Install Node.js Using nvm

Now use nvm to install the latest LTS (Long Term Support) version of Node.js:

**Windows (open a new terminal window — this matters!):**
```bash
nvm install lts
nvm use lts
```

<details>
<summary>Mac / Linux</summary>

```bash
nvm install --lts
nvm use --lts
```

</details>

**LTS** means Long Term Support — it's the stable, recommended version. New features go to the "current" version first, but LTS is what you want for reliable development.

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
