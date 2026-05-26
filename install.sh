#!/bin/bash
# Install product-market-fit skill for Claude Code

set -e

SKILL_NAME="product-market-fit"
TARGET="$HOME/.claude/skills/$SKILL_NAME"

echo "Installing $SKILL_NAME..."

# Create target directory
mkdir -p "$TARGET"

# Copy skill files
cp -r . "$TARGET/"

echo ""
echo "Done. $SKILL_NAME installed to $TARGET"
echo ""
echo "Open Claude Code and run: /$SKILL_NAME"
