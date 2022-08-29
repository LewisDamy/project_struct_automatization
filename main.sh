#!/bin/zsh

py_proj() {
    echo "Creating mylib dir ..."
    mkdir mylib
    cd mylib
    # if [ -f "$mylib" ]
    # then
    touch __init__.py ; touch logic.py
    # else
    #     return 1
    # fi
    cd ..
    echo "Creating files ..."
    touch Dockerfile ; touch Makefile
    touch main.py
    touch requirements.txt ; touch README.md
    echo "Initializing git ..."
    git init
    if [ -d .git ];
    then
        echo "git init with success"
    else
        return 1
    fi
    # open .
    # code .  
}

py_django_proj() {

    if [ $projectName = "django" ];
    then 
        echo "${projectName} cannot be used as a project name"
        exit 1
    fi

    echo "Creating venv ..."
    python -m venv .venv
    source .venv/bin/activate



    
    pip install --upgrade pip ; pip install django
    django-admin startproject $projectName

    cd $projectName
    echo "Creating files ..."
    touch Dockerfile
    touch requirements.txt ; touch README.md
    touch Makefile
    echo '''
    install:
        pip install --upgrade pip &&\
        pip install -r requirements.txt
    freeze:
        pip freeze > requirements.txt
    format:
        black *.py
    lint:
        pylint --disable=R,C *.py
    test:
        #test
    build:
        #build
    run:
        python manage.py runserver
    deploy:
        #deploy
    all:
        install lint test deploy
    ''' > Makefile

    echo "Initializing git ..."
    git init
    if [ -d .git ];
    then
        echo "git init with success"
    else
        return 1
    fi

    # open .
    code .
    # pycharm .
    python manage.py runserver
}

c_proj() {
    
}

main() {

    # chmod +x main.sh

    # getting user input
    printf "Enter the name of Project directory: "
    read projectName

    # making directory of project's name 
    echo "Creating ${projectName} ..."
    mkdir $projectName
    # mkdir /Users/lewdamy/my-projects/$projectName  WHEN DEPLOYED!


    # receive type of proj input
    printf "Type of the project: "
    read projType

    # py OK
    # py-django OK
    # c 
    # py-fastapi
    # js-react
    # js-react-native

    # get inside the dir of the project
    cd $projectName
    # cd /Users/lewdamy/my-projects/$projectName

    # conditional statement to each format of project template
    if [ "$projType" = "py" ]
    then
        # call function to create py_proj type
        py_proj
    elif [ "$projType" = "py-django" ]
    then
        py_django_proj
    elif [ "$projType" = "c" ]
    then
        c_proj
    else
        echo "command not valid"
        exit 1
    fi
}

main