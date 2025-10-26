#!/bin/bash

# Progress Checker Script
# Helps verify completion of tutorial exercises

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}╔══════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║     Tutorial Progress Checker                   ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════════════════╝${NC}\n"

# Function to check if Git is configured
check_git_config() {
    echo -e "${YELLOW}Checking Git configuration...${NC}"

    if git config user.name &> /dev/null && git config user.email &> /dev/null; then
        echo -e "${GREEN}✓${NC} Git is configured"
        echo "  Name: $(git config user.name)"
        echo "  Email: $(git config user.email)"
        return 0
    else
        echo -e "${RED}✗${NC} Git is not fully configured"
        echo "  Run: git config --global user.name 'Your Name'"
        echo "  Run: git config --global user.email 'your@email.com'"
        return 1
    fi
}

# Function to check for practice repositories
check_practice_repos() {
    echo -e "\n${YELLOW}Checking for practice repositories...${NC}"

    local found=0

    # Check common practice directory names
    for dir in "practice-repo" "my-first-repo" "branch-practice" "my-first-project"; do
        if [ -d "$HOME/$dir" ] || [ -d "/tmp/$dir" ]; then
            echo -e "${GREEN}✓${NC} Found practice repo: $dir"
            found=$((found + 1))
        fi
    done

    if [ $found -eq 0 ]; then
        echo -e "${YELLOW}!${NC} No practice repositories found yet"
        echo "  Create them as you work through exercises!"
    else
        echo -e "${GREEN}✓${NC} Found $found practice repository/repositories"
    fi
}

# Function to show tutorial completion suggestions
check_tutorial_files() {
    echo -e "\n${YELLOW}Checking tutorial files...${NC}"

    local tutorials=(
        "git-tutorial/01-basics/README.md"
        "git-tutorial/02-branching/README.md"
        "git-tutorial/03-advanced/README.md"
        "claude-code-tutorial/01-getting-started/README.md"
        "claude-code-tutorial/02-tools/README.md"
        "claude-code-tutorial/03-workflows/README.md"
    )

    local script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    local tutorial_root="$(dirname "$script_dir")"

    for tutorial in "${tutorials[@]}"; do
        if [ -f "$tutorial_root/$tutorial" ]; then
            echo -e "${GREEN}✓${NC} $tutorial exists"
        else
            echo -e "${RED}✗${NC} $tutorial missing"
        fi
    done
}

# Function to check exercise completion (interactive)
check_exercises() {
    echo -e "\n${YELLOW}Exercise Checklist${NC}"
    echo "Have you completed these exercises? (Self-assessment)"
    echo ""

    echo "Git Basics Exercises:"
    echo "  - Exercise 1: Your First Repository"
    echo "  - Exercise 2: Making Multiple Commits"
    echo "  - Exercise 3: Understanding Staging"
    echo ""

    echo "For detailed progress tracking, update: progress.md"
}

# Function to provide next steps
suggest_next_steps() {
    echo -e "\n${BLUE}╔══════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║     Suggested Next Steps                         ║${NC}"
    echo -e "${BLUE}╚══════════════════════════════════════════════════╝${NC}\n"

    echo "1. ${GREEN}Start the tutorial${NC}"
    echo "   Run: ./scripts/start-tutorial.sh"
    echo ""
    echo "2. ${GREEN}Track your progress${NC}"
    echo "   Edit: progress.md"
    echo ""
    echo "3. ${GREEN}Quick reference${NC}"
    echo "   View: QUICK-REFERENCE.md"
    echo ""
    echo "4. ${GREEN}Practice exercises${NC}"
    echo "   See: exercises/git-basics-practice.md"
}

# Function to show stats
show_stats() {
    echo -e "\n${BLUE}╔══════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║     Tutorial Statistics                          ║${NC}"
    echo -e "${BLUE}╚══════════════════════════════════════════════════╝${NC}\n"

    local script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    local tutorial_root="$(dirname "$script_dir")"

    cd "$tutorial_root"

    local git_tutorials=$(find git-tutorial -name "README.md" | wc -l)
    local claude_tutorials=$(find claude-code-tutorial -name "README.md" 2>/dev/null | wc -l)
    local exercises=$(find exercises -name "*.md" 2>/dev/null | wc -l)

    echo "📚 Git Tutorials: $git_tutorials modules"
    echo "🤖 Claude Code Tutorials: $claude_tutorials modules"
    echo "💪 Practice Exercises: $exercises sets"
    echo "⏱️  Estimated Total Time: 3-4 hours"
}

# Main execution
main() {
    check_git_config
    check_practice_repos
    check_tutorial_files
    check_exercises
    show_stats
    suggest_next_steps

    echo -e "\n${GREEN}Happy learning!${NC} 🚀\n"
}

# Run main function
main
