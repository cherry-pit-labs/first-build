# setup.ps1 — Environment verification script for First Build
# This script only CHECKS that tools are installed. It does not install anything.

$ErrorActionPreference = 'Stop'

$passed = 0
$failed = 0

function Test-Check {
    param(
        [string]$Label,
        [bool]$Success,
        [string]$Message
    )

    if ($Success) {
        Write-Host "  ✅ $Message" -ForegroundColor Green
        $script:passed++
    }
    else {
        Write-Host "  ❌ $Label — $Message" -ForegroundColor Red
        $script:failed++
    }
}

Write-Host ""
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "  First Build — Environment Check" -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host ""

# 1. Git installed
try {
    $gitVersion = git --version 2>$null
    if ($gitVersion) {
        $version = ($gitVersion -replace 'git version ', '')
        Test-Check -Label "Git" -Success $true -Message "Git $version"
    }
    else {
        Test-Check -Label "Git" -Success $false -Message "Git is not installed. See: https://git-scm.com/"
    }
}
catch {
    Test-Check -Label "Git" -Success $false -Message "Git is not installed. See: https://git-scm.com/"
}

# 2. Git user.name configured
try {
    $gitName = git config --global user.name 2>$null
    if ($gitName) {
        Test-Check -Label "Git user.name" -Success $true -Message "Git user.name: $gitName"
    }
    else {
        Test-Check -Label "Git user.name" -Success $false -Message "Git user.name not configured — run: git config --global user.name `"Your Name`""
    }
}
catch {
    Test-Check -Label "Git user.name" -Success $false -Message "Git user.name not configured — run: git config --global user.name `"Your Name`""
}

# 3. Git user.email configured
try {
    $gitEmail = git config --global user.email 2>$null
    if ($gitEmail) {
        Test-Check -Label "Git user.email" -Success $true -Message "Git user.email: $gitEmail"
    }
    else {
        Test-Check -Label "Git user.email" -Success $false -Message "Git user.email not configured — run: git config --global user.email `"you@example.com`""
    }
}
catch {
    Test-Check -Label "Git user.email" -Success $false -Message "Git user.email not configured — run: git config --global user.email `"you@example.com`""
}

# 4. SSH key exists
$sshKeys = Get-ChildItem -Path "$env:USERPROFILE\.ssh\id_*" -ErrorAction SilentlyContinue
if ($sshKeys) {
    Test-Check -Label "SSH key" -Success $true -Message "SSH key found"
}
else {
    Test-Check -Label "SSH key" -Success $false -Message "No SSH key found — see the Install Git wiki page for setup instructions"
}

# 5. Node.js installed (>= 18)
try {
    $nodeVersion = node --version 2>$null
    if ($nodeVersion) {
        $major = [int]($nodeVersion -replace 'v', '' -split '\.')[0]
        if ($major -ge 18) {
            Test-Check -Label "Node.js" -Success $true -Message "Node.js $nodeVersion"
        }
        else {
            Test-Check -Label "Node.js" -Success $false -Message "Node.js $nodeVersion found, but version 18+ is required. Update via nvm: nvm install lts"
        }
    }
    else {
        Test-Check -Label "Node.js" -Success $false -Message "Node.js is not installed. See the Install Node.js wiki page."
    }
}
catch {
    Test-Check -Label "Node.js" -Success $false -Message "Node.js is not installed. See the Install Node.js wiki page."
}

# 6. npm installed
try {
    $npmVersion = npm --version 2>$null
    if ($npmVersion) {
        Test-Check -Label "npm" -Success $true -Message "npm $npmVersion"
    }
    else {
        Test-Check -Label "npm" -Success $false -Message "npm is not installed. It should come with Node.js — try reinstalling Node."
    }
}
catch {
    Test-Check -Label "npm" -Success $false -Message "npm is not installed. It should come with Node.js — try reinstalling Node."
}

# 7. Claude Code installed
try {
    $claudeVersion = claude --version 2>$null
    if ($claudeVersion) {
        Test-Check -Label "Claude Code" -Success $true -Message "Claude Code $claudeVersion"
    }
    else {
        Test-Check -Label "Claude Code" -Success $false -Message "Claude Code is not installed — run: npm install -g @anthropic-ai/claude-code"
    }
}
catch {
    Test-Check -Label "Claude Code" -Success $false -Message "Claude Code is not installed — run: npm install -g @anthropic-ai/claude-code"
}

# 8. Current directory is a git repo
try {
    $isRepo = git rev-parse --is-inside-work-tree 2>$null
    if ($isRepo -eq 'true') {
        Test-Check -Label "Git repo" -Success $true -Message "Git repository detected"
    }
    else {
        Test-Check -Label "Git repo" -Success $false -Message "Not inside a Git repository. Make sure you've cloned the repo and cd'd into it."
    }
}
catch {
    Test-Check -Label "Git repo" -Success $false -Message "Not inside a Git repository. Make sure you've cloned the repo and cd'd into it."
}

Write-Host ""
Write-Host "-----------------------------------------" -ForegroundColor Cyan
Write-Host "  Results: $passed passed, $failed failed" -ForegroundColor Cyan
Write-Host "-----------------------------------------" -ForegroundColor Cyan

if ($failed -eq 0) {
    Write-Host ""
    Write-Host "All checks passed! You're ready to start." -ForegroundColor Green
    Write-Host "Run 'claude' to begin your first session." -ForegroundColor Green
}
else {
    Write-Host ""
    Write-Host "Some checks failed. Fix the issues above and run this script again." -ForegroundColor Yellow
}

Write-Host ""
