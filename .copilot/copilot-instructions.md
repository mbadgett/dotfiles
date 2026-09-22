# Personal Copilot Instructions

## GitHub Writing

- Keep pull request descriptions and review comments concise, current, and high-signal.
- Lead with the problem or behavioral change, then include only the implementation details and validation needed for review.
- Mention rollout, dependencies, or stack position only when they affect the reviewer or merge order.
- Remove stale scope, historical narration, and development-process diaries.
- Answer review questions or describe fixes directly without repeating the full investigation.

## Worktrees and Branches

- Before editing, verify the current directory, repository root, branch, and dirty state.
- Honor a specifically requested worktree or branch.
- Use separate worktrees for concurrent pull request or stack work.
- Do not switch, reset, clean, or transplant changes from another task's worktree unless explicitly requested.
- Preserve unrelated dirty changes; never assume they are disposable.
