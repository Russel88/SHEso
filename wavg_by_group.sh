#!/bin/bash

awk '{w[$1] += $3; e[$1] += $2 * $3;} END {for (k in w) {print k,e[k]/w[k]}}' $1

