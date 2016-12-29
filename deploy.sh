#!/bin/bash

set -e

./gradlew clean test assemble

eb deploy

echo "GR8CONF US Deploy Finished"
