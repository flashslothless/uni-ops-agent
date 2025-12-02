# Cynthia — General Operations Agent (Operator)

**AI-powered, command-line general agent for Operations**

**Cynthia** is a general-purpose Operations (Ops) intelligent agent. With proper tool configuration, it supports a wide range of operational activities, including routine Ops workflows, incident handling, fault management, knowledge-base Q&A, runbook execution, and more.

Cynthia is derived from **Qwen Code**, retaining its external system prompt override mechanism and hierarchical memory architecture—making it highly adaptable to complex production Ops scenarios.

## Key Features

### **Document & Code Understanding / Editing**

Understand, query, and edit large codebases and operational documents beyond traditional context window limitations.

### **Ops Workflow Automation**

Automate frequent operational tasks such as processing pull requests, resolving complex rebases, enforcing change workflows, and executing automated runbooks.

## System Prompt

- **Default Prompt**: Built into the project and works out-of-the-box.
- **External Override**: Use `QWEN_SYSTEM_MD` to specify a custom `system.md` (supports `~`).
  - If set to a boolean-like value (`1`, `true`), the default path `/.qwen/system.md` will be used.
- **Writing the Current Prompt**:  
  Set `QWEN_WRITE_SYSTEM_MD` (switch or explicit path) to output the computed system prompt for review or versioning.

**Example:**

````bash
export QWEN_SYSTEM_MD=~/.qwen/system.md
export QWEN_WRITE_SYSTEM_MD=~/.qwen/system.md
qwen


------

## Hierarchical Memory

- **Locations**
  - Global: `~/.qwen/QWEN.md`
  - Project-specific: `./QWEN.md`
  - Automatic upward/downward discovery in the workspace
- **Purpose**
   Hierarchical memory is appended to the system prompt automatically, enabling contextual understanding of runbooks, incident notes, SOPs, and Ops records.
- **Refresh & Inspect**
  - `/memory refresh` — Reload hierarchical memory
  - `/memory show` — Display appended memory content
- **Document Imports**
   Use `@path/to/file.md` inside Markdown to import additional files and organize large Ops documentation structures.

------

## Common Commands

- `/memory refresh` — Refresh and apply hierarchical memory
- `/memory show` — Inspect appended memory
- `/model` — Switch model (automatically selects tool-call format)
- `/tools` — List and configure tools
- `/compress` — Compress long conversation history
- `/clear` — Reset the session

------

## Authorization

Supports OpenAI-compatible APIs:

```bash
export OPENAI_API_KEY="your_api_key_here"
export OPENAI_BASE_URL="your_api_endpoint"
export OPENAI_MODEL="your_model_choice"
````

### Configure Session Token Limit

Edit `~/.qwen/settings.json`:

```json
{
  "sessionTokenLimit": 32000
}
```

### Session Commands

- **`/compress`** — Compress session history
- **`/clear`** — Clear the entire session
- **`/stats`** — Display current token usage and limits
