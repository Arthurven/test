# Interactive Git & Claude Code Tutorial

Welcome to your interactive learning journey with Git and Claude Code! This tutorial is designed to help you master both tools through hands-on exercises and practical examples.

## Quick Start

Choose your learning path:

1. **Git Basics** - Start here if you're new to Git
2. **Git Advanced** - For intermediate users
3. **Claude Code** - Learn AI-assisted coding

## Tutorial Structure

```
interactive-git-tutorial/
├── git-tutorial/          # Git learning modules
│   ├── 01-basics/        # Git fundamentals
│   ├── 02-branching/     # Branching strategies
│   ├── 03-advanced/      # Advanced Git operations
│   └── exercises/        # Practice exercises
├── claude-code-tutorial/  # Claude Code learning
│   ├── 01-getting-started/
│   ├── 02-tools/
│   ├── 03-workflows/
│   └── exercises/
├── exercises/             # Combined hands-on exercises
└── scripts/              # Helper scripts
```

## Learning Path

### Level 1: Git Fundamentals (30 minutes)
- Understanding version control
- Basic Git commands (init, add, commit, status)
- Working with remote repositories
- **Hands-on Exercise**: Your first commit

### Level 2: Git Branching (30 minutes)
- Creating and switching branches
- Merging and resolving conflicts
- Branch strategies (feature branches)
- **Hands-on Exercise**: Feature branch workflow

### Level 3: Advanced Git (45 minutes)
- Rebasing and cherry-picking
- Interactive rebase
- Git stash and reflog
- **Hands-on Exercise**: Complex merge scenarios

### Level 4: Claude Code Basics (30 minutes)
- Setting up Claude Code
- Understanding tools (Read, Write, Edit, Bash)
- Working with the CLI
- **Hands-on Exercise**: First AI-assisted task

### Level 5: Claude Code Advanced (45 minutes)
- Task planning with TodoWrite
- Using specialized agents
- Git operations with Claude Code
- **Hands-on Exercise**: Building a project

## How to Use This Tutorial

### Interactive Mode (Recommended)
```bash
# Start the interactive tutorial
./scripts/start-tutorial.sh

# Or jump to a specific section
./scripts/start-tutorial.sh git-basics
./scripts/start-tutorial.sh claude-code
```

### Self-Paced Mode
Navigate to any tutorial folder and follow the README instructions. Each section includes:
- **Concepts**: What you'll learn
- **Examples**: Real-world scenarios
- **Exercises**: Hands-on practice
- **Solutions**: Detailed explanations
- **Checkpoints**: Validate your understanding

## Prerequisites

- Git installed (check with `git --version`)
- Claude Code CLI (for Claude Code tutorials)
- Basic command line knowledge
- A text editor

## Progress Tracking

Track your progress in `progress.md`. Mark exercises as complete as you go!

## Getting Help

- Each tutorial has a `HELP.md` file
- Use `./scripts/check-exercise.sh <exercise-name>` to validate solutions
- Review the `examples/` directory for reference implementations

## Estimated Time

- **Total**: 3-4 hours
- **Git Complete**: 1.5-2 hours
- **Claude Code Complete**: 1.5-2 hours

## Tips for Success

1. **Practice actively**: Type every command yourself
2. **Experiment**: Try variations of the exercises
3. **Make mistakes**: They're the best way to learn
4. **Use checkpoints**: Validate your understanding
5. **Take breaks**: Learning is more effective in chunks

## Next Steps

Ready to begin? Start with:
```bash
cd git-tutorial/01-basics
cat README.md
```

Or dive into Claude Code:
```bash
cd claude-code-tutorial/01-getting-started
cat README.md
```

Happy learning!
