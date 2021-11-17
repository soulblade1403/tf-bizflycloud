---
- hosts: ${host}
  become: true
  gather_facts: false
  roles:
    - server-init
    - env-tools
    - nginx
    - php
    - mysql
    - docker
    - redis
    - laravel
    - crond
  vars_files:
    - vars/ssh-${host}.yml
    - vars/${host}.yml