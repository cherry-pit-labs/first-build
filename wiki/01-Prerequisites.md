# 1. Prerequisites

Before we install anything, let's make sure you have what you need.

---

## Hardware

Any computer made in the last ~8 years will work. Windows, Mac, or Linux. The guide covers all three, with Windows as the primary path.

You'll need a reliable internet connection for downloading tools and working with GitHub.

## Accounts to Create

You'll need two accounts. Both are quick to set up.

### 1. GitHub (free)

GitHub is where your code will live online. Think of it as Google Drive for code, but with superpowers. It tracks every change you've ever made and lets you collaborate with others.

> **[Create a GitHub account](https://github.com/signup)** (free)

Pick a username you'd be comfortable putting on a resume. This will be visible to anyone who looks at your profile.

### 2. Anthropic / Claude (Pro subscription required)

Claude Code is the AI tutor that will guide you through building your project. It requires an active Claude Pro subscription.

> **[Sign up for Claude](https://claude.ai)** and subscribe to the Pro plan.

We won't walk through the billing process here. Anthropic's signup flow handles that. Just make sure your account is active before continuing.

## Password Management

Over the course of this guide, you'll create accounts, generate SSH keys, and set up passphrases. **Use a password manager** to store these securely. A password manager generates strong, unique passwords for each account and remembers them for you so you only need to memorize one master password.

If you don't already use one, see the **[Password Management appendix](Appendix-Password-Management)** for setup steps using Bitwarden (a free, open-source option).

## Running Commands as an Administrator

Some installation steps require **elevated privileges** (administrator access). This is like unlocking a higher permission level on your computer to make system-wide changes. Here's how to do it on each platform:

<details>
<summary>Windows</summary>

Right-click the **Start** button and select **Terminal (Admin)** or search for **PowerShell**, right-click it, and choose **Run as administrator**. You'll see a prompt asking for confirmation. Click **Yes**.

You'll know you're in an admin terminal if the window title includes "Administrator."

</details>

<details>
<summary>Mac</summary>

Mac doesn't have a separate admin terminal. Instead, you prefix individual commands with `sudo` (short for "superuser do"). When you run a `sudo` command, your Mac will ask for your user password. Type it and press Enter (you won't see characters as you type).

</details>

<details>
<summary>Linux</summary>

Same as Mac. Prefix commands that need elevated access with `sudo`. Your system will ask for your user password.

</details>

**When do you need this?** Only a few steps in this guide require admin access, and each page will tell you clearly. Most commands run fine without it. Only use an elevated terminal when the instructions specifically say to.

## Mindset

This is the most important prerequisite, and you already have it: you're here.

A few things worth knowing before you start:

- **You will feel lost sometimes.** That's completely normal. Even senior developers feel lost when they start something new. The difference is they've learned to be comfortable with the feeling.
- **Every working developer searches for answers constantly.** "Googling the answer" isn't cheating. It's a core skill. Asking your AI tutor is the same thing, just faster.
- **Mistakes are the process, not a detour from it.** You learn more from errors than from things that work on the first try.

## 🔒 Security Note

Over the course of this guide, you'll create accounts, generate keys, and install tools. Here's the mindset to carry with you:

**Treat passwords, keys, and tokens like your house key.** You wouldn't post a photo of your house key on social media. Same idea. These digital keys give access to your accounts and code. We'll teach you good security habits throughout the project, starting right now.

The most important rule you'll learn: **never put secrets (passwords, API keys, tokens) in your code.** We'll teach you the right way to handle them.

---

← [Home](Home) | **Next:** [Install VS Code](02-Install-VS-Code) →
