#!/bin/bash

git reset empty-readme
for i in "$@"; do
	echo $i
done > README
git commit -m"New readme" README
