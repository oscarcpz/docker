# Ejemplos Docker

## Contruir una imagen

~~~
$ cd contenedor_python/imagen
$ docker build -t="microservicios" .
~~~

## Listar las imagenes disponibles

~~~
$ docker images
~~~

## Arranque del contenedor

~~~
$ cd contenedor_python/src
$ docker run --rm --name miejemplo -p 7000:5000 -v $PWD:/usr/src/app microservicios
~~~

## Arranque del servidor desatentido (detached)

~~~
$ cd contenedor_python/src
$ docker run --rm --name miejemplo -d -p 7000:5000 -v $PWD:/usr/src/app microservicios
~~~

## Ver los logs del contenedor como tail

~~~
$ docker logs --follow miejemplo
~~~

## Listar los contenedores disponibles

~~~
$ docker ps -a
~~~

## Obtener información sobre el contenedor

~~~
$ docker inspect miejemplo
$ docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' miejemplo
~~~

## Consultar las estadísticas de uso de los contenedores de docker

~~~
$ docker stats
~~~

## Acceder a la consola del contenedor

~~~
$ docker exec -it miejemplo /bin/bash
~~~

## Copiar ficheros al interior del contenedor

~~~
$ touch hola.txt
$ docker cp hola.txt miejemplo:/tmp
~~~
