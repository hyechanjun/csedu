#!/bin/bash
# Simple bash script for generating the file structure for a new assignment.

prefix="assignments/$1"

# Create the directory structure:

mkdir $prefix
mkdir "$prefix/exemplars"
mkdir "$prefix/files"

# Create symbolic links to the `includes` and `graphics` folders:
ln -rs templates/includes "$prefix/includes"
ln -rs templates/graphics "$prefix/graphics"

# Create a copy of the template.tex file with the assignment name:
cp templates/assignment_template.tex "$prefix/assignment_$1.tex"
