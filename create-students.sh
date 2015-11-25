rm /Users/joshgubler/Documents/work/iOS/ios-byusuite/byuSuite/Apps/My\ Map/client/students/*
rm -r output/*
./run-docker.sh bin/objc-students.sh
./updatePrefix.sh Students
cp output/objc/client/* /Users/joshgubler/Documents/work/iOS/ios-byusuite/byuSuite/Apps/My\ Map/client/students/

