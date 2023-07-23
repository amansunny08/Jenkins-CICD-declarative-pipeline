FROM nginx:latest
COPY docker-pipeline.png /usr/share/nginx/html/
RUN cat index.html > /usr/share/nginx/html/index.html
