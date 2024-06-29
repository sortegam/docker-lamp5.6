# Introduction

Deploy lamp(Linux, Apache, MySQL, PHP5.6) using docker.

### Architecture

![architecture][1]

Note: The local ports may differ.

The whole app is divided into 2 Containers:

1. APACHE + PHP 5.6, which handles requests and makes responses.
2. MySQL lies in `MySQL` Container,

Our app scripts are located on host, you can edit files directly without rebuilding/restarting whole images/containers.

### Build and Run

At first, you should have [Docker](https://docs.docker.com) and [Docker Compose](https://docs.docker.com/compose) installed.

Without building images one by one, you can make use of `docker-compose` and simply issue:

    $ ./start-dev.sh

Check out your https://\<docker-host\> and have fun :beer:

### SQL Data / Domain URL

Normally exported mysql has redirections or points to the current domain. We can force to change all this paths use the db-migrator.sh script.

### How to restore DB data with a command.

$ docker exec -i docker-mysql-1 mysql -uroot -proot < /path/to/mysql/database.sql -D database_name

### License

MIT
