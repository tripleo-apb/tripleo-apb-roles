FROM ansibleplaybookbundle/apb-base
# MAINTAINER {{ $MAINTAINER }}

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"aWQ6IDVhOWViNWY4LWNiZGUtNGU2Mi1hMzBhLTlmYTMwMDA2ZmM5YQpuYW1lOiB0cmlwbGVvLWs4\
cy1tYXJpYWRiCmltYWdlOiB0cmlwbGVvL3RyaXBsZW8tazhzLW1hcmlhZGIKZGVzY3JpcHRpb246\
IFRoaXMgaXMgYSBzYW1wbGUgYXBwbGljYXRpb24gZ2VuZXJhdGVkIGJ5IGFwYiBpbml0CmJpbmRh\
YmxlOiBUcnVlCmFzeW5jOiBvcHRpb25hbApwYXJhbWV0ZXJzOiBbXQo="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
USER apb
