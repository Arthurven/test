# Claude Code Workflows - Level 6

Learn efficient workflows for common development tasks using Claude Code!

## What You'll Learn

- Complete development workflows
- Feature implementation patterns
- Debugging strategies
- Code review and refactoring
- Git workflows with Claude

## Estimated Time: 45 minutes

---

## Part 1: Feature Development Workflow (10 minutes)

### Standard Feature Flow

**Pattern**: Request → Plan → Implement → Test → Commit

### Example: Adding a New Feature

**Request**: "Add a user profile page with name, email, and bio"

**Claude's workflow**:

```
Step 1: Planning
├─ Creates todo list
├─ Breaking down into tasks
└─ Identifying files to modify

Step 2: Implementation
├─ Reads existing code (Read)
├─ Creates/updates files (Write/Edit)
└─ Follows project patterns

Step 3: Validation
├─ Runs tests (Bash)
├─ Checks for errors
└─ Verifies functionality

Step 4: Git Operations
├─ Stages changes (Bash: git add)
├─ Creates commit (Bash: git commit)
└─ Reports status
```

### Interactive Feature Development

**You**: "Add a login form"

**Claude**: Creates basic form

**You**: "Add email validation"

**Claude**: Updates with validation

**You**: "Add error messages"

**Claude**: Adds error handling

**You**: "Looks good, commit it"

**Claude**: Commits with descriptive message

**Benefits**:
- Iterative refinement
- Test as you go
- Clean commits at logical points

### Best Practices

1. **Start small**: Basic version first
2. **Iterate**: Add features incrementally
3. **Test often**: After each major change
4. **Commit logically**: Related changes together
5. **Review**: Check code before committing

---

## Part 2: Debugging Workflow (8 minutes)

### Systematic Debugging

**Pattern**: Identify → Analyze → Fix → Verify

### Example: Fixing a Bug

**Request**: "The login button doesn't work"

**Claude's approach**:

```
Step 1: Gather Information
├─ Reads relevant files (Read)
├─ Searches for login button (Grep)
└─ Checks for event handlers

Step 2: Analyze
├─ Understands the code flow
├─ Identifies potential issues
└─ Explains the problem

Step 3: Fix
├─ Proposes solution
├─ Makes the change (Edit)
└─ Explains the fix

Step 4: Verify
├─ Suggests how to test
├─ Runs tests if available (Bash)
└─ Confirms fix works
```

### Error Message Debugging

**You**: "I'm getting this error: [paste error]"

**Claude**:
1. Analyzes error message
2. Searches for relevant code (Grep)
3. Identifies the cause
4. Fixes the issue
5. Explains why it happened

### Debugging Tips

**Provide context**:
- Share full error messages
- Mention what you were doing
- Include relevant code snippets

**Ask for explanations**:
- "Why did this error occur?"
- "What does this error mean?"
- "How can I prevent this in the future?"

**Iterative debugging**:
```
You: "Still not working"
Claude: Reads more context, tries different approach
You: "Getting a different error now"
Claude: Good! Progress. Addresses new error
```

---

## Part 3: Code Review Workflow (7 minutes)

### Getting Code Reviews

**Request patterns**:
- "Review this code for bugs"
- "Check this for best practices"
- "How can I improve this function?"
- "Is this code secure?"

### Review Example

**You**: "Review my authentication code"

**Claude**:
1. Reads the code (Read)
2. Analyzes for:
   - Security issues
   - Performance problems
   - Code style
   - Best practices
   - Edge cases
3. Provides feedback
4. Suggests improvements
5. Offers to make changes

### Review Categories

**Security review**:
```
Request: "Review for security issues"
Claude checks:
- Input validation
- SQL injection risks
- XSS vulnerabilities
- Authentication flaws
- Sensitive data exposure
```

**Performance review**:
```
Request: "Review for performance"
Claude checks:
- Algorithm efficiency
- Unnecessary loops
- Database queries
- Memory usage
- Caching opportunities
```

**Style review**:
```
Request: "Review for code style"
Claude checks:
- Naming conventions
- Code organization
- Comments/documentation
- Consistency
- Readability
```

### Applying Review Feedback

**You**: "Review this code"

**Claude**: Provides suggestions

