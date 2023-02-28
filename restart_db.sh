#!/bin/bash

set -x
find -name *.g.dart -exec rm {} +;
flutter clean
set +x

echo "Press any key after uninstalling the app from device."
while [ true ] ; do
read -t 10 -n 1
if [ $? = 0 ] ; then
break ;
else
echo "Waiting for a keypress."
fi
done

set -x
flutter pub get;
flutter pub run build_runner build;
set +x

echo "Done."
