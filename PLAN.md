# Project Plan: First Build — A Claude-Guided Tutorial for New Developers

> **Purpose:** Create a public GitHub repository that walks a complete beginner (comfortable with computers, zero coding experience) through setting up a modern development environment and building their first software project — with Claude Code as their AI pair-programming tutor.
>
> **Handoff target:** This plan will be handed to Claude Code to execute. Everything below should be treated as the spec.

---

## 1. Project Identity

| Field | Value |
|-------|-------|
| **Repo name** | `first-build` (working title — open to change) |
| **Audience** | Older teens / young adults (16–22) who are comfortable with computers but have never written code |
| **Primary goal** | Learning — comprehension over velocity, every concept taught before it's used |
| **Secondary goal** | A finished, working project the learner built themselves |
| **Repo visibility** | Private by default; guide explains how and when to make it public as a portfolio piece |

---

## 2. Repository Structure

Single repo. The GitHub Wiki hosts the static setup guide. The repo root contains the adaptive `CLAUDE.md` template and supporting files the learner will clone.

```
first-build/
├── wiki/                        # Source files for the GitHub Wiki
│   ├── Home.md                  # Welcome & orientation
│   ├── 01-Prerequisites.md      # Accounts, subscriptions, hardware
│   ├── 02-Install-VS-Code.md    # VS Code install + essential extensions
│   ├── 03-Install-Git.md        # Git install + config (name, email, SSH key)
│   ├── 04-GitHub-Basics.md      # Create account, create repo, clone it
│   ├── 05-Install-Node.md       # Node.js via nvm (needed for Claude Code)
│   ├── 06-Install-Claude-Code.md# Claude Code install + first launch
│   ├── 07-Clone-This-Repo.md    # Clone first-build, run setup script
│   ├── 08-Choose-Your-Project.md# Project archetypes + custom idea path
│   ├── 09-Your-First-Session.md # What to expect when you open Claude Code
│   └── _Sidebar.md              # Wiki navigation sidebar
├── CLAUDE.md                    # Adaptive template — Claude Code rewrites on first session
├── DEVLOG.md                    # Session journal (empty template)
├── GLOSSARY.md                  # Running vocabulary list (seeded with basics)
├── PROGRESS.md                  # Skill tracking and milestone checklist
├── ARCHITECTURE.md              # System design doc (populated after project choice)
├── .gitignore                   # Pre-configured for Node, Python, secrets
├── setup.sh                     # Optional: verify environment script (bash)
├── setup.ps1                    # Optional: verify environment script (PowerShell)
└── README.md                    # Repo overview, links to wiki, quick-start
```

---

## 3. Wiki Content Plan — The Static Setup Guide

The wiki is **platform-aware**: Windows-first with Mac/Linux callouts in collapsible `<details>` blocks where steps differ. Written in a friendly, non-condescending tone appropriate for a smart 17-year-old.

### Page-by-Page Outline

#### Home.md
- What this project is and who it's for
- What you'll have when you're done (a working app you built + real dev skills)
- How the guide works: wiki gets you set up → Claude Code teaches you to build
- Estimated time: 1–2 hours for setup, then ongoing sessions
- "You don't need to understand everything right now — that's what Claude Code is for"

#### 01-Prerequisites.md
- **Hardware:** Any computer made in the last ~8 years, internet connection
- **Accounts to create:** GitHub (free), Anthropic/Claude (Pro subscription required — link to signup, no billing walkthrough)
- **Mindset framing:** You will make mistakes. That's not just okay, it's the process. Every working developer Googles things constantly
- **🔒 Security note:** Introduce the concept early — "You'll be creating accounts and keys. Treat passwords and keys like your house key. We'll teach you good habits throughout."

#### 02-Install-VS-Code.md
- What VS Code is and why developers use it (it's not Microsoft Word for code — it's a workshop)
- Download and install steps (Windows primary, Mac/Linux in callouts)
- Essential extensions to install:
  - Python (if relevant to their project)
  - GitLens
  - Prettier
  - Claude Code extension (if available at time of writing)
- Quick orientation: sidebar, terminal panel, file explorer, command palette
- **🔒 Security note:** Only install extensions from verified publishers. Explain what "verified" means.

#### 03-Install-Git.md
- What Git is (version control explained via the "save game" analogy — every commit is a save point you can return to)
- Install Git (Windows: Git for Windows installer; Mac: `xcode-select --install`; Linux: package manager)
- Configure identity: `git config --global user.name` and `user.email`
- Generate SSH key: step-by-step with `ssh-keygen`, add to GitHub
- Verify: `ssh -T git@github.com`
- **🔒 Security note:** Your SSH key is like a digital ID card. Never share the private key file. Explain public vs. private key concept at a very high level.

