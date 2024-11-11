# Usar la imagen oficial de PHP con Apache
FROM php:8.2-apache

# Copiar el archivo index.php al directorio raíz del servidor Apache
COPY index.php /var/www/html/

# Exponer el puerto 80
EXPOSE 80

# Comando por defecto para iniciar Apache en primer plano
CMD ["apache2-foreground"]
