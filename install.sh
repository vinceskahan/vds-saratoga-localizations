#!/bin/bash
#
# this is just awful



# failsafe to not patching anything
DRYRUN="--dry-run"

# uncomment to do it for real
# DRYRUN="" 

WEBDIR=/var/www/saratoga
PATCHDIR=`pwd`
for f in `ls -1 *patch`
do
  cat $f | patch -d ${WEBDIR}  ${DRYRUN}   #--- comment out last word to run for real
done

cd -
