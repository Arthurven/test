# Advanced Git - Level 3

Take your Git skills to the next level with powerful features for complex scenarios!

## What You'll Learn

- Rebasing and its benefits
- Cherry-picking commits
- Git stash for temporary changes
- Reflog for recovery
- Interactive rebase
- Advanced troubleshooting

## Estimated Time: 45 minutes

---

## Part 1: Git Rebase (15 minutes)

### What is Rebasing?

Rebasing rewrites commit history to create a cleaner, linear history.

### Merge vs Rebase

**Merge**:
```
main:     A --- B --- C --- M (merge commit)
                 \         /
feature:          D --- E
```

**Rebase**:
```
main:     A --- B --- C
                         \
feature:                  D' --- E'
```

### Basic Rebase

```bash
# Switch to feature branch
git switch feature-branch

# Rebase onto main
git rebase main
```

**What happens**:
1. Git finds common ancestor
2. Saves your feature commits temporarily
3. Fast-forwards to main's latest commit
4. Replays your commits on top

### When to Use Rebase

**Use rebase**:
- Before merging feature into main (clean history)
- Updating feature branch with main's changes
- Local commits not yet pushed

**Don't rebase**:
- Commits already pushed to shared branches
- Main/production branches
- When history is important

### Rebase Commands

```bash
# Rebase current branch onto main
git rebase main

# Continue after resolving conflicts
git rebase --continue

# Skip current commit
git rebase --skip

# Abort rebase
git rebase --abort
```

### Handling Rebase Conflicts

```bash
# 1. Start rebase
git rebase main
# CONFLICT appears

# 2. Fix conflicts in files
# 3. Stage resolved files
git add .

# 4. Continue rebase
git rebase --continue

# 5. Repeat for each conflict
```

---

## Part 2: Interactive Rebase (10 minutes)

### What is Interactive Rebase?

Edit, reorder, combine, or delete commits before pushing.

```bash
# Rebase last 3 commits
git rebase -i HEAD~3

# Rebase from specific commit
git rebase -i <commit-hash>
```

### Interactive Rebase Options

```
pick   = use commit as-is
reword = use commit, but edit message
edit   = use commit, but stop to make changes
squash = combine with previous commit
fixup  = like squash, but discard message
drop   = remove commit
```

### Example: Squashing Commits

```bash
# Last 3 commits
git log --oneline -3
# abc123 Fix typo
# def456 Fix another typo
# ghi789 Add feature

# Interactive rebase
git rebase -i HEAD~3
```

In the editor:
```
pick ghi789 Add feature
squash def456 Fix another typo
squash abc123 Fix typo
```

Result: 3 commits become 1!

### Example: Reordering Commits

```bash
git rebase -i HEAD~3
```

Change the order in the editor:
```
pick ghi789 Add feature
pick abc123 Fix typo
pick def456 Add tests
```

### Example: Editing a Commit

```bash
git rebase -i HEAD~3
```

Change `pick` to `edit`:
```
edit ghi789 Add feature
pick abc123 Fix typo
```

Git will pause at that commit:
```bash
# Make changes
# Stage them
git add .
git commit --amend
git rebase --continue
```

---

## Part 3: Git Stash (5 minutes)

### What is Stash?

Temporarily save changes without committing them.

### When to Use Stash

- Switch branches with uncommitted changes
- Pull latest changes
- Try something quickly
- Context switch emergencies

### Stash Commands

```bash
# Stash current changes
git stash

# Stash with a message
git stash save "Work in progress on feature X"

# List stashes
git stash list

# Apply most recent stash (keep in stash)
git stash apply

# Apply and remove from stash
git stash pop

# Apply specific stash
git stash apply stash@{2}

# Show stash contents
git stash show
git stash show -p  # with diff

# Delete a stash
git stash drop stash@{0}

# Clear all stashes
git stash clear
```

### Stash with Untracked Files

```bash
# Include untracked files
git stash -u

# Include untracked and ignored files
git stash -a
```

---

## Part 4: Cherry-Pick (5 minutes)

### What is Cherry-Pick?

Copy specific commits to your current branch.

```bash
# Cherry-pick a single commit
git cherry-pick <commit-hash>

# Cherry-pick multiple commits
git cherry-pick <hash1> <hash2>

# Cherry-pick a range
git cherry-pick <hash1>^..<hash2>
```

### Use Cases

- Apply a bugfix from one branch to another
- Move commits to the correct branch
- Include specific features without merging everything

### Example

```bash
# You're on main branch
git log feature-branch --oneline
# abc123 Add login feature
# def456 Add logout feature

# Cherry-pick just the logout feature
git cherry-pick def456
```

### Handling Cherry-Pick Conflicts

```bash
# Conflict during cherry-pick
# Fix conflicts
git add .
git cherry-pick --continue

# Or abort
git cherry-pick --abort
```

---

## Part 5: Git Reflog (5 minutes)

### What is Reflog?

A safety net! Records every movement of HEAD, even deleted commits.

```bash
# View reflog
git reflog

# Reflog for specific branch
git reflog show branch-name

# Last 10 entries
git reflog -10
```

### Recovering Lost Commits

```bash
# Oops, accidentally reset!
git reset --hard HEAD~3

# Find the commit in reflog
git reflog
# abc123 HEAD@{1}: reset: moving to HEAD~3
# def456 HEAD@{2}: commit: Important work

# Restore it!
git reset --hard def456
```

### Recovering Deleted Branches

