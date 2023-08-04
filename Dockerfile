FROM wordpress

RUN chmod -R 777 /var/www
RUN chmod -R 777 /usr/src/wordpress/
RUN cp -R /usr/src/wordpress/* /var/www/html/
RUN chmod -R 777 /var/www
RUN echo Servername localhost >> /etc/apache2/apache2.conf

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
