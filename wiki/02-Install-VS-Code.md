# 2. Install VS Code

VS Code (Visual Studio Code) is a **code editor**, the program you'll write code in. It's not like Microsoft Word. Think of it more like a workshop: it has built-in tools that help you write, organize, test, and debug your code. It's free, it's made by Microsoft, and it's what most developers use.

---

## Install VS Code

<details>
<summary>Windows</summary>

**GUI method:**
1. Go to [code.visualstudio.com](https://code.visualstudio.com/)
2. Click the big blue **Download for Windows** button
3. Run the installer. Accept the defaults, but **check these boxes** if they appear:
   - "Add to PATH" ✅
   - "Add 'Open with Code' action to file context menu" ✅
   - "Add 'Open with Code' action to directory context menu" ✅
4. Finish the install and open VS Code

**CLI method:**
```powershell
winget install Microsoft.VisualStudioCode
```

> [!NOTE]
> **What's happening here:**
> - `winget` is Windows' built-in package manager, a way to install programs from the command line instead of downloading installers from websites
> - `install` tells winget to install a program
> - `Microsoft.VisualStudioCode` is the unique identifier for VS Code in the winget catalog

</details>

<details>
<summary>Mac</summary>

**GUI method:**
1. Go to [code.visualstudio.com](https://code.visualstudio.com/)
2. Click **Download for Mac**
3. Open the downloaded `.zip` file
4. Drag **Visual Studio Code** into your **Applications** folder
5. Open it from Applications
6. To use `code` from the terminal: open the Command Palette (`Cmd+Shift+P`), type "shell command", and select **"Install 'code' command in PATH"**

**CLI method:**
```bash
brew install --cask visual-studio-code
```

> [!NOTE]
> **What's happening here:**
> - `brew` is the Homebrew package manager for Mac
> - `install --cask` installs a graphical application (as opposed to a command-line tool)
> - `visual-studio-code` is the package name for VS Code

This requires [Homebrew](https://brew.sh/). If you don't have it, use the GUI method above.

</details>

<details>
<summary>Linux</summary>

**CLI method (Snap):**
```bash
sudo snap install code --classic
```

> [!NOTE]
> **What's happening here:**
> - `sudo` runs the command with administrator privileges (it will ask for your password)
> - `snap install` installs a program using the Snap package manager
> - `code` is the package name for VS Code
> - `--classic` allows VS Code full access to your system (needed for a code editor to work properly)

Or download the `.deb`/`.rpm` package from [code.visualstudio.com](https://code.visualstudio.com/) and install it with your package manager.

</details>

## Quick Orientation

When VS Code opens, you'll see something like this:

```
┌──────────────────────────────────────────────────────┐
│  Menu Bar                                            │
├──────┬───────────────────────────────────────────────┤
│      │                                               │
│  S   │                                               │
│  i   │         Editor Area                           │
│  d   │         (where your code goes)                │
│  e   │                                               │
│  b   │                                               │
│  a   │                                               │
│  r   │                                               │
│      ├───────────────────────────────────────────────┤
│      │  Terminal Panel                               │
│      │  (where you type commands)                    │
└──────┴───────────────────────────────────────────────┘
```

Key areas to know:

- **Sidebar (left):** File explorer, search, source control, extensions. Click the icons to switch between them.
- **Editor area (center):** Where you write and read code. You can have multiple files open in tabs.
- **Terminal panel (bottom):** A built-in command line. Open it with `` Ctrl+` `` (that's the backtick key, usually above Tab). This is where you'll run Git commands, Claude Code, and more.
- **Command Palette:** Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac) to search for any action. This is your "I know what I want to do but don't know where the button is" tool.

## Install Essential Extensions

Extensions add features to VS Code. Think of them like apps on your phone. VS Code is the phone, extensions are the apps.

Click the **Extensions** icon in the sidebar (it looks like four small squares) or press `Ctrl+Shift+X`.

Search for and install these:

| Extension | What It Does |
|-----------|-------------|
| **GitLens** | Shows who changed each line of code and when. Makes Git visual. |
| **Prettier** | Automatically formats your code so it looks neat and consistent. |

**CLI method:** You can also install extensions from the terminal:
```bash
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
```

> [!NOTE]
> **What's happening here:**
> - `code` is the VS Code command-line tool
> - `--install-extension` tells it to install an extension by its unique identifier

> **Note:** You may install additional extensions later depending on your project (like the Python extension for Python projects). Claude Code will recommend them when the time comes.

### 🔒 Security Note

**Only install extensions from verified publishers.** In the extension marketplace, look for the blue checkmark next to the publisher's name. This means Microsoft has verified them. Unverified extensions from unknown publishers could potentially be unsafe. When in doubt, ask Claude Code about an extension before installing it.

## Before Moving On

**Close VS Code for now.** The tools you'll install in the next few steps need VS Code to restart before they're recognized. We'll reopen it later.

---

← [Prerequisites](01-Prerequisites) | **Next:** [GitHub Basics](03-GitHub-Basics) →
