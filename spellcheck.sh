#!/bin/sh

# Loop over all files
for file in src/*; do
    echo "Spellchecking $file"
    if [ -f "$file" ] && [[ $file == *.html ]]; then
        aspell check --mode=html "$file"
    else
        echo "      Skipped $file"
    fi
done

echo "Finished"
