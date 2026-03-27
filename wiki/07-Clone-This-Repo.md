# 7. Clone This Repo

Now we'll get the First Build project onto your computer. This is a two-step process: **create your own copy** from the template on GitHub, then **clone** it (download it to your machine).

---

## Step 1: Create Your Copy from the Template

1. Go to the **[First Build repository on GitHub](https://github.com/cherry-pit-labs/first-build)**
2. Click the green **"Use this template"** button near the top-right of the page
   > **Don't see the button?** You need to be logged into GitHub. Sign in first, then refresh the page.
3. Select **"Create a new repository"**
4. On the "Create a new repository" page:
   - **Owner:** Should be your GitHub username
   - **Repository name:** Keep it as `first-build` (or name it whatever you like)
   - **Description:** Optional. Add one if you want.
   - **Visibility:** Choose **Private** for now (you can make it public later as a portfolio piece)
5. Click **"Create repository"**

You now have your own copy of this project on your GitHub account. This is *your* repo. You can do whatever you want with it without affecting the original.

**What's a template?** A template repository is a starting point. When you create a repo from a template, GitHub copies all the files into a brand-new repository on your account. It's like getting a fresh copy of a workbook: same starting content, but your version is completely independent.

## Step 2: Clone Your Repository

Open VS Code. If the terminal panel is already open at the bottom, you're ready. If not, open it with `` Ctrl+` ``.

Navigate to where you want to keep your projects. A common choice:

<details>
<summary>Windows</summary>

```bash
cd ~/Documents
```

**What's happening here:**
- `cd` means "change directory" (move to a different folder)
- `~/Documents` is a shortcut to your Documents folder. The `~` symbol means "my home folder"

</details>

<details>
<summary>Mac / Linux</summary>

```bash
cd ~/projects
```

**What's happening here:**
- `cd` means "change directory" (move to a different folder)
- `~/projects` is a folder in your home directory

Create the folder first if it doesn't exist:
```bash
mkdir -p ~/projects
```

</details>

Now clone your repo. In the command below, **replace `YOUR_USERNAME`** with your actual GitHub username:

```bash
git clone git@github.com:YOUR_USERNAME/first-build.git
```

**What's happening here:**
- `git clone` downloads a repository from the internet to your computer
- `git@github.com:YOUR_USERNAME/first-build.git` is the SSH address of your repo (this is why we set up SSH keys earlier)
- **Important:** Replace `YOUR_USERNAME` with your actual GitHub username. For example, if your username is `janedoe`, the command would be `git clone git@github.com:janedoe/first-build.git`

> **You'll be asked for your SSH passphrase.** This is the passphrase you created when generating your SSH key on the [Install Git](04-Install-Git) page. Type it in (you won't see characters as you type) and press Enter.

> **Getting "Permission denied (publickey)"?** This means your SSH key isn't set up yet (or isn't linked to your GitHub account). Go back to [Install Git — Generate an SSH Key](04-Install-Git#generate-an-ssh-key), complete that section, then come back here and try the clone again.

You should see output like:
```
Cloning into 'first-build'...
remote: Enumerating objects: 25, done.
remote: Counting objects: 100% (25/25), done.
remote: Compressing objects: 100% (20/20), done.
Receiving objects: 100% (25/25), done.
```

Now move into the project folder:

```bash
cd first-build
```

**What's happening here:**
- `cd first-build` moves you into the newly downloaded project folder

## Step 3: Open the Project in VS Code

Since you're already in VS Code, run this command to open the project folder:

```bash
code .
```

**What's happening here:**
- `code` launches VS Code
- `.` means "the current directory" (the `first-build` folder you just moved into)

This will open a **new VS Code window** with the project files visible in the sidebar. You can close your old VS Code window.

> **"Do you trust the authors of the files in this folder?"** VS Code will ask this the first time you open a new project. Click **"Yes, I trust the authors"**. This allows VS Code to fully load extensions and run code in the project. Since you created this repo from the First Build template, it's safe.

## Step 4: Run the Setup Verification Script

The project includes a script that checks whether your environment is ready. It doesn't install anything. It only checks.

In your **new VS Code window**, open the terminal if it isn't already open (`` Ctrl+` ``).

<details>
<summary>Windows (PowerShell)</summary>

```powershell
.\setup.ps1
```

**What's happening here:**
- `.\` means "in the current directory"
- `setup.ps1` is the PowerShell verification script

> **If you get a permission error:** You may need to allow script execution. Run this first:
> ```powershell
> Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
> ```
> Then try `.\setup.ps1` again.

</details>

<details>
<summary>Windows (Git Bash) / Mac / Linux</summary>

```bash
./setup.sh
```

**What's happening here:**
- `./` means "in the current directory"
- `setup.sh` is the Bash verification script

</details>

The script will check for Git, Node.js, npm, Claude Code, and your SSH key, printing ✅ or ❌ for each one:

```
=========================================
  First Build - Environment Check
=========================================

✅ Git - 2.43.0
✅ Git user.name - Jane Doe
✅ Git user.email - jane@example.com
✅ SSH key - Found
✅ Node.js - v20.11.0
✅ npm - 10.2.3
✅ Claude Code - 1.0.12 (Claude Code)
✅ Git repo - Detected

-----------------------------------------
  Results: 8 passed, 0 failed
-----------------------------------------

All checks passed! You're ready to start.
Run 'claude' to begin your first session.
```

**If everything passes:** You're ready. Move to the next page.

**If something fails:** The script tells you exactly what's missing and how to fix it. Go back to the relevant setup page and complete that step, then run the script again.

### 🔒 Security Note

**Reading scripts before running them is a good habit.** The setup script is short and simple. You can open `setup.sh` or `setup.ps1` in VS Code and read through it. It only checks that tools are installed; it doesn't install anything or send data anywhere.

When you encounter scripts from less trusted sources in the future, always take a look at what they do before running them. Claude Code can explain any script to you line by line. Just ask: "Can you explain what this script does?"

---

← [Install Claude Code](06-Install-Claude-Code) | **Next:** [Choose Your Project](08-Choose-Your-Project) →
