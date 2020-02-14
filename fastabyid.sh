#!/bin/bash

# Extract sequences from multi fasta with a list of IDs
# First file Fasta file
# Second file list of IDs

perl -ne 'if(/^>(\S+)/){$c=$i{$1}}$c?print:chomp;$i{$_}=1 if @ARGV' $2 $1
