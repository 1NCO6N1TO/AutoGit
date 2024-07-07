#!/bin/bash
#Elaborado por Luis Pacheco AKA INCO6N1TO 

if [ ! -d '.git' ]; then
    echo "La carpeta .git no existe."
    exit 1
fi
 
if ! git diff --exit-code --quiet && git diff --cached --exit-code --quiet; then
    while true; do
        echo "desea agregar todo los archivos al commit? (s/n)"
        read respuesta 
        if [[ $respuesta == "s" ]]; then
            git add .
            echo "tods los archivos han sido agregados al commit."
            break
        elif [[ $respuesta == "n" ]]; then
            git status
            read -p "Ingrese los nombres de los archivos que desea agregar al commit (separados por espacios): " archivos
            for archivo in $archivos; do
                if [ -f $archivo ]; then
                    git add $archivo
                    echo "El archivo $archivo ha sido agregado al commit."
                else
                    echo "El archivo $archivo no existe."
                fi
            done
            break
        else
            echo "Respuesta incorrecta."
        fi
    done

    read -p "Ingrese el mensaje del commit: " mensaje
    if [ -z "$mensaje" ]; then
        echo "El mensaje del commit no puede estar vacío."
        exit 1
    fi
    
    git commit -m "$mensaje"
    echo "El commit ha sido realizado."

    echo "ingre el nombre de la rama a la que desea subir los cambios: "
    read rama
    git push origin $rama

fi