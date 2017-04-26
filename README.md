Ansible Role: Docker Compose
=========

[![Build Status](https://travis-ci.org/djx339/ansible-role-docker-ce.svg?branch=master)](https://travis-ci.org/djx339/ansible-role-docker-ce)

Install [docker-ce](https://www.docker.com/) on Linux.

Requirements
------------

None.

Role Variables
--------------

`docker_version`: The version of docker. (default: latest)

Dependencies
------------

None.

Example Playbook
----------------

```yaml
- hosts: servers
  roles:
    - { role: docker-ce, docker_version: latest }
```

License
-------

BSD

Author Information
------------------

This role was created by [Daniel D](https://github.com/djx339).
