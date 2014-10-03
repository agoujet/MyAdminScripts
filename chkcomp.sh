#!/bin/sh

if [ $# -eq 0 ]; then
  echo "Usage: chkcomp.sh <file name or directory name on MapR FS>"
  exit 1
fi
hadoop mfs -lss $@ | awk '
  /\// {
    if (comp == "") {comp = $2} else if (comp != $2) {comp = "X"}
    if ($1 ~ /^-/) {usize += $6}
    csize += $7 * 8192
  }
  END {
    label["U"] = "Uncompressed"
    label["Z"] = "LZ4"
    label["L"] = "LZF"
    label["z"] = "ZLIB"
    label["X"] = "Mixed"
    label[""] = "Unknown"
    printf("%s %d / %d", label[comp], csize, usize)
    if (usize != 0) {printf(" (%.2f%%)", 100 * csize / usize)}
    printf("\n")
  }
'
