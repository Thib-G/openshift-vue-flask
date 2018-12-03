# openshift-vue-flask

Sample project to configure a Vue.js (vue-cli) front-end app with a Flask/Python back-end api.

## Create a project

```
oc new-project myproject
```

## Get base images from Red Hat repo

For vue-cli webapp we use a Node.js-based webapp builder:

```
oc import-image my-rhoar-nodejs-tech-preview/rhoar-nodejs-10-webapp --from=registry.access.redhat.com/rhoar-nodejs-tech-preview/rhoar-nodejs-10-webapp --confirm
```

For Flask/Python we use a standard Python image:

```
oc import-image my-rhscl/python-36-rhel7 --from=registry.access.redhat.com/rhscl/python-36-rhel7 --confirm
```

## Install apps from .yaml files

Front-end: 

```
oc create -f webapp.yml
```

Back-end:

```
oc create -f flask-api.yml
```

Note: you may need to change the route host to better suit your configuration.
