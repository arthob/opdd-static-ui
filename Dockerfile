FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY static.json /usr/share/nginx/html/static.json

ENV PORT=8080

# Replace the default Nginx config with a dynamic one
RUN sed -i "s/listen       80;/listen       ${PORT};/" /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
