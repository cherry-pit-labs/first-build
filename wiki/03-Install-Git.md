# 3. Install Git

Git is a **version control** tool. Here's what that means in plain English:

Imagine you're writing an essay and you save a new copy every time you make a big change — `essay_v1.docx`, `essay_v2.docx`, `essay_final.docx`, `essay_final_REAL.docx`. Git does this automatically, but better. Every time you "commit" (save a snapshot), Git remembers exactly what changed, when, and why. And you can go back to any previous version whenever you want.

**The save point analogy:** Think of Git commits like save points in a video game. You save before a boss fight so you can go back if things go badly. Same idea — you commit before making a risky change so you can undo it if it breaks something.

---

## Install Git

**Windows:**
1. Go to [git-scm.com](https://git-scm.com/)
2. Click **Download for Windows**
3. Run the installer. The defaults are fine for most settings, but pay attention to these:
   - **Default editor:** Choose "Use Visual Studio Code as Git's default editor" if it's in the list
   - **PATH environment:** Choose "Git from the command line and also from 3rd-party software" (usually the default)
   - **Line ending conversions:** Choose "Checkout Windows-style, commit Unix-style line endings" (the default)
4. Finish the install

<details>
<summary>Mac</summary>

Open Terminal and run:
```bash
xcode-select --install
```
This installs Apple's Command Line Tools, which includes Git. Follow the prompts.

Alternatively, if you install [Homebrew](https://brew.sh/) first:
```bash
brew install git
```

</details>

<details>
<summary>Linux</summary>

Use your package manager:

```bash
# Ubuntu / Debian
sudo apt update && sudo apt install git

# Fedora
sudo dnf install git

# Arch
sudo pacman -S git
```

</details>

**Verify it worked.** Open a terminal (in VS Code: `` Ctrl+` ``) and type:

```bash
git --version
```

You should see something like `git version 2.43.0`. The exact number doesn't matter as long as it's there.

## Configure Your Identity

Git tags every commit with your name and email so people know who made the change. Set this up once:

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

Replace `Your Name` with your actual name and the email with the one you used for GitHub. These aren't secret — they'll be visible in your commit history.

## Generate an SSH Key

An SSH key lets your computer prove its identity to GitHub without typing your password every time. It works in pairs:

- **Public key** — Like your email address. Safe to share. You'll give this to GitHub.
- **Private key** — Like your password. **Never share this with anyone.** It stays on your computer.

### Generate the key:

```bash
ssh-keygen -t ed25519 -C "your.email@example.com"
```

When it asks:
- **File location:** Press Enter to accept the default
- **Passphrase:** Type a passphrase (you won't see the characters — that's normal). This is an extra layer of security in case someone gets access to your computer. Choose something memorable.

### Add it to GitHub:

1. Copy your public key to your clipboard:

   **Windows (Git Bash or PowerShell):**
   ```bash
   cat ~/.ssh/id_ed25519.pub
   ```
   Select and copy the entire output.

   <details>
   <summary>Mac</summary>

   ```bash
   pbcopy < ~/.ssh/id_ed25519.pub
   ```
   This copies it directly to your clipboard.

   </details>

   <details>
   <summary>Linux</summary>

   ```bash
   cat ~/.ssh/id_ed25519.pub
   ```
   Select and copy the output. If you have `xclip`:
   ```bash
   xclip -selection clipboard < ~/.ssh/id_ed25519.pub
   ```

   </details>

2. Go to **GitHub** → click your profile picture (top right) → **Settings** → **SSH and GPG keys** → **New SSH key**
3. Give it a name (like "My Laptop")
4. Paste your public key into the "Key" field
5. Click **Add SSH key**

### Verify it works:

```bash
ssh -T git@github.com
```

You should see: `Hi username! You've successfully authenticated...`

If you see a warning about "authenticity of host" the first time — type `yes`. That's normal on the first connection.

### 🔒 Security Note

Your SSH key is like a digital ID card. The **private key** file (`id_ed25519` — no `.pub` extension) should never leave your computer. Never paste it anywhere, never email it, never commit it to a repo. The **public key** (`id_ed25519.pub`) is safe to share — it's designed to be given out. The passphrase you set adds one more layer: even if someone steals the private key file, they still need the passphrase to use it.

---

← [Install VS Code](02-Install-VS-Code) | **Next:** [GitHub Basics](04-GitHub-Basics) →
