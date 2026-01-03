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

cd ..

# Spellcheck the README
spellcheck_file markdown README.md

# Run the spellcheck function on each html file in the src/ directory recursivly
find src/ -exec /bin/sh -c 'spellcheck_file html "{}"' \;

# Run the spellcheck function again on each markdown file in the src/ directory recursivly
find src/ -exec /bin/sh -c 'spellcheck_file markdown "{}"' \;

echo "Finished"