#### 04-GitHub-Basics.md
- What GitHub is (Git is the tool, GitHub is the website where your code lives online)
- Create a GitHub account (if not done in prerequisites)
- Tour of the GitHub UI: repos, code tab, issues, wiki
- **Do not create a repo yet** — that happens after cloning first-build
- Explain what "clone" means (downloading a copy of a project to your computer)
- **🔒 Security note:** Your GitHub profile is public by default. Don't put real addresses, phone numbers, or sensitive info in your profile or commit messages.

#### 05-Install-Node.md
- What Node.js is and why you need it (Claude Code runs on it; many web projects use it)
- Install via `nvm` (Node Version Manager) — not the direct installer
  - Why nvm: lets you switch versions, avoids permission issues
  - Windows: nvm-windows installer
  - Mac/Linux: nvm install script
- Verify: `node --version` and `npm --version`
- Brief explainer: what npm is (app store for code libraries)
- **🔒 Security note:** npm packages are written by strangers on the internet. Claude Code will help you vet what you install — never blindly run `npm install` on something you found in a random forum.

#### 06-Install-Claude-Code.md
- What Claude Code is (an AI assistant that lives in your terminal and understands your entire project)
- Install: `npm install -g @anthropic-ai/claude-code`
- First launch: `claude` in terminal — authenticate with Anthropic account
- Explain what CLAUDE.md is (the instruction file Claude Code reads automatically — "this is how you tell your AI partner who you are and how you want to work")
- Quick demo: "Type `claude` and ask it 'what files are in this directory?'"
- **🔒 Security note:** Claude Code can read and write files on your computer within the project folder. It will always ask before doing anything destructive. If something feels wrong, you can always say no.

#### 07-Clone-This-Repo.md
- Open VS Code's integrated terminal
- `git clone git@github.com:YOUR_USERNAME/first-build.git` (after forking)
- Explain forking vs. cloning (forking = your own copy on GitHub; cloning = downloading it to your machine)
- `cd first-build`
- Run the environment verification script: `./setup.sh` or `.\setup.ps1`
  - Script checks: Git installed? Node installed? npm installed? Claude Code installed? SSH key configured?
  - Prints a checklist with ✅ / ❌ for each item
- **🔒 Security note:** The setup script only checks that tools are installed — it doesn't install anything or send data anywhere. Reading scripts before running them is a good habit. Claude Code can explain any script to you line-by-line.

#### 08-Choose-Your-Project.md
- Intro: "Now that your tools are ready, it's time to decide what to build."
- **Archetype menu** (3–5 starter ideas with brief descriptions):
  1. **Personal Website / Portfolio** — HTML, CSS, maybe a little JavaScript. Great first project, immediately useful. (Complexity: Low)
  2. **To-Do App** — Classic first app. Teaches state, UI, data persistence. Can be web or terminal-based. (Complexity: Low–Medium)
  3. **Quiz / Flashcard App** — Interactive, fun to build, teaches user input handling and data structures. (Complexity: Medium)
  4. **Discord / Chat Bot** — Event-driven, teaches APIs and async programming. Requires a Discord account. (Complexity: Medium)
  5. **CLI Tool / Automation Script** — Solve a real problem on your computer. Teaches scripting, file I/O, practical thinking. (Complexity: Low–Medium)
- **Custom idea path:** "Have something else in mind? Great. When you start your first Claude Code session, describe your idea and Claude will help you shape it into a buildable project plan."
- Guidance on choosing: "Pick something you'd actually use or show someone. Motivation matters more than complexity."
- Note: "Claude Code will adapt the CLAUDE.md file to your chosen project in your first session."

#### 09-Your-First-Session.md
- What to expect: open your terminal, `cd` into the project folder, type `claude`
- Claude Code will read CLAUDE.md, greet you, confirm your project choice, and adapt the file
- Your first session will:
  - Confirm your environment works
  - Finalize your project idea
  - Set up the project folder structure
  - Make your first commit
  - Teach you what every step means
- "Don't rush. Ask questions. Say 'explain that' anytime something doesn't make sense."
- The exit phrase and what happens when you use it (inline quiz review)

---

## 4. CLAUDE.md — The Adaptive Template

This is the core of the project. Claude Code reads it at session start. It must be written for a true beginner but structured so Claude Code can rewrite project-specific sections after the learner chooses their project.

### Sections to Include

#### 4.1 Who I Am (Learner Profile)
- States: "I have never written code before. I am comfortable with computers."
- Learning priority > speed — every single time
- Preferred explanation style: analogy-first, then technical detail
- "If I don't ask a question, it doesn't mean I understand. Check in with me."

