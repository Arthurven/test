#!/bin/bash

# Interactive Git & Claude Code Tutorial Launcher
# Usage: ./start-tutorial.sh [section]

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# ASCII Art Banner
echo -e "${BLUE}"
cat << "EOF"
╔═══════════════════════════════════════════════════════════╗
║                                                           ║
║     Interactive Git & Claude Code Tutorial                ║
║                                                           ║
║     Master Git and AI-Assisted Development                ║
║                                                           ║
╚═══════════════════════════════════════════════════════════╝
EOF
echo -e "${NC}"

# Function to show menu
show_menu() {
    echo -e "${GREEN}Welcome to the Interactive Tutorial!${NC}\n"
    echo "Choose your learning path:"
    echo ""
    echo "  ${YELLOW}Git Tutorials:${NC}"
    echo "    1) Git Basics (30 min) - Perfect for beginners"
    echo "    2) Git Branching (30 min) - Learn branch workflows"
    echo "    3) Advanced Git (45 min) - Master advanced features"
    echo ""
    echo "  ${YELLOW}Claude Code Tutorials:${NC}"
    echo "    4) Getting Started (30 min) - Introduction to Claude Code"
    echo "    5) Tools Deep Dive (30 min) - Understanding Claude's tools"
    echo "    6) Workflows (45 min) - Efficient development patterns"
    echo ""
    echo "  ${YELLOW}Practice:${NC}"
    echo "    7) Git Basics Exercises - Hands-on practice"
    echo "    8) Complete Tutorial - Start from the beginning"
    echo ""
    echo "    0) Exit"
    echo ""
}

# Function to open tutorial
open_tutorial() {
    local file=$1
    local title=$2

    echo -e "\n${GREEN}Opening: ${title}${NC}\n"

    # Check if file exists
    if [ ! -f "$file" ]; then
        echo -e "${YELLOW}Error: Tutorial file not found: $file${NC}"
        return 1
    fi

    # Display the tutorial
    if command -v bat &> /dev/null; then
        # Use bat if available (better syntax highlighting)
        bat "$file"
    elif command -v less &> /dev/null; then
        # Use less as fallback
        less "$file"
    else
        # Use cat as last resort
        cat "$file"
        echo -e "\n${YELLOW}Tip: Install 'bat' or 'less' for better viewing experience${NC}"
    fi

    echo -e "\n${GREEN}Tutorial complete!${NC}"
    echo -e "Press Enter to return to menu..."
    read
}

# Get the script's directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TUTORIAL_ROOT="$(dirname "$SCRIPT_DIR")"

# Handle command line argument
if [ $# -eq 1 ]; then
    case $1 in
        git-basics|basics|1)
            open_tutorial "$TUTORIAL_ROOT/git-tutorial/01-basics/README.md" "Git Basics"
            exit 0
            ;;
        git-branching|branching|2)
            open_tutorial "$TUTORIAL_ROOT/git-tutorial/02-branching/README.md" "Git Branching"
            exit 0
            ;;
        git-advanced|advanced|3)
            open_tutorial "$TUTORIAL_ROOT/git-tutorial/03-advanced/README.md" "Advanced Git"
            exit 0
            ;;
        claude-start|claude|4)
            open_tutorial "$TUTORIAL_ROOT/claude-code-tutorial/01-getting-started/README.md" "Getting Started with Claude Code"
            exit 0
            ;;
        claude-tools|tools|5)
            open_tutorial "$TUTORIAL_ROOT/claude-code-tutorial/02-tools/README.md" "Claude Code Tools"
            exit 0
            ;;
        claude-workflows|workflows|6)
            open_tutorial "$TUTORIAL_ROOT/claude-code-tutorial/03-workflows/README.md" "Claude Code Workflows"
            exit 0
            ;;
        exercises|practice|7)
            open_tutorial "$TUTORIAL_ROOT/exercises/git-basics-practice.md" "Git Basics Exercises"
            exit 0
            ;;
        help|--help|-h)
            echo "Usage: $0 [section]"
            echo ""
            echo "Sections:"
            echo "  git-basics, 1      - Git basics tutorial"
            echo "  git-branching, 2   - Git branching tutorial"
            echo "  git-advanced, 3    - Advanced Git tutorial"
            echo "  claude-start, 4    - Getting started with Claude Code"
            echo "  claude-tools, 5    - Claude Code tools deep dive"
            echo "  claude-workflows, 6 - Claude Code workflows"
            echo "  exercises, 7       - Practice exercises"
            echo ""
            echo "Or run without arguments for interactive menu"
            exit 0
            ;;
        *)
            echo "Unknown section: $1"
            echo "Run '$0 help' for available sections"
            exit 1
            ;;
    esac
fi

# Interactive menu mode
while true; do
    clear
    echo -e "${BLUE}"
    cat << "EOF"
╔═══════════════════════════════════════════════════════════╗
║     Interactive Git & Claude Code Tutorial                ║
╚═══════════════════════════════════════════════════════════╝
EOF
    echo -e "${NC}"

    show_menu

    echo -n "Enter your choice [0-8]: "
    read choice

    case $choice in
        1)
            open_tutorial "$TUTORIAL_ROOT/git-tutorial/01-basics/README.md" "Git Basics"
            ;;
        2)
            open_tutorial "$TUTORIAL_ROOT/git-tutorial/02-branching/README.md" "Git Branching"
            ;;
        3)
            open_tutorial "$TUTORIAL_ROOT/git-tutorial/03-advanced/README.md" "Advanced Git"
            ;;
        4)
            open_tutorial "$TUTORIAL_ROOT/claude-code-tutorial/01-getting-started/README.md" "Getting Started with Claude Code"
            ;;
        5)
            open_tutorial "$TUTORIAL_ROOT/claude-code-tutorial/02-tools/README.md" "Claude Code Tools"
            ;;
        6)
            open_tutorial "$TUTORIAL_ROOT/claude-code-tutorial/03-workflows/README.md" "Claude Code Workflows"
            ;;
        7)
            open_tutorial "$TUTORIAL_ROOT/exercises/git-basics-practice.md" "Git Basics Exercises"
            ;;
        8)
            open_tutorial "$TUTORIAL_ROOT/README.md" "Complete Tutorial Guide"
            ;;
        0)
            echo -e "\n${GREEN}Happy learning! Goodbye!${NC}\n"
            exit 0
            ;;
        *)
            echo -e "\n${YELLOW}Invalid choice. Please enter a number between 0 and 8.${NC}"
            sleep 2
            ;;
    esac
done
