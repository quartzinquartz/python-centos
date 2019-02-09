# python-image-centos

A container for python development with vim on centos


### Sample run command:
$ docker run -it -d --hostname="python" --name="python" -v ~/code/python:/code/python -w /code/python derekjenkins/python-centos:latest


### Sample exec command:
$ docker exec -it python /bin/bash
