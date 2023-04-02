# BookStack Document Rebuild ENV
![image](https://i.pinimg.com/originals/67/78/71/6778716d30c4df234a0d577b87d8e6a0.png)

<h3>Technology used in the system:</h3>

![](https://img.shields.io/badge/PHP-8-green)
![](https://img.shields.io/badge/Mariadb-10.9-blue)
![](https://img.shields.io/badge/Nginx-1.12-orange)
![](https://img.shields.io/badge/Apache-cpanel-yellow)

- **PHP 8 - Framework Laravel⚡🧙🏻‍♂️** 
- **Mariadb 10.9👩🏻‍💻**
- **Server Nginx or Apache 🔬**

<h3>New docker resource </h3>

<h4>1. Install new source:</h4>

```script
https://github.com/KhangChina/BookStack.git -b new
```

<h4>2. Rename <code>.env.example</code> to <code>.env</code></h4>

<h4>3. Run on docker windows engine WSL:</h4>

```script
docker-compose up
```
👉 Access link: <code>http://localhost</code> and install step by step !

<h4>4. Edit <code>./docker-compose.yml</code> if use docker-compose tool on resource exist !</h4>

😐 From: (command install composer and migrate data)
```script
command: sh -c "composer clear-cache && composer install --no-dev && php artisan key:generate && php artisan migrate && php-fpm8 --nodaemonize"
```
🫡 To: (No need install composer and migrate data)
```script
command: php-fpm8 --nodaemonize
```

<h3>Run Resource Dev</h3>

<h4>1. Install:</h4>

```script
https://github.com/KhangChina/BookStack.git -b dev
```
<h4>2. Run dev</h4>

```script
docker-compose up
```

<h3>You can now login using the default admin</h3>

👉 Username: <code>admin@admin.com</code>

👉 Password: <code>password</code>

------
Devops: [Khang Nguyễn](https://github.com/KhangChina)
