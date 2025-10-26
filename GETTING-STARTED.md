# Getting Started with the Tutorial

Welcome! Let's get you started on your learning journey.

## Prerequisites

Before starting, make sure you have:

- [ ] Git installed (`git --version` should work)
- [ ] A terminal/command line
- [ ] A text editor
- [ ] Claude Code CLI (for Claude Code tutorials)

## Installation Check

Run these commands to verify:

```bash
# Check Git
git --version
# Should show: git version 2.x.x or higher

# Check your location
pwd
# Should show this tutorial directory
```

## Choose Your Path

### Path 1: Complete Beginner (Recommended)

**Start here if**: You're new to Git and Claude Code

**Time needed**: 3-4 hours total

**Steps**:
1. Read the main README.md
2. Start with Git Basics (`git-tutorial/01-basics/README.md`)
3. Do the practice exercises (`exercises/git-basics-practice.md`)
4. Continue through Git Branching and Advanced
5. Move to Claude Code tutorials
6. Build a project combining both skills!

### Path 2: Git Review Path

**Start here if**: You know Git basics but want to improve

**Time needed**: 1-2 hours

**Steps**:
1. Skim Git Basics for review
2. Focus on Git Branching (`git-tutorial/02-branching/README.md`)
3. Master Advanced Git (`git-tutorial/03-advanced/README.md`)
4. Practice the exercises
5. Move to Claude Code tutorials

### Path 3: Claude Code Focus

**Start here if**: You know Git well, want to learn Claude Code

**Time needed**: 2 hours

**Steps**:
1. Skip to Claude Code tutorials
2. Getting Started (`claude-code-tutorial/01-getting-started/README.md`)
3. Tools Deep Dive (`claude-code-tutorial/02-tools/README.md`)
4. Workflows (`claude-code-tutorial/03-workflows/README.md`)
5. Build a project with Claude Code!

### Path 4: Express Path

**Start here if**: You want a quick overview

**Time needed**: 30 minutes

**Steps**:
1. Read `QUICK-REFERENCE.md`
2. Skim one tutorial from each category
3. Try one hands-on exercise
4. Come back when you have more time!

## Quick Start Methods

### Method 1: Interactive Script (Easiest)

```bash
# Run the interactive tutorial launcher
./scripts/start-tutorial.sh

# Or jump directly to a section:
./scripts/start-tutorial.sh git-basics
./scripts/start-tutorial.sh claude-code
```

### Method 2: Manual Navigation

```bash
# For Git Basics
cd git-tutorial/01-basics
cat README.md
# Or open in your editor

# For Claude Code
cd claude-code-tutorial/01-getting-started
cat README.md
```

### Method 3: Read in Browser

If you're viewing this on GitHub or similar:
- Click through the folder structure
- Read tutorials in the web interface
- Follow along in your terminal

## Project Structure

```
interactive-git-tutorial/
├── README.md                      ← Overview & learning path
├── GETTING-STARTED.md            ← You are here!
├── QUICK-REFERENCE.md            ← Fast command lookup
├── progress.md                    ← Track your progress
│
├── git-tutorial/                  ← Git learning modules
│   ├── 01-basics/                 ← Start here for Git
│   ├── 02-branching/              ← Branching & merging
│   ├── 03-advanced/               ← Advanced Git features
│   └── exercises/                 ← Practice exercises
│
├── claude-code-tutorial/          ← Claude Code modules
│   ├── 01-getting-started/        ← Start here for Claude
│   ├── 02-tools/                  ← Understanding tools
│   ├── 03-workflows/              ← Development workflows
│   └── exercises/                 ← Practice exercises
│
├── exercises/                     ← Hands-on practice
│   └── git-basics-practice.md    ← Git fundamentals practice
│
└── scripts/                       ← Helpful scripts
    └── start-tutorial.sh          ← Interactive launcher
```

## Learning Tips

### For Best Results

1. **Practice actively**: Type every command yourself
2. **Don't rush**: Take time to understand concepts
3. **Make mistakes**: They're valuable learning tools
4. **Take breaks**: 25 minutes learning, 5 minutes break
5. **Track progress**: Use `progress.md` to stay motivated
6. **Ask questions**: If using Claude Code, ask anything!

### Recommended Schedule

**Option 1: One intensive day**
- Morning: Git Basics + Branching (2 hours)
- Break
- Afternoon: Advanced Git + Practice (2 hours)
- Break
- Evening: Claude Code tutorials (2 hours)

