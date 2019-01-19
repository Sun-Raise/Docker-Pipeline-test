FROM nginx

COPY index.html /usr/share/nginx/html/

CMD [ "/bin/sh", "./entrypoint.sh" ]
