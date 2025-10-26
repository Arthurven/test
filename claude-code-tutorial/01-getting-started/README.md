# Getting Started with Claude Code - Level 4

Welcome to AI-assisted coding! Learn how to work with Claude Code to boost your productivity.

## What You'll Learn

- What Claude Code is and how it works
- Setting up and using the CLI
- Understanding Claude's tools
- Best practices for AI collaboration

## Estimated Time: 30 minutes

---

## Part 1: Understanding Claude Code (5 minutes)

### What is Claude Code?

Claude Code is an AI-powered coding assistant that helps you:
- Write and edit code
- Debug and troubleshoot
- Learn new concepts
- Navigate codebases
- Automate tasks

### Key Features

1. **Multiple Tools**: Read, Write, Edit, Bash, and more
2. **Context Awareness**: Understands your entire project
3. **Task Planning**: Breaks down complex tasks
4. **Git Integration**: Commits, branches, and PRs
5. **Interactive Learning**: Ask questions anytime

### How It Works

You describe what you want, and Claude:
1. **Plans** the approach
2. **Uses tools** to make changes
3. **Validates** the results
4. **Explains** what was done

---

## Part 2: Core Concepts (10 minutes)

### Tools Available to Claude

#### 1. **Read** - View file contents
```
Read a file to understand its structure
Example: Read src/app.js
```

#### 2. **Write** - Create new files
```
Write a new file from scratch
Example: Create a new config file
```

#### 3. **Edit** - Modify existing files
```
Make precise changes to files
Example: Update a function in existing code
```

#### 4. **Bash** - Run terminal commands
```
Execute shell commands
Example: Run tests, install packages, etc.
```

#### 5. **Glob** - Find files by pattern
```
Search for files matching patterns
Example: Find all .js files
```

#### 6. **Grep** - Search file contents
```
Search for text within files
Example: Find where a function is used
```

#### 7. **TodoWrite** - Track tasks
```
Manage task lists and progress
Example: Break down complex features
```

### How Claude Uses Tools

When you make a request, Claude:
1. Analyzes what's needed
2. Plans which tools to use
3. Executes tools in sequence or parallel
4. Reports results

**Example Flow**:
```
You: "Add a login function to my app"

Claude:
1. Reads existing files (Read tool)
2. Plans the implementation
3. Edits the relevant file (Edit tool)
4. Runs tests to verify (Bash tool)
5. Commits changes (Bash tool with git)
```

### Best Practices for Requests

**Good Requests** (Specific):
- "Add error handling to the login function in auth.js"
- "Create a README with installation instructions"
- "Fix the bug where users can't submit empty forms"

**Vague Requests** (Less effective):
- "Make it better"
- "Add stuff"
- "Fix everything"

**Tips**:
1. Be specific about what you want
2. Mention file names when relevant
3. Describe the desired outcome
4. Ask questions if you're unsure

---

## Part 3: Working with Claude (10 minutes)

### Starting a Conversation

Claude Code runs in your terminal. Simply type your request!

### Example Interactions

#### Example 1: Creating a File

**You**: "Create a Python script that prints hello world"

**Claude**:
- Uses Write tool
- Creates hello.py
- Explains the code

#### Example 2: Editing Code

**You**: "Add error handling to the database connection"

**Claude**:
- Reads the file first
- Uses Edit tool to add try-catch
- Explains the changes

#### Example 3: Debugging

**You**: "Why is this function returning undefined?"

**Claude**:
- Reads the function
- Analyzes the logic
- Explains the issue
- Offers to fix it

### Task Planning with TodoWrite

For complex tasks, Claude creates todo lists:

**You**: "Build a user authentication system"

**Claude creates todos**:
1. Creating user model
2. Adding password hashing
3. Implementing login endpoint
4. Adding JWT token generation
5. Creating middleware for auth
6. Writing tests

You can track progress as each item is marked complete!

### Asking for Explanations

**You**: "How does this authentication work?"

Claude will:
- Read the relevant code
- Explain the flow
- Answer follow-up questions
- Provide examples

### Iterative Development

**You**: "Add a login page"
**Claude**: Creates basic login page

**You**: "Add validation"
**Claude**: Updates with validation

**You**: "Make it prettier"
**Claude**: Adds styling

### Git Integration

**You**: "Commit these changes"

**Claude**:
- Runs git status
- Creates descriptive commit message
- Commits the changes
- Reports success

