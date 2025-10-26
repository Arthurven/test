# Git Branching - Level 2

Master the power of branches to work on multiple features simultaneously and collaborate effectively!

## What You'll Learn

- Creating and managing branches
- Merging strategies
- Resolving conflicts
- Branch workflows

## Estimated Time: 30 minutes

---

## Part 1: Understanding Branches (5 minutes)

### What is a Branch?

A branch is an independent line of development. Think of it as a parallel universe where you can make changes without affecting the main codebase.

### Why Use Branches?

- **Feature development**: Work on new features without breaking main code
- **Bug fixes**: Fix bugs in isolation
- **Experimentation**: Try ideas without risk
- **Collaboration**: Multiple people work simultaneously

### The Main Branch

Traditionally called `master`, now commonly `main`:
- The primary branch of your repository
- Usually contains production-ready code
- Other branches eventually merge back into main

---

## Part 2: Branch Basics (10 minutes)

### 1. Viewing Branches

```bash
# List local branches
git branch

# List all branches (including remote)
git branch -a

# List with last commit info
git branch -v
```

The current branch is marked with `*`.

### 2. Creating Branches

```bash
# Create a new branch
git branch feature-login

# Create and switch to new branch
git checkout -b feature-login

# Modern way (Git 2.23+)
git switch -c feature-login
```

**Naming conventions**:
- `feature/user-auth`
- `bugfix/login-error`
- `hotfix/security-patch`
- `experiment/new-ui`

### 3. Switching Branches

```bash
# Old way
git checkout branch-name

# New way (Git 2.23+)
git switch branch-name

# Switch to previous branch
git switch -
```

**Important**: Commit or stash changes before switching!

### 4. Deleting Branches

```bash
# Delete a branch (safe - won't delete if unmerged)
git branch -d branch-name

# Force delete (even if unmerged)
git branch -D branch-name

# Delete remote branch
git push origin --delete branch-name
```

---

## Part 3: Merging (10 minutes)

### Types of Merges

#### 1. Fast-Forward Merge

When the target branch hasn't changed:

```
main:     A --- B
                 \
feature:          C --- D

After merge:
main:     A --- B --- C --- D
```

```bash
git checkout main
git merge feature-branch
```

#### 2. Three-Way Merge

When both branches have new commits:

```
main:     A --- B --- C
                 \
feature:          D --- E

After merge:
main:     A --- B --- C --- F (merge commit)
                 \         /
feature:          D --- E
```

```bash
git checkout main
git merge feature-branch
```

### Merge Commands

```bash
# Merge a branch into current branch
git merge branch-name

# Merge without fast-forward (always create merge commit)
git merge --no-ff branch-name

# See what would be merged (don't actually merge)
git merge --no-commit --no-ff branch-name
git diff --staged
git merge --abort
```

---

## Part 4: Handling Merge Conflicts (5 minutes)

### What is a Merge Conflict?

When Git can't automatically merge changes because the same lines were modified in different branches.

### Identifying Conflicts

```bash
git merge feature-branch
# Auto-merging file.txt
# CONFLICT (content): Merge conflict in file.txt
# Automatic merge failed; fix conflicts and then commit the result.
```

### Conflict Markers

Git adds markers to conflicted files:

```
<<<<<<< HEAD
Your current branch's content
=======
The branch being merged in
>>>>>>> feature-branch
```

### Resolving Conflicts

**Step 1**: Open the conflicted file

**Step 2**: Decide what to keep:
- Keep your version (remove markers and other version)
- Keep their version (remove markers and your version)
- Keep both (remove just markers)
- Write something new

**Step 3**: Remove conflict markers

**Step 4**: Stage the resolved file
```bash
git add file.txt
```

**Step 5**: Complete the merge
```bash
git commit -m "Merge feature-branch and resolve conflicts"
```

### Aborting a Merge

Made a mistake? Cancel the merge:
```bash
git merge --abort
```

---

## Part 5: Hands-On Exercises

### Exercise 1: Basic Branching

**Goal**: Create branches and switch between them

