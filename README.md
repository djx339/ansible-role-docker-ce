Ansible Role: Docker
=========

[![Build Status](https://travis-ci.org/djx339/ansible-role-docker-ce.svg?branch=master)](https://travis-ci.org/djx339/ansible-role-docker-ce)

Install [docker-ce](https://www.docker.com/) on Linux.

Requirements
------------

None.

Role Variables
--------------

`docker_version`: The version of docker. (default: latest)

`docker_opts`: The options for docker. (default: empty)

`docker_envs`: Some environment options for docker. eg: http_proxy, https_proxy, no_proxy (default: empty)

eg:

```yml
- hosts: all
  vars:
    docker_opts:
      dns:
        - 192.168.1.1
        - 192.168.1.2
    docker_envs:
      http_proxy: http://192.168.2.1:8080
      https_proxy: http://192.168.2.2:8080
      no_proxy: localhost,127.0.0.1
```

Dependencies
------------

None.

Example Playbook
----------------

```yaml
- hosts: servers
  roles:
    - { role: djx339.docker-ce, docker_version: latest }
```

License
-------

BSD

Author Information
------------------

This role was created by [Daniel D](https://github.com/djx339).
