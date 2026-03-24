# 4. GitHub Basics

You've already installed Git  - the tool that tracks changes on your computer. Now let's talk about **GitHub**  - the website where your code lives online.

Here's the simplest way to think about it:
- **Git** = the tool (runs on your computer)
- **GitHub** = the website (stores your code in the cloud)

Git tracks your changes locally. GitHub backs them up online and lets you share your work with the world (or keep it private  - your choice).

---

## Create a GitHub Account

If you haven't already, go to **[github.com/signup](https://github.com/signup)** and create a free account.

**Username tips:**
- Pick something professional-ish. This will appear on your profile and in your project URLs.
- Avoid joke names you'll regret later  - this can become part of your portfolio.
- Keep it short and recognizable.

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

- **Repositories tab**  - A list of all your projects. Each repository ("repo") is one project.
- **Code tab** (inside a repo)  - Where you see your project's files, like a file explorer in the cloud.
- **Issues tab** (inside a repo)  - A built-in to-do list / bug tracker for your project.
- **Pull Requests tab** (inside a repo)  - Where you review changes before merging them into the main codebase. More on this later.
- **Wiki tab** (inside a repo)  - Documentation pages. That's actually where you're reading this guide right now (or where it will live).

### The `[+]` Button

The plus button in the top-right corner is where you create new things: repositories, gists (code snippets), and organizations. You'll use this soon  - but **not yet**. We'll create your first repo in a later step.

## Key Concepts

### Repository (Repo)

A repository is a project. It contains all of your project's files plus the entire history of changes. When you look at a repo on GitHub, you're seeing the latest version  - but every previous version is saved too.

### Forking vs. Cloning

These are two ways to get a copy of someone else's project. You'll use both:

- **Forking** = Making your own copy of a project *on GitHub*. The fork lives on your GitHub account. You can change it without affecting the original.
- **Cloning** = Downloading a repo from GitHub *to your computer* so you can work on it locally.

The workflow: **Fork first** (copy it to your GitHub), then **clone your fork** (download it to your computer).

## Don't Create a Repo Yet

You might be tempted to click "New Repository" right now. Hold off  - in a few steps, you'll fork the First Build repo instead. That gives you the right starting point with all the tutorial files already in place.

### 🔒 Security Note

Your GitHub profile is **public by default**. Anyone can see your username, bio, and public repositories. That's the point  - it's your developer portfolio. But keep personal information out:

- Don't put your home address, phone number, or school name in your profile
- Don't put real passwords, API keys, or personal data in commit messages
- Private repos exist  - use them for anything you don't want the world to see (we'll set yours to private by default)

---

← [Install Git](03-Install-Git) | **Next:** [Install Node.js](05-Install-Node) →
