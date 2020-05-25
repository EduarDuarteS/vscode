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

if [$1 = "y"]
then
echo "entro al if"
fi


