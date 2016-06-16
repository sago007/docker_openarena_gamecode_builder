#! /bin/bash
set -e

cd /working

git clone https://github.com/OpenArena/gamecode.git
cd gamecode

VERSION_ID=$(git log -1 --date=short --format="openarena_gamecode_%cd_%H")
PKDIR=oax
MISSIONPACKDIR=missionpack
mkdir -p "/working/$PKDIR"
mkdir -p "/working/$MISSIONPACKDIR"

ZIPFILE="/data/${VERSION_ID}.zip"
ZIPFILE_M="/data/${VERSION_ID}_missionpack.zip"

if [ -e "$ZIPFILE" ]
then
 echo "$ZIPFILE exist -> UP TO DATE"
 exit 1
fi

make
cd build/release-linux-x86_64/oax
zip -r /working/$PKDIR/oax.pk3 vm 
cd /working
zip -r "$ZIPFILE" "$PKDIR"

cd /working/gamecode/build/release-linux-x86_64/missionpack
zip -r /working/$MISSIONPACKDIR/oax_m.pk3 vm
cd /working
zip -r "$ZIPFILE_M" "$MISSIONPACKDIR"


