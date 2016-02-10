#!/usr/bin/env bash

cp -R html $HOME/html
#configuration
cd $HOME
git config --global user.email "moghitkacimi@gmail.com"
git config --global user.name "kacimimoghite"
git config --global push.default simple

#clone branch gh-pages
#git clone --quiet https://${GH_TOKEN}@github.com/${GH_REF}  gh-pages > /dev/null
git clone --quiet https://${GH_TOKEN}@github.com/${GH_REF}  master > /dev/null

#cd gh-pages
cd master
cp $HOME/html/faq.html ./index.html
ls -al index.html


 #add, commit and push files
 git add -f .
 git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to gh-pages "
 #git push -fq origin master > /dev/null
 #git push -f -q https://${GH_TOKEN}@github.com/${GH_REF} origin gh-pages > /dev/null
 git push -f -q https://${GH_TOKEN}@github.com/${GH_REF} origin master > /dev/null



 echo -e "Deploy completed\n"

 #fi
