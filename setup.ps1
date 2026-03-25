# setup.ps1 - Environment verification script for First Build
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
        Write-Host "  ✅ $Label - $Message" -ForegroundColor Green
        $script:passed++
    }
    else {
        Write-Host "  ❌ $Label - $Message" -ForegroundColor Red
        $script:failed++
    }
}

Write-Host ""
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "  First Build - Environment Check" -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host ""

# 1. Git installed
try {
    $gitVersion = git --version 2>$null
    if ($gitVersion) {
        $version = ($gitVersion -replace 'git version ', '')
        Test-Check -Label "Git" -Success $true -Message "$version"
    }
    else {
        Test-Check -Label "Git" -Success $false -Message "Not installed. Download from https://git-scm.com/"
    }
}
catch {
    Test-Check -Label "Git" -Success $false -Message "Not installed. Download from https://git-scm.com/"
}

# 2. Git user.name configured
try {
    $gitName = git config --global user.name 2>$null
    if ($gitName) {
        Test-Check -Label "Git user.name" -Success $true -Message "$gitName"
    }
    else {
        Test-Check -Label "Git user.name" -Success $false -Message "Not configured. Run: git config --global user.name `"Your Name`""
    }
}
catch {
    Test-Check -Label "Git user.name" -Success $false -Message "Not configured. Run: git config --global user.name `"Your Name`""
}

# 3. Git user.email configured
try {
    $gitEmail = git config --global user.email 2>$null
    if ($gitEmail) {
        Test-Check -Label "Git user.email" -Success $true -Message "$gitEmail"
    }
    else {
        Test-Check -Label "Git user.email" -Success $false -Message "Not configured. Run: git config --global user.email `"you@example.com`""
    }
}
catch {
    Test-Check -Label "Git user.email" -Success $false -Message "Not configured. Run: git config --global user.email `"you@example.com`""
}

# 4. SSH key exists
$sshKeys = Get-ChildItem -Path "$env:USERPROFILE\.ssh\id_*" -ErrorAction SilentlyContinue
if ($sshKeys) {
    Test-Check -Label "SSH key" -Success $true -Message "Found"
}
else {
    Test-Check -Label "SSH key" -Success $false -Message "Not found. See wiki page '03-Install-Git' for setup instructions."
}

# 5. Node.js installed (>= 18)
try {
    $nodeVersion = node --version 2>$null
    if ($nodeVersion) {
        $major = [int]($nodeVersion -replace 'v', '' -split '\.')[0]
        if ($major -ge 18) {
            Test-Check -Label "Node.js" -Success $true -Message "$nodeVersion"
        }
        else {
            Test-Check -Label "Node.js" -Success $false -Message "$nodeVersion found, but version 18+ is required. Run: fnm install --lts"
        }
    }
    else {
        Test-Check -Label "Node.js" -Success $false -Message "Not installed. See wiki page '05-Install-Node' for setup instructions."
    }
}
catch {
    Test-Check -Label "Node.js" -Success $false -Message "Not installed. See wiki page '05-Install-Node' for setup instructions."
}

# 6. npm installed
try {
    $npmVersion = npm --version 2>$null
    if ($npmVersion) {
        Test-Check -Label "npm" -Success $true -Message "$npmVersion"
    }
    else {
        Test-Check -Label "npm" -Success $false -Message "Not installed. It should come with Node.js - try reinstalling Node."
    }
}
catch {
    Test-Check -Label "npm" -Success $false -Message "Not installed. It should come with Node.js - try reinstalling Node."
}

# 7. Claude Code installed
try {
    $claudeVersion = claude --version 2>$null
    if ($claudeVersion) {
        Test-Check -Label "Claude Code" -Success $true -Message "$claudeVersion"
    }
    else {
        Test-Check -Label "Claude Code" -Success $false -Message "Not installed. Run: npm install -g @anthropic-ai/claude-code"
    }
}
catch {
    Test-Check -Label "Claude Code" -Success $false -Message "Not installed. Run: npm install -g @anthropic-ai/claude-code"
}

# 8. Current directory is a git repo
try {
    $isRepo = git rev-parse --is-inside-work-tree 2>$null
    if ($isRepo -eq 'true') {
        Test-Check -Label "Git repo" -Success $true -Message "Detected"
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
