# Claude Code Tools Deep Dive - Level 5

Master the tools Claude uses to understand how AI-assisted coding works under the hood!

## What You'll Learn

- Detailed understanding of each tool
- When and how Claude uses each tool
- Best practices for tool usage
- Advanced tool combinations

## Estimated Time: 30 minutes

---

## Part 1: File Reading Tools (8 minutes)

### Read Tool

**Purpose**: View file contents

**When Claude uses it**:
- Understanding existing code before editing
- Analyzing file structure
- Answering questions about code
- Debugging issues

**Example requests that trigger Read**:
- "What's in config.js?"
- "Show me the authentication code"
- "How does this function work?"

**What you'll see**:
```
Using Read tool to view: src/app.js
```

**Parameters**:
- `file_path`: The file to read
- `offset`: Starting line (for large files)
- `limit`: Number of lines to read

**Tips**:
- Claude reads files with line numbers
- Large files may be read in chunks
- Claude always reads before editing (best practice!)

### Glob Tool

**Purpose**: Find files by pattern

**When Claude uses it**:
- Searching for files by name
- Finding all files of a type
- Locating test files
- Exploring project structure

**Pattern examples**:
- `**/*.js` - All JavaScript files
- `src/**/*.test.js` - All test files in src
- `*.md` - Markdown files in current directory

**Example requests**:
- "Find all Python files"
- "Show me the test files"
- "Where are the configuration files?"

**What you'll see**:
```
Using Glob tool with pattern: **/*.js
Found: 15 files
```

### Grep Tool

**Purpose**: Search file contents

**When Claude uses it**:
- Finding where code is used
- Searching for specific functions
- Locating error messages
- Analyzing patterns across files

**Example requests**:
- "Where is the login function called?"
- "Find all TODO comments"
- "Which files import React?"

**What you'll see**:
```
Using Grep tool to search for: "function login"
Found in 3 files
```

**Parameters**:
- `pattern`: Text/regex to search
- `path`: Where to search
- `glob`: File pattern filter
- `-i`: Case insensitive
- `-C`: Context lines

---

## Part 2: File Writing Tools (8 minutes)

### Write Tool

**Purpose**: Create new files

**When Claude uses it**:
- Creating new scripts
- Generating configuration files
- Building templates
- Starting new modules

**Example requests**:
- "Create a README file"
- "Make a new component called Header"
- "Generate a package.json"

**What you'll see**:
```
Using Write tool to create: src/components/Header.js
File created successfully
```

**Important notes**:
- Overwrites if file exists (be careful!)
- Creates parent directories if needed
- Claude prefers Edit over Write for existing files

### Edit Tool

**Purpose**: Modify existing files precisely

**When Claude uses it**:
- Updating functions
- Adding features to code
- Fixing bugs
- Refactoring

**How it works**:
1. Claude reads the file first
2. Identifies exact text to replace
3. Provides the replacement
4. Makes the edit

**Example requests**:
- "Add error handling to the login function"
- "Update the API endpoint URL"
- "Rename the variable from x to count"

**What you'll see**:
```
Using Edit tool on: app.js
Replacing:
  function login() {
With:
  function login() {
    try {
```

**Parameters**:
- `file_path`: File to edit
- `old_string`: Text to replace (must match exactly!)
- `new_string`: Replacement text
- `replace_all`: Replace all occurrences

**Edit vs Write**:
- **Use Edit**: Modifying existing files (preferred!)
- **Use Write**: Creating new files

---

## Part 3: Execution Tools (7 minutes)

### Bash Tool

**Purpose**: Run terminal commands

**When Claude uses it**:
- Running tests
- Installing packages
- Git operations
- Building projects
- Checking system info
- File operations (when needed)

**Example requests**:
- "Run the tests"
- "Install the dependencies"
- "What's the Git status?"
- "Build the project"

**What you'll see**:
```
Using Bash tool to execute: npm test
Running tests...
[test output]
```

**Common commands Claude runs**:

**Git operations**:
```bash
git status
git add .
git commit -m "message"
git log --oneline
```

**Package management**:
```bash
npm install
npm test
pip install -r requirements.txt
```

**File operations**:
```bash
mkdir directory
ls -la
```

**Important**:
- Claude uses specialized tools (Read/Write/Edit) for file content
- Bash is for actual terminal operations
- Long-running commands can run in background

**Parameters**:
- `command`: The shell command
- `timeout`: Maximum execution time
- `run_in_background`: For long tasks

---

## Part 4: Organization Tools (7 minutes)

### TodoWrite Tool

**Purpose**: Plan and track complex tasks

**When Claude uses it**:
- Multi-step features
- Complex implementations
- When you provide multiple tasks
- Breaking down large requests

**Example requests that trigger todos**:
- "Build a user authentication system"
- "Refactor the entire API layer"
- "Add testing, linting, and CI/CD"

**What you'll see**:
```
Creating todos:
1. Creating user model [in_progress]
2. Adding password hashing [pending]
3. Implementing login endpoint [pending]
```

**Task states**:
- `pending`: Not started
- `in_progress`: Currently working on
- `completed`: Finished

