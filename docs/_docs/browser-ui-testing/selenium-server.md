---
layout:         doc
title:          "Selenium Server Standalone - Documentation"
category:       "browser-ui-testing"
order:          2
excerpt:        "Selenium Server support by continuousphp"
---
The [Selenium Standalone Server](http://www.seleniumhq.org/) is supported by continuousphp. It uses the [official Selenium Standalone Server Docker images](https://hub.docker.com/r/selenium/standalone-chrome/).

## Installation & Usage

Selenium Server containers are available for each activity in your build. To enable one of them, simply add the environment
variable `CPHP_SERVICE_SELENIUM` with the desired Selenium Server version as value to your pipeline configuration and use
`http://selenium` as it's hostname. Available versions are :

* ***3.6.0-copper***
* ***3.4.0-chromium***



Check Selenium's [documentation](https://github.com/SeleniumHQ/selenium/wiki/Grid2) or our examples for more information:

* [UI Testing with Behat, Selenium & Chrome](/_docs/testing/behat#ui-testing-with-selenium-and-chrome)