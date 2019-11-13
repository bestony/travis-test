#!/bin/bash

echo "Ready Package Examples"
mkdir packages
for dir in $(ls -d */ | sed 's#/##'); do

    cd $dir;
    echo "go To $dir"
    for dir2 in $(ls -d */ | sed 's#/##'); do
        echo "package $dir/$dir2"
        zip -r "../packages/$dir2.zip" $dir2
    done
    echo "go To Parent Directory"
    cd ..

done
