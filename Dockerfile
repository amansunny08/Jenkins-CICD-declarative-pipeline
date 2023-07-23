FROM nginx:latest
COPY docker-pipeline.png /usr/share/nginx/html/
COPY index.html > /usr/share/nginx/html/index.html
