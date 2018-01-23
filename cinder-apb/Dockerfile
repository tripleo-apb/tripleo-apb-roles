FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"bmFtZTogY2luZGVyLWFwYgppbWFnZTogdHJpcGxlby9jaW5kZXItYXBiCmRlc2NyaXB0aW9uOiBP\
cGVuU3RhY2sgQ2luZGVyCmJpbmRhYmxlOiBGYWxzZQphc3luYzogb3B0aW9uYWwKbWV0YWRhdGE6\
CiAgZGlzcGxheU5hbWU6IGNpbmRlcgpwbGFuczoKICAtIG5hbWU6IGRlZmF1bHQKICAgIGRlc2Ny\
aXB0aW9uOiBUaGlzIGRlZmF1bHQgcGxhbiBkZXBsb3lzIGNpbmRlci1hcGIKICAgIGZyZWU6IFRy\
dWUKICAgIG1ldGFkYXRhOiB7fQogICAgcGFyYW1ldGVyczogW10K"

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN cd /tmp && \
    git clone https://github.com/openstack/openstack-ansible-plugins && \
    mv openstack-ansible-plugins /etc/ansible/roles && \
    ln -s /etc/ansible/roles/openstack-ansible-plugins /opt/apb/.ansible/plugins
RUN cd /tmp && \
    git clone https://github.com/tripleo-apb/ansible-role-k8s-tripleo && \
    mv ansible-role-k8s-tripleo /etc/ansible/roles
COPY ./roles/k8s-cinder /opt/ansible/roles/k8s-cinder
RUN chmod -R g=u /opt/{ansible,apb}

USER apb
