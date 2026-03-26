# 7. Clone This Repo

Now we'll get the First Build project onto your computer. This is a two-step process: **create your own copy** from the template on GitHub, then **clone** it (download it to your machine).

---

## Step 1: Create Your Copy from the Template

**GUI method:**
1. Go to the **[First Build repository on GitHub](https://github.com/cherry-pit-labs/first-build)**
2. Click the green **"Use this template"** button near the top-right of the page
   > **Don't see the button?** You need to be logged into GitHub. Sign in first, then refresh the page.
3. Select **"Create a new repository"**
4. On the "Create a new repository" page:
   - **Owner:** Should be your GitHub username
   - **Repository name:** Keep it as `first-build` (or name it whatever you like)
   - **Description:** Optional - add one if you want
   - **Visibility:** Choose **Private** for now (you can make it public later as a portfolio piece)
5. Click **"Create repository"**

You now have your own copy of this project on your GitHub account. This is *your* repo - you can do whatever you want with it without affecting the original.

**What's a template?** A template repository is a starting point. When you create a repo from a template, GitHub copies all the files into a brand-new repository on your account. It's like getting a fresh copy of a workbook - same starting content, but your version is completely independent.

## Step 2: Clone Your Repository

Open VS Code and open the terminal (`` Ctrl+` ``).

Navigate to where you want to keep your projects. A common choice:

<details>
<summary>Windows</summary>

```bash
cd ~/Documents
```

</details>

<details>
<summary>Mac / Linux</summary>

```bash
cd ~/projects
# or
cd ~/Documents
```

Create the folder first if it doesn't exist: `mkdir -p ~/projects`

</details>

Now clone your repo (replace `YOUR_USERNAME` with your actual GitHub username):

```bash
git clone git@github.com:YOUR_USERNAME/first-build.git
```

**What's happening:**
- `git clone` - "Download a repository"
- `git@github.com:YOUR_USERNAME/first-build.git` - The SSH address of your repo (this is why we set up SSH keys earlier)

> **Getting "Permission denied (publickey)"?** This means your SSH key isn't set up yet (or isn't linked to your GitHub account). Go back to [Install Git — Generate an SSH Key](03-Install-Git#generate-an-ssh-key), complete that section, then come back here and try the clone again.

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

## Step 3: Open It in VS Code

Open the project in VS Code:

```bash
code .
```

The `.` means "the current directory." VS Code will open with all the project files visible in the sidebar.

## Step 4: Run the Setup Verification Script

The project includes a script that checks whether your environment is ready. It doesn't install anything - it only checks.

**Windows (PowerShell):**
```powershell
.\setup.ps1
```

**Windows (Git Bash) / Mac / Linux:**
```bash
./setup.sh
```

> **If you get a permission error on Windows running the PowerShell script:** You may need to allow script execution. Run this first:
> ```powershell
> Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
> ```
> Then try `.\setup.ps1` again.

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

**Reading scripts before running them is a good habit.** The setup script is short and simple - you can open `setup.sh` or `setup.ps1` in VS Code and read through it. It only checks that tools are installed; it doesn't install anything or send data anywhere.

When you encounter scripts from less trusted sources in the future, always take a look at what they do before running them. Claude Code can explain any script to you line-by-line - just ask: "Can you explain what this script does?"

---

← [Install Claude Code](06-Install-Claude-Code) | **Next:** [Choose Your Project](08-Choose-Your-Project) →
