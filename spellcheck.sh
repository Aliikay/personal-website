#!/bin/sh

spellcheck_file(){
    # The file extension we are lookingg for with a markdown file is .md
    extension="$1"
    if [ $1 == "markdown" ]; then
        extension="md"
    fi

    echo "Spellchecking $2 with filter $extension"
    if [ -f "$2" ] && [[ $2 == *."$extension" ]]; then
        aspell check --mode="$1" "$2"
    else
        echo "      Skipped $2"
    fi
}
export -f spellcheck_file

# Spellcheck the README
spellcheck_file markdown README.md

# Run the spellcheck function on each file in the src/ directory recursivly
find src/ -exec /bin/sh -c 'spellcheck_file html "{}"' \;

echo "Finished"
