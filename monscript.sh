#!/usr/bin/env bash

#configuration
git config --global user.email "moghitkacimi@gmail.com"
git config --global user.name "kacimimoghite"

#git clone --quiet https://${GH_TOKEN}@github.com/${GH_REF}  master > /dev/null



 #add, commit and push files
 git add -f faq.html
 git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to master"
 #git push -fq origin master > /dev/null
 git push -f -q https://${GH_TOKEN}@${GH_REF} master > /dev/null
 #git push --force --quiet https://${GH_TOKEN}@github.com/${GH_REF} origin master > /dev/null 2>&1


 echo -e "Deploy completed\n"

 #fi
