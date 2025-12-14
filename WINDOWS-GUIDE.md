# Interactive Git & Claude Code Tutorial - Windows Guide

## How to Use This Tutorial on Windows

You have several options to access the tutorials:

### Option 1: Use WSL (Recommended if you have it)

Open WSL terminal and run:
```bash
cd /mnt/d/Github/test
./scripts/start-tutorial.sh
```

### Option 2: Use Git Bash (If installed with Git for Windows)

1. Right-click in the `D:\Github\test` folder
2. Select "Git Bash Here"
3. Run: `./scripts/start-tutorial.sh`

### Option 3: Read Tutorials Directly (Works on Any Windows System)

**PowerShell**:
```powershell
# Navigate to the tutorial
cd D:\Github\test

# View the main README
Get-Content README.md

# Or use 'type' command
type README.md

# Git Basics tutorial
Get-Content git-tutorial\01-basics\README.md

# Claude Code tutorial
Get-Content claude-code-tutorial\01-getting-started\README.md

# Quick reference
Get-Content QUICK-REFERENCE.md

# Open in Notepad
notepad README.md
```

**Command Prompt (CMD)**:
```cmd
cd D:\Github\test
type README.md
type git-tutorial\01-basics\README.md
notepad README.md
```

### Option 4: Open in Your Favorite Editor

**VS Code**:
```powershell
cd D:\Github\test
code .
# Then open any .md file
```

**Any Text Editor**:
- Navigate to `D:\Github\test` in File Explorer
- Double-click any `.md` file to open in your default markdown viewer
- Or right-click → Open With → Choose your editor

### Option 5: View in Browser

Most markdown files can be viewed in a browser:
1. Navigate to `D:\Github\test` in File Explorer
2. Drag any `.md` file into your web browser
3. Install a markdown viewer extension for better formatting

### Option 6: Create a Simple Windows Launcher

Save this as `start-tutorial.ps1`:

```powershell
# Simple Tutorial Launcher for Windows
Write-Host "Interactive Git & Claude Code Tutorial" -ForegroundColor Blue
Write-Host ""
Write-Host "Choose your learning path:" -ForegroundColor Green
Write-Host ""
Write-Host "  1) Git Basics"
Write-Host "  2) Git Branching"
Write-Host "  3) Advanced Git"
Write-Host "  4) Getting Started with Claude Code"
Write-Host "  5) Claude Code Tools"
Write-Host "  6) Claude Code Workflows"
Write-Host "  7) Practice Exercises"
Write-Host "  8) Quick Reference"
Write-Host "  0) Exit"
Write-Host ""

$choice = Read-Host "Enter your choice [0-8]"

switch ($choice) {
    1 { Get-Content "git-tutorial\01-basics\README.md" | more }
    2 { Get-Content "git-tutorial\02-branching\README.md" | more }
    3 { Get-Content "git-tutorial\03-advanced\README.md" | more }
    4 { Get-Content "claude-code-tutorial\01-getting-started\README.md" | more }
    5 { Get-Content "claude-code-tutorial\02-tools\README.md" | more }
    6 { Get-Content "claude-code-tutorial\03-workflows\README.md" | more }
    7 { Get-Content "exercises\git-basics-practice.md" | more }
    8 { Get-Content "QUICK-REFERENCE.md" | more }
    0 { Write-Host "Happy learning!" -ForegroundColor Green; exit }
    default { Write-Host "Invalid choice" -ForegroundColor Red }
}
```

Then run:
```powershell
.\start-tutorial.ps1
```

---

## Quick Start for Windows Users

### Fastest Way (PowerShell):

```powershell
cd D:\Github\test

# Read main overview
more README.md

# Start with Git basics
more git-tutorial\01-basics\README.md

# Or open in your editor
code git-tutorial\01-basics\README.md
# or
notepad git-tutorial\01-basics\README.md
```

### File Structure

```
D:\Github\test\
├── README.md                      ← Start here
├── GETTING-STARTED.md            ← Setup guide
├── QUICK-REFERENCE.md            ← Command cheat sheet
├── progress.md                    ← Track your progress
├── git-tutorial\
│   ├── 01-basics\README.md       ← Git fundamentals
│   ├── 02-branching\README.md    ← Branching & merging
│   └── 03-advanced\README.md     ← Advanced topics
├── claude-code-tutorial\
│   ├── 01-getting-started\README.md  ← Claude Code intro
│   ├── 02-tools\README.md           ← Tools deep dive
│   └── 03-workflows\README.md       ← Workflows
└── exercises\
    └── git-basics-practice.md    ← Hands-on practice
```

---

## Recommended Order

1. Read `README.md` for overview
2. Start with `git-tutorial\01-basics\README.md`
3. Practice with `exercises\git-basics-practice.md`
4. Continue through remaining tutorials
5. Use `QUICK-REFERENCE.md` as needed

---

## Tips for Windows Users

- Use **VS Code** for the best markdown viewing experience
- Install **Windows Terminal** for a better terminal experience
- Consider using **WSL** for a Linux-like environment
- The `.sh` scripts only work in bash (WSL/Git Bash), not PowerShell

Happy learning! 🚀
