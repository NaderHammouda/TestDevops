FROM debian:jessie

WORKDIR /root

ENV JAVA_OPTS=""
# if env = dev => -Xmx256m
# if env = prod => -Xmx512m

# Install Ansible
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y gnupg2 python3-pip sshpass git openssh-client && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean


RUN python3 -m pip install --upgrade pip cffi && \
    pip install ansible-core==2.12.1 ansible && \
    pip install mitogen ansible-lint jmespath && \
    pip install --upgrade pywinrm && \
    rm -rf /root/.cache/pip


RUN mkdir /ansible && \
    mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

# COPY DATA

COPY ./data /data

# COPY TEST SCRIPT

COPY ./tomcat_test.sh /root/tomcat_test.sh

# ADD PERMISSIONS 
RUN chmod +x /root/tomcat_test.sh


# EXPOSE PORT

EXPOSE 8080

#START TEST SCRIPT
CMD [ "./root/tomcat_test.sh" ]