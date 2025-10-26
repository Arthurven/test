# Quick Reference Guide

Fast lookup for Git and Claude Code commands!

## Git Quick Reference

### Basic Commands

| Command | Description | Example |
|---------|-------------|---------|
| `git init` | Initialize repository | `git init` |
| `git status` | Check repository status | `git status` |
| `git add <file>` | Stage file | `git add index.html` |
| `git add .` | Stage all changes | `git add .` |
| `git commit -m "msg"` | Commit changes | `git commit -m "Add feature"` |
| `git log` | View commit history | `git log --oneline` |
| `git diff` | View unstaged changes | `git diff` |

### Branching Commands

| Command | Description | Example |
|---------|-------------|---------|
| `git branch` | List branches | `git branch` |
| `git branch <name>` | Create branch | `git branch feature-x` |
| `git switch <name>` | Switch to branch | `git switch feature-x` |
| `git switch -c <name>` | Create and switch | `git switch -c new-feature` |
| `git merge <branch>` | Merge branch | `git merge feature-x` |
| `git branch -d <name>` | Delete branch | `git branch -d feature-x` |

### Remote Commands

| Command | Description | Example |
|---------|-------------|---------|
| `git clone <url>` | Clone repository | `git clone https://...` |
| `git remote add origin <url>` | Add remote | `git remote add origin <url>` |
| `git push -u origin <branch>` | Push to remote | `git push -u origin main` |
| `git pull origin <branch>` | Pull from remote | `git pull origin main` |
| `git fetch` | Fetch changes | `git fetch origin` |

### Advanced Commands

| Command | Description | Example |
|---------|-------------|---------|
| `git rebase <branch>` | Rebase onto branch | `git rebase main` |
| `git rebase -i HEAD~3` | Interactive rebase | `git rebase -i HEAD~3` |
| `git stash` | Stash changes | `git stash` |
| `git stash pop` | Apply stash | `git stash pop` |
| `git cherry-pick <hash>` | Cherry-pick commit | `git cherry-pick abc123` |
| `git reflog` | View reference log | `git reflog` |
| `git reset --hard <hash>` | Reset to commit | `git reset --hard abc123` |

### Useful Git Options

| Option | Description | Example |
|--------|-------------|---------|
| `--oneline` | Compact log format | `git log --oneline` |
| `--graph` | Show branch graph | `git log --graph` |
| `--all` | Show all branches | `git log --all` |
| `-p` | Show patch/diff | `git log -p` |
| `--stat` | Show file statistics | `git log --stat` |
| `-n <num>` | Limit to n commits | `git log -3` |

---

## Claude Code Quick Reference

### How to Make Requests

**Pattern**: Just describe what you want in natural language!

**Examples**:
- "Create a Python script that prints hello world"
- "Add error handling to the login function"
- "Explain how this code works"
- "Fix the bug where users can't submit forms"
- "Commit these changes with a descriptive message"

### Common Request Patterns

| What You Want | How to Ask |
|---------------|------------|
| **Create a file** | "Create a [type] file that [does X]" |
| **Edit a file** | "Update [file] to [do X]" |
| **Debug code** | "Why does [X] not work?" |
| **Explain code** | "Explain how [X] works" |
| **Review code** | "Review this code for [issues]" |
| **Run tests** | "Run the test suite" |
| **Git commit** | "Commit these changes" |
| **Search code** | "Find where [X] is used" |
| **Refactor** | "Refactor [function] to be more readable" |

### Claude's Tools

| Tool | Purpose | When Used |
|------|---------|-----------|
| **Read** | View file contents | Understanding code, before editing |
| **Write** | Create new files | New scripts, configs |
| **Edit** | Modify files | Updates, fixes, refactoring |
| **Bash** | Run commands | Tests, git, packages |
| **Glob** | Find files | Locating files by pattern |
| **Grep** | Search content | Finding code usage |
| **TodoWrite** | Track tasks | Complex multi-step features |
| **WebSearch** | Search web | Finding docs, research |

### Workflow Patterns

**Feature Development**:
```
1. "Create a [feature]"
2. "Add [enhancement]"
3. "Test it"
4. "Commit with message [X]"
```

**Debugging**:
```
1. "Why is [X] not working?"
2. "Fix the issue"
3. "Run tests to verify"
```

