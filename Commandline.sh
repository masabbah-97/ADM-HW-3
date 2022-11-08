#!/bin/bash

awk -F'\t' 'NR>1 {n=split($9,a,","); count[a[n]]++ ; visitors[a[n]]+=$4; want[a[n]]+=$5} END{for (i in count) print i "\t" count[i] "\t" visitors[i]/count[i] "\t" want[i];}' places3.csv > counts.txt
awk -F"\t" 'BEGIN{print "country","numbr_places","avg_visitors","pot_visitors"} {if ($1=="United States" || $1=="Italy" || $1=="Spain" || $1=="United Kingdom" || $1=="France") print $1,$2,$3,$4}' counts.txt
