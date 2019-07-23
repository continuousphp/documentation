---
layout:         doc
title:          "Satis configuration - Documentation"
category:       "reference-guide"
order:          2
excerpt:        "Satis configuration support by continuousphp"
---


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

