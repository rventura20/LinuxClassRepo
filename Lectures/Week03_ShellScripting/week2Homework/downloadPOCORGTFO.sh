#!/bin/bash
#
# This script downloads a pdf file with wget.
# Then makes sure that the download was successful
# Then verifies the integrity of the pdf with an md5sum
# Renames the pdf to a .zip
# unzips the zip
# Verifies the success of the unzipping
# Then counts the number of words in a text file inside.
# Then reports back the number of words found.
#
# You need to fill in the blanks I've left.

#
# Note: The pdf can be found here:
#	https://www.alchemistowl.org/pocorgtfo/pocorgtfo06.pdf
# The expected md5sum can be found here:
#	https://www.alchemistowl.org/pocorgtfo/

expectedMd5Sum=02222f78842741c8b74237abe72f4015
#expectedMd5Sum=<todo> what is the expected md5sum for issue 6?</todo>
pdfURL=https://www.alchemistowl.org/pocorgtfo/pocorgtfo06.pdf
#pdfURL=<todo>what is the download link for the pdf? </todo>
pdfName="pocorgtfo06.pdf"
zipName=master.zip
fileNameForUsing_wc="ftdi.txt"

#wget $pdfURL
cp backup/pocorgtfo06.pdf .
# TODO verify the return value of wget equals the number 0
#if [ <todo> How do you verify the return value of wget is 0? </todo> ]
if [ $? -ne 0 ]
then
    echo "Error downloading file"
    exit 1;
fi

# TODO cut out the md5sum number from the output of the md5sum command.
# There are 32 characters in an md5sum, so cut out that many
#computedSum=$(md5sum $pdfName | cut <todo> cut out the md5sum characters </todo> )
computedSum=$(md5sum $pdfName | cut -c1-32 )

# TODO verify that $computedSum equals $expectedMd5Sum
#if [ <todo> compare the expected and computed md5 sums </todo> ]
if [ $computedSum != $expectedMd5Sum ]
then
    echo "Bad md5sum found"
    exit 1;
fi

# TODO RENAME $pdfName TO $zipName
#<todo> rename $pdfName to $zipName </todo>
mv $pdfName $zipName

unzip $zipName
unzipRetVal=$?
echo $unzipRetVal
# In this case return code 1 is okay. Read here:
# https://stackoverflow.com/questions/46705234/unzip-is-returning-exit-code-1-even-if-the-extraction-was-successful
if [ $unzipRetVal != 0 ] && [ $unzipRetVal != 1 ]
then
    echo "Unable to unzip - got val $unzipRetVal"
    exit 1;
fi
rm $zipName

# TODO use cat, a pipe and wc to count the number of words in $fileNameForUsing_wc
#wordCount=$( <todo> How many words are there in $fileNameForUsing_wc ?</todo>)
wordCount=$( cat $fileNameForUsing_wc | wc -w )
echo "Found $wordCount many words. Expected amount is 189."
