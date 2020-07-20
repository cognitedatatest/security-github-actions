#!/bin/sh -l

echo "Scanning project: $1"
bandit --version
REPORT=$(bandit -r $1)
OUTPUT="${REPORT//'%'/'%25'}"
OUTPUT="${REPORT//$'\n'/'%0A'}"
OUTPUT="${REPORT//$'\r'/'%0D'}"
echo "::set-output name=report::$REPORT"
