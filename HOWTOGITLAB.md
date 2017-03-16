t global setup

git config --global user.name "Pablo Prieto"
git config --global user.email "pprieto.hisix2@gmail.com"

Create a new repository

git clone git@gitlab.com:pprieto.hisix2/my-awesome-project.git
cd my-awesome-project
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master

Existing folder

cd existing_folder
git init
git remote add origin git@gitlab.com:pprieto.hisix2/my-awesome-project.git
git add .
git commit
git push -u origin master

Existing Git repository

cd existing_repo
git remote add origin git@gitlab.com:pprieto.hisix2/my-awesome-project.git
git push -u origin --all
git push -u origin --tags

