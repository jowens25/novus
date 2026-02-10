#!/bin/bash
# generate-indexes.sh
find ~/.aptly/public -type d | while read dir; do
    (cd "$dir" && ls -1p | awk 'BEGIN{print "<html><body><ul>"} {print "<li><a href=\""$1"\">"$1"</a></li>"} END{print "</ul></body></html>"}' > index.html)
done
