#!/bin/sh
set -e

exec java $JVM_OPTS -jar /opt/factorhouse/lib/kpow.jar