---

## Part 4: Hands-On Exercises (5 minutes)

### Exercise 1: Your First Request

**Goal**: Get comfortable making requests

**Try these**:

1. "Create a file called notes.txt with a list of things to remember"

2. "Create a simple HTML page with a heading and paragraph"

3. "Explain what the .git directory contains"

### Exercise 2: Multi-Step Task

**Goal**: See task planning in action

**Request**: "Create a simple calculator script in Python with add, subtract, multiply, and divide functions"

**Observe**:
- How Claude plans the task
- Which tools are used
- How the code is structured

### Exercise 3: Code Review

**Goal**: Learn from AI feedback

1. Create a simple script (any language)
2. Ask: "Review this code and suggest improvements"
3. Discuss the suggestions

### Exercise 4: Learning

**Goal**: Use Claude to learn concepts

**Try asking**:
- "Explain how Git branching works"
- "What's the difference between let and const in JavaScript?"
- "Show me an example of recursion in Python"

---

## Part 5: Tips for Success (5 minutes)

### Do's

1. **Be conversational**: Talk naturally
2. **Iterate**: Refine requests based on results
3. **Ask questions**: No question is too basic
4. **Provide context**: Share relevant information
5. **Review changes**: Understand what Claude does
6. **Learn actively**: Ask "why" and "how"

### Don'ts

1. **Assume magic**: Claude uses tools, not magic
2. **Skip verification**: Always review changes
3. **Be too vague**: Specificity helps
4. **Ignore errors**: Ask about error messages
5. **Forget to commit**: Save your work!

### Getting Better Results

**Provide context**:
- "I'm building a React app..."
- "This is for a beginner's tutorial..."
- "The production system requires..."

**Break down complex requests**:
- Instead of: "Build a social media app"
- Try: "Create a user profile component with name and bio fields"

**Use follow-ups**:
- "That looks good, now add..."
- "Can you also..."
- "What if we..."

### When Things Go Wrong

**Claude makes a mistake**:
- Point it out: "That didn't work because..."
- Ask for a different approach
- Claude can fix it!

**Not sure what happened**:
- Ask: "What did you just change?"
- Request: "Explain what this code does"

**Want to undo**:
- Use Git: "Revert the last commit"
- Ask: "Can we try a different approach?"

---

## Part 6: Understanding Limitations

### What Claude Can Do

- Write and edit code
- Run commands
- Search codebases
- Explain concepts
- Debug issues
- Plan complex tasks
- Work with Git

### What Claude Cannot Do

- Access the internet directly (except specific tools)
- Remember between sessions (unless in conversation)
- Read your mind (be explicit!)
- Guarantee bug-free code (always test!)

### Working Within Limitations

**For external info**:
- "I'll paste the API docs..."
- Share error messages directly

**For persistence**:
- Document decisions in code comments
- Commit frequently
- Use clear commit messages

---

## Quick Reference

### Common Request Patterns

| What you want | How to ask |
|---------------|------------|
| Create file | "Create a [type] file that [does X]" |
| Edit file | "Update [file] to [do X]" |
| Debug | "Why does [X] not work?" |
| Explain | "Explain how [X] works" |
| Review | "Review this code for [issues]" |
| Git operation | "Commit with message [X]" |
| Search | "Find where [X] is used" |

### Keyboard Tips

- Up arrow: Previous command
- Ctrl+C: Cancel current operation
- Clear: Type "clear" to clear conversation

---

## Checkpoint

Before moving to the next module, make sure you understand:

- [ ] What Claude Code is and how it helps
- [ ] The tools Claude uses (Read, Write, Edit, Bash, etc.)
- [ ] How to make effective requests
- [ ] Task planning with todos
- [ ] How to iterate and refine requests
- [ ] Claude's capabilities and limitations

---

## Next Steps

Ready for more? Continue to:
- **Module 2: Tools Deep Dive** - `../02-tools/README.md`
- **Module 3: Workflows** - `../03-workflows/README.md`
- **Practice exercises** - `../exercises/getting-started-exercises.md`

---

## Practice Challenge

**Build a Simple Project**:

Create a task tracker with Claude's help:
1. Create a file to store tasks (JSON or text)
2. Add functions to add/remove tasks
3. Create a script to display tasks
4. Test it
5. Commit it to Git

Work with Claude step-by-step and observe how AI-assisted development works!
