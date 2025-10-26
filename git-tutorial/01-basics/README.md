# Git Basics - Level 1

Welcome to Git fundamentals! In this module, you'll learn the core concepts and commands that form the foundation of Git.

## What You'll Learn

- What is version control and why it matters
- Essential Git commands
- Understanding the Git workflow
- Working with repositories

## Estimated Time: 30 minutes

---

## Part 1: Understanding Version Control (5 minutes)

### What is Git?

Git is a distributed version control system that helps you:
- Track changes to your code over time
- Collaborate with others
- Revert to previous versions
- Manage different versions of your project

### Key Concepts

**Repository (Repo)**: A project folder tracked by Git
**Commit**: A snapshot of your project at a specific point in time
**Working Directory**: Your current files
**Staging Area (Index)**: Files ready to be committed
**Remote**: A version of your repository hosted elsewhere (like GitHub)

### The Git Workflow

```
Working Directory → Staging Area → Repository → Remote
     (edit)      git add     git commit    git push
```

---

## Part 2: Essential Git Commands (10 minutes)

### 1. Checking Git Version

```bash
git --version
```

**Try it now!** Run the command above to verify Git is installed.

### 2. Configuring Git

Before your first commit, set your identity:

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

View your configuration:
```bash
git config --list
```

### 3. Initializing a Repository

```bash
# Create a new directory
mkdir my-first-repo
cd my-first-repo

# Initialize Git
git init
```

**What happened?** Git created a hidden `.git` folder to track your project.

### 4. Checking Repository Status

```bash
git status
```

This shows:
- Which branch you're on
- Which files are staged
- Which files are modified but not staged
- Which files are untracked

### 5. Adding Files to Staging Area

```bash
# Stage a specific file
git add filename.txt

# Stage all files
git add .

# Stage multiple files
git add file1.txt file2.txt
```

### 6. Committing Changes

```bash
# Commit with inline message
git commit -m "Your descriptive commit message"

# Commit all tracked changes (skip staging)
git commit -am "Your message"
```

**Good commit messages**:
- "Add user authentication feature"
- "Fix login bug for special characters"
- "Update README with installation instructions"

**Bad commit messages**:
- "stuff"
- "changes"
- "asdf"

### 7. Viewing Commit History

```bash
# Full history
git log

# Compact view
git log --oneline

# Last 3 commits
git log -3

# With file changes
git log --stat
```

### 8. Viewing Changes

```bash
# Changes not yet staged
git diff

# Changes that are staged
git diff --staged

# Changes in a specific file
git diff filename.txt
```

---

## Part 3: Working with Remote Repositories (10 minutes)

### Cloning a Repository

```bash
git clone <repository-url>
```

Example:
```bash
git clone https://github.com/username/repo-name.git
```

### Connecting to a Remote

```bash
# Add a remote
git remote add origin <repository-url>

# View remotes
git remote -v

# Remove a remote
git remote remove origin
```

### Pushing Changes

```bash
# Push to remote repository
git push origin main

# Push and set upstream (first time)
git push -u origin main
```

### Pulling Changes

```bash
# Fetch and merge changes
git pull origin main

# Just fetch (don't merge)
git fetch origin
```

---

## Part 4: Hands-On Exercise (5 minutes)

### Exercise 1: Your First Repository

**Goal**: Create a repository, make commits, and view history

**Steps**:

1. Create a new directory called `practice-repo`
```bash
mkdir practice-repo
cd practice-repo
```

2. Initialize Git
```bash
git init
```

3. Create a file called `hello.txt` with the content "Hello, Git!"
```bash
echo "Hello, Git!" > hello.txt
```

4. Check the status
```bash
git status
```

**What do you see?** The file should be untracked.

5. Add the file to staging
```bash
git add hello.txt
```

6. Check status again
```bash
git status
```

**What changed?** The file should now be staged.

7. Commit the file
```bash
git commit -m "Add hello.txt with greeting"
```

8. Modify `hello.txt` - add a new line "Learning Git is fun!"
```bash
echo "Learning Git is fun!" >> hello.txt
```

9. View the changes
```bash
git diff
```

10. Stage and commit the changes
```bash
git add hello.txt
git commit -m "Add enthusiasm to greeting"
```

11. View your commit history
```bash
git log --oneline
```

**Success!** You should see 2 commits.

### Exercise 2: Understanding the Workflow

**Goal**: Practice the complete Git workflow

Create the following files in your `practice-repo`:

1. `about.txt` - Write a sentence about yourself
2. `goals.txt` - Write your learning goals

Then:
- Stage both files in a single command
- Commit them with message "Add personal information"
- Modify `goals.txt` to add another goal
- View what changed
- Commit the update

### Exercise 3: Exploring History

**Goal**: Learn to navigate commit history

1. View the full log
2. View just the last commit
3. View changes in the last commit using `git show`

---

## Quick Reference

| Command | What it does |
|---------|-------------|
| `git init` | Initialize a new repository |
| `git status` | Show repository status |
| `git add <file>` | Stage a file |
| `git commit -m "message"` | Commit staged changes |
| `git log` | View commit history |
| `git diff` | View unstaged changes |
| `git clone <url>` | Clone a repository |
| `git push` | Push commits to remote |
| `git pull` | Pull changes from remote |

---

## Common Mistakes to Avoid

1. **Forgetting to commit**: Changes aren't saved until you commit
2. **Poor commit messages**: Future you will thank present you for clarity
3. **Committing too much**: Make small, logical commits
4. **Not checking status**: Always know what you're committing
5. **Working without pulling**: Pull before you start working

---

## Checkpoint

Before moving to the next module, make sure you can:

- [ ] Initialize a Git repository
- [ ] Stage and commit files
- [ ] View repository status and history
- [ ] Understand the difference between working directory, staging area, and repository
- [ ] View changes with `git diff`
- [ ] Write clear commit messages

---

## Next Steps

Completed all exercises? Great! Move on to:
- **Module 2: Branching** - `../02-branching/README.md`
- **Practice exercises** - `../exercises/basic-exercises.md`

Need help? Check `HELP.md` in this directory.
