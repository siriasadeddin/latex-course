#
# Copy the slides and the exercise files referenced from the slides from the
# master branch to the gh-pages branch to make them accessible at
# http://jdleesmiller.github.io/latex-course/...
#

if ! git diff-index --quiet HEAD --; then
  echo "local changes -- please commit all local changes and untracked files"
  exit
fi

# build / bundle files that we need to put on the website
cd es
make latex-course.tgz
cd ..

# stage the website in the deploy directory
rm -rf deploy
mkdir deploy
cd deploy

mkdir es
cd es
mv ../../es/latex-course.tgz .
tar xzf latex-course.tgz
rm latex-course.tgz
cd ..

echo '<html><head><title>latex-course</title></head><body><a href="https://github.com/guanucoluis/latex-course">Por favor, vea el repositorio.</a></body></html>' > index.html

cd ..

# destroy current content of the gh-pages branch
git checkout gh-pages
git rm -rf .
rm -rf es
mv deploy/* .
rmdir deploy
git add .
git commit -am "deploy-to-gh-pages"
git push origin --all
