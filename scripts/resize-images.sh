#!/bin/sh

cd ..
pwd

export THUMBNAIL_DIRECTORY="src/static/thumbs"
export BASE_IMAGES="$THUMBNAIL_DIRECTORY/fullres"

resolutions=(128 512)

make_image_folder_if_missing(){
    if [ ! -d "$1" ]; then
      echo "Creating folder $1"
      mkdir "$1"
    fi
}

resize_image(){
    filename=$(basename "$1")
    no_extension_filename=$(echo "$filename" | cut -f 1 -d '.')
    command="magick ${1} -resize ${2} $THUMBNAIL_DIRECTORY/${2}/$no_extension_filename".jpg
    echo "$command"
    /bin/sh -c "$command"
}
export -f resize_image

# Iterate over all desired resolutions and resize the images into that resolution
for resolution in "${resolutions[@]}"
do
    # Store the number as a string resolution (i.e 128 -> "128x128")
    resolution_string="$resolution"x"$resolution"

    # Makes the folder to store resized images, if it doesnt exist
    make_image_folder_if_missing "$THUMBNAIL_DIRECTORY"/"$resolution_string"

    # Loop through all base images and resize them
    for filename in "$BASE_IMAGES"/*; do
        echo "$filename"
        resize_image "$filename" "$resolution_string"
    done
done
