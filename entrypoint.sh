#!/bin/bash
BOLD='\x1b[1m'
NORMAL="\x1b[0m"

set -e
echo "::group::GitHub authentication"
  echo "$INPUT_PERSONAL_ACCESS_TOKEN" | gh auth login --with-token
echo "::endgroup::"

echo "::group::Creating PR"
  gh pr create --title "${{ github.ref_name }}" --body "PR Automated created" || echo ""
echo "::endgroup::"