#!/bin/bash
echo "Vamos a sincronizar snippets";
dir=$(PWD)
echo "directorio: " $dir 
# echo $LOCALAPPDATA
echo $OneDrive;
cd $OneDrive
cd ../AppData/Roaming/Code/User/snippets
ls
cp javascript.json $dir/javascript.json