**Option 2: Spread over a week**
- Day 1: Git Basics (30 min)
- Day 2: Git Branching (30 min)
- Day 3: Advanced Git (45 min)
- Day 4: Practice exercises (1 hour)
- Day 5: Claude Code Getting Started (30 min)
- Day 6: Claude Code Tools & Workflows (1 hour)
- Day 7: Build a project!

**Option 3: Self-paced**
- Learn whenever you have time
- Complete one module per session
- Practice regularly

## Setting Up Your Environment

### Create a Practice Directory

```bash
# Create a dedicated space for practice
mkdir ~/git-practice
cd ~/git-practice

# You'll use this for exercises
```

### Optional: Enhanced Terminal

For a better experience, consider installing:

**For better file viewing**:
```bash
# macOS
brew install bat

# Ubuntu/Debian
apt install bat

# Usage: bat file.txt (instead of cat)
```

**For better git log**:
```bash
git config --global alias.lg "log --oneline --graph --all --decorate"
# Usage: git lg
```

## Your First Steps

Ready to start? Follow these steps:

### Step 1: Choose Your Starting Point

Based on the paths above, decide where to start.

### Step 2: Open the Tutorial

Either:
- Run `./scripts/start-tutorial.sh`
- Or navigate to the tutorial directory and open README.md

### Step 3: Follow Along

- Read the concepts
- Try the examples
- Complete the exercises

### Step 4: Track Progress

Open `progress.md` and check off items as you complete them.

### Step 5: Practice

After each tutorial, do the corresponding exercises.

## Quick Start Example

Let's verify everything works:

```bash
# 1. Navigate to tutorial directory
cd /path/to/interactive-git-tutorial

# 2. Check the structure
ls
# You should see: git-tutorial, claude-code-tutorial, scripts, etc.

# 3. Make scripts executable
chmod +x scripts/*.sh

# 4. Launch interactive tutorial
./scripts/start-tutorial.sh

# 5. Choose option 1 (Git Basics)

# 6. Start learning!
```

## Getting Help

### Within Tutorials

Each tutorial has:
- Clear explanations of concepts
- Code examples you can copy
- Hands-on exercises
- Checkpoints to verify understanding

### Quick Reference

Stuck on a command?
- Check `QUICK-REFERENCE.md`
- Search for the command
- See usage examples

### Using Claude Code

If you have Claude Code:
- Ask questions naturally
- Request examples
- Get explanations
- Receive guidance

**Example questions**:
- "Explain what git rebase does"
- "Show me an example of git stash"
- "What's the difference between merge and rebase?"

## Common Issues

### "Permission denied" on scripts

```bash
chmod +x scripts/start-tutorial.sh
```

### "Command not found: git"

Install Git:
- macOS: `brew install git` or download from git-scm.com
- Ubuntu: `sudo apt install git`
- Windows: Download from git-scm.com

### Tutorials don't display well

Try:
- Using a better terminal (iTerm2, Windows Terminal)
- Installing `bat` for syntax highlighting
- Opening files in a text editor

## What to Expect

### Git Tutorials Will Teach You

- Version control fundamentals
- Branching and merging strategies
- Collaboration workflows
- Advanced Git features
- Best practices

### Claude Code Tutorials Will Teach You

- How AI-assisted coding works
- Effective prompting techniques
- Development workflows with AI
- Tool usage and understanding
- Building projects efficiently

### By the End

You'll be able to:
- Use Git confidently for version control
- Work with branches and handle conflicts
- Collaborate using Git workflows
- Leverage Claude Code for development
- Build projects efficiently with AI assistance
- Combine Git and AI for maximum productivity

## Next Steps

Ready to begin?

**Absolute Beginners**:
```bash
cd git-tutorial/01-basics
cat README.md
```

**Using Interactive Launcher**:
```bash
./scripts/start-tutorial.sh
```

**Quick Refresher**:
```bash
cat QUICK-REFERENCE.md
```

---

## Motivation

Learning Git and Claude Code will:
- Make you a more efficient developer
- Enable better collaboration
- Boost your productivity
- Open up new possibilities
- Make coding more enjoyable!

**Time invested**: 3-4 hours
**Skills gained**: Lifetime value

Let's get started! 🚀

---

**Need help?** Check the main README.md or use Claude Code to ask questions!
