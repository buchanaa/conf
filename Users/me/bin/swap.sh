#!/bin/bash

set -e

if [ $# -ne 2 ]; then
	echo "Usage: $0 <file 1> <file 2>" >&2
	exit 1
fi

mv "$1" /tmp/
mv "$2" "$1"
mv "/tmp/$1" "$2"

echo "Swapped '$1' and '$2'"

exit 0
