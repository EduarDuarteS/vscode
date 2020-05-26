#!/bin/bash

# Funcion para subir cambios a github

pushGH() {
    mensaje="act snippets "$(date +'%d-%m-%Y %H:%M:%S')
    git pull o master
    sleep 1
    git add javascript.json
    echo "$mensaje"
    #"$mensaje"
    git commit --message="$mensaje"
    git push o master
}
pullGH() {
    git pull o master
    sleep 1
    #"$mensaje"
}
pullGH

# Cambia al directorio de snippets de visual studio Code
dir=$(PWD)
echo "directorio: " $dir
echo $OneDrive
cd $OneDrive
cd ../AppData/Roaming/Code/User/snippets

if [ $1 != pull ]; then
    echo "Vamos a sincronizar snippets"
    cp javascript.json $dir/javascript.json
    ls
fi

if [ $1 = "y" ]; then
    echo "se van a subir los cambios al repositorio"
    cd $dir
    pushGH

fi

if [ $1 = 'p' ]; then
    echo "Desea versionar en github, y - n"
    read versionar
    if [ $1 = 'y' ]; then
        echo "se van a subir los cambios al repositorio"
        cd $dir
        pushGH
    fi
fi

if [ $1 = 'pull' ]; then
    cp $dir/javascript.json javascript.json
fi
