FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY static.json /usr/share/nginx/html/static.json
