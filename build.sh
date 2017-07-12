#!/bin/bash -x 
./gradlew test
if [ "$TRAVIS_PULL_REQUEST" = "false" ] ; then
  ./gradlew deployProd
else
  echo "Skipping deploy..."
fi
