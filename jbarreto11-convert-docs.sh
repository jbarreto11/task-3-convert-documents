#!/bin/bash

echo "What is the name of the file?"
read file
# Declare input argument as a variable
echo $file
# Convert markdown to HTML
pandoc -o $file.html $file.md
# Convert markdown to DOCX
pandoc -o $file.docx $file.md
# Convert markdown to ODT
pandoc -o $file.odt $file.md
# Convert markdown to PDF
pandoc -o $file.pdf $file.md
# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Converted $file to HTML, DOCX, ODT, PDF"