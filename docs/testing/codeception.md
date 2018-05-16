---
layout:         doc
title:          "Codeception - Documentation"
category:       "testing"
logo:           codeception
order:          5
excerpt:        "Test your application with Codeception."
---

[Codeception](http://codeception.com/) is the Swiss Army Knife for PHP testing. Acceptance, Functional and API Testing in one framework.

## Installation
You can use Codeception on continuousphp by installing it via composer. Simply add it to your *composer.json* and update your *composer.lock* by running a *composer update*.

```json
"require-dev": {
  "codeception/codeception": "~2.1.0"
}
```

## Configuration
When you create a new pipeline, continuousphp will attempt to configure the tests automatically by looking for *codeception.yml* or *codeception.yml.dist* files in your repository. The available test locations will then be listed in the second step of the pipeline configuration. Of course, you can always modify or delete the configuration proposed by continuousphp.
As for all other testing frameworks on continuousphp, you can choose if the tests on Codeception will block the deployment on failure or if the build goes into a warning state if the tests fail.

!!! note "**IMPORTANT:**" 
    You don't need to run Codeception using a shell command or a Phing target. continuousphp takes care of starting the tests for you.

![Codeception configuration](/assets/doc/testing/codeception/configuration.png)

Here is an example of how your *codeception.yml* file could look like:

```yaml
actor: Tester
coverage:
    enabled: true
    c3_url: 'http://localhost/c3.php'
    whitelist:
        include:
            - src/*
    blacklist:
        include:
            - vendor/*
paths:
    tests: tests
    log: tests/_output
    data: tests/_data
    support: tests/_support
    envs: tests/_envs
settings:
    bootstrap: _bootstrap.php
    colors: true
    memory_limit: 1024M
extensions:
    enabled:
        - Codeception\Extension\RunFailed
modules:
    config:
        Db:
            dsn: ''
            user: ''
            password: ''
            dump: tests/_data/dump.sql

```

## Executing tasks

You can specify tasks to be executed before running the tests. This can be very useful to initialize external resources like [databases](/databases) or third-party services. Currently continuousphp supports [Phing](https://www.phing.info/), but others will be supported soon (shell commands, ...).

!!! note "**IMPORTANT:**" 
    Tasks can be defined at different places in your workflow:

1. During the creation of the package to be tested

2. During the tests

3. During the creation of the package to be deployed

## Code Coverage

### Configuration

continuousphp automatically generates the code coverage of your Codeception tests. To accelerate the build, continuousphp runs the tests in two different, *parallel* activities. One having the code coverage disabled, and the other one with XDebug and code coverage enabled. The final (optional) deployment starts as soon as the tests without coverage are finished and successful.

To define what parts of your application should be tested, you can use Codeception's whitelist/blacklist mechanism in your *codeception.yml* file:

```yaml
coverage:
    enabled: true
    whitelist:
        include:
            - src/*
    blacklist:
        include:
            - vendor/*
```

### Deploy only if Code Coverage is high enough

You can choose to deploy only if the Code Coverage, calculated during the Build, is high enough. To enable this feature, go to the Codeception settings in your Pipeline
and set a value for the *Required Coverage (%)* (integer value between 0 and 100).

## Remote Code Coverage

If you test your application using a Webserver, collecting Code Coverage is a bit more tricky because you don't have a direct access to the code.
As your application runs standalone, without even knowing it is being tested, a small file should be included in order to collect coverage info.
This file is called c3.php and is available on [GitHub](https://github.com/Codeception/c3). Simply include in your application and enable remote Code Coverage in your *codeception.yml* file:

```yaml
coverage:
    enabled: true
    c3_url: 'http://localhost/c3.php'
```

You can find more information on Code Coverage with Codeception [here](http://codeception.com/docs/11-Codecoverage).

## Build

As soon as the testing package is created, the tests will start:

![Codeception build start](/assets/doc/testing/codeception/build-start.png)

![Codeception build end](/assets/doc/testing/codeception/build-end.png)

And that's it! You just configured your application to be tested with Codeception!

## Downloads

When the build is finished, you can download the JUnit and Code Coverage (Clover) reports that continuousphp automatically generated. Simply go to the build list and click the Download button to see which downloads are available for your builds.

## Environment Variables

You can use Environment Variables to configure your testing environment. Simply go to the *Test Settings* (step 2
of the pipeline configuration), open the Codeception configuration and add one or more Environment Variables:

![Codeception Env Vars](/assets/doc/testing/codeception/env-vars.png)

### Encryption

Environment Variables can (optionally) be encrypted. Pay attention that, once a variable is encrypted, you can no longer obtain
it's value. An encrypted Environment Variable can only be decrypted during a build by continuousphp's workers. Encrypted
Environment Variables will be masked in the build output.

## Configuration

For more information on how to configure Codeception, please check out the [documentation](http://codeception.com/docs/01-Introduction).