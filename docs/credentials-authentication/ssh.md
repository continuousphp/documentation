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
            "url": "git@keyname-bb:continuousphp/my-private-dependency.git"
        }
    ]
}
```
Notice that despite of using directly your git provider url (i.e bitbucket.org, gitlab.com ...) as a hostname, we need to use a specific syntax *keyname-bb* where:

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
  <tr>
    <td>gl</td><td>gitlab.com</td> 
  </tr>
</table>


### ***Only for Bitbucket*** alternatively add ContinuousPHP deploy key to your private library 

For instance, you want to build the  git@bitbucket.org:account_of_project/project which depends on the library git@library_hosting_service:account_of_library/library.<br/>
Then you can get the deploy key used by ContinuousPHP and add it to your library repository.

![bitbucket settings](/assets/doc/credentials-authentication/bitbucket_account_settings.png)

![bitbucket_continuousphp_deploykey](/assets/doc/credentials-authentication/bitbucket_continuousphp_deploykey.png)

In this way, you don't need to refer any keys in your pipeline settings.


## Using private repositories from Satis

Using SSH Keys to authenticate, you can use your own Satis Proxy to install private dependencies with *Composer*. Let's create
an example of how to mirror repositories with Satis and then use them with *Composer* :

### Satis Installation

We first need to install *Satis* :

```
$ composer create-project composer/satis --stability=dev
```

### Satis configuration

Once Satis is installed, create a Satis configuration file, e.g. `satis.json` :

```
{
    "name": "My mirrored dependencies",
    "homepage": "http://my-satis-address.com",
    "repositories": [
        {
            "type": "vcs",
            "url": "git@github.com:continuousphp/repository-to-mirror-1.git"
        },
        {
            "type": "vcs",
            "url": "git@github.com:continuousphp/repository-to-mirror-2.git"
        }
    ],
    "require-all": true,
    "require-dependencies": true,
    "archive": {
        "directory": "dist",
        "format": "tar",
        "skip-dev": true
    }
}
```

### Build the repositories

After creating the Satis configuration file, you need to tell Satis create the repositories :

```
$ ./bin/satis build satis.json my-mirrored-dependencies/
```

When this command finishes, we have a new directory `my-mirrored-dependencies` with two files: `packages.json` and `index.html`.
`packages.json` will be read by *Composer* to determine what packages the repository offers.
`index.html` is a static HTML file with information about the repository.
It also contains the dist directory with all packages so they won’t have to be downloaded from GitHub anymore.

### Use Satis in Composer

To use our new Satis Proxy with *Composer* we have to include it in our `composer.json` like this :

```
{
    "repositories": [
        {
            "type": "composer",
            "url": "http://my-satis-address.com"
        }
    ],
    ...
}
```

And that's it! When running `composer install`, *Composer* should now install your private dependencies directly from Satis.

