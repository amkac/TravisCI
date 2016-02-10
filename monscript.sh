#!/usr/bin/env bash

cp -R html $HOME/html
#configuration
cd $HOME
git config --global user.email "moghitkacimi@gmail.com"
git config --global user.name "kacimimoghite"
git config --global push.default simple

#clone branch gh-pages
git clone --quiet https://${GH_TOKEN}@github.com/${GH_REF}  gh-pages > /dev/null

cd gh-pages
cp $HOME/html/faq.html ./index.html


 #add, commit and push files
 git add -f .
 git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to master "
 #git push -fq origin master > /dev/null
 git push -f -q https://${GH_TOKEN}@github.com/${GH_REF} origin gh-pages > /dev/null
 #git push --force --quiet https://${GH_TOKEN}@github.com/${GH_REF} origin master > /dev/null 2>&1


 echo -e "Deploy completed\n"

 #fi
