
# Hola Mundo en PHP con Docker

Este proyecto muestra una aplicación básica en PHP que despliega "¡Hola, Mundo!" en el navegador. Usaremos Docker para configurar un contenedor con Apache y PHP.

## Requisitos previos

- [Docker](https://www.docker.com/get-started) instalado en tu sistema

## Estructura del proyecto

```
/Holamundophp
│
├── Dockerfile        # Define la imagen Docker con PHP y Apache
├── index.php         # Archivo principal de PHP con el mensaje "¡Hola, Mundo!"
└── README.md         # Documentación del proyecto
```

## Configuración y construcción del contenedor

### 1. Crear el archivo `index.php`

Crea un archivo `index.php` con el siguiente contenido:

```php
<?php
// Mostrar errores de PHP
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Mensaje "Hola Mundo"
echo "¡Hola, Mundo!";
?>
```

### 2. Crear el archivo `Dockerfile`

Este archivo define la imagen Docker que utilizará Apache y PHP. Crea un archivo llamado `Dockerfile` con el siguiente contenido:

```Dockerfile
FROM php:8.2-apache
COPY index.php /var/www/html/
```

### 3. Construir y ejecutar el contenedor

En la terminal, asegúrate de estar en el directorio del proyecto y ejecuta los siguientes comandos:

1. **Construir la imagen Docker:**

   ```bash
   docker build -t holamundo-php .
   ```

2. **Ejecutar el contenedor:**

   ```bash
   docker run -p 8080:80 holamundo-php
   ```

   Esto expondrá la aplicación en el puerto `8080` de tu máquina local.

## Acceso a la aplicación

Abre tu navegador y ve a [http://localhost:8080](http://localhost:8080). Deberías ver el mensaje:

```
¡Hola, Mundo!
```

## Opcional: Subir la imagen a Docker Hub

Si deseas compartir esta imagen en Docker Hub, sigue estos pasos:

1. **Inicia sesión en Docker Hub (si no lo has hecho):**

   ```bash
   docker login -u tu_nombre_de_usuario
   ```

2. **Etiquetar la imagen:**

   ```bash
   docker tag holamundo-php tu_nombre_de_usuario/holamundo-php
   ```

3. **Subir la imagen a Docker Hub:**

   ```bash
   docker push tu_nombre_de_usuario/holamundo-php
   ```

## Notas adicionales

- Para detener el contenedor, usa `Ctrl+C` en la terminal donde está corriendo.
- Si necesitas reiniciar el contenedor, ejecuta:

  ```bash
  docker start <ID_del_contenedor>
  ```
