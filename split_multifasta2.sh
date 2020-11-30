#!/bin/bash

awk -v var="$2" -v name="$3" 'BEGIN {n=0;} /^>/ {if(n%var==0){f=sprintf(name"%d.fna",n);} print >> f; n++; next;} { print >> f; }' $1
