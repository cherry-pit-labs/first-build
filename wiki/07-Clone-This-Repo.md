# 7. Clone This Repo

Now we'll get the First Build project onto your computer. This is a two-step process: **fork** it (create your own copy on GitHub), then **clone** it (download it to your machine).

---

## Step 1: Fork the Repo

1. Go to the First Build repository on GitHub (the one you're reading this wiki from)
2. Click the **Fork** button in the top-right corner of the page
3. On the "Create a new fork" page:
   - **Owner:** Should be your GitHub username
   - **Repository name:** Keep it as `first-build`
   - **Description:** Optional  - add one if you want
   - Leave "Copy the `main` branch only" checked
4. Click **Create fork**

You now have your own copy of this project on your GitHub account. This is *your* repo  - you can do whatever you want with it without affecting the original.

**Why fork instead of just clone?** If you only cloned the original, you wouldn't be able to push (upload) your changes back to GitHub, because you don't have write access to someone else's repo. Forking gives you your own copy that you fully control.

## Step 2: Clone Your Fork

Open VS Code and open the terminal (`` Ctrl+` ``).

Navigate to where you want to keep your projects. A common choice:

**Windows:**
```bash
cd ~/Documents
```

<details>
<summary>Mac / Linux</summary>

```bash
cd ~/projects
# or
cd ~/Documents
```

Create the folder first if it doesn't exist: `mkdir -p ~/projects`

</details>

Now clone your fork (replace `YOUR_USERNAME` with your actual GitHub username):

```bash
git clone git@github.com:YOUR_USERNAME/first-build.git
```

**What's happening:**
- `git clone`  - "Download a repository"
- `git@github.com:YOUR_USERNAME/first-build.git`  - The SSH address of your fork (this is why we set up SSH keys earlier)

You should see output about "Cloning into 'first-build'..." and some progress info.

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

The project includes a script that checks whether your environment is ready. It doesn't install anything  - it only checks.

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

The script will check for Git, Node.js, npm, Claude Code, and your SSH key, printing ✅ or ❌ for each one.

**If everything passes:** You're ready. Move to the next page.

**If something fails:** The script tells you exactly what's missing and how to fix it. Go back to the relevant setup page and complete that step, then run the script again.

### 🔒 Security Note

**Reading scripts before running them is a good habit.** The setup script is short and simple  - you can open `setup.sh` or `setup.ps1` in VS Code and read through it. It only checks that tools are installed; it doesn't install anything or send data anywhere.

When you encounter scripts from less trusted sources in the future, always take a look at what they do before running them. Claude Code can explain any script to you line-by-line  - just ask: "Can you explain what this script does?"

---

← [Install Claude Code](06-Install-Claude-Code) | **Next:** [Choose Your Project](08-Choose-Your-Project) →
