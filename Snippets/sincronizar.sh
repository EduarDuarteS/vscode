#!/bin/bash

# Funcion para subir cambios a github
pushGH() {
    mensaje="git commit -m \"""act snippets "$(date +'%d-%m-%Y %H:%M:%S')"\""
    git pull o master
    sleep 1
    git add javascript.json
    echo $mensaje
    $mensaje
    #git commit -m 'actualiza snippets'
    git push o master
}

echo "Vamos a sincronizar snippets"
dir=$(PWD)
echo "directorio: " $dir
# echo $LOCALAPPDATA
echo $OneDrive
cd $OneDrive
cd ../AppData/Roaming/Code/User/snippets
ls
cp javascript.json $dir/javascript.json

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
