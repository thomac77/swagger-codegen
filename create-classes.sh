rm /Users/joshgubler/Documents/work/iOS/ios-byusuite/byuSuite/Apps/My\ Map/client/classes/*
rm -r output/*
./run-docker.sh bin/objc-classes.sh
./updatePrefix.sh Classes
cp output/objc/client/* /Users/joshgubler/Documents/work/iOS/ios-byusuite/byuSuite/Apps/My\ Map/client/classes/

