#!/bin/bash

scriptdir="$(dirname "${BASH_SOURCE[0]}")"
outfile="$scriptdir/tot.bib"

> $outfile
for f in "$scriptdir/"*.bib; do
	if [ "$f" != "$outfile" ]; then
		cat "$f" >> "$outfile"
		echo >> "$outfile"
	fi
done