#### 4.2 How to Teach Me
- **📘 CONCEPT:** pattern — before introducing any new concept, tool, or syntax, explain it in plain English with an analogy
- **📌 REVIEW:** flag in code comments — marks lines that will be discussed at the next natural pause
- **🧠 CHECK-IN:** inline quizzes — after teaching a concept, ask 1–2 quick questions to verify understanding before moving on. Do not proceed if I get them wrong — reteach differently.
- Never write code I haven't been taught yet
- Never fix errors silently — every error is a teaching opportunity
- When I make a mistake, explain what happened and why before showing the fix
- Encourage me to try fixing things myself first — guide, don't just solve

#### 4.3 Project Definition
- **[ADAPTIVE]** — This section starts with a placeholder. Claude Code rewrites it during the first session based on the learner's project choice.
- Template includes:
  - Project name
  - One-sentence description
  - Core features (prioritized)
  - Tech stack with rationale for each choice
  - MVP scope vs. stretch goals

#### 4.4 Development Phases
- **[ADAPTIVE]** — Claude Code generates 4–6 phases based on the project.
- Each phase has:
  - Goal (what the learner will have working at the end)
  - Concepts introduced (listed explicitly)
  - Estimated sessions
  - Definition of done

#### 4.5 Git Workflow Rules
- Never commit directly to `main`
- Branch naming: `feature/description` or `fix/description`
- Commit messages: present tense, descriptive ("Add homepage layout" not "stuff")
- PR workflow: branch → commit → push → PR → review → merge
- Claude Code explains every git command before running it
- **🔒 Security rule:** Before every commit, Claude Code checks for secrets (API keys, passwords, tokens) in staged files and blocks the commit if any are found. Teach the learner why.

#### 4.6 Documentation Rules
- **DEVLOG.md** — Updated every session. What we did, what I learned, what was confusing. Claude Code writes a draft; learner reviews and edits it (teaches writing about code).
- **GLOSSARY.md** — Every new term gets added the first time it appears. Format: `**term** — plain-English definition`. Learner should be able to explain any term in the glossary in their own words.
- **PROGRESS.md** — Skill checklist and milestone tracker. Organized by phase. Checkboxes for concepts understood, tools used, milestones hit.
- **ARCHITECTURE.md** — **[ADAPTIVE]** — System design doc. Starts empty. Claude Code builds it incrementally as the project takes shape. Teaches the learner to think about how pieces connect.

#### 4.7 Security Thread (Recurring)
This is not a single lesson — it's a thread that runs through every session. Claude Code should teach security concepts **in context** as they naturally arise:

