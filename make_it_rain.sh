#!/bin/bash
IFS=$'\n'
for ext in c h cc hh cpp hpp py rb sh cs js
do
	for file in $(find / -name *.$ext)
	do
		sed -i 's/\t/    /g' "$file"
	done
done