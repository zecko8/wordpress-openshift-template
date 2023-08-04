FROM wordpress

RUN chmod -R 777 /var/www
RUN chmod -R 777 /usr/src/wordpress/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