**You**: "Apply these improvements"

**Claude**: Makes the changes

---

## Part 4: Refactoring Workflow (7 minutes)

### Safe Refactoring Pattern

**Pattern**: Read → Plan → Refactor → Test → Verify

### Example: Refactoring a Large Function

**Request**: "Refactor the handleSubmit function to be more readable"

**Claude's approach**:

```
Step 1: Understand
├─ Reads current code
├─ Analyzes structure
└─ Identifies improvements

Step 2: Plan
├─ Creates todo list
│  ├─ Extract validation logic
│  ├─ Extract API call
│  ├─ Extract error handling
│  └─ Update main function

Step 3: Refactor
├─ Makes changes incrementally
├─ Maintains functionality
└─ Improves readability

Step 4: Verify
├─ Runs tests
├─ Checks no regressions
└─ Confirms improvement
```

### Refactoring Requests

**Extract function**:
```
"Extract the validation logic into a separate function"
```

**Rename**:
```
"Rename all instances of 'x' to 'userId' for clarity"
```

**Reorganize**:
```
"Move all helper functions to a separate utils file"
```

**Modernize**:
```
"Update this code to use modern JavaScript syntax"
```

### Refactoring Safety

**Claude ensures**:
- Tests pass before and after
- Behavior remains unchanged
- Changes are incremental
- Clear commit messages

**You should**:
- Run tests after refactoring
- Review the changes
- Test manually if needed
- Commit refactoring separately

---

## Part 5: Git Workflow with Claude (8 minutes)

### Standard Git Operations

#### Making Commits

**Request**: "Commit these changes"

**Claude**:
1. Runs `git status` (see what changed)
2. Runs `git diff` (review changes)
3. Creates descriptive commit message
4. Runs `git add` and `git commit`
5. Confirms success

**Commit message quality**:
```
Good (Claude generates):
"Add user authentication with JWT tokens

- Implement login endpoint
- Add password hashing
- Create JWT middleware
- Add authentication tests"

Bad:
"updates"
"fix stuff"
```

#### Branch Workflow

**Create feature branch**:
```
You: "Create a feature branch for user profiles"
Claude:
- git checkout -b feature/user-profiles
- Reports new branch created
```

**Switch branches**:
```
You: "Switch to main branch"
Claude: git switch main
```

#### Pull Requests

**Request**: "Create a pull request for this feature"

**Claude**:
1. Reviews all commits in branch
2. Analyzes all changes since branch point
3. Generates PR title and description
4. Creates PR with `gh pr create`
5. Returns PR URL

**PR description includes**:
- Summary of changes
- Test plan
- Related issues

### Git + Development Workflow

**Complete feature workflow**:

```
1. Create feature branch
   "Create branch for adding comments"

2. Implement feature
   "Add comment functionality"

3. Test
   "Run the test suite"

4. Commit
   "Commit the comment feature"

5. Push and PR
   "Create a pull request"
```

### Git Troubleshooting

**Merge conflicts**:
```
You: "I have merge conflicts"
Claude:
- git status to see conflicts
- Reads conflicted files
- Helps resolve conflicts
- Completes merge
```

**Undo mistakes**:
```
You: "Undo the last commit"
Claude: git reset --soft HEAD~1

You: "Undo changes to this file"
Claude: git checkout -- filename
```

**View history**:
```
You: "Show me recent commits"
Claude: git log --oneline -10

You: "What changed in the last commit?"
Claude: git show HEAD
```

---

## Part 6: Complete Project Workflow (10 minutes)

### Building a Project from Scratch

**Example**: "Create a task tracker CLI application"

### Phase 1: Setup (5 minutes)

**You**: "Create a task tracker CLI in Python"

**Claude's workflow**:
```
Todo list:
☐ Setting up project structure
☐ Creating main script
☐ Adding task storage
☐ Implementing add task
☐ Implementing list tasks
☐ Implementing complete task
☐ Adding CLI interface
☐ Creating tests

Step 1: Project structure
├─ Creates directories
├─ Initializes git
└─ Creates requirements.txt

Step 2: Main script
├─ Creates task_tracker.py
├─ Adds basic structure
└─ Implements CLI args

Step 3: Core functionality
├─ Task storage (JSON)
├─ Add task function
├─ List tasks function
├─ Complete task function
```