**Benefits**:
- Track complex tasks
- See progress in real-time
- Ensure nothing is forgotten
- Understand the plan before execution

**How it works**:
```
Request: "Add login, logout, and password reset"

Claude creates:
☐ Implementing login functionality
☐ Implementing logout functionality
☐ Adding password reset feature
☐ Writing tests for authentication

Then marks each complete as it works
```

### Task Tool (Specialized Agents)

**Purpose**: Delegate to specialized AI agents

**Agent types**:
- `Explore`: Search and understand codebase
- `general-purpose`: Complex multi-step tasks

**When Claude uses it**:
- Exploring unfamiliar codebases
- Complex research tasks
- Deep code analysis

**Example**:
```
Using Task tool with Explore agent to:
"Find all API endpoints and their purposes"
```

---

## Part 5: Web Tools (5 minutes)

### WebSearch Tool

**Purpose**: Search the web for information

**When Claude uses it**:
- Finding current documentation
- Looking up error messages
- Researching best practices
- Checking latest versions

**Example requests**:
- "Find the latest React documentation for hooks"
- "Search for solutions to this error message"

### WebFetch Tool

**Purpose**: Fetch content from URLs

**When Claude uses it**:
- Reading documentation pages
- Analyzing specific web content
- Accessing API documentation

**Example**:
```
You: "Check the Claude Code docs for git integration"
Claude: Uses WebFetch to read the docs page
```

---

## Part 6: Hands-On Exercises

### Exercise 1: Read Tool Practice

**Task**: Explore how Read works

1. Create a test file:
```bash
echo "line 1
line 2
line 3" > test.txt
```

2. Ask Claude: "Read test.txt"
3. Observe the output with line numbers

### Exercise 2: Edit Tool Practice

**Task**: See precise editing in action

1. Create a file:
```bash
echo "def hello():
    print('Hello')" > script.py
```

2. Ask Claude: "Update the hello function to print 'Hello, World!'"
3. Observe how Claude:
   - Reads the file first
   - Shows old and new code
   - Makes the precise change

### Exercise 3: Glob and Grep

**Task**: Search your codebase

1. Ask: "Find all markdown files in this project"
   - Watch Claude use Glob

2. Ask: "Search for the word 'tutorial' in all files"
   - Watch Claude use Grep

### Exercise 4: Todo Tracking

**Task**: See task planning in action

Ask Claude: "Create a Python project with main script, tests, README, and requirements.txt"

Observe:
- Todo list creation
- Each task being marked in progress
- Completion as work is done

### Exercise 5: Tool Combinations

**Task**: See tools work together

Ask Claude: "Find all functions in Python files and add docstrings to any that don't have them"

Observe the flow:
1. Glob - Find .py files
2. Read - Check each file
3. Grep - Find functions without docstrings
4. Edit - Add docstrings
5. Bash - Run lint to verify

---

## Part 7: Advanced Tool Usage

### Parallel Tool Execution

Claude can use multiple tools simultaneously:

**Example**: "Read app.js and config.js"
```
Using Read tool on: app.js
Using Read tool on: config.js
[Both execute in parallel]
```

### Sequential Tool Chains

Some operations must happen in order:

**Example**: "Edit the file and then run tests"
```
1. Read file
2. Edit file
3. Bash: run tests
```

### Tool Selection Logic

How Claude decides which tool to use:

**Scenario**: "Update the login function"
```
1. Grep - Find where login is
2. Read - Understand current implementation
3. Edit - Make the change
4. Bash - Run tests to verify
```

---

## Quick Reference

| Tool | Purpose | Common Use Cases |
|------|---------|------------------|
| **Read** | View files | Understanding code, debugging |
| **Glob** | Find files | Locating files by pattern |
| **Grep** | Search content | Finding code usage |
| **Write** | Create files | New scripts, configs |
| **Edit** | Modify files | Updates, fixes, refactoring |
| **Bash** | Run commands | Tests, git, packages |
| **TodoWrite** | Track tasks | Complex features |
| **WebSearch** | Search web | Current docs, research |
| **WebFetch** | Get URL content | Read documentation |

---

## Best Practices

### For You (User)

1. **Trust the process**: Claude reads before editing
2. **Review changes**: Check what was modified
3. **Provide context**: Help Claude choose right tools
4. **Be specific**: Clear requests = better tool usage

### How Claude Uses Tools Well

1. **Read before Edit**: Never blind edits
2. **Verify with Bash**: Run tests after changes
3. **Use Glob before Grep**: Narrow search space
4. **Create todos for complex tasks**: Track progress
5. **Parallel when possible**: Multiple Reads at once

---

## Checkpoint

Make sure you understand:

- [ ] What each tool does
- [ ] When Claude uses each tool
- [ ] How tools work together
- [ ] Read → Edit → Bash pattern
- [ ] Todo tracking for complex tasks
- [ ] Tool selection logic

---

## Next Steps

Master the tools? Continue to:
- **Module 3: Workflows** - `../03-workflows/README.md`
- **Practice exercises** - `../exercises/tools-exercises.md`

Ready to see these tools in action with real workflows!
