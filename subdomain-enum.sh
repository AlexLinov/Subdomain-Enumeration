#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Please provide a URL"
	exit 1
fi

arg=$1

cat sources.txt | while read source; do theHarvester -d "$1" -b $source -f "${source}_$1";done
