#!/bin/sh -l

echo "Scanning project: $1"
bandit --version
report=$(bandit -r $1)
echo "::set-output name=report::$report"
