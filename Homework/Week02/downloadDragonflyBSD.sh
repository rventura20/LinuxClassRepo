#!/bin/bash
# This script downloads dragonflyBSD as a .bzip2 file
# Then makes sure that the download didn't fail
# Then makes sure that the md5sum is correct
# Then decompress the .bzip2 file
# 


expectedMd5Sum=<todo> what is the expected md5sum from the website?</todo>
dragonflyBSDurl=<todo>what is the download link for the OS? </todo>

# download with wget

# check return code of wget. return error if wget had a problem

# report how many bytes are in the .bzip2 file

# decompress the bzip2 file

# report how many bytes are in the .img file you extracted.

# Then, do a numeric comparison on the sizes with an if statement
# and report which file type was larger.
echo "The XYZ file was larger than the ABC file."

