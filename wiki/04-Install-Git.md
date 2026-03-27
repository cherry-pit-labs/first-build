# 4. Install Git

Git is a **version control** tool. Here's what that means in plain English:

Imagine you're writing an essay and you save a new copy every time you make a big change: `essay_v1.docx`, `essay_v2.docx`, `essay_final.docx`, `essay_final_REAL.docx`. Git does this automatically, but better. Every time you "commit" (save a snapshot), Git remembers exactly what changed, when, and why. And you can go back to any previous version whenever you want.

**The save point analogy:** Think of Git commits like save points in a video game. You save before a boss fight so you can go back if things go badly. Same idea. You commit before making a risky change so you can undo it if it breaks something.

---

## Install Git

<details>
<summary>Windows</summary>

**GUI method:**
1. Go to [git-scm.com](https://git-scm.com/)
2. Click **Download for Windows**
3. Run the installer. The defaults are fine for most settings, but pay attention to these:
   - **Default editor:** Choose "Use Visual Studio Code as Git's default editor" if it's in the list
   - **PATH environment:** Choose "Git from the command line and also from 3rd-party software" (usually the default)
   - **Line ending conversions:** Choose "Checkout Windows-style, commit Unix-style line endings" (the default)
4. Finish the install

**CLI method:**
```powershell
winget install Git.Git
```

> [!NOTE]
> **What's happening here:**
> - `winget install` tells the Windows package manager to install a program
> - `Git.Git` is the unique identifier for Git in the winget catalog

</details>

<details>
<summary>Mac</summary>

Open Terminal and run:
```bash
xcode-select --install
```

> [!NOTE]
> **What's happening here:**
> - `xcode-select --install` installs Apple's Command Line Tools, which includes Git

Follow the prompts. Alternatively, if you have [Homebrew](https://brew.sh/):
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

> [!NOTE]
> **What's happening here:**
> - `sudo` runs the command with administrator privileges
> - `apt update` refreshes the list of available packages
> - `apt install git` installs Git

</details>

### Verify it worked

After installing, you need to open a **new** terminal window so it recognizes the newly installed program. If you used an admin or elevated terminal for installation, open a regular (non-admin) terminal instead.

Open VS Code and open the terminal (`` Ctrl+` ``). Type:

```bash
git --version
```

You should see something like:
```
git version 2.43.0
```

The exact number doesn't matter as long as it's there. If you get "command not found," close VS Code completely and reopen it, then try again.

## Configure Your Identity

Git tags every commit with your name and email so people know who made the change. Set this up once.

**Choosing your name:** You can use either your real name or your GitHub username. Here are the trade-offs:

- **Real name** (e.g., "Jane Doe"): Looks professional on a portfolio or resume. This is what most developers use for work.
- **GitHub username** (e.g., "janedoe42"): Adds a layer of privacy. Better if you don't want your real name tied to your public commits.

Either choice is fine. You can change it later.

**For the email:** Use the **GitHub noreply email** you copied in the previous step. This keeps your personal email private in your commit history.

Run these commands in your VS Code terminal, replacing the placeholder values with your own:

```bash
git config --global user.name "Your Name"
```

> [!NOTE]
> **What's happening here:**
> - `git config` changes a Git setting
> - `--global` applies this setting to all repositories on your computer (not just one)
> - `user.name` is the setting name
> - `"Your Name"` is the value to set. **Replace this** with your actual name or GitHub username

```bash
git config --global user.email "123456789+yourusername@users.noreply.github.com"
```

**Replace** the email above with the noreply address you copied from GitHub in the previous step.

These values are not secret. They'll be visible in your commit history, which is why we use the noreply email to keep your personal email private.

## Generate an SSH Key

An SSH key lets your computer prove its identity to GitHub without typing your password every time. It works in pairs:

- **Public key:** Like your email address. Safe to share. You'll give this to GitHub.
- **Private key:** Like your password. **Never share this with anyone.** It stays on your computer.

### Generate the key

Run this command in your VS Code terminal, replacing the email with your GitHub noreply email:

```bash
ssh-keygen -t ed25519 -C "123456789+yourusername@users.noreply.github.com"
```

> [!NOTE]
> **What's happening here:**
> - `ssh-keygen` is the tool that creates SSH key pairs
> - `-t ed25519` specifies the type of key to create (Ed25519 is modern and secure)
> - `-C "..."` adds a comment (label) to the key so you can identify it later. **Replace** the email with your GitHub noreply email

The tool will walk you through a few prompts. Here's what to expect at each one:

**Prompt 1: File location**
```
Enter file in which to save the key (/c/Users/you/.ssh/id_ed25519):
```
Press **Enter** to accept the default location. You don't need to change this.

**Prompt 2: Passphrase**
```
Enter passphrase (empty for no passphrase):
```
Type a passphrase. You won't see any characters appear as you type. That's normal and is a security feature. The passphrase protects your key in case someone gains access to your computer.

**Tips for choosing a passphrase:**
- Use something memorable but not easily guessable. A short phrase works well (e.g., "my first code project 2026").
- **Save it in your password manager immediately.** You will need this passphrase later when cloning repositories and pushing code.
- Do not leave it empty. An empty passphrase means anyone with access to your computer can use your key.

**Prompt 3: Confirm passphrase**
```
Enter same passphrase again:
```
Type the same passphrase again to confirm it.

**Success output:**
```
Your identification has been saved in /c/Users/you/.ssh/id_ed25519
Your public key has been saved in /c/Users/you/.ssh/id_ed25519.pub
```

This means your key pair was created. The private key is at `~/.ssh/id_ed25519` and the public key is at `~/.ssh/id_ed25519.pub`.

### Add it to GitHub

Now you need to give GitHub your **public** key so it recognizes your computer.

1. Copy your public key to your clipboard:

   <details>
   <summary>Windows</summary>

   In your VS Code terminal, run:
   ```bash
   cat ~/.ssh/id_ed25519.pub
   ```

   > [!NOTE]
   > **What's happening here:**
   > - `cat` displays the contents of a file
   > - `~/.ssh/id_ed25519.pub` is the path to your public key file

   You'll see one long line that looks like:
   ```
   ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG... your-email@users.noreply.github.com
   ```
   Select the **entire line** and copy it (right-click → Copy, or `Ctrl+C`).

   </details>

   <details>
   <summary>Mac</summary>

   ```bash
   pbcopy < ~/.ssh/id_ed25519.pub
   ```

   > [!NOTE]
   > **What's happening here:**
   > - `pbcopy` copies text to your clipboard
   > - `< ~/.ssh/id_ed25519.pub` feeds the contents of the public key file into `pbcopy`

   This copies the key directly to your clipboard.

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

### Verify it works

Back in your **VS Code terminal**, run:

```bash
ssh -T git@github.com
```

> [!NOTE]
> **What's happening here:**
> - `ssh -T` tests the SSH connection without starting a full session
> - `git@github.com` is the address you're connecting to

If this is your first time connecting to GitHub via SSH, you'll see a warning like:
```
The authenticity of host 'github.com' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV...
Are you sure you want to continue connecting (yes/no/[fingerprint])?
```

Type `yes` and press Enter. This is normal. Your computer is asking you to confirm that it's really talking to GitHub.

You'll be prompted for the **passphrase** you created earlier. Type it in (again, you won't see characters as you type).

You should then see:
```
Hi yourusername! You've successfully authenticated, but GitHub does not provide shell access.
```

That means it worked. Your computer can now securely communicate with GitHub.

### 🔒 Security Note

Your SSH key is like a digital ID card. The **private key** file (`id_ed25519`, no `.pub` extension) should never leave your computer. Never paste it anywhere, never email it, never commit it to a repo. When copying your key to GitHub, **make sure the filename ends in `.pub`**. If it doesn't, you're looking at your private key and should stop immediately. The **public key** (`id_ed25519.pub`) is safe to share. It's designed to be given out. The passphrase you set adds one more layer: even if someone steals the private key file, they still need the passphrase to use it.

If your computer fails or you switch machines, you'll need to generate a new SSH key and add it to GitHub again. The key itself doesn't need to be backed up, but your passphrase should be saved in your password manager.

## Before Moving On

**Close VS Code.** The next steps involve installing Node.js, which requires environment changes that VS Code needs to pick up fresh.

---

← [GitHub Basics](03-GitHub-Basics) | **Next:** [Install Node.js](05-Install-Node) →
