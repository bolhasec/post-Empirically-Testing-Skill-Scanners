#!/bin/bash

# Baseline scan for original-moltbook
uvx mcp-scan@latest --skills skills/original-moltbook > skills/original-moltbook/out.snyk-agent-scan.txt
uvx mcp-scan@latest --skills skills/baseline-moltbook > skills/baseline-moltbook/out.snyk-agent-scan.txt

# Run test cases
uvx mcp-scan@latest --skills skills/base85-obfuscation-code > skills/base85-obfuscation-code/out.snyk-agent-scan.txt
uvx mcp-scan@latest --skills skills/base85-obfuscation-instructions > skills/base85-obfuscation-instructions/out.snyk-agent-scan.txt
uvx mcp-scan@latest --skills skills/data-procedurization-obfuscation-code > skills/data-procedurization-obfuscation-code/out.snyk-agent-scan.txt
uvx mcp-scan@latest --skills skills/data-procedurization-obfuscation-instructions > skills/data-procedurization-obfuscation-instructions/out.snyk-agent-scan.txt

# Premium variants
uvx mcp-scan@latest --skills skills/premium-base65-moltbook > skills/premium-base65-moltbook/out.snyk-agent-scan.txt
uvx mcp-scan@latest --skills skills/premium-data-procedurization-moltbook > skills/premium-data-procedurization-moltbook/out.snyk-agent-scan.txt
uvx mcp-scan@latest --skills skills/premium-moltbook > skills/premium-moltbook/out.snyk-agent-scan.txt
