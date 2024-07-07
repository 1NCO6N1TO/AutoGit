# AutoGit Script
Elaborado por Luis Pacheco AKA INCO6N1TO
Este script de shell, `AutoGit.sh`, automatiza el proceso de hacer commits y push a un repositorio de Git.
Es útil para agilizar el trabajo con Git, especialmente en proyectos donde se realizan cambios frecuentes.

## Características

- Verifica si existe la carpeta `.git` para asegurarse de que se está ejecutando dentro de un repositorio de Git.
- Permite al usuario agregar todos los archivos modificados al commit o seleccionar archivos específicos.
- Solicita al usuario un mensaje de commit. Si el mensaje está vacío, el script termina con un error.
- Realiza el commit con el mensaje proporcionado.
- Pide al usuario el nombre de la rama a la que desea subir los cambios y realiza el push a dicha rama.

## Uso

Para usar este script, sigue estos pasos:

1. Asegúrate de tener permisos de ejecución sobre el script. Si no es así, puedes otorgarlos con el comando:

```bash
chmod +x AutoGit.sh
```
el escript lo puedes colocar en el directorio `/usr/loca/bin` para accerder al script desde cualquier parte del sistema.

2. Ejecuta el script desde el terminal en la raíz de tu repositorio de Git:

```bash
./AutoGit.sh
```

3. Sigue las instrucciones en pantalla para agregar archivos al commit, ingresar un mensaje de commit y seleccionar la rama a la que deseas hacer push.

## Requisitos

- Git debe estar instalado en tu sistema.
- Debes tener permisos de escritura en el repositorio de Git donde se ejecuta el script.

## Notas

- Este script está diseñado para ser simple y directo, ideal para flujos de trabajo rápidos y eficientes.
- Asegúrate de entender los cambios que estás agregando al commit y a qué rama estás haciendo push para evitar conflictos en el repositorio.

## Licencia

Este script es de dominio público. Siéntete libre de modificarlo y compartirlo según tus necesidades.

