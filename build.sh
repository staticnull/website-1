#!/bin/bash -x 
./gradlew test
[ "$TRAVIS_BRANCH" = "master" ] && ./gradlew deployProd
