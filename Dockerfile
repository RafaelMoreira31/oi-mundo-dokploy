# Usa uma imagem leve do Nginx
FROM nginx:alpine

# Copia o seu arquivo HTML para a pasta do servidor
COPY . /usr/share/nginx/html

# Expõe a porta 80
EXPOSE 80
