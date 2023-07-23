FROM nginx:latest
COPY docker-pipeline.png /usr/share/nginx/html/
RUN cat ${PWD}/index.html > /usr/share/nginx/html/index.html