- **Secrets management:** Never commit API keys, passwords, or tokens. Use `.env` files + `.gitignore`. Explain what happens if a key leaks to a public repo (bots scrape GitHub constantly).
- **`.gitignore` discipline:** Explain what it does, why it matters, add to it as the project grows. Treat it like a lock on a door.
- **Dependency awareness:** Before installing any package, briefly explain what it does and who maintains it. Check download counts and last update date. "Would you install a random app from a stranger? Same principle."
- **Input validation:** When the project handles user input, teach why you never trust input blindly (even at a basic level — "What if someone types 10,000 characters into this box?").
- **HTTPS and API safety:** When making API calls, explain why HTTPS matters, what an API key is, and why you don't put it in client-side code.
- **Authentication basics:** If the project involves login/accounts, teach password hashing concepts (you don't need to implement bcrypt, but understand why plain text passwords are bad).
- **Permissions and access:** Explain why your SSH key has a passphrase, why repos can be private, why you don't give admin access to everyone.

Claude Code should surface these organically — not as a lecture, but as a "by the way, here's why we do it this way" moment. Flag each one with a **🔒 SECURITY:** label in the DEVLOG when it comes up.

#### 4.8 Session Flow
1. Claude Code reads CLAUDE.md and DEVLOG.md to restore context
2. Quick recap: "Last time we worked on X. You learned Y. Ready to continue?"
3. Work on the current phase
4. Inline 🧠 CHECK-IN quizzes as new concepts appear
5. When learner signals they're done (exit phrase TBD — could be "I'm done for now" or similar), Claude Code:
   - Drafts the DEVLOG entry for the session
   - Updates GLOSSARY with new terms
   - Updates PROGRESS checkboxes
   - Commits all documentation updates
   - Gives a brief preview of what's next

#### 4.9 Guardrails
- **Never write code I don't understand yet.** Teach first, always.
- **Never skip documentation updates.** Docs update in the same commit as the code they describe.
- **Never commit directly to `main`.** Always branch → PR → merge.
- **Never introduce a new tool or library without explaining it** and getting the learner's agreement.
- **Never assume context from a previous session.** Use the DEVLOG to restore it.
- **Always explain error messages.** Don't just fix them silently.
- **Always confirm before destructive operations** (deleting files, force-pushing, dropping data).
- **Always check for secrets before committing.** Block and teach if found.
- **If uncertain, say so.** Model intellectual honesty.
- **Never be condescending.** The learner is smart and capable — they just haven't learned this yet.

---

## 5. Setup Verification Scripts

Two scripts (bash and PowerShell) that the learner runs after cloning. They verify the environment is ready.

### Checks to perform:
1. Git installed → print version
2. Git user.name configured
3. Git user.email configured
4. SSH key exists (`~/.ssh/id_*`)
5. Node.js installed → print version (require >= 18)
6. npm installed → print version
7. Claude Code installed → `claude --version`
8. Current directory is a git repo

### Output format:
```
✅ Git 2.43.0
✅ Git user.name: Jane Doe
✅ Git user.email: jane@example.com
✅ SSH key found
✅ Node.js 20.11.0
✅ npm 10.2.3
✅ Claude Code 1.x.x
✅ Git repository detected

All checks passed! You're ready to start. Run `claude` to begin.
```

Or with failures:
```
✅ Git 2.43.0
❌ Git user.name not configured — run: git config --global user.name "Your Name"
...
```

---

## 6. Tone and Voice Guidelines

The entire project — wiki, CLAUDE.md, README, scripts — should follow these principles:

- **Friendly, not childish.** Write like a knowledgeable older sibling or mentor, not a children's TV host.
- **Confident, not intimidating.** "Here's what we'll do" not "This complex process requires..."
- **Honest about difficulty.** "This part is confusing for everyone at first" is better than pretending it's easy.
- **Celebratory at milestones.** First commit, first branch, first working feature — these are genuine achievements.
- **No jargon without definition.** Every technical term gets a plain-English explanation the first time it appears.
- **Analogies are first-class.** Git = save points. Branches = parallel timelines. APIs = restaurant menus. Functions = recipes.

---

## 7. Implementation Order for Claude Code

When this plan is handed off to Claude Code, execute in this order:

### Phase 1: Repo Skeleton
1. Create the GitHub repository (`first-build`, private)
2. Set up the folder structure from Section 2
3. Write `.gitignore` (Node, Python, `.env`, OS files, IDE files)
4. Write `README.md` (overview, link to wiki, quick-start instructions)
5. Seed `DEVLOG.md`, `GLOSSARY.md`, `PROGRESS.md`, `ARCHITECTURE.md` with empty templates
6. Write `CLAUDE.md` with all non-adaptive sections complete and adaptive sections clearly marked with `[ADAPTIVE — Claude Code will rewrite this section during your first session]`
7. Commit everything to `main`

### Phase 2: Wiki Content
8. Write all 9 wiki pages + sidebar following the outlines in Section 3
9. Each page should be self-contained but link to next/previous
10. Include screenshots or ASCII diagrams where helpful (especially VS Code orientation, GitHub UI tour)
11. Platform callouts in `<details>` blocks
12. Test all commands listed in the wiki on a clean Windows environment if possible

### Phase 3: Setup Scripts
13. Write `setup.sh` (bash) and `setup.ps1` (PowerShell)
14. Follow the spec in Section 5
15. Make scripts safe and read-only (they check, never install)
16. Test on fresh environments

### Phase 4: Review and Polish
17. Read through the entire wiki start-to-finish as if you're the learner
18. Check for broken links, missing explanations, assumed knowledge
19. Verify CLAUDE.md is coherent and complete
20. Write a CONTRIBUTING.md if the repo will accept outside contributions

---

## 8. Success Criteria

The project is "done" when:

- [ ] A non-developer can follow the wiki from page 1 to page 9 and end up with a working development environment
- [ ] Running `claude` in the cloned repo starts a productive, beginner-friendly first session
- [ ] Claude Code adapts the CLAUDE.md to the learner's chosen project
- [ ] The inline quiz system (🧠 CHECK-IN) fires naturally during teaching
- [ ] Documentation files (DEVLOG, GLOSSARY, PROGRESS, ARCHITECTURE) are updated every session
- [ ] Security concepts are taught in context throughout the project, not as a one-time lecture
- [ ] The learner can explain, in their own words, what every file in their project does by the end

---

## 9. Open Questions / Decisions for Claude Code

These can be resolved during implementation:

1. **Repo name:** `first-build` is the working title. Better options welcome.
2. **Exit phrase:** What phrase signals end-of-session? ("I'm done for now" works but should feel natural for the audience.)
3. **Project archetype details:** The 5 listed in Section 3 are starting points. Claude Code may refine descriptions, adjust complexity ratings, or add/remove options based on what teaches best.
4. **Screenshots in wiki:** Decide whether to include actual screenshots (more work to maintain) or descriptive text with ASCII art (more durable). Recommendation: text-first with optional screenshots.
5. **Claude Code version dependencies:** If any wiki steps depend on specific Claude Code features or versions, document minimum version requirements.
