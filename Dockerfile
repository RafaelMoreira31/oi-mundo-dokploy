# Usamos a versão alpine por ser muito leve
FROM nginx:alpine

# 1. Removemos a página padrão "Welcome to nginx"
RUN rm /usr/share/nginx/html/index.html

# 2. Copiamos o conteúdo da sua pasta atual para dentro do container
# Certifique-se de que seu arquivo se chama index.html (tudo minúsculo)
COPY . /usr/share/nginx/html

# 3. Informamos que a porta 80 será usada
EXPOSE 80

# O Nginx inicia automaticamente, não precisa de CMD
