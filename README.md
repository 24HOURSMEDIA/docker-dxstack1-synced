# docker-dxstack1-synced
Docker DX Stack 1 Sync Edition

**[STAY UP TO DATE about this product - subscribe to our email updates](http://eepurl.com/caYXEH)**

[View the CHANGELOG](doc/changelog.md)

## Examples - tutorials

#### Example #01: Set up a development stack

This example shows how to setup your host and activate  full development stack. 
[Go to the example](doc/examples/01-devstacksetup.md)

#### Example #02: PHP Hello world application

After Example #01 is completed, we'll configure the stack's vhosts to show a hello world application. 
[Go to the example](doc/examples/02-helloworld.md)

## Features

* full php and db  centos7stack featuring nginx, php-fpm, mariadb, memcached, redis and more
* based on our dxstack1-base image [(learn more...)](https://github.com/24HOURSMEDIA/docker-dxstack1-base)
* customize nginx configuration through a mounted volume
* store data in the container through a mounted volume
* mounted volume is lsynced to the container's local filesystem through lsyncd for high application performance

