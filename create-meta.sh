rm /Users/joshgubler/Documents/work/iOS/ios-byusuite/byuSuite/Apps/My\ Map/client/*
rm -r output/*
./run-docker.sh bin/objc-meta.sh
cp output/objc/client/* /Users/joshgubler/Documents/work/iOS/ios-byusuite/byuSuite/Apps/My\ Map/client/

