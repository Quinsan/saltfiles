apache2:
  pkg.installed

/var/www/html/index.html:
  file.managed:
    - source: salt://apacheserver/index.html

/etc/apache2/sites-available/firmansivu.conf:
  file.managed:
    - source: salt://apacheserver/firmansivu.conf

/etc/apache2/sites-enabled/firmansivu.conf:
  file.symlink:
    - target: ../sites-available/firmansivu.conf

apache2.service:
  service.running:
    - name: apache2  
    - watch:
      - file: /etc/apache2/sites-enabled/firmansivu.conf
