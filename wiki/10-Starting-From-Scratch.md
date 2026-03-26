# 10. Starting a New Project from Scratch

Congratulations! You've completed your First Build project. You now have real experience with Git, the terminal, a programming language, and the development workflow. This page walks you through creating your next project without a template.

---

## Overview

When you used the First Build template, a lot was set up for you: the repo, the folder structure, the `CLAUDE.md` file, and the documentation files. Starting from scratch means doing that yourself. Here's the process:

1. Create a new repository on GitHub
2. Clone it to your computer
3. Set up the project structure
4. Start building with Claude Code

## Step 1: Create a Repository on GitHub

1. Go to [github.com](https://github.com) and sign in
2. Click the **+** button in the top right corner and select **New repository**
3. Fill in the details:
   - **Repository name:** Something short and descriptive (e.g., `recipe-tracker`, `discord-bot`, `my-portfolio`)
   - **Description:** A one-sentence summary of what the project does
   - **Visibility:** Private (you can make it public later)
   - **Initialize this repository with:** Check **"Add a README file"**
   - **Add .gitignore:** Select a template that matches your tech stack (e.g., "Node" for JavaScript projects, "Python" for Python projects)
4. Click **Create repository**

## Step 2: Clone It to Your Computer

Open VS Code. If the terminal panel is already open, you're ready. If not, open it with `` Ctrl+` ``.

Navigate to your projects folder:
```bash
cd ~/Documents
```

Clone the repo (replace `YOUR_USERNAME` and `your-project-name` with your actual values):
```bash
git clone git@github.com:YOUR_USERNAME/your-project-name.git
```

Move into the project folder and open it in VS Code:
```bash
cd your-project-name
code .
```

## Step 3: Set Up Your Project Structure

Every project benefits from a few foundational files. Create these in your project root:

### CLAUDE.md

This is optional but recommended. If you want Claude Code to behave a certain way (tutoring style, coding conventions, project context), write those instructions here. You can copy and adapt the one from your First Build project.

### README.md

This already exists from the repo creation. Update it with:
- **What the project does** (one paragraph)
- **How to set it up** (installation steps)
- **How to use it** (basic usage)

You can keep it minimal at first and build it up as the project grows.

### Folder structure

This depends on your tech stack. Claude Code can help you set this up. Just describe what you want to build and ask: "Can you help me set up the project structure?"

## Step 4: Start Building

Open the terminal in VS Code and type:
```bash
claude
```

Tell Claude Code about your project. For example:
- "I'm starting a new Python CLI tool that organizes files by type. Can you help me set up the project?"
- "I want to build a React app for tracking recipes. Where do we start?"

Claude Code will help you initialize the project, install dependencies, and start coding.

## Development Workflow Reminder

Now that you know the workflow, keep using it:

1. **Create a branch** before starting new work
   ```bash
   git checkout -b feature/your-feature-name
   ```
2. **Make changes** and commit often with clear messages
   ```bash
   git add .
   git commit -m "Add feature description"
   ```
3. **Push your branch** to GitHub
   ```bash
   git push -u origin feature/your-feature-name
   ```
4. **Create a pull request** on GitHub and review the changes
5. **Merge** once you're satisfied

This cycle protects your main branch and gives you a history of every change.

## Tips for Your Second Project

- **Start small.** Even smaller than you think. Get something working first, then add features.
- **Commit early and often.** Don't wait until everything is perfect to make your first commit.
- **Read error messages.** They look intimidating but usually tell you exactly what went wrong.
- **Use Claude Code as a collaborator, not just a tutor.** Now that you know the basics, you can work faster. Ask it to explain less and do more, or keep the teaching mode if you prefer.
- **Explore your `.gitignore`.** Make sure it covers secrets and build artifacts for your tech stack.

## 🔒 Security Reminder

Before you start any new project:
- Never commit secrets (API keys, tokens, passwords) to your repo
- Set up a `.gitignore` file before your first commit
- Use environment variables and `.env` files for sensitive configuration
- Add `.env` to your `.gitignore` immediately

Claude Code will remind you of these habits, but building the muscle memory yourself is the goal.

---

← [Your First Session](09-Your-First-Session) | [Back to Home](Home)
