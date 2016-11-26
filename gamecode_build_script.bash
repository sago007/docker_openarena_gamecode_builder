#! /bin/bash
set -e

cd /working

git clone https://github.com/OpenArena/gamecode.git
cd gamecode

VERSION_ID=$(git log -1 --date=short --format="openarena_gamecode_%cd_%H")
PKDIR=oax
MISSIONPACKDIR=oax_m
mkdir -p "/working/$PKDIR"
mkdir -p "/working/$MISSIONPACKDIR"

ZIPFILE="/data/${VERSION_ID}.zip"
ZIPFILE_M="/data/${VERSION_ID}_m.zip"

if [ -e "$ZIPFILE" ]
then
 echo "$ZIPFILE exist -> UP TO DATE"
 exit 1
fi

cd /working

git clone https://github.com/OpenArena/UI3.git

cd /working/gamecode

make
cd build/release-linux-x86_64/oax
zip -r /working/$PKDIR/oax.pk3 vm 
cd /extra2pk3
zip -r /working/$PKDIR/oax.pk3 *
cd /working
zip -r "$ZIPFILE" "$PKDIR"

cd /working/gamecode/build/release-linux-x86_64/missionpack
zip -r /working/$MISSIONPACKDIR/oax_m1.pk3 vm
cd /extra2pk3
zip -r /working/$MISSIONPACKDIR/oax_m1.pk3 *
cd /working/UI3
zip -r /working/$MISSIONPACKDIR/oax_m0.pk3 *
cd /working
zip -r "$ZIPFILE_M" "$MISSIONPACKDIR"


