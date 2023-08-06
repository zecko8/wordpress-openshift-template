FROM wordpress

COPY setup.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/

RUN cp -R /usr/src/wordpress/* /var/www/html/

ENTRYPOINT ["setup.sh"]
CMD ["apache2-foreground"]
