#!/bin/bash
$hlp
$x #nom du projet
$y #type de license
$r #type de projet
$z #nom du projet license
$a #nom de projet type
$t #variable test
t=0
read -p "donner le nom de proget : " x 
if [ -z $x ] 
then 
echo "expected arguments plz check the help : initdev -help"
else
mkdir $x
cd $x 
touch main 
touch license
touch makefile
t=1
fi

if [ "$t" == "1" ]
then
#type de license
read -p "give me the project license type : " y
if [ "$y" == "GPL" ]
then
read -p "nom de projet license: " z
if [ -n $z ] 
then 
mkdir $z
cd $z
touch main
touch Makefile
fi

elif [ "$y" == "MIT" ]
then
read -p "nom de projet license: " z
if [ -z $n ] 
then 
mkdir $z
cd $z
touch main
touch Makefile
fi
else
echo "unknown arguments,plz check the help : inidev -help"
t=0
fi

cd ..

if [ "$t" == "1" ]
then
#type of projet
read -p "give me the project type ; " r
#for type c
if [ "$r" == "c" ]
then
read -p "nom de projet type : " a
if [ -n $a ] 
then 
mkdir $a
cd $a
touch main
touch LICENSE 
touch Makefile
fi

#for type cpp
elif [ "$r" == "cpp" ]
then
read -p "nom de projet type: " a
if [ -n $a ] 
then 
mkdir $a
cd $a
touch main
touch LICENSE 
touch Makefile
fi

#for type python
elif [ "$r" == "py" ]
then
read -p "nom de projet type: " a
if [ -n $a ] 
then 
mkdir $a
cd $a
touch main
touch LICENSE 
touch Makefile
fi

#for type latex
elif [ "$r" == "latex" ]
then
read -p "nom de projet type: " a
if [ -n $a ] 
then 
mkdir $a
cd $a
touch main
touch LICENSE 
touch Makefile
fi

#for type beamer
elif [ "$r" == "beamer" ]
then
read -p "nom de projet type: " a
if [ -n $a ] 
then 
mkdir $a
cd $a
touch main
touch LICENSE 
touch Makefile
fi

else
echo "uknown arguments plz check the the help : initdev -help"
fi
fi
fi

