#!/usr/bin/env bash

#configuration
git config --global user.email "moghitkacimi@gmail.com"
git config --global user.name "kacimimoghite"
#using token clone gh-pages branch
  git clone --quiet --branch=doc https://${GH_TOKEN}@github.com/testHtmlGenerator.git  doc > /dev/null


  #add, commit and push files
  git add -f .
  git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to doc"
  git push -fq origin doc > /dev/null
  echo -e "Deploy completed\n"

  fi