### Phase 2: Enhancement (5 minutes)

**You**: "Add the ability to delete tasks"

**Claude**:
- Reads existing code
- Adds delete functionality
- Updates CLI interface
- Tests the feature

**You**: "Add colors to the output"

**Claude**:
- Installs colorama
- Updates display function
- Applies colors

### Phase 3: Testing (3 minutes)

**You**: "Add tests for all functions"

**Claude**:
- Creates test_task_tracker.py
- Writes unit tests
- Runs tests
- Reports coverage

### Phase 4: Documentation (2 minutes)

**You**: "Create a README"

**Claude**:
- Writes comprehensive README
- Includes installation steps
- Adds usage examples
- Documents features

### Phase 5: Git Workflow (5 minutes)

**You**: "Let's version this properly"

```
You: "Create a git repo and make initial commit"
Claude: Initializes git, commits all files

You: "Create a dev branch for a new feature"
Claude: git checkout -b dev

You: "Add priority levels to tasks"
Claude: Implements feature

You: "Commit and merge to main"
Claude: Commits, switches to main, merges dev

You: "Tag this as v1.0.0"
Claude: git tag v1.0.0
```

---

## Part 7: Hands-On Workflow Exercise

### Complete Workflow Challenge

**Task**: Build a simple note-taking app with Claude

**Requirements**:
1. Create/read/update/delete notes
2. Save to JSON file
3. CLI interface
4. Tests
5. README
6. Proper git history

**Workflow**:

```
Step 1: Plan
"Create a note-taking CLI app in [your language]"
- Observe todo list creation

Step 2: Basic Implementation
Let Claude build core features
- Watch the file operations
- See the code structure

Step 3: Iterate
"Add timestamps to notes"
"Add ability to search notes"
"Add categories/tags"

Step 4: Test
"Write tests for all features"
"Run the tests"

Step 5: Document
"Create a README with examples"

Step 6: Git
"Initialize git and commit"
"Create feature branch for search"
"Implement search feature"
"Create pull request"

Step 7: Review
"Review all code for improvements"
Apply suggestions
"Commit improvements"
```

---

## Quick Reference

### Common Workflows

| Workflow | Pattern |
|----------|---------|
| **New feature** | Plan → Implement → Test → Commit |
| **Bug fix** | Identify → Analyze → Fix → Verify |
| **Refactor** | Read → Plan → Refactor → Test |
| **Code review** | Read → Analyze → Suggest → Apply |
| **Git workflow** | Branch → Implement → Test → PR |

### Efficiency Tips

1. **Combine requests**: "Add feature X, test it, and commit"
2. **Iterate quickly**: Small changes, fast feedback
3. **Use todos**: Track complex multi-step tasks
4. **Commit often**: Logical, working checkpoints
5. **Ask questions**: Understand what Claude is doing

---

## Checkpoint

Make sure you can:

- [ ] Follow feature development workflow
- [ ] Debug systematically with Claude
- [ ] Get and apply code reviews
- [ ] Refactor safely
- [ ] Use Git effectively with Claude
- [ ] Build a complete project from scratch

---

## Next Steps

Mastered the workflows? You're ready to:

1. **Build real projects** with Claude Code
2. **Explore advanced techniques** in exercises
3. **Combine Git + Claude workflows** efficiently
4. **Share your learnings** with others!

Practice the complete workflow challenge above to solidify your skills!

---

## Advanced Workflow Tips

### Parallel Development

```
You: "Work on these three features in parallel:
1. Add user authentication
2. Create admin dashboard
3. Add email notifications"

Claude: Creates separate branches, implements features
```

### Automated Workflows

```
You: "Set up a pre-commit hook to run tests"
Claude: Creates .git/hooks/pre-commit script

You: "Add CI/CD configuration"
Claude: Creates .github/workflows/ci.yml
```

### Documentation Workflows

```
You: "Document all functions with docstrings"
Claude: Adds comprehensive documentation

You: "Generate API documentation"
Claude: Creates documentation files
```

Congratulations on completing the Claude Code tutorial! You now have the skills to work efficiently with AI assistance!
