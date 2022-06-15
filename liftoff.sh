#!/bin/bash

# Availible Resolutions
echo "
Widescreen 16:9
-------------------
- 6400x3600
- 5120x2880
- 4096x2304
- 3840x2160
- 3200x1800
- 2880x1620
- 2560x1440
- 1920x1080

Widescreen 16:10
-------------------
- 6400x4000
- 5120x3200
- 3840x2400
- 3360x2100
- 2880x1800
- 2560x1600
- 2304x1440
- 2048x1280
- 1920x1200

Ultrawide 21:9
-------------------
- 3840x1600
- 3440x1440
- 2560x1080
"

read -p "~ Select Resolution: " resolution

SUB='x'
if [[ "$resolution" == *"$SUB"* ]]; then
    echo "$resolution Selected"
    resolution_size="$resolution"
else
    echo "Please select a valid resolution next time."
    exit
fi

# Search Pages
read -p "~ Pages to Search: " page_number

if [ -z "$page_number" ]; then
    echo "Oops! Please enter a page number next time."
    exit
fi

if (("$page_number" > "300")); then
    echo "It would be wise to search below 300 pages."
    exit
fi

echo "~ New images will be saved to $resolution_size/"

echo "~ Bees deployed! Search and Download in progress"
for page in $(seq 1 $page_number); do
    curl -s -A "Mozilla" https://interfacelift.com/wallpaper/downloads/date/any/$resolution_size/index$page.html | grep -Po '(?<=href=")[^"].*'$resolution_size'.jpg' | sed -e 's/^/https:\/\/interfacelift.com/' | xargs wget --user-agent=Mozilla -nv -nc --show-progress -P ./$resolution_size/
done

# Cleaning junk images
find ./$resolution_size/ -type f -iname "*.jp*g" -size -50k -exec rm {} \;

echo "~ All Done!"

echo "~ $resolution_size/ now contains $(ls -1 ./$resolution_size/ | wc -l) images"
