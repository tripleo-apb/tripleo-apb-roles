FROM ansibleplaybookbundle/apb-base
# MAINTAINER {{ $MAINTAINER }}

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"aWQ6IGVmMWY5Yzk3LTY4YmYtNGUyMS05OTQ1LWNkOTEyOWY4Yzk5OQpuYW1lOiBrZXlzdG9uZS1h\
cGIKaW1hZ2U6IHRyaXBsZW8va2V5c3RvbmUtYXBiCmRlc2NyaXB0aW9uOiBUaGlzIGlzIGEgc2Ft\
cGxlIGFwcGxpY2F0aW9uIGdlbmVyYXRlZCBieSBhcGIgaW5pdApiaW5kYWJsZTogVHJ1ZQphc3lu\
Yzogb3B0aW9uYWwKcGFyYW1ldGVyczogW10K"

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
USER apb
