#!/bin/sh

#Altere as variáveis abaixo de acordo com a sua necessidade
#na variável repositório, prefira a url do repositório baseada em https para nao termos que configurar SSH
export name='William Silva Esquilino'
export email="williamsilvaesquilino@gmail.com"
export repositorio="https://github.com/WilliamSilvaGh/E-COMMERCE-HASHTAG.git";

#Daqui pra baixo mexa somente se for realmente necessário ou se souber o que está fazendo :P

export branch_name="E-Commerce"

#add linux, mac and windows folders to gitignore
echo "" >> .gitignore
echo "#ignoring windows, mac and linux folders" >> .gitignore
echo "windows" >> .gitignore
echo "mac" >> .gitignore
echo "linux" >> .gitignore

git init
git remote add origin $repositorio
git checkout -b $branch_name

git config --global user.name $name
git config --global user.email $email

git add .gitignore
git commit -m "added ignored files" .gitignore

git add .

git commit -am "Projeto de E-Commerce feito com Html, TailwindCSS, Javascript e Node.js"

git push origin $branch_name