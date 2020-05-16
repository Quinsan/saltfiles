asko:
  user.present:
    - fullname: Asiakas Palvelija
    - password: aspa

/etc/firefox/syspref.js:
  file.managed:
    - source: salt://adduser/kotisivu.js
