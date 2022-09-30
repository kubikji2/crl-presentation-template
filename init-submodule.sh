#!/bin/bash

# This script is used to initialize the template

# "one-liner which will give you the full directory name of the script no matter where it is being called from."
# based on: https://stackoverflow.com/questions/59895/how-do-i-get-the-directory-where-a-bash-script-is-located-from-within-the-script
script_dirpath=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# path to directory where the new files are placed
target_path=$script_dirpath"/../"
# get the name of the file where this script is located
# '-> based on: https://www.cyberciti.biz/faq/bash-get-basename-of-filename-or-directory-name/
submodule_dirname=${script_dirpath##*/}
# name of the main style file
style_filename="beamerthemeCTUstyle.sty"
# filename where all paths are defined
path_filename="ctu-paths.tex"

# copy the main style file into the parent directory
cp $script_dirpath"/"$style_filename $target_path$style_filename
# remove '{' in the main style file
# '-> based on: https://www.cyberciti.biz/faq/how-to-use-sed-to-find-and-replace-text-in-files-in-linux-unix-shell/
sed -i 's/{//g' $target_path$style_filename
# replace 'use' by 'input{beamer' in the main style file
sed -i 's/use/input{beamer/g' $target_path$style_filename
# replace '}' by '.sty}' in the main style file
sed -i 's/}/.sty}/g' $target_path$style_filename
# add submodule dirname before 'beamer' in the main style file to fix it
sed -i "s/beamer/$submodule_dirname\/beamer/g" $target_path$style_filename

# copy the path tex file into the parent directory
cp $script_dirpath"/"$path_filename $target_path$path_filename
# replace the '.' by the submodue dirname to make it work
sed -i "s/\./$submodule_dirname/g" $target_path$path_filename

