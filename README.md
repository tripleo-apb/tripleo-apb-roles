# Ansible Playbook Bundles for TripleO #

## Structure ##

Each folder contains an Ansible Playbook Bundle (APB), which consists of a Dockerfile, an Ansible role, and two playbooks. Each Ansible role is a separate repository, so it may be used in other contexts and not just for build APBs.

## Building ##

To build an APB, run `build.sh [service]`. This will build an image using the Dockerfile in the `$service-apb` directory tagged  as `tripleo-k8s-$service`.

## Provisioning ##

## Deprovisioning ##
