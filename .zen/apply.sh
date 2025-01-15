#!/bin/bash

profile_path="$HOME/.zen/ca5f2osk.Default (beta)"

if [ "$1" != "" ]; then
  profile_path="$(realpath $1)"
fi

mkdir -p "$1/chrome" 2> /dev/null

if [ -d "$1/chrome/assets" ]; then
  rm -r "$1/chrome/assets"
fi


cp -r "$(dirname $0)/assets" "$profile_path/chrome/"

sed -i "2s|.*|\$chrome: \"file://$profile_path/chrome\";|" userChrome.scss
sed -i "1s|.*|\$home: \"file://$HOME\";|" userChrome.scss

sass userChrome.scss "$profile_path/chrome/userChrome.css"
