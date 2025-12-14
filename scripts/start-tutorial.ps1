# Interactive Git & Claude Code Tutorial Launcher - PowerShell Version
# Usage: .\start-tutorial.ps1 [section]

# Colors
function Write-ColorHeader {
    Write-Host ""
    Write-Host "╔═══════════════════════════════════════════════════════════╗" -ForegroundColor Blue
    Write-Host "║                                                           ║" -ForegroundColor Blue
    Write-Host "║     Interactive Git & Claude Code Tutorial                ║" -ForegroundColor Blue
    Write-Host "║                                                           ║" -ForegroundColor Blue
    Write-Host "║     Master Git and AI-Assisted Development                ║" -ForegroundColor Blue
    Write-Host "║                                                           ║" -ForegroundColor Blue
    Write-Host "╔═══════════════════════════════════════════════════════════╗" -ForegroundColor Blue
    Write-Host ""
}

function Show-Menu {
    Write-Host "Welcome to the Interactive Tutorial!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Choose your learning path:"
    Write-Host ""
    Write-Host "  Git Tutorials:" -ForegroundColor Yellow
    Write-Host "    1) Git Basics (30 min) - Perfect for beginners"
    Write-Host "    2) Git Branching (30 min) - Learn branch workflows"
    Write-Host "    3) Advanced Git (45 min) - Master advanced features"
    Write-Host ""
    Write-Host "  Claude Code Tutorials:" -ForegroundColor Yellow
    Write-Host "    4) Getting Started (30 min) - Introduction to Claude Code"
    Write-Host "    5) Tools Deep Dive (30 min) - Understanding Claude's tools"
    Write-Host "    6) Workflows (45 min) - Efficient development patterns"
    Write-Host ""
    Write-Host "  Practice:" -ForegroundColor Yellow
    Write-Host "    7) Git Basics Exercises - Hands-on practice"
    Write-Host "    8) Complete Tutorial - Start from the beginning"
    Write-Host "    9) Quick Reference - Command cheat sheet"
    Write-Host ""
    Write-Host "    0) Exit"
    Write-Host ""
}

function Open-Tutorial {
    param(
        [string]$FilePath,
        [string]$Title
    )

    Write-Host ""
    Write-Host "Opening: $Title" -ForegroundColor Green
    Write-Host ""

    if (-not (Test-Path $FilePath)) {
        Write-Host "Error: Tutorial file not found: $FilePath" -ForegroundColor Red
        Read-Host "Press Enter to continue"
        return
    }

    # Display the tutorial
    Get-Content $FilePath | more

    Write-Host ""
    Write-Host "Tutorial complete!" -ForegroundColor Green
    Write-Host "Press Enter to return to menu..." -ForegroundColor Yellow
    Read-Host
}

# Get script directory
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$TutorialRoot = Split-Path -Parent $ScriptDir

# Handle command line arguments
if ($args.Count -eq 1) {
    $section = $args[0]

    switch ($section) {
        { $_ -in "git-basics", "basics", "1" } {
            Open-Tutorial "$TutorialRoot\git-tutorial\01-basics\README.md" "Git Basics"
            exit
        }
        { $_ -in "git-branching", "branching", "2" } {
            Open-Tutorial "$TutorialRoot\git-tutorial\02-branching\README.md" "Git Branching"
            exit
        }
        { $_ -in "git-advanced", "advanced", "3" } {
            Open-Tutorial "$TutorialRoot\git-tutorial\03-advanced\README.md" "Advanced Git"
            exit
        }
        { $_ -in "claude-start", "claude", "4" } {
            Open-Tutorial "$TutorialRoot\claude-code-tutorial\01-getting-started\README.md" "Getting Started with Claude Code"
            exit
        }
        { $_ -in "claude-tools", "tools", "5" } {
            Open-Tutorial "$TutorialRoot\claude-code-tutorial\02-tools\README.md" "Claude Code Tools"
            exit
        }
        { $_ -in "claude-workflows", "workflows", "6" } {
            Open-Tutorial "$TutorialRoot\claude-code-tutorial\03-workflows\README.md" "Claude Code Workflows"
            exit
        }
        { $_ -in "exercises", "practice", "7" } {
            Open-Tutorial "$TutorialRoot\exercises\git-basics-practice.md" "Git Basics Exercises"
            exit
        }
        { $_ -in "quick", "reference", "9" } {
            Open-Tutorial "$TutorialRoot\QUICK-REFERENCE.md" "Quick Reference"
            exit
        }
        { $_ -in "help", "--help", "-h", "/?" } {
            Write-Host "Usage: .\start-tutorial.ps1 [section]"
            Write-Host ""
            Write-Host "Sections:"
            Write-Host "  git-basics, 1      - Git basics tutorial"
            Write-Host "  git-branching, 2   - Git branching tutorial"
            Write-Host "  git-advanced, 3    - Advanced Git tutorial"
            Write-Host "  claude-start, 4    - Getting started with Claude Code"
            Write-Host "  claude-tools, 5    - Claude Code tools deep dive"
            Write-Host "  claude-workflows, 6 - Claude Code workflows"
            Write-Host "  exercises, 7       - Practice exercises"
            Write-Host "  quick, 9           - Quick reference"
            Write-Host ""
            Write-Host "Or run without arguments for interactive menu"
            exit
        }
        default {
            Write-Host "Unknown section: $section" -ForegroundColor Red
            Write-Host "Run '.\start-tutorial.ps1 help' for available sections"
            exit
        }
    }
}

# Interactive menu mode
while ($true) {
    Clear-Host
    Write-ColorHeader
    Show-Menu

    $choice = Read-Host "Enter your choice [0-9]"

    switch ($choice) {
        "1" { Open-Tutorial "$TutorialRoot\git-tutorial\01-basics\README.md" "Git Basics" }
        "2" { Open-Tutorial "$TutorialRoot\git-tutorial\02-branching\README.md" "Git Branching" }
        "3" { Open-Tutorial "$TutorialRoot\git-tutorial\03-advanced\README.md" "Advanced Git" }
        "4" { Open-Tutorial "$TutorialRoot\claude-code-tutorial\01-getting-started\README.md" "Getting Started with Claude Code" }
        "5" { Open-Tutorial "$TutorialRoot\claude-code-tutorial\02-tools\README.md" "Claude Code Tools" }
        "6" { Open-Tutorial "$TutorialRoot\claude-code-tutorial\03-workflows\README.md" "Claude Code Workflows" }
        "7" { Open-Tutorial "$TutorialRoot\exercises\git-basics-practice.md" "Git Basics Exercises" }
        "8" { Open-Tutorial "$TutorialRoot\README.md" "Complete Tutorial Guide" }
        "9" { Open-Tutorial "$TutorialRoot\QUICK-REFERENCE.md" "Quick Reference" }
        "0" {
            Write-Host ""
            Write-Host "Happy learning! Goodbye!" -ForegroundColor Green
            Write-Host ""
            exit
        }
        default {
            Write-Host ""
            Write-Host "Invalid choice. Please enter a number between 0 and 9." -ForegroundColor Yellow
            Start-Sleep -Seconds 2
        }
    }
}
