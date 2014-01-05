#!/bin/bash

#
# Run this script from its directory.
#
# TODO: modify script to write correct symlink paths no matter where the
# Git Ninja Toolkit directory is cloned to.
#
# Tried this, but wasn't quite what I was looking for...
#
#   Get the full path for this script,
#   http://stackoverflow.com/a/59916/456814:
#
#   DIR=`ruby -e "puts File.expand_path(File.dirname(__FILE__))"`
#   echo $DIR
#

dir=`pwd`
command=( "ln -s $dir/.bash_profile ~/.bash_profile" "ln -s $dir/.vimrc ~/.vimrc" "ln -s $dir/.gitconfig ~/.gitconfig" )

for cmd in "{$command[@]}"; do
    echo $cmd
done

echo "Finished!"

