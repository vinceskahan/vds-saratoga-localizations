#!/bin/bash
#
# this is just awful



# failsafe to not patching anything
DRYRUN="--dry-run"

# uncomment to do it for real
# DRYRUN="" 

WEBDIR=/home/weewx/public_html/saratoga
PATCHDIR=`pwd`
for f in `ls -1 *patch`
do
  patch -d ${WEBDIR} "${DRYRUN}" < $f
done

cd -
