#!/bin/bash

echo "[1] 1920x1080"
echo "[2] 2560x1440"
echo "[3] 3840x2160"

read -p "Select wallpaper resolution: " resolution

if [ -z "$resolution" ]
then
    echo "Oops! Please select a resolution next time."
    exit
fi

# Options
if [ $resolution = 1 ]
    then
    resolution_size="1920x1080"

    elif [ $resolution = 2 ] 
    then
    resolution_size="2560x1440"

    elif [ $resolution = 3 ] 
    then
    resolution_size="3840x2160"

    else
    echo "Oops! Please select a valid resolution."
    exit
fi

# Search Pages
read -p "Pages to Search: " page_number

if [ -z "$page_number" ]
then
    echo "Oops! Please enter a page number next time."
    exit
fi

if (("$page_number" > "300"))
then
echo "It would be wise to search below 300 pages."
exit
fi

echo "~ New images will be saved to $resolution_size/"

echo "~ Bees deployed! Search and Download in progress"
for page in $(seq 1 $page_number);
do
    curl -s -A "Mozilla" https://interfacelift.com/wallpaper/downloads/date/any/$resolution_size/index$page.html | grep -Po '(?<=href=")[^"].*'$resolution_size'.jpg' | sed -e 's/^/https:\/\/interfacelift.com/' | xargs wget --user-agent=Mozilla -nv -nc --show-progress -P ./$resolution_size/
done

# Cleaning junk images
find ./$resolution_size/ -type f -iname "*.jp*g" -size -50k -exec rm {} \;

echo "~ All Done!"

echo "~ $resolution_size/ now contains $(ls -1 ./$resolution_size/ | wc -l) images"
