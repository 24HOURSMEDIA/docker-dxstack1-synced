##### [< docker-dxstack1-synced](../../README.md)

**[STAY UP TO DATE about this product - subscribe to our email updates](http://eepurl.com/caYXEH)**


## example 02: php hello world application


We'll configure the development stack you created in [example 01](01-devstacksetup.md) to show a hello world php application.

#### step 1: assign a hostname

On your host computer, add the following entry to you /etc/hosts file (root privileges required) or
configure a dns server:

    127.0.0.1 myproject.devsite

This is the domain name where our hello world application will run.

#### step 2: activate the php-fpm www pool

The container already runs php-fpm but we want the default www pool.
In the container, run the following commands:

```
cp /opt/etc/php-fpm.d/www.conf.example /opt/etc/php-fpm.d/www.conf
pkill php-fpm
php-fpm
```

#### step 3: add the hello world application

We'll install the application in the /data/vhosts/myproject/www directory.
In the container, execute the following commands:

```
mkdir -p /data/vhosts/myproject/www
echo "<?php echo 'hello world';" > /data/vhosts/myproject/www/index.php
```

#### step 4: configure nginx

Configure nginx to listen to the domain name myproject.
The nginx configuration can be viewed at this [gist](https://gist.github.com/24HOURSMEDIA/891be0a3ce44236eb5d08308de235195);
It points to the application directory and configures nginx to use php-fpm for php files.

Execute the following commands in the container to download the gist and restart nginx:

```
gist=https://gist.githubusercontent.com/24HOURSMEDIA/891be0a3ce44236eb5d08308de235195/raw/eebeaf41173cd709bbe1a8ba2eacf734d996c931/dxstack1synced-myproject.vserver
curl $gist > /opt/etc/nginx/vservers/myproject.vserver
# test nginx configuration
nginx -t
# reload nginx
/etc/init.d/nginx stop
/etc/init.d/nginx start
```

#### Open in browser

You can now open the url in your browser and should see hello world displayed:
 
[http://myproject.devsite:8080](http://myproject.devsite:8080)

#### And..

You worked on the container but notice that your project files are available on the host
too in your project directory. They will stay there even if the container is terminated.




