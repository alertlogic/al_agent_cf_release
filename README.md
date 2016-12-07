## al-agent job and package for Cloud Foundry deployment

Cloud Foundry environments consists of deployments with version releases of software, called from templates within Jobs.

Jobs are deployed to seperate nodes. Each job is a seperate instance with different templates applied to it where the templates are releases which have packaged versions of software that you know work together.

This repo has the job al_agent_node and the package al_agent for deployment with Cloud Foundry

```
name: DEPLOYMENT-NAME

director_uuid: DIRECTOR-UUID

releases:
- {name: al_agent, version: latest}

jobs:
- name: YOUR_JOB_NAME_HERE
  templates:
    - {name: 'al_agent_node', releases: al_agent}

properties:
  al_agent:
    registration_key: REG_KEY_HERE
```

For documentation on deploying a Bosh/Cloud Foundry environment please see http://docs.cloudfoundry.org/deploying/aws/index.html

Deploy the above file as part of a deploy file formatted as yaml.

```
bosh deployment al-agent-deployment.yml
bosh deploy
```

Create and upload release

```
bosh create release al_agent --with-tarball
bosh upload release path/to/tarball/from/previous/command
```

The above commands assume you've already targeted your director with the bosh command using 

```
bosh target
```
