awk -F'>' '/^>/ {close(F); F = $2".fa"} {print > F}' $1
