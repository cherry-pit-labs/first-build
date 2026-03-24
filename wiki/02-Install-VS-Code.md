# 2. Install VS Code

VS Code (Visual Studio Code) is a **code editor** — the program you'll write code in. It's not like Microsoft Word. Think of it more like a workshop: it has built-in tools that help you write, organize, test, and debug your code. It's free, it's made by Microsoft, and it's what most developers use.

---

## Install VS Code

**Windows:**
1. Go to [code.visualstudio.com](https://code.visualstudio.com/)
2. Click the big blue **Download for Windows** button
3. Run the installer. Accept the defaults, but **check these boxes** if they appear:
   - "Add to PATH" ✅
   - "Add 'Open with Code' action to file context menu" ✅
   - "Add 'Open with Code' action to directory context menu" ✅
4. Finish the install and open VS Code

<details>
<summary>Mac</summary>

1. Go to [code.visualstudio.com](https://code.visualstudio.com/)
2. Click **Download for Mac**
3. Open the downloaded `.zip` file
4. Drag **Visual Studio Code** into your **Applications** folder
5. Open it from Applications
6. To use `code` from the terminal: open the Command Palette (`Cmd+Shift+P`), type "shell command", and select **"Install 'code' command in PATH"**

</details>

<details>
<summary>Linux</summary>

The easiest path is using Snap:
```bash
sudo snap install code --classic
```

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

- **Sidebar (left)** — File explorer, search, source control, extensions. Click the icons to switch between them.
- **Editor area (center)** — Where you write and read code. You can have multiple files open in tabs.
- **Terminal panel (bottom)** — A built-in command line. Open it with `` Ctrl+` `` (that's the backtick key, usually above Tab). This is where you'll run Git commands, Claude Code, and more.
- **Command Palette** — Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac) to search for any action. This is your "I know what I want to do but don't know where the button is" tool.

## Install Essential Extensions

Extensions add features to VS Code. Think of them like apps on your phone — VS Code is the phone, extensions are the apps.

Click the **Extensions** icon in the sidebar (it looks like four small squares) or press `Ctrl+Shift+X`.

Search for and install these:

| Extension | What It Does |
|-----------|-------------|
| **GitLens** | Shows who changed each line of code and when. Makes Git visual. |
| **Prettier** | Automatically formats your code so it looks neat and consistent. |

> **Note:** You may install additional extensions later depending on your project (like the Python extension for Python projects). Claude Code will recommend them when the time comes.

### 🔒 Security Note

**Only install extensions from verified publishers.** In the extension marketplace, look for the blue checkmark next to the publisher's name — this means Microsoft has verified them. Unverified extensions from unknown publishers could potentially be unsafe. When in doubt, ask Claude Code about an extension before installing it.

---

**Next:** [Install Git](03-Install-Git) →
