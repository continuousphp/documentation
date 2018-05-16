---
layout:         doc-toc
title:          "Deployment Pipelines - Documentation"
category:       "deployment-pipelines"
logo:           public
order:          2
excerpt:        "Deployment Pipelines on continuousphp."
---
continuousphp projects are configured using *Deployment Pipelines*. You can create or more pipelines per project.

## Workflow

A build on continuousphp always follows a particular scheme. At the beginning of the build, 2 packages are created (unless you have no tests) :
* a *testing* package, that will be handed over to the testing activities
* a *deployment* package, that will be deployed if all your (blocking) tests are successful

When the *testing* package is finished, the tests will start, whether or not the deployment package is ready. In turn, when the *deployment* package is ready, but not the
(blocking) tests, the Deployment will wait for the results to see if the build can be deployed.

The tests and deployments are automatically parallelized on all chosen PHP versions and destinations.

Take a look at the following illustration to get a clearer view :

![workflow](/assets/doc/deployment-pipelines/workflow.png)

## Create a new Deployment Pipeline

To create a new Pipeline, click the "+" button on the project page and search for the git reference you want to be built by the new Pipeline:

![create a new pipeline](/assets/doc/deployment-pipelines/create-a-new-pipeline.png)

### Wildcard Pipelines

continuousphp supports wildcard pipelines. This means that all git references matching the pipeline's descriptor can be built by this pipeline. A few examples:

| Reference            | Matches                                     |
|----------------------|---------------------------------------------|
| refs/heads/*         | Build all branches                          |
| refs/tags/*          | Build all tags                              |
| refs/heads/feature/* | Build all branches starting with "feature/" |
| refs/heads/hotfix-*  | Build all branches starting with "hotfix-"  |
| ...                  | ...                                         |

## Pipeline Configuration

A Deployment Pipeline on continuousphp consists of multiple steps :

* ***Build Settings:*** Configure [PHP versions](//php/), [Composer](//composer/), Webserver Document Root, [Authentication](//credentials-authentication/) (AWS, SSH, HTTP) and other settings needed to create the testing package.
* ***Testing Settings:*** Configure the tests you want to run during the Build. You can choose multiple [testing frameworks](//testing/) like [PHPUnit](//testing/phpunit/), [Behat](//testing/behat/), [Codeception](//testing/codeception/), ... and also tools for static code analysis like [PHPCS](//testing/phpcs/).
* ***Package Settings:*** Select the type of Package and [Deployment](https://continuousphp.com//deployment/) you want to use, e.g. a [generic Script deployment](//deployment/script/), [AWS CodeDeploy](//deployment/aws-code-deploy/), etc.
* ***Deployment & Notification Settings:*** Configure the [Deployment](https://continuousphp.com//deployment/) solution you've chosen in the previous step and add [Notifications](//notification/). You can specify one or more deployment destinations and choose between multiple Notification adapters like [Slack](//notification/slack/), [HipChat](//notification/hipchat/), etc.