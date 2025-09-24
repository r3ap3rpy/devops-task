# Formlabs DevOps home assignment

This repository contains a home assignment code for DevOps applicants for Formlabs.

See all open jobs at https://careers.formlabs.com/


## Task

0. Fork this repo.
1. Create a deployable docker image for the application.
    - Feel free to switch up technologies. For example you can use `buildah` instead of Docker.
2. Create a Kubernetes deployment and service for the application.
    - Just aim for the simplest setup, no ingress deployment is needed. Feel free to use Helm.
    - You can use [Minikube](https://minikube.sigs.k8s.io/docs/start/) or [k3s](https://k3s.io/) or any other Kubernetes distribution you are familiar with.
3. Create automation to build, test and deploy the application when a change happens in git.
    - Feel free to switch up technologies. For example you can use an Ansible playbook or a Jenkins pipeline.
4. Send us the fork where you did your work.

### Notes

- Explain as much as possible in the commit message(s) and/or comments if needed. See more on commit messages [here](https://chris.beams.io/posts/git-commit/).
- It would be great if you'd also write about why you choose a certain technology if there are alternatives to consider.

### Whys

Since the repository is hosted on github I did not see fit to integrate it with Jenkins or Ansible. I prefer to use native solutions if possible.

I choose to add two github workflows with manual and folder based trigger, on one hand I can test it on demand, on the other hand commiting to a given folder will trigger the right workflow.

Workflows:
- `docker.yml`, it will rebuild the webapp in a multi-stage fashion to reduce final size, it will also run the tests (pytest and unittest)
- `k8s.yml`, it will trigger the linter to provide some guardrails 

I have added pytest to the testing because in my experience pytest is the more popular way to test webapps, I also made it work with unittest.

Also adjusted build,test,run scripts to allow local testing once the repo is cloned or forked.
