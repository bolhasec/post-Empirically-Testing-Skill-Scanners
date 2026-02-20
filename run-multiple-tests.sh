#!/bin/bash

# List of all skills
SKILLS=(
  skills/original-moltbook
  skills/baseline-moltbook
  skills/base85-obfuscation-code
  skills/base85-obfuscation-instructions
  skills/data-procedurization-obfuscation-code
  skills/data-procedurization-obfuscation-instructions
  skills/premium-base65-moltbook
  skills/premium-data-procedurization-moltbook
  skills/premium-moltbook
)

# Run the entire batch 3 times
for round in 1 2 3; do
  echo "=============================="
  echo "Starting round $round"
  echo "=============================="

  for skill in "${SKILLS[@]}"; do
    echo "Scanning $skill (round $round)"
    uvx -qq mcp-scan@latest \
      --skills "$skill" \
      --json > "$skill/out.snyk-agent-scan.round-$round.json"
  done

done

echo "All scans completed."