# Microservicios

## Contenido del directorio

### ./docker_microservicios

* Dockerfile - fichero para construir la imagen del microservicio con Python y Flask.
* requirements.txt - fichero con las librerías necesarias para Python . Se copiará en la imagen en el momento de construcción.

### ./nginx

#### ./conf

Directorio con los ficheros de configuración de nginx.

Se ha preparado para hacer funcionar nginx como puerta de entrada segura al microservicio.

El fichero *.htpasswd* contiene el usuario y password que pide nginx cuando se trata de acceder al servicio.

#### ./ssl

Contiene los ficheros de certificados creados para el ejemplo.

#### build-nginx.sh

Shell script para construir la imagen de nginx de forma independiente

#### create_htpasswd.sh

Shell script para crear un fichero htpasswd

#### create_ssl.sh

Shel script para crear los certificados necesarios

#### Dockerfile

Fichero de definición de la imagen de Nginx

#### run_nginx.sh

Shel script para ejecutar Nginx de forma independiente. Ojo que si queremos meterlo en un stack hay que indicar la red del stack.

### ./src

Contiene el código fuente de Python

### docker-compose.yml

Es el fichero de definición de los contenedores

## Ejecución del stack

La salida estandar aparece en pantalla. Con CTRL+c se interrumpe la ejecución
~~~
$ docker-compose up
~~~
Se ejecuta de forma desatendida
~~~
$ docker-compose up -d
~~~
En el caso de querer parar la ejecución desatendida
~~~
$ docker-compose stop
~~~
Para lanzar solo un elemento de la arquitectura
~~~
$ docker-compose up microservicios
~~~

## Referencias

* [Flask](http://flask.pocoo.org/)
* [nginx](https://www.nginx.com/)
* [Cómo crear el fichero htpasswd](http://www.htaccesstools.com/htpasswd-generator/)
* [docker-compose](https://docs.docker.com/compose/gettingstarted/)
