FROM ansibleplaybookbundle/apb-base
# MAINTAINER {{ $MAINTAINER }}

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"aWQ6IDVhOWViNWY4LWNiZGUtNGU2Mi1hMzBhLTlmYTMwMDA2ZmM5YQpuYW1lOiB0cmlwbGVvLWs4\
cy1tYXJpYWRiCmltYWdlOiB0cmlwbGVvL3RyaXBsZW8tazhzLW1hcmlhZGIKZGVzY3JpcHRpb246\
IFRoaXMgaXMgYSBzYW1wbGUgYXBwbGljYXRpb24gZ2VuZXJhdGVkIGJ5IGFwYiBpbml0CmJpbmRh\
YmxlOiBUcnVlCmFzeW5jOiBvcHRpb25hbApwYXJhbWV0ZXJzOiBbXQo="

RUN mkdir /opt/ansible/roles/
COPY playbooks /opt/apb/actions
RUN cd /tmp && \
    git clone https://github.com/openstack/openstack-ansible-plugins && \
    mv openstack-ansible-plugins /etc/ansible/roles && \
    ln -s /etc/ansible/roles/openstack-ansible-plugins /opt/apb/.ansible/plugins
RUN cd /tmp && \
    git clone https://github.com/tripleo-apb/ansible-role-k8s-tripleo && \
    mv ansible-role-k8s-tripleo /etc/ansible/roles
COPY ./roles/k8s-glance /opt/ansible/roles/k8s-glance
USER apb
