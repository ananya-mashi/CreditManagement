CREATE USER 'creditmanagement'@'localhost' IDENTIFIED BY 'creditmanagement';

GRANT ALL PRIVILEGES ON * . * TO 'creditmanagement'@'localhost';
ALTER USER 'creditmanagement'@'localhost' IDENTIFIED WITH mysql_native_password BY 'creditmanagement';