```bash
# 1. Create a new directory
mkdir branch-practice
cd branch-practice
git init

# 2. Create initial commit
echo "Main project" > main.txt
git add main.txt
git commit -m "Initial commit"

# 3. Create and switch to feature branch
git switch -c feature-header

# 4. Make changes on feature branch
echo "Header feature" > header.txt
git add header.txt
git commit -m "Add header feature"

# 5. Switch back to main
git switch main

# 6. Check that header.txt doesn't exist here
ls

# 7. Switch back to feature
git switch feature-header

# 8. Confirm header.txt exists
ls
```

**What did you learn?** Each branch has its own files!

### Exercise 2: Fast-Forward Merge

**Goal**: Perform a simple merge

```bash
# Starting from branch-practice directory
# On feature-header branch

# 1. Make another commit
echo "Updated header" >> header.txt
git commit -am "Update header"

# 2. Switch to main
git switch main

# 3. Merge feature-header
git merge feature-header

# 4. Check log
git log --oneline --graph

# 5. Confirm header.txt is now in main
ls
```

**Success!** You performed a fast-forward merge.

### Exercise 3: Three-Way Merge

**Goal**: Create a merge commit

```bash
# 1. On main branch, create a commit
echo "Main branch update" > main.txt
git add main.txt
git commit -m "Update main branch"

# 2. Create and switch to new feature
git switch -c feature-footer

# 3. Make changes on feature branch
echo "Footer content" > footer.txt
git add footer.txt
git commit -m "Add footer"

# 4. Switch to main and merge
git switch main
git merge feature-footer

# 5. View the merge commit
git log --oneline --graph --all
```

**Notice**: This created a merge commit because both branches had new commits.

### Exercise 4: Resolving Conflicts

**Goal**: Practice conflict resolution

```bash
# 1. On main branch
echo "Version A" > conflict.txt
git add conflict.txt
git commit -m "Add conflict file - version A"

# 2. Create feature branch
git switch -c feature-conflict

# 3. Modify the same file
echo "Version B" > conflict.txt
git commit -am "Modify conflict file - version B"

# 4. Switch to main and modify same file differently
git switch main
echo "Version C" > conflict.txt
git commit -am "Modify conflict file - version C"

# 5. Try to merge
git merge feature-conflict
# This will create a conflict!

# 6. Check status
git status

# 7. View the conflict
cat conflict.txt

# 8. Resolve by editing conflict.txt
echo "Version C and B merged" > conflict.txt

# 9. Mark as resolved
git add conflict.txt

# 10. Complete the merge
git commit -m "Merge feature-conflict and resolve conflict"

# 11. View history
git log --oneline --graph
```

**Congratulations!** You resolved your first merge conflict!

---

## Part 6: Branch Workflows

### Feature Branch Workflow

```bash
# 1. Start from main
git switch main
git pull origin main

# 2. Create feature branch
git switch -c feature/new-feature

# 3. Work and commit
# ... make changes ...
git add .
git commit -m "Implement new feature"

# 4. Push feature branch
git push -u origin feature/new-feature

# 5. Create pull request (on GitHub/GitLab)

# 6. After approval, merge and delete
git switch main
git pull origin main
git branch -d feature/new-feature
```

### GitFlow (Simplified)

- `main` - Production code
- `develop` - Integration branch
- `feature/*` - New features
- `hotfix/*` - Emergency fixes

---

## Quick Reference

| Command | What it does |
|---------|-------------|
| `git branch` | List branches |
| `git branch name` | Create branch |
| `git switch name` | Switch to branch |
| `git switch -c name` | Create and switch |
| `git merge name` | Merge branch into current |
| `git branch -d name` | Delete branch |
| `git log --graph` | Visual commit graph |

---

## Common Branch Patterns

```bash
# Check current branch
git branch --show-current

# Create branch from specific commit
git branch new-branch <commit-hash>

# See branches merged into current
git branch --merged

# See branches not yet merged
git branch --no-merged

# Rename branch
git branch -m old-name new-name
```

---

## Checkpoint

Before moving to the next module, make sure you can:

- [ ] Create and switch between branches
- [ ] Merge branches with fast-forward
- [ ] Merge branches with merge commits
- [ ] Identify and resolve merge conflicts
- [ ] Delete branches
- [ ] Understand common branch workflows

---

## Next Steps

Ready for more? Continue to:
- **Module 3: Advanced Git** - `../03-advanced/README.md`
- **Practice exercises** - `../exercises/branching-exercises.md`

Need help? Check `HELP.md` in this directory.
