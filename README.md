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

- A successful installation output will show output similar to below:

```
PLAY [Tomcat deployment playbook] **********************************************************************************************************************

TASK [Gathering Facts] *********************************************************************************************************************************
ok: [localhost]

TASK [tomcat : Download Tomcat] ************************************************************************************************************************
ok: [localhost]

TASK [tomcat : Create a tomcat directory] **************************************************************************************************************
ok: [localhost]

TASK [tomcat : Extract tomcat archive] *****************************************************************************************************************
ok: [localhost]

TASK [tomcat : Copy tomcat service file] ***************************************************************************************************************
ok: [localhost]

TASK [tomcat : Start and enable tomcat] ****************************************************************************************************************
ok: [localhost]

PLAY RECAP *********************************************************************************************************************************************
[localhost]                      : ok=6   changed=0    unreachable=0    failed=0    skipped=1    rescued=0    ignored=0   
```
