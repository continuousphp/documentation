---
layout:         doc
title:          "SSH Keys - Documentation"
category:       "credentials-authentication"
order:          2
excerpt:        "SSH Key support by continuousphp"
---


If you need to use private repositories on Bitbucket/Gitlab or a Satis/Toran Proxy with private dependencies, ContinuousPHP offer several ways to reach your goal.

First, simply go to the *Build Settings* of your pipeline configuration and enter your private SSH Keys to make them available in every container of your build. 

![SSH Keys](/assets/doc/credentials-authentication/ssh.png)

## Using private repositories from Bitbucket or Gitlab

Using SSH Keys to authenticate, you can use private repositories from *Bitbucket* or *Gitlab* as dependencies in *Composer*. Here
is an example of how to configure *Composer*:

```
{
    "name":     "continuousphp/my-application",
    "homepage": "https://my-application.com/",
    "require":  {
        "php": ">=5.6",
        "continuousphp/my-private-dependency": "~1.0.0"
    },
    "repositories": [
        {
            "type": "vcs",
            "url": "git@github.com:continuousphp/my-private-dependency.git"
        }
    ]
}
```

If your library belongs to the same git provider as the one of your project, you need to set your composer.json. Here is an other example.

```
{
    "name":     "continuousphp/my-application",
    "homepage": "https://my-application.com/",
    "require":  {
        "php": ">=5.6",
        "continuousphp/my-private-dependency": "~1.0.0"
    },
    "repositories": [
        {
            "type": "vcs",
            "url": "git@keyname-bb:continuousphp/my-private-dependency.git"
        }
    ]
}
```

Notice that despite of using directly your git provider url (i.e bitbucket.org, gitlab.com ...) as a hostname, you need to use a specific syntax *keyname-bb* where:

* ***keyname*** refers to the key name specified in your pipeline settings 
* ***bb*** refers to bitbucket.org.<br/>

The below table lists each prefix associated to git hosting services.


<table>
  <tr>
    <td>bb</td><td>bitbucket.org</td> 
  </tr>
  <tr>
    <td>gh</td><td>github.com</td> 
  </tr>
</table>


### ***Only for Bitbucket*** alternatively add ContinuousPHP deploy key to your private library 

For instance, you want to build the  git@bitbucket.org:account_of_project/project which depends on the library git@library_hosting_service:account_of_library/library.<br/>
Then you can get the deploy key used by ContinuousPHP and add it to your library repository.

![bitbucket settings](/assets/doc/credentials-authentication/bitbucket_account_settings.png)

![bitbucket_continuousphp_deploykey](/assets/doc/credentials-authentication/bitbucket_continuousphp_deploykey.png)

In this way, you don't need to refer any keys in your pipeline settings.

If these solutions don't exactly match your needs, you could try to use Satis as explained in this [section](../satis.md).
