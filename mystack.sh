#!/bin/bash

#Funcion para iniciar proyectos de vite
vite_projects() {
npm init vite@latest
}
#Proyecto para iniciar proyectos astro
astro_projects() {
npm create astro@latest
}
menu() {
echo "1.Vite"
echo "2.Astro"
echo "3.Salir"
}

main() {
    while true; do
       menu
        read -p "Iniciar Proyecto: " project

    case $project in
        1)
             vite_projects
             ;;
        2) 
            astro_projects
            ;;
        3)
            echo "Cerrando"
            exit 0 
            ;;
        *)
            echo "Seleccione una opcion"
            ;;
        esac
    done
}

main