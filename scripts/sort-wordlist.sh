#!/usr/bin/env bash
# Sorts and deduplicates SambaTu.txt (or any given file) in place.
# Works on any Linux distro with bash, sed and coreutils (sort).
#
# Usage:
#   ./sort-wordlist.sh [path/to/file.txt]
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FILE="${1:-$SCRIPT_DIR/../SambaTu.txt}"

if [[ ! -f "$FILE" ]]; then
  echo "Arquivo não encontrado: $FILE" >&2
  exit 1
fi

before=$(wc -l < "$FILE")

# Normalize line endings and drop blank lines before sorting.
sed -i 's/\r$//' "$FILE"
sed -i '/^$/d' "$FILE"

# Byte-order sort (LC_ALL=C) is locale-independent and much faster;
# -u also drops duplicate passwords.
export LC_ALL=C
sort -u -o "$FILE" "$FILE"

after=$(wc -l < "$FILE")
echo "Arquivo ordenado: $FILE ($before -> $after linhas)"
