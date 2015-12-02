#!/usr/bin/env bash

mkdir -p components
for l in $(ls bower_components/cryptojslib/components)
 do
   echo "<script src="../../cryptojslib/components/$l"></script>" > "components/${l/.js/.html}"
 done


while read name dependencies
do
    name=${name/:/}
    dependencies=${dependencies/[/}
    if [ "$name" ]
    then
        dependencies="${dependencies/]/},"

        echo $dependencies | while read -d, d
        do
          echo "<link rel=\"import\" href=\"components/$d.html\">"
        done > "$name.html"

        echo $dependencies | while read -d, d
        do
          echo "<link rel=\"import\" href=\"components/$d-min.html\">"
        done > "$name-min.html"

    fi
done < dependencies