```bash
# Accidentally deleted branch
git branch -D feature-branch

# Find last commit in reflog
git reflog
# abc123 HEAD@{3}: commit: Last commit on feature

# Recreate branch
git branch feature-branch abc123
```

---

## Part 6: Advanced Troubleshooting (5 minutes)

### Finding Bugs with Bisect

```bash
# Start bisect
git bisect start

# Mark current commit as bad
git bisect bad

# Mark a known good commit
git bisect good <commit-hash>

# Git checks out middle commit - test it
# Mark as good or bad
git bisect good   # or git bisect bad

# Repeat until bug is found
# Reset when done
git bisect reset
```

### Blaming Lines of Code

```bash
# See who changed each line
git blame filename.txt

# Blame specific lines
git blame -L 10,20 filename.txt

# Show commit details
git blame -c filename.txt
```

### Searching Commit History

```bash
# Search commit messages
git log --grep="bug fix"

# Search for code changes
git log -S"function_name"

# Search by author
git log --author="John"

# Search by date
git log --since="2 weeks ago"
git log --until="2024-01-01"
```

---

## Part 7: Hands-On Exercises

### Exercise 1: Practice Rebasing

```bash
# 1. Create test repo
mkdir rebase-practice
cd rebase-practice
git init

# 2. Create main branch commits
echo "Line 1" > file.txt
git add file.txt
git commit -m "Commit 1"

echo "Line 2" >> file.txt
git commit -am "Commit 2"

# 3. Create feature branch
git switch -c feature
echo "Feature A" > feature.txt
git add feature.txt
git commit -m "Add feature A"

# 4. Add another commit to feature
echo "Feature B" >> feature.txt
git commit -am "Add feature B"

# 5. Switch to main and add commit
git switch main
echo "Line 3" >> file.txt
git commit -am "Commit 3"

# 6. Rebase feature onto main
git switch feature
git rebase main

# 7. View the linear history
git log --oneline --graph --all
```

### Exercise 2: Interactive Rebase

```bash
# 1. Create messy commits
mkdir interactive-rebase
cd interactive-rebase
git init

echo "Feature" > feature.txt
git add feature.txt
git commit -m "Add feature"

echo "Bug fix" >> feature.txt
git commit -am "fix bug"

echo "Another fix" >> feature.txt
git commit -am "oops"

echo "Final" >> feature.txt
git commit -am "done"

# 2. View commits
git log --oneline

# 3. Clean up with interactive rebase
git rebase -i HEAD~4

# 4. In editor, change to:
# pick <hash> Add feature
# squash <hash> fix bug
# squash <hash> oops
# squash <hash> done

# 5. Edit commit message to something clean
# 6. View clean history
git log --oneline
```

### Exercise 3: Stash Practice

```bash
# 1. Create changes
echo "Work in progress" >> file.txt

# 2. Stash it
git stash save "WIP: new feature"

# 3. Make different changes
echo "Different work" > other.txt
git add other.txt
git commit -m "Other work"

# 4. Apply stashed work
git stash pop

# 5. Commit the stashed work
git add file.txt
git commit -m "Complete new feature"
```

### Exercise 4: Cherry-Pick

```bash
# 1. Create branches
git switch -c branch-a
echo "Feature A" > a.txt
git add a.txt
git commit -m "Add A"

git switch -c branch-b main
echo "Feature B" > b.txt
git add b.txt
git commit -m "Add B"

# 2. Cherry-pick from branch-a to branch-b
COMMIT=$(git log branch-a --oneline -1 | cut -d' ' -f1)
git cherry-pick $COMMIT

# 3. Verify both features are in branch-b
ls
```

### Exercise 5: Reflog Recovery

```bash
# 1. Make commits
echo "Important" > important.txt
git add important.txt
git commit -m "Important work"

HASH=$(git log --oneline -1 | cut -d' ' -f1)

# 2. Accidentally reset
git reset --hard HEAD~1

# 3. File is gone!
ls

# 4. Find it in reflog
git reflog | grep "Important"

# 5. Recover it
git reset --hard $HASH

# 6. File is back!
ls
```

---

## Quick Reference

| Command | What it does |
|---------|-------------|
| `git rebase main` | Rebase current branch onto main |
| `git rebase -i HEAD~3` | Interactive rebase last 3 commits |
| `git stash` | Stash current changes |
| `git stash pop` | Apply and remove stash |
| `git cherry-pick <hash>` | Copy commit to current branch |
| `git reflog` | View reference log |
| `git bisect start` | Start binary search for bug |

---

## Best Practices

1. **Rebase before merge**: Keep history clean
2. **Never rebase public history**: Only rebase local commits
3. **Use stash liberally**: Don't commit half-done work
4. **Keep reflog in mind**: Your safety net for 90 days
5. **Interactive rebase before PR**: Clean up messy commits
6. **Cherry-pick sparingly**: Prefer merge/rebase when possible

---

## Checkpoint

Before completing this module, make sure you can:

- [ ] Rebase a branch onto another
- [ ] Use interactive rebase to clean up commits
- [ ] Stash and apply changes
- [ ] Cherry-pick specific commits
- [ ] Use reflog to recover lost commits
- [ ] Understand when to use each advanced feature

---

## Next Steps

Mastered Git? Move on to:
- **Claude Code Tutorial** - `../../claude-code-tutorial/01-getting-started/README.md`
- **Advanced exercises** - `../exercises/advanced-exercises.md`

Congratulations on completing the Git tutorials!
