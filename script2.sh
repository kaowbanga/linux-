#!/bin/bash
read nu
cat > script2.txt << eof
12
34
$nu
56
$(( nu-3 ))
$(( nu*2 ))
eof

awk '{sum+=$1;count+=1} END {print "averge="sum/count}' script2.txt
exit 0
