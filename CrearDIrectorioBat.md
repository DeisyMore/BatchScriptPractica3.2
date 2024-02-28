@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

REM En el script de batch, :menu y goto :menu son etiquetas y comandos utilizados para controlar el flujo del programa. Aquí está su significado:

REM :menu: Esto define una etiqueta llamada "menu". En un script de batch, las etiquetas se utilizan para marcar un punto específico en el script.

REM goto :menu: Este comando dirige la ejecución del programa hacia la etiqueta "menu". Cuando se encuentra este comando, el script salta a la etiqueta "menu" y continúa la ejecución desde ese punto.

REM En el ejemplo dado, :menu se utiliza para marcar el inicio del bucle principal del menú. Después de mostrar las opciones del menú y procesar la selección del usuario, el script vuelve al principio del bucle utilizando goto :menu para que el usuario pueda seleccionar otra opción. Este patrón permite que el programa continúe ejecutándose hasta que el usuario elija salir del programa.

:menu
echo opcion 1 Iniciar Sesion 
echo opcion 2 Registrarse
echo opcion 3 Salir del Programa
set /p opcion=Selecione una Opcion:
pause 

if "%opcion%"=="1" (
    call :iniciarSesion

) else if "%opcion%"=="2" (
    call :registrarse

) else if "%opcion%"=="3" (
    call :SalirPrograma
) else (
    REM echo Volver al menú principal
    call :OpcionInvalida
    echo Los datos son invalidos
    goto :menu
)

:SalirPrograma
echo Saliendo del Programa
exit /b
pause

:iniciarSesion
echo Iniciar Sesion
set /p usuario=Ingrese su nombre de usuraio:
set /p contrasena=Ingrese su contrasena:
echo Comprobando credenciales de inicio de sesion para el usuario: !usuario!
pause
REM Lógica para veificar los datos del usuario
REM En el contexto del comando for /f, la opción "tokens=1,2" se utiliza para especificar qué partes de cada línea del archivo usuarios.txt serán consideradas como tokens (o campos) y asignadas a las variables de iteración %%a y %%b. tokens=1,2: Esto indica que el comando for debe dividir cada línea en dos partes, utilizando los espacios como delimitadores por defecto, y asignar la primera parte a %%a y la segunda parte a %%b. Entonces, si el archivo usuarios.txt tiene líneas en el formato "nombre_de_usuario contraseña", el comando for /f tomará cada línea, la dividirá en dos partes usando los espacios como separadores y asignará el primer token (nombre_de_usuario) a %%a y el segundo token (contraseña) a %%b. 


rem Definir una variable para indicar si se encontró el usuario
set "usuarioEncontrado="
if exist usuarios.txt (
    for /f "tokens=1,2" %%a in (usuarios.txt) do (                                                                       
        if "!usuario!"=="%%a" if "!contrasena!"=="%%b" (
            echo Inicio de sesion exitoso para el usuario: !usuario!
            set "usuarioEncontrado=1,2"
            REM Lógica para preguntar por las tres opciones de "CambiarDatos, EliminarUsuario, CerrarSesion" 
            REM :preguntar_opcion se utiliza como una etiqueta para marcar el inicio de una sección de código dentro del script. Cuando se encuentra la línea :preguntar_opcion, el script sabe que está comenzando una sección de código que está relacionada con preguntar al usuario por una opción. Después de definir la etiqueta :preguntar_opcion, el script continúa ejecutando las líneas de código que siguen a esa etiqueta hasta que se encuentra un comando goto o el final del archivo de script. En este caso, el script utiliza goto :preguntar_opcion para repetir la sección de código que pregunta al usuario por una opción si el usuario ingresa una opción inválida.
            goto :preguntar_opcion
        )
    )
)

if not defined usuarioEncontrado (
    echo Nombre de Usuario o Contrasena incorrecta.
    pause
    goto :menu
)

:preguntar_opcion
echo Por favor seleccione una opción:
echo 1 Cambiar Datos.
echo 2 Eliminar Usuario.
echo 3 Cerrar Sesion.
echo 4 Volver al inicio.      
set /p opcion=Ingrese el número de la opción deseada: 
            
            
if "%opcion%"=="1" (
    REM Lógica para cambiar los datos
    REM Solicitar al usuario que ingrese los nuevos datos
    set /p nuevoNombre=Ingrese en nuevo nombre de usuario:
    set /p nuevaContrasena=Ingrese la nueva contraseña:
    pause
    echo Cambiando datos...

    pause
    REM Actualizar los datos en el archivo usuarios.txt
    
    REM OJO VER SI SE ESTA CAMBIANDO USU  CONTRA

    (for /f "tokens=1,* delims= " %%a in (usuarios.txt) do (
        if "%%a"=="!usuario!" (
            echo !nuevoNombre! !nuevaContrasena!   
            ) else (
                echo %%a %%b
            )
            )) >> usuarios_temp.txt

            REM Reemplazar el archivo original con el archivo temporal
            move /y usuarios_temp.txt usuarios.txt

            REM Eliminar el archivo temporal
            echo Los datos del usuario se han actualizado correctamente.
            pause
            goto :menu 

        ) else if "%opcion%"=="2" (

            REM Lógica para eliminar el usuario
            REM Eliminar el usuario del archivo usuarios.txt
            
            findstr /v "!usuario!" usuarios.txt > usuarios_temp.txt
            move /y usuarios_temp.txt usuarios.txt
            echo El usuario ha sido eliminado correctamente.
            pause
            goto :menu

        ) else if "%opcion%"=="3" (
                REM No se necesita ninguna lógica adicional, ya que la sesión simplemente se cerrará
                echo Cerrando Sesión...
                pause
                goto :menu
        ) else if "%opcion%"=="4" (
                echo Volviendo al menú principal.  
                pause
                goto :menu
                
        ) else  (
                echo Opción inválida. Por favor, seleccione una opción válida.
                goto :preguntar_opcion
        )
            pause

:registrarse
echo Registrarse
set /p nuevoUsuario=Ingrese un nombre para el nuevo usuario:

REM Verificar si el nombre de usuario ya existe. Después de que el usuario ingrese un nuevo nombre de usuario, se verifica si ese nombre de usuario ya existe en el archivo usuarios.txt utilizando findstr
REM findstr es un comando en el sistema operativo Windows que se utiliza para buscar cadenas de texto en archivos. 
findstr /C:"!nuevoUsuario!" C:\Batch\usuarios.txt >nul 

if  %errorlevel% equ 0 (
    echo EL nombre de usuario ya está en uso. Intente con otro.
    pause
    goto :menu
    REM Lógica para guardar el nuevo usuario y contraseña
) else (
    set /p nuevaContrasena=Ingrese una nueva contraseña:
    echo !nuevoUsuario! !nuevaContrasena!>> C:\Batch\usuarios.txt
    echo Usuario registrado exitosamente.
) 
pause 
goto :menu
