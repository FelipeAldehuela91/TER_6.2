# Imagen base
FROM nginx:1.25.3-alpine

# Copia de archivos
COPY app/medplus /var/www/html/medplus/
COPY app/portfolio /var/www/html/portfolio/
COPY config/nginx/conf.d /etc/nginx/conf.d

# Expose 80
EXPOSE 80

# Ejecutmaos nginx en primer plano, para evitar que el contenedor se pare.
CMD [ "nginx", "-g", "daemon off;"]