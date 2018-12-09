#! /bin/bash
set -e

cd /working

git clone https://github.com/OpenArena/gamecode.git
git clone https://github.com/OpenArena/UI3.git
cd gamecode

VERSION_ID=$(git log -1 --date=short --format="openarena_gamecode_%cd_%h")
PKDIR=oax
MISSIONPACKDIR=oax_m
mkdir -p "/working/$PKDIR"
mkdir -p "/working/$MISSIONPACKDIR"
cd /working/UI3
VERSION_ID_M="${VERSION_ID}$(git log -1 --date=short --format="_UI3_%cd_%h")"

ZIPFILE="/data/${VERSION_ID}.zip"
ZIPFILE_M="/data/${VERSION_ID_M}_m.zip"

if [ -e "$ZIPFILE_M" ]
then
 echo "$ZIPFILE_M exist -> UP TO DATE"
 exit 1
fi

cd /working/gamecode

make

if [ ! -e "$ZIPFILE" ]
then
      cd build/release-linux-x86_64/oax
      zip -r /working/$PKDIR/oax.pk3 vm
      cd /extra2pk3
      zip -r /working/$PKDIR/oax.pk3 *
      cd /working
      zip -r "$ZIPFILE" "$PKDIR"
fi

if [ ! -e "$ZIPFILE_M" ]
then
      cd /working/gamecode/build/release-linux-x86_64/missionpack
      zip -r /working/$MISSIONPACKDIR/oax_m1.pk3 vm
      cd /working/UI3
      zip -r /working/$MISSIONPACKDIR/oax_m0.pk3 *
      cd /working
      zip -r "$ZIPFILE_M" "$MISSIONPACKDIR"
fi
