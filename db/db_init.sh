#!/bin/bash

for f in /tmp/data/*.csv;
do
    mongoimport -d lappis -c metabase-lappis --type csv --file $f --headerline;
done
