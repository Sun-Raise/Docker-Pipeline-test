FROM nginx

COPY index.html /usr/share/nginx/html/

EXPOSE 80

RUN chmod +x entrypoint.sh

CMD [ "/bin/sh", "./entrypoint.sh" ]
