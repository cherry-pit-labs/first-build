# 3. GitHub Basics

Before we install Git on your computer, let's set up a few things on GitHub itself. You'll also learn the key concepts you'll use throughout this project.

Here's the simplest way to think about the two tools:
- **Git** = the tool (runs on your computer, tracks changes)
- **GitHub** = the website (stores your code in the cloud)

Git tracks your changes locally. GitHub backs them up online and lets you share your work with the world (or keep it private, your choice).

---

## Create a GitHub Account

If you haven't already (you should have done this in the [Prerequisites](01-Prerequisites)), go to **[github.com/signup](https://github.com/signup)** and create a free account.

**Username tips:**
- Pick something professional. This will appear on your profile and in your project URLs.
- Avoid joke names you'll regret later. This can become part of your portfolio.
- Keep it short and recognizable.

## Make Your Email Private

By default, GitHub can expose your email address in your profile and in every commit you make. Since commits are public (in public repos), anyone can see your email. This can lead to spam or unwanted contact. Let's fix that now, before we configure Git.

1. Go to **[github.com/settings/emails](https://github.com/settings/emails)**
2. Check the box: **"Keep my email addresses private"**
3. Check the box: **"Block command line pushes that expose my email"**
4. Look for the **noreply email address** that GitHub provides. It will look something like:
   ```
   123456789+yourusername@users.noreply.github.com
   ```
5. **Copy this noreply address** and save it somewhere (your password manager is a great place). You'll use it when configuring Git in the next step.

### 🔒 Security Note

Even if your repositories are private now, they might become public later (for example, as a portfolio piece). By using the noreply email from the start, your personal email is never embedded in your commit history. This is a habit worth building early.

## Tour of the GitHub Interface

Once you're logged in, here's what you'll see:

```
┌──────────────────────────────────────────────────────────────┐
│  GitHub Logo    Search bar    [+] ▾    🔔    Profile pic     │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│  Dashboard / Feed                                            │
│  - Your repositories                                         │
│  - Recent activity                                           │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

**Key areas you'll use:**

- **Repositories tab:** A list of all your projects. Each repository ("repo") is one project.
- **Code tab** (inside a repo)**:** Where you see your project's files, like a file explorer in the cloud.
- **Issues tab** (inside a repo)**:** A built-in to-do list and bug tracker for your project.
- **Pull Requests tab** (inside a repo)**:** Where you review changes before merging them into the main codebase. More on this later.
- **Wiki tab** (inside a repo)**:** Documentation pages. That's actually where you're reading this guide right now.

### The `[+]` Button

The plus button in the top-right corner is where you create new things: repositories, gists (code snippets), and organizations. You'll use this soon, but **not yet**. We'll create your first repo in a later step.

## Key Concepts

### Repository (Repo)

A repository is a project. It contains all of your project's files plus the entire history of changes. When you look at a repo on GitHub, you're seeing the latest version, but every previous version is saved too.

### Templates and Cloning

These are two concepts you'll use to get started with this project:

- **Template:** A starting-point repository. When you create a repo from a template, GitHub copies all the files into a brand-new repository on your account. Your copy is completely independent from the original.
- **Cloning:** Downloading a repo from GitHub *to your computer* so you can work on it locally.

The workflow: **Create from template** (get your own copy on GitHub), then **clone it** (download it to your computer).

## Don't Create a Repo Yet

You might be tempted to click "New Repository" right now. Hold off. In a few steps, you'll create your own copy of the First Build repo from its template. That gives you the right starting point with all the tutorial files already in place.

### 🔒 Security Note

Your GitHub profile is **public by default**. Anyone can see your username, bio, and public repositories. That's the point: it's your developer portfolio. But keep personal information out:

- Don't put your home address, phone number, or school name in your profile
- Don't put real passwords, API keys, or personal data in commit messages
- Private repos exist. Use them for anything you don't want the world to see (we'll set yours to private by default)

---

← [Install VS Code](02-Install-VS-Code) | **Next:** [Install Git](04-Install-Git) →