**Code Review**:
```
1. "Review this code for [security/performance/style]"
2. "Apply the improvements"
3. "Commit the changes"
```

**Git Workflow**:
```
1. "Create a feature branch for [X]"
2. "Implement [feature]"
3. "Commit the changes"
4. "Create a pull request"
```

---

## Git Commit Message Templates

### Good Commit Messages

```
Add user authentication with JWT

- Implement login endpoint
- Add password hashing
- Create JWT middleware
- Add authentication tests
```

```
Fix null pointer exception in payment handler

The handler wasn't checking for null payment methods
before processing. Added validation to prevent crashes.

Fixes #123
```

```
Refactor database connection logic

Extract connection pooling into separate module
for better reusability and testing.
```

### Commit Message Format

```
<type>: <subject>

<body (optional)>

<footer (optional)>
```

**Types**:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation
- `style`: Formatting, missing semicolons
- `refactor`: Code restructuring
- `test`: Adding tests
- `chore`: Maintenance

---

## Common Git Workflows

### Feature Branch Workflow

```bash
# 1. Update main
git switch main
git pull origin main

# 2. Create feature branch
git switch -c feature/new-feature

# 3. Work and commit
# ... make changes ...
git add .
git commit -m "Add new feature"

# 4. Push feature
git push -u origin feature/new-feature

# 5. Create PR (on GitHub)

# 6. After merge, cleanup
git switch main
git pull origin main
git branch -d feature/new-feature
```

### Hotfix Workflow

```bash
# 1. Create hotfix from main
git switch main
git switch -c hotfix/urgent-fix

# 2. Fix and test
# ... make fix ...
git commit -am "Fix critical bug"

# 3. Merge to main
git switch main
git merge hotfix/urgent-fix

# 4. Push and cleanup
git push origin main
git branch -d hotfix/urgent-fix
```

---

## Troubleshooting

### Git Issues

**Undo last commit (keep changes)**:
```bash
git reset --soft HEAD~1
```

**Undo last commit (discard changes)**:
```bash
git reset --hard HEAD~1
```

**Undo changes to a file**:
```bash
git checkout -- filename
```

**Resolve merge conflict**:
```bash
# 1. Edit files to resolve conflicts
# 2. Remove conflict markers
# 3. Stage resolved files
git add .
# 4. Complete merge
git commit
```

**Abort merge**:
```bash
git merge --abort
```

**Recover deleted branch**:
```bash
git reflog
git branch branch-name <commit-hash>
```

### Claude Code Tips

**If Claude makes a mistake**:
- Point it out clearly
- Ask for a different approach
- Claude can fix it!

**For better results**:
- Be specific about what you want
- Provide relevant context
- Mention file names when known
- Ask follow-up questions

**If you're stuck**:
- Ask "Can you explain that differently?"
- Request "Show me an example"
- Say "Let's try a different approach"

---

## Keyboard Shortcuts

### Terminal

| Shortcut | Action |
|----------|--------|
| `Ctrl+C` | Cancel current command |
| `Ctrl+D` | Exit terminal |
| `Ctrl+L` | Clear screen |
| `↑` / `↓` | Previous/next command |
| `Tab` | Autocomplete |

### Git Aliases (Optional Setup)

```bash
# Add to ~/.gitconfig
[alias]
    st = status
    co = checkout
    br = branch
    ci = commit
    unstage = reset HEAD --
    last = log -1 HEAD
    visual = log --oneline --graph --all
```

**Usage**: `git st` instead of `git status`

---

## Learning Resources

### Git
- Official Git documentation: https://git-scm.com/doc
- Interactive Git tutorial: https://learngitbranching.js.org/
- GitHub Guides: https://guides.github.com/

### Claude Code
- Claude Code docs: https://docs.claude.com/claude-code
- This tutorial: `README.md`

---

## Cheat Sheet Tips

**Print this file**:
```bash
# If you have a printer, this creates a PDF
# (requires pandoc and wkhtmltopdf)
pandoc QUICK-REFERENCE.md -o quick-reference.pdf
```

**Keep it handy**: Bookmark this file or keep it open while learning!

**Practice regularly**: The more you use these commands, the more natural they become.

---

**Last Updated**: 2025

For complete tutorials, see the main README.md or run `./scripts/start-tutorial.sh`
