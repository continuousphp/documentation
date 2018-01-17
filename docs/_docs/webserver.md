---
layout:         doc-toc
title:          "Web Servers - Documentation"
category:       "webserver"
logo:           web 
order:          13
excerpt:        "Web Server supported by continuousphp."
---

## Usage

continuousphp currently supports **Apache 2.4**.

There are 2 possibilities to start the Apache webserver:

### Document Root
Simply specify a *Document Root* in your Pipeline (first step - Build Settings) to make it start automatically :

![Apache Document Root](/assets/doc/webserver/document-root.png)

If your Document Root is the root folder of your repository, please specify `/` as Document Root.

### Environment Variable

Alternatively, you can start the Apache by specifying the environment variable `CPHP_SERVICE_APACHE` with the
value `2.4.0` in the configuration of your testing framework (e.g. in the Behat settings in the second step of the
pipeline config).

### Url

Once Apache has started, you can reach it using the URL:
```
http://apache24
```