## Instructivo de compilacion de la aplicacion SMG-SEGUROS

* Con la ultima version de Docker instalada, correr el archivo 
```
crear_docker.bat
```

* Una vez finalizado correr el siguiente comando,
donde ``NOMBREDEUSUARIO`` es el usuario actualmente en uso:
```
docker run -v c:/Users:/NOMBREDEUSUARIO -it android-dev --network host
```

* Ya dentro de Linux, ingresar al directorio donde se encuentra el archivo ``compile.sh``

* Correr: 

```
./compile.sh
``` 

## Aclaraciones

Si surgen errores durante la compilacion, verificar que se realizaron los cambios aclarados en el archivo ``Pasos a seguir.txt``