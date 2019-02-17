sudo docker container stop some-mysql myadmin
sudo docker container prune
sudo docker pull mysql:5
sudo docker pull phpmyadmin/phpmyadmin

sudo docker run --name some-mysql -d -v /home/vittorfp/Documentos/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=admin -p 3306:3306 mysql:5
sudo docker run --name myadmin --link some-mysql:db -d -p 8080:80 phpmyadmin/phpmyadmin