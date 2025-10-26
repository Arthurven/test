# Git Basics Practice Exercises

Hands-on exercises to reinforce Git fundamentals. Complete these in order!

## Exercise 1: Your First Repository

**Goal**: Master the basic Git workflow

**Steps**:

1. Create a new directory called `my-first-project`
2. Initialize Git in that directory
3. Create a file called `README.md` with the text "My First Git Project"
4. Check the status (should show untracked file)
5. Add the file to staging
6. Check status again (should show staged file)
7. Commit with message "Initial commit: Add README"
8. View the commit history

**Validation**:
```bash
cd my-first-project
git log --oneline
# Should show 1 commit
```

**Success criteria**: You have 1 commit in your history

---

## Exercise 2: Making Multiple Commits

**Goal**: Practice the add-commit cycle

**Steps**:

1. In `my-first-project`, create three files:
   - `app.js` with content: `console.log('Hello, World!');`
   - `style.css` with content: `body { margin: 0; }`
   - `index.html` with content: `<!DOCTYPE html><html><body></body></html>`

2. Stage all three files at once
3. Commit with message "Add basic project files"
4. Modify `app.js` to: `console.log('Hello, Git!');`
5. View what changed (use git diff)
6. Commit the change with message "Update greeting message"
7. View commit history

**Validation**:
```bash
git log --oneline
# Should show 2 commits
```

**Success criteria**: You have 2 commits total

---

## Exercise 3: Understanding Staging

**Goal**: Learn selective staging

**Steps**:

1. Create a file `feature1.txt` with content "Feature 1"
2. Create a file `feature2.txt` with content "Feature 2"
3. Stage ONLY `feature1.txt`
4. Check status (feature1 staged, feature2 untracked)
5. Commit feature1
6. Now stage and commit feature2 separately

**Why this matters**: You can commit related changes separately for cleaner history

**Validation**:
```bash
git log --oneline
# Should show separate commits for feature1 and feature2
```

---

## Exercise 4: Viewing Changes

**Goal**: Master diff and log commands

**Steps**:

1. Create `notes.txt` with content "Git is amazing"
2. Commit it
3. Modify to "Git is amazing and powerful"
4. Use `git diff` to see the change BEFORE staging
5. Stage the change
6. Use `git diff --staged` to see the staged change
7. Commit it
8. Use `git log --oneline` to see history
9. Use `git show HEAD` to see the last commit details

**Validation**:
You should be able to see:
- Unstaged changes with `git diff`
- Staged changes with `git diff --staged`
- Commit details with `git show`

---

## Exercise 5: Working with Remote (Simulation)

**Goal**: Understand remote concepts

**Steps**:

1. Create a "remote" directory to simulate GitHub:
```bash
mkdir -p /tmp/remote-repo.git
cd /tmp/remote-repo.git
git init --bare
```

2. In your `my-first-project`, add this as a remote:
```bash
git remote add origin /tmp/remote-repo.git
```

3. View your remotes:
```bash
git remote -v
```

4. Push your commits:
```bash
git push -u origin main
# Or: git push -u origin master
```

5. Make a new commit, then push again:
```bash
echo "New feature" > feature.txt
git add feature.txt
git commit -m "Add new feature"
git push origin main
```

**Success criteria**: Your commits are in the "remote" repository

---

## Exercise 6: Cloning a Repository

**Goal**: Practice cloning

**Steps**:

1. Clone your "remote" repository:
```bash
cd /tmp
git clone /tmp/remote-repo.git cloned-project
cd cloned-project
```

2. Verify all your files are there:
```bash
ls
git log --oneline
```

3. Make a change:
```bash
echo "Changed in clone" >> README.md
git commit -am "Update from clone"
```

4. Push the change:
```bash
git push origin main
```

**Success criteria**: Change appears in the remote repository

---

## Exercise 7: Commit Message Practice

**Goal**: Write great commit messages

**Create commits with these messages** (practice good habits):

Good messages:
- "Add user authentication module"
- "Fix null pointer exception in login handler"
- "Update README with installation instructions"
- "Refactor database connection logic"

**Steps**:
1. Create a file for each feature
2. Write proper commit messages
3. Review your history with `git log`

**Bad messages to avoid**:
- "stuff"
- "changes"
- "update"
- "fix"
- "asdf"

---

## Exercise 8: Git Status Detective

**Goal**: Understand different file states

**Steps**:

1. Create `tracked.txt` and commit it
2. Modify `tracked.txt` (don't stage)
3. Create `staged.txt`, add and stage it (don't commit)
4. Create `untracked.txt` (don't stage)
5. Run `git status`

**What you should see**:
- Modified (tracked.txt) - in red
- Staged (staged.txt) - in green
- Untracked (untracked.txt) - in red under "Untracked files"

**This shows the three states**:
- Working directory (untracked, modified)
- Staging area (staged)
- Repository (committed)

---

## Exercise 9: Exploring History

**Goal**: Navigate commit history

**Steps**:

1. Make 5 quick commits (create 5 files, one commit each)
2. View history different ways:
```bash
git log
git log --oneline
git log --oneline --graph
git log -3
git log --stat
git log --patch
```

3. View specific commit:
```bash
git show <commit-hash>
```

4. Search commits:
```bash
git log --grep="feature"
git log --author="your-name"
```

---

## Exercise 10: Complete Workflow

**Goal**: Combine everything you've learned

**Project**: Create a simple website project

**Steps**:

1. Create new directory `my-website`
2. Initialize Git
3. Create `index.html` with basic HTML structure
4. Commit: "Add HTML structure"
5. Create `style.css` with some CSS
6. Commit: "Add stylesheet"
7. Create `script.js` with some JavaScript
8. Commit: "Add JavaScript file"
9. Update `index.html` to link CSS and JS
10. Commit: "Link CSS and JS to HTML"
11. Add comments to each file explaining what they do
12. Commit: "Add documentation comments"
13. View your complete history:
```bash
git log --oneline --graph
```

**Success criteria**:
- Clean commit history with descriptive messages
- Each commit represents a logical change
- All files are tracked and committed

---

## Bonus Challenges

### Challenge 1: The Staging Challenge

Modify 3 files, but commit them in 2 separate commits based on logical grouping.

### Challenge 2: History Explorer

Create 10 commits, then use various `git log` options to:
- Show only the last 3 commits
- Show commits with file changes
- Show a compact graph view
- Find commits with specific keywords

### Challenge 3: Clean Workflow

Build a small project (calculator, to-do list, etc.) with at least 8 commits following best practices:
- Descriptive commit messages
- Logical commit points
- Clean history
- Proper file organization

---

## Verification Checklist

After completing these exercises, you should be able to:

- [ ] Initialize a Git repository
- [ ] Stage files (individually and all at once)
- [ ] Create commits with good messages
- [ ] View repository status
- [ ] See changes with diff
- [ ] Navigate commit history
- [ ] Understand working directory, staging area, and repository
- [ ] Work with remote repositories
- [ ] Clone repositories
- [ ] Push and pull changes

---

## Next Steps

Completed all exercises? Move on to:
- **Branching Exercises**: `git-branching-practice.md`
- **Git Tutorial Level 2**: `../git-tutorial/02-branching/README.md`

Great job on mastering Git basics!
