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
RUN git clone https://github.com/openstack/openstack-ansible-plugins /opt/ansible/roles/openstack-ansible-plugins
RUN cd /opt/ansible/roles/ && git clone https://github.com/tripleo-apb/ansible-role-k8s-tripleo
RUN ln -s /opt/ansible/roles/openstack-ansible-plugins /opt/apb/.ansible/plugins
COPY roles /opt/ansible/roles
USER apb
