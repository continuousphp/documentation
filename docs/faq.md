---
layout:        doc
title:         "FAQ - Documentation"
category:      "faq"
order:         1
excerpt:       "FAQ by continuousphp"
---


## Composer fails while installing additional libraries

If you see a "RuntimeException" message while composer installs additional librairies, please refer to this [section](/credentials-authentication/ssh.md) about SSH keys settings.

## ContinuousPHP cannot clone my project

If ContinuousPHP is not able to clone your project, that is probably due to an unwanted removal of the ContinuousPHP deployment key from your git provider. So you can try to reset hooks.<br/>
The associated button can be found in your pipeline settings as described on the below screenshot.

![Reset_hook_button](/assets/doc/faq/reset_hook_localisation.png)


