# TestDevops
 
This project will discuss how you can easily deploy Tomcat 9 on Debian Linux with Ansible.
The standard way of installing Tomcat on a Linux system such as Debian is manual and time-consuming. I wrote an Ansible role to simplify the process.

## Project role

> Install and deploy Apache Tomcat 9 on Debian With Ansible.

## Project tasks

The Playbook file (tomcat_deploy) contains tasks to:

- Download and install tomcat version 9
- Heap paramtring in dev/prod environnements
- sample.war deployment

## How to use this project

- Open your terminal

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
