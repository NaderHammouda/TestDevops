﻿# TestDevops
## Role info

> Install and deploy Apache Tomcat 9 on Debian With Ansible.

## Tasks in the role

This role contains tasks to:

- Install basic packages required
- Install Java
- Add tomcat user and group
- Download and install tomcat

## How to use this role

- Clone the Project:

```
$ cd /tmp/
$ git clone https://github.com/NaderHammouda/TestDevops.git
$ cd TestDevops
```

- Run the Playbook file with Ansible (tomcat_deploy.yml):

```
$ sudo ansible-playbook data/tomcat_deploy.yml
```

Execution should be successful without errors:

```
```
