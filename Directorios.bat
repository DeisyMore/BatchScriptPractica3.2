@echo off
REM Las prácticas tienen primero las instrucciones y luego el desarrollo
echo Bienvenido al Script Creación de directorios con Bat. 
pause
echo Primero se creará un directorio contenedor llamado CrearDir y en él las 4 prácticas 2.2.1, 2.2.2, 2.2.3, 2.2.4. 
pause
echo Práctica 2.2.1. 
echo 1. Crear estructura de carpetas:
pause
MD DirBat
CD DirBat
MD APLI PROG VARIOS
CD APLI 
MD WORD ACCESS EXCEL
CD WORD
MD TEXTOS NOTAS
CD C:\CrearDir\DirBat\PROG
MD BASIC PASCAL FORTRAN
CD C:\CrearDir\DirBat\APLI\EXCEL
MD TABLAS INFO
pause
echo Se ha creado correctamente la estructura de directorios
pause
echo A continuación, se realizan las 19 preguntas
pause
echo 2. Sitúate en la Carpeta TABLAS
pause
CD C:\CrearDir\DirBat\APLI\EXCEL\TABLAS
pause
echo 3. Vuelve a la Carpeta Raíz
CD C:\CrearDir\
pause 
echo 4. Muestra el contenido de PROG
TREE C:\CrearDir\DirBat\PROG
pause
echo 5. Situate en PROG y borra la Carpeta PASCAL
CD C:\CrearDir\DirBat\PROG
RD C:\CrearDir\DirBat\PROG\PASCAL
pause
echo 6. Desde PROG borra la Carpeta INFO
RD C:\CrearDir\DirBat\APLI\EXCEL\INFO
CD C:\CrearDir\DirBat\VARIOS
pause 
echo 7. Situate en la carpeta VARIOS
CD C:\CrearDir\DirBat\VARIOS
pause
echo 8. Desde VARIOS crea una Carpeta dentro de WORD, llamada PRACT
MD C:\CrearDir\DirBat\APLI\WORD\PRACT
echo 9. Situate en PRACT y desde allí muestra el contenido de la carpeta EXCEL
CD C:\CrearDir\DirBat\APLI\WORD\PRACT
TREE C:\CrearDir\DirBat\APLI\EXCEL
pause
echo 10. Crea 3 archivos .txt, .doc, .bat en PRACT dale tus nombres: Nombre.txt, Apellido1.doc, Apellido2.bat 
CD C:\CrearDir\DirBat\APLI\WORD\PRACT
echo Deisy > Nombre.txt && echo Moreno > Apellido1.doc && echo Quintero > Apellido2.bat  
pause
echo 11. Situate en TABLAS
CD C:\CrearDir\DirBat\APLI\EXCEL\TABLAS
pause
echo 12. Desde TABLAS muestra el listado de archivos de la carpeta raíz
TREE /F C:\CrearDir
pause
echo 13. Sitúate en la carpeta APLI y desde allí crea una subcarpeta llamada AGENDA dentro de VARIOS
CD C:\CrearDir\DirBat\APLI
MD C:\CrearDir\DirBat\VARIOS\AGENDA
pause
echo 14. Borrar la carpeta EXCEL 
RD /s C:\CrearDir\DirBat\APLI\EXCEL
pause
echo 15. Situate en la carpeta PRACT y borra los archivos con nombre (Apellido1 y Apellido2)
DEL C:\CrearDir\DirBat\APLI\WORD\PRACT\Apellido1.doc
DEL C:\CrearDir\DirBat\APLI\WORD\PRACT\Apellido2.bat
pause
echo 16. Situate en la carpeta raíz 
CD C:\CrearDir\DirBat
pause
echo 17. Desde la carpeta raíz, crea en ella un asubcarpeta llamada NUEVO
MD C:\CrearDir\DirBat\NUEVO
pause
echo 18. Borra el archivo Nombre.txt desde la carpeta raíz.
DEL C:\CrearDir\DirBat\APLI\WORD\PRACT\Nombre.txt
pause
echo 19. Situate en el directorio PRACT
CD C:\CrearDir\DirBat\APLI\WORD\PRACT
pause
echo 20. Desde PRACT muestra el contenido de WORD
CD C:\CrearDir\DirBat\APLI\WORD\PRACT
TREE C:\CrearDir\DirBat\APLI\WORD
pause
echo Práctica 2.2.2
echo A continuación, las indicaciones:
pause 
echo 1. Crea un archivo de texto EJER.TXT en la carpeta TEXTOS con el siguiente texto:...
pause
CD C:\CrearDir\DirBat\APLI\WORD\TEXTOS
echo LA INFORMACIÓN DENTRO DE LOS DISCOS SE ALMACENA EN FORMA DE ARCHIVOS. UN ARCHIVO O FICHERO ES UN CONJUNTO DE DATOS QUE MS-DOS ALMACENA EN UN DISCO Y CUYO CONTROL INTERNO ES REALIZADO POR EL SISTEMA OPERATIVO, AUNQUE DESDE EL PUNTO DE VISTA LÓGICO EL CONTROL ES DEL USUARIO > EJER.TXT
pause
echo 2. Copiar el archivo EJER.TXT en AGENDA
COPY C:\CrearDir\DirBat\APLI\WORD\TEXTOS\EJER.TXT C:\CrearDir\DirBat\VARIOS\AGENDA
pause
echo 3. Borrar el archivo almacenado en la carpeta TEXTOS
DEL C:\CrearDir\DirBat\APLI\WORD\TEXTOS\EJER.TXT
pause
echo 4. Añade el siguiente párrafo al archivo EJER.TXT
echo “CADA ARCHIVO TIENE UN NOMBRE Y UNA EXTENSIÓN QUE LOS DISTINGUE DEL RESTO DE ARCHIVOS” >> C:\CrearDir\DirBat\VARIOS\AGENDA\EJER.TXT
pause
echo 5. Copia el archivo EJER.TXT en la carpeta BASIC
COPY C:\CrearDir\DirBat\VARIOS\AGENDA\EJER.TXT C:\CrearDir\DirBat\PROG\BASIC
pause
echo 6. Cambia el nombre EJER.TXT almacenado en AGENDA por FICHERO.TXT
pause
CD C:\CrearDir\DirBat\VARIOS\AGENDA 
RENAME EJER.TXT FICHERO.TXT
pause
echo 7. Mueve el archivo FICHERO.TXT a la carpeta BASIC
MOVE C:\CrearDir\DirBat\VARIOS\AGENDA\FICHERO.TXT C:\CrearDir\DirBat\PROG\BASIC
pause
echo 8. Abre el archivo EJER.TXT y borrala primera frase; almacena el nuevo archivo con el nombre NUEVO.TXT dentro de la carpeta BASIC
CD C:\CrearDir\DirBat\PROG\BASIC 
echo DENTRO DE LOS DISCOS SE ALMACENA EN FORMA DE ARCHIVOS. UN ARCHIVO O FICHERO ES UN CONJUNTO DE DATOS QUE MS-DOS ALMACENA EN UN DISCO Y CUYO CONTROL INTERNO ES REALIZADO POR EL SISTEMA OPERATIVO, AUNQUE DESDE EL PUNTO DE VISTA LÓGICO EL CONTROL ES DEL USUARIO.  “CADA ARCHIVO TIENE UN NOMBRE Y UNA EXTENSIÓN QUE LOS DISTINGUE DEL RESTO DE ARCHIVOS” > C:\CrearDir\DirBat\PROG\BASIC\NUEVO.TXT
pause
echo 9. Crea 3 archivos.txt con el nombre que tu quieras en la carpeta WORD
CD  C:\CrearDir\DirBat\APLI\WORD
echo FAMILIA > FAMILIA.TXT && echo AMIGOS > AMIGOS.TXT && echo VIAJES > VIAJES.TXT
pause
echo 10. Muevete a la carpeta PRACT
CD  C:\CrearDir\DirBat\APLI\WORD\PRACT
pause
echo 11. Copia los tres archivos.txt de la carpe
ta WORD a la carpeta NOTAS
CD ..
COPY *.TXT C:\CrearDir\DirBat\APLI\WORD\NOTAS
pause
echo 12. ¿Cuántos archivos hay en la carpeta BASIC y NOTAS?
TREE /F C:\CrearDir\DirBat
pause
echo Práctica 2.2.3
echo 1. Borra la carpeta ACCESS y en su lugar crea una nueva carpeta llamada ASTRO
RD C:\CrearDir\DirBat\APLI\ACCESS
MD C:\CrearDir\DirBat\APLI\ASTRO
pause
echo 2. Crea la siguiente estructura de carpetas dentro de ASTRO
CD  C:\CrearDir\DirBat\APLI\ASTRO
MD HISTORIA CIENCIA
CD  C:\CrearDir\DirBat\APLI\ASTRO\HISTORIA
MD DATOS1 DATOS2
CD  C:\CrearDir\DirBat\APLI\ASTRO\CIENCIA
MD ASTRO1 ASTRO2
pause
echo 3. Sitúate en la carpeta CIENCIA y desde allí, muestra el listado de archivos y subcarpetas de la carpeta HISTORIA
CD C:\CrearDir\DirBat\APLI\ASTRO\CIENCIA
TREE /F  C:\CrearDir\DirBat\APLI\ASTRO\HISTORIA
pause
echo 4. Crea el siguiente archivo de texto y guárdalo con el nombre TYCHO.TXT dentro de la carpeta DATOS1
CD C:\CrearDir\DirBat\APLI\ASTRO\HISTORIA\DATOS1
echo “La importancia de Tycho Brahe (1546-1601) es debida a sus trabajos observacionales, que registraron posiciones notables de Sol, la Luna y los planetas” > TYCHO.TXT
pause
echo 5. Utilizando de nuevo el editor de textos crea el siguiente archivo de texto, y guárdalo con el nombre KEPLER.TXT dentro de la carpeta DATOS2
CD C:\CrearDir\DirBat\APLI\ASTRO\HISTORIA\DATOS2
echo “La información acumulada facilitó a Johannes Kepler (1571-1630) el descubrimiento de las leyes que gobiernan el movimiento de los planetas” > KEPLER.TXT 
pause
echo 6. Copia los archivos TYCHO.TXT y KEPLER.TXT en la carpeta CIENCIA
COPY C:\CrearDir\DirBat\APLI\ASTRO\HISTORIA\DATOS1\TYCHO.TXT && C:\CrearDir\DirBat\APLI\ASTRO\HISTORIA\DATOS2\KEPLER.TXT
pause
echo 7. Cambia de lugar los archivos almacenados en DATOS1 y DATOS2 de forma que TYCHO.TXT quede guardado dentro DATOS2 y KEPLER.TXT en DATOS1
COPY C:\CrearDir\DirBat\APLI\ASTRO\HISTORIA\DATOS1\TYCHO.TXT C:\CrearDir\DirBat\APLI\ASTRO\HISTORIA\DATOS2
COPY C:\CrearDir\DirBat\APLI\ASTRO\HISTORIA\DATOS2\KEPLER.TXT C:\CrearDir\DirBat\APLI\ASTRO\HISTORIA\DATOS1
pause
echo 8. Crea un nuevo archivo formado por la unión de los dos anteriores (sin volver a escribir el texto) y guárdalo dentro de la carpeta HISTORIA con el nombre TOTAL.TXT
CD C:\CrearDir\DirBat\APLI\ASTRO\HISTORIA\DATOS2
COPY TYCHO.TXT + C:\CrearDir\DirBat\APLI\ASTRO\HISTORIA\DATOS1\KEPLER.TXT 
pause
echo 9. Abre el archivo KEPLER.TXT almacenado en la carpeta CIENCIA y añade el siguiente texto:
CD C:\CrearDir\DirBat\APLI\ASTRO\CIENCIA
echo “Kepler aplicó sus teorías a los satélites de Júpiter, descubiertos por Galileo a través de un pequeño telescopio, cuya introducción en la observación astronómica constituye uno de los hitos de la astronomía.” >> C:\CrearDir\DirBat\APLI\ASTRO\CIENCIA\KEPLER.TXT
pause
echo 10. Cambia el nombre del archivo anterior por el de GALILEO.TXT
CD C:\CrearDir\DirBat\APLI\ASTRO\CIENCIA
RENAME KEPLER.TXT GALILEO.TXT
pause
echo Práctica 2.2.4
echo 1. Crea en la carpeta raíz de la unidad D:\una carpeta denominada TECINFO
MD C:\CrearDir\DirBat\TECINFO
pause
echo 2. Crea dentro de TECINFO el siguiente archivo de texto y llámalo HARD.TXT
CD C:\CrearDir\DirBat\TECINFO
echo “El HARDWARE está cons0tuido por los elementos 7sicos del ordenador. Consta esencialmente de componentes electrónicos que proporcionan el soporte necesario para la interpretación y ejecución de las operaciones elementales que realiza el ordenador” > C:\CrearDir\DirBat\TECINFO\HARD.TXT
pause
echo 3. Crea dentro de TECINFO el siguiente archivo de texto y llámalo SOFT.TXT
echo “El SOFTWARE es el conjunto de elementos lógicos necesarios para que el ordenador realice las funciones que se le encomiendan. Está formado por los programas, es decir, por un conjunto ordenado de instrucciones, comprensibles por la máquina, que permiten desarrollar tareas concretas” > SOFT.TXT
pause
echo 4. Mueve el contenido de TECINFO a la carpeta APLI del disquete A utilizado para realizar los ejercicios anteriores
CD C:\CrearDir\DirBat\TECINFO
MOVE *.TXT C:\CrearDir\DirBat\APLI
pause
echo 5. Crea un nuevo archivo formado por la unión de HARD.TXT y SOFT.TXT, sin volver a escribir el texto, y guárdalo en la carpeta AGENDA con el nombre ORDER.TXT
COPY C:\CrearDir\DirBat\APLI\HARD.TXT + C:\CrearDir\DirBat\APLI\SOFT.TXT C:\CrearDir\DirBat\VARIOS\AGENDA\ORDER.TXT
pause
echo 6. Elimina la carpeta TECINFO
RMDIR /s /q C:\CrearDir\DirBat\TECINFO
pause
echo 7. Copia a la vez los archivos HARD.TXT y SOFT.TXT en la carpeta VARIOS
COPY C:\CrearDir\DirBat\APLI\HARD.TXT + C:\CrearDir\DirBat\APLI\SOFT.TXT C:\CrearDir\DirBat\VARIOS
pause
echo 8. Cambia la extensión de los archivos contenidos en AGENDA por .TYP
cd C:\CrearDir\DirBat\VARIOS\AGENDA
REN *.TXT *.TYP
pause
echo 9. Crea 3 archivos.TXT en el directorio APLI los nombres de estos archivos serán:
CD  C:\CrearDir\DirBat\APLI
echo archivo1 > WINRAR.TXT echo archivo2 > WORD.TXT echo archivo3 > EXCEL.TXT
pause
echo 10. Cambia el tipo de archivos anteriores del directorio APLI a .doc
CD C:\CrearDir\DirBat\APLI
RENAME *.TXT *.DOC
pause
echo 11. Copia los archivos contenidos en la carpeta APLI que tengan extensión DOC en la carpeta AGENDA
CD C:\CrearDir\DirBat\APLI
COPY *.DOC C:\CrearDir\DirBat\VARIOS\AGENDA
pause
TREE /F C:\CrearDir\DirBat
pause














