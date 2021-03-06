#!/bin/sh

SCRIPT="$0"

while [ -h "$SCRIPT" ] ; do
  ls=`ls -ld "$SCRIPT"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    SCRIPT="$link"
  else
    SCRIPT=`dirname "$SCRIPT"`/"$link"
  fi
done

if [ ! -d "${APP_DIR}" ]; then
  APP_DIR=`dirname "$SCRIPT"`/..
  APP_DIR=`cd "${APP_DIR}"; pwd`
fi

root=./modules/swagger-codegen-distribution/pom.xml

# gets version of swagger-codegen
version=$(sed '/<project>/,/<\/project>/d;/<version>/!d;s/ *<\/\?version> *//g' $root | sed -n '2p' | sed -e 's,.*<version>\([^<]*\)</version>.*,\1,g')

executable="./modules/swagger-codegen-distribution/target/swagger-codegen-distribution-$version.jar"

if [ ! -f "$executable" ]
then
  mvn clean package
fi

# if you've executed sbt assembly previously it will use that instead.
export JAVA_OPTS="${JAVA_OPTS} -XX:MaxPermSize=256M -Xmx1024M -DloggerPath=conf/log4j.properties"
#ags="$@ -i https://raw.githubusercontent.com/BYU-OIT/api-repo-sandbox/master/swagger20/apitutor1-v1/apitutor1-v1.swag20 -l objc -o /tmp/output -t modules/swagger-codegen/src/main/resources/objc/"
ags="$@ -i swagger20/students/students.slim.swag20 -l objc -o output/objc/ -t modules/swagger-codegen/src/main/resources/objc/"

java $JAVA_OPTS -jar $executable $ags
