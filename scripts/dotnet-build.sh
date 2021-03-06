#!/bin/bash
MYGET_ENV=""
case "$TRAVIS_BRANCH" in
  "develop")
    MYGET_ENV="-dev"
    ;;
esac

dotnet build -c Release --no-cache --source https://www.myget.org/F/dnc-dshop$MYGET_ENV/api/v3/index.json --source https://api.nuget.org/v3/index.json