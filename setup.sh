#!/usr/bin/env bash
# setup.sh — Environment verification script for First Build
# This script only CHECKS that tools are installed. It does not install anything.

set -euo pipefail

passed=0
failed=0

check() {
    local label="$1"
    local status="$2"
    local message="$3"

    if [ "$status" -eq 0 ]; then
        echo "✅ $message"
        passed=$((passed + 1))
    else
        echo "❌ $label — $message"
        failed=$((failed + 1))
    fi
}

echo ""
echo "========================================="
echo "  First Build — Environment Check"
echo "========================================="
echo ""

# 1. Git installed
if command -v git &>/dev/null; then
    git_version=$(git --version | awk '{print $3}')
    check "Git" 0 "Git $git_version"
else
    check "Git" 1 "Git is not installed. See: https://git-scm.com/"
fi

# 2. Git user.name configured
git_name=$(git config --global user.name 2>/dev/null || true)
if [ -n "$git_name" ]; then
    check "Git user.name" 0 "Git user.name: $git_name"
else
    check "Git user.name" 1 "Git user.name not configured — run: git config --global user.name \"Your Name\""
fi

# 3. Git user.email configured
git_email=$(git config --global user.email 2>/dev/null || true)
if [ -n "$git_email" ]; then
    check "Git user.email" 0 "Git user.email: $git_email"
else
    check "Git user.email" 1 "Git user.email not configured — run: git config --global user.email \"you@example.com\""
fi

# 4. SSH key exists
if ls ~/.ssh/id_* &>/dev/null; then
    check "SSH key" 0 "SSH key found"
else
    check "SSH key" 1 "No SSH key found — see the Install Git wiki page for setup instructions"
fi

# 5. Node.js installed (>= 18)
if command -v node &>/dev/null; then
    node_version=$(node --version)
    node_major=$(echo "$node_version" | sed 's/v//' | cut -d. -f1)
    if [ "$node_major" -ge 18 ]; then
        check "Node.js" 0 "Node.js $node_version"
    else
        check "Node.js" 1 "Node.js $node_version found, but version 18+ is required. Update via nvm: nvm install lts"
    fi
else
    check "Node.js" 1 "Node.js is not installed. See the Install Node.js wiki page."
fi

# 6. npm installed
if command -v npm &>/dev/null; then
    npm_version=$(npm --version)
    check "npm" 0 "npm $npm_version"
else
    check "npm" 1 "npm is not installed. It should come with Node.js — try reinstalling Node."
fi

# 7. Claude Code installed
if command -v claude &>/dev/null; then
    claude_version=$(claude --version 2>/dev/null || echo "unknown")
    check "Claude Code" 0 "Claude Code $claude_version"
else
    check "Claude Code" 1 "Claude Code is not installed — run: npm install -g @anthropic-ai/claude-code"
fi

# 8. Current directory is a git repo
if git rev-parse --is-inside-work-tree &>/dev/null; then
    check "Git repo" 0 "Git repository detected"
else
    check "Git repo" 1 "Not inside a Git repository. Make sure you've cloned the repo and cd'd into it."
fi

echo ""
echo "-----------------------------------------"
echo "  Results: $passed passed, $failed failed"
echo "-----------------------------------------"

if [ "$failed" -eq 0 ]; then
    echo ""
    echo "All checks passed! You're ready to start."
    echo "Run 'claude' to begin your first session."
else
    echo ""
    echo "Some checks failed. Fix the issues above and run this script again."
fi

echo ""
