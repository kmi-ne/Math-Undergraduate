#!/bin/bash
cd src

for dir in */; do
    cd "$dir"
    latexmk -norc -r .latexmkrc -lualatex main
    cd ..
done

# To execute,
# $ .\build_all.sh
