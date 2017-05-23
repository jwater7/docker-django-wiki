# docker-django-wiki

Project to create a [django-wiki](https://github.com/django-wiki/django-wiki) container.

### Description

This container has a bare installation of django-wiki.  It does not provide the actual web service, see the [django-wiki-hosted](https://github.com/jwater7/django-wiki-hosted) project for an instance of a simple django wiki web service using the container.

### Usage
~~~sh
sudo docker pull jwater7/django-wiki
~~~

Since this is a library only, you'll probably want to base a container on this that hosts your version of the wiki.  To do this, add
~~~dockerfile
FROM jwater7/django-wiki
~~~
to the top of your Dockerfile.  See [django-wiki-hosted](https://github.com/jwater7/django-wiki-hosted) for a good example.

