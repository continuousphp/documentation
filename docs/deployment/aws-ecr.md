---
layout:         doc
title:          "AWS ECR - Documentation"
category:       "deployment"
logo:           aws-ecr
order:          6
excerpt:        "Deploy your containers to AWS ECR in a few clicks."
---

[AWS ECR](https://aws.amazon.com/ecr) allows you to deploy your containers directly to Amazon ECR.

## Specify your AWS credentials
To deploy to your AWS account, continuousphp needs an IAM key and secret. You can specify them in the 1st step of the project
setup or simply when adding a new pipeline to your existing project.

![AWS IAM credentials](/assets/doc/deployment/aws-ecr/iam-credentials.png)

## Configure the Packaging
After having configured the tests in the second step, you can now enable Docker in the Packaging configuration.

![AWS packing](/assets/doc/deployment/aws-ecr/packaging.png)

## Configure the Deployment
Once you have added the IAM credentials and you defined Docker as packaging method, you can configure the deployment in the 4th step of the project/pipeline setup.

![AWS deployment](/assets/doc/deployment/aws-ecr/destination.png)

## Use environment variables to define your tags
continuousphp provides you with a set of built-in environment variables that you can use to define your tags. Moreover you may want to truncate those variables then you can use the following syntax :

* ***X*** : 225ff583-0d80-4093-869e-5d8b6516aa7b
* ***${X}*** : X
* ***${X:0,8}*** : 225ff583
* ***${X:8}*** :  -0d80-4093-869e-5d8b6516aa7b
* ***${X:-12}*** :  5d8b6516aa7b

!!! note "**IMPORTANT**"
    Make sure that the IAM credentials you provide only have the strict minimum of permissions.
    Example: The provided IAM credentials shouldn't be able to erase your ECR repository.

And that's it ! You just configured your Dockerfile to be deployed with AWS ECR.