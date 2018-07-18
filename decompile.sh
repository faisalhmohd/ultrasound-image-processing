#!/bin/bash

FOLDERS=(
    "group1/group1"
    # "group2/group2"
    # "group3/group3"
    # "group4/group4"
)

cd ..

for folder in  "${FOLDERS[@]}"
do
    echo "$PWD/$folder"
    cd "$PWD/$folder"
    for d in */; 
    do
        echo "$d"
        cd "$d"
        for d in */; 
        do
            echo "$d"
            if [ "$d" != "tags/" ]; then
                cd "$d"
            else
                continue
            fi
            for d in */; 
            do
                echo "$d/2d/"
                cd "$d/2d/"
                for i in *.mnc;
                do
                    echo "$i"
                    mnc2nii $i -dual
                done
                cd ../../
            done
            cd ..
        done
        cd ..
    done
done