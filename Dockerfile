FROM busybox

WORKDIR /blank
RUN touch index.html && \
    adduser -D -H -s /bin/false www
USER www

EXPOSE 8080

STOPSIGNAL SIGKILL
ENTRYPOINT ["busybox"]
CMD ["httpd", "-f", "-p", "8080"]
