# SHEso

SHell scripts of Esoteric value

## dist_between.sh
Find the distance between pairs of genomic elements on contigs. E.g. CRISPR arrays and Cas operons.
Two inputs are needed each containing the positions of the elements. E.g. first could contain position of CRISPR arrays, the other positions of Cas operons.
Both inputs should be whitespace-delimited with four columns: Contig, Element name, start, end. Start has to be lower than end.

More info is in the script.

```sh
./dist_between.sh File1 File2
```

## dist_nearest.sh
Find the nearest distance between pairs of genomic elements on contigs. E.g. CRISPR arrays and Cas operons.
Two inputs are needed each containing the positions of the elements. E.g. first could contain position of CRISPR arrays, the other positions of Cas operons.
Both inputs should be whitespace-delimited with four columns: Contig, Element name, start, end. Start has to be lower than end.

Unique elements in File1 is kept. For example, if File1 contains CRISPR arrays and File2 contains Cas operons, then the output contains the nearest Cas operon to each CRISPR array. Cas operons might therefore be duplicated.

More info is in the script

```sh
./dist_nearest.sh File1 File2
```

## wavg_by_group.sh
Weighted average by group. Input is a whitespace-delimted file with three columns: Grouping factor, value to average, weight. 
Output is the weighted average of the second column for each unique value in the first column

```sh
./wavg_by_group.sh File.tab
```
## mult2single.sh
Multiline fasta to single line fasta

```sh
./mult2single.sh File.fasta
```

## fastabyid.sh
Extract sequences from multi fasta with a list of IDs

```sh
./fastabyid.sh File.fasta IDs.txt
```

## split_multifasta.sh
Split a multi-fasta into single fasta files. Names will correspond to fasta headers with .fa extension

```sh
./split_multifasta.sh File.fasta
```
