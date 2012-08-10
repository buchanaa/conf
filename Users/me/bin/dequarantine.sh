#!/bin/bash
# Remove com.apple.quarantine xattr that slows opening files via CLI

if [ $# -lt 1 ]; then
	echo "Usage: $0 <downloaded file(s)>"
	exit 1
fi

for a in "$@"; do
	xattr -d com.apple.quarantine "$a"
done
