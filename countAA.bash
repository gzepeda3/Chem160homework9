#!/bin/bash
if [ $# -ne 2 ]; then
echo "This script requires a protein file"
exit 1

fi
if [ ! -f $2 ]; then
echo "Cannot fine protein file"
exit 1

fi
for i in ALA ARG ASN ASP CYS GLU GLN GLY HIS ILE LEU LYS MET PHE PRO SER THR TRP TYR VAL
grep $1 $2 | awk '{print $2}'

