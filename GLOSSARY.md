# Glossary

> Every time you encounter a new technical term, it gets added here with a plain-English definition. Think of this as your personal dictionary for developer-speak.
>
> **The rule:** If a term is in this glossary, you should be able to explain it in your own words. If you can't, ask Claude Code to re-explain it.

---

**.env file** - A special file that stores secrets (API keys, passwords, tokens) outside of your code. It's listed in `.gitignore` so it never gets committed to your repository.

**.gitignore** - A file that tells Git which files and folders to ignore. Anything listed in `.gitignore` won't be tracked or committed. Used to keep secrets, build output, and OS junk out of your repo.

**API key** - A secret code that lets your program access an online service (like a weather API or Discord). Think of it like a password for your app. Never put API keys directly in your code.

**branch** - A parallel version of your project. You can make changes on a branch without affecting the main version, then merge them back when you're ready.

**clone** - Downloading a copy of a repository from GitHub to your own computer so you can work on it locally.

**commit** - A snapshot of your project at a specific moment - like a save point in a video game. Each commit has a message describing what changed.

**function** - A reusable set of instructions with a name. Like a recipe - you define it once, then "call" it whenever you need it. Functions help you avoid repeating the same code.

**Git** - A version control tool that tracks every change you make to your code. It lets you go back in time, work on multiple things at once, and collaborate with others.

**GitHub** - A website that hosts Git repositories online. Think of Git as the tool and GitHub as the cloud storage where your code lives so others (or you, from another computer) can access it.

**IDE (Integrated Development Environment)** - A program designed for writing code. VS Code is an IDE. It's like Microsoft Word, but for code - with built-in tools to help you write, test, and debug.

**merge** - Combining changes from one branch into another. When your feature is done and reviewed, you merge it into `main` so it becomes part of the finished project.

**Node.js** - A program that lets you run JavaScript outside of a web browser. Claude Code and many developer tools are built with it.

**npm (Node Package Manager)** - A tool that comes with Node.js for installing code packages (libraries) that other people have written. Think of it as an app store for code.

**pull request (PR)** - A request to merge your branch's changes into another branch (usually `main`). It lets you (and others) review the changes before they become permanent. Think of it as a "please check my work" step.

**repository (repo)** - A folder that Git is tracking. It contains your project files plus a hidden `.git` folder that stores the entire history of changes.

**SSH key** - A pair of digital keys (one public, one private) used to prove your identity to services like GitHub without typing a password every time. The public key is like your email address - safe to share. The private key is like your password - never share it.

**template repository** - A starting-point repo on GitHub. When you create a new repo from a template, GitHub copies all the files into a brand-new repository on your account. Your copy is completely independent from the original.

**terminal** - A text-based interface for talking to your computer. Instead of clicking buttons, you type commands. Also called the command line or shell.

**variable** - A named container that holds a value. Like a labeled box - you put something in it, and later you can look at what's inside or swap it for something else. Example: `name = "Alice"` stores the text "Alice" in a variable called `name`.

**VS Code (Visual Studio Code)** - A free, popular code editor made by Microsoft. It's the IDE we use in this project.

<!-- New terms will be added below as you learn them -->
