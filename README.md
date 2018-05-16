<a href="http://continuous.lu">
  <img src="https://app.continuousphp.com/assets/logos/continuousphp.svg" alt="ContinuousPHP" width="250px" align="right"/>
</a>

<p align="left">
  <a href="https://app.continuousphp.com/git-hub/continuousphp/documentation"><img alt="Build Status" src="https://status.continuousphp.com/git-hub/continuousphp/documentation?token=2a5769d9-bab5-4971-b4b6-54d5bc321764&branch=master" /></a>
</p>

<p align="left">
    ContinuousPHP© is the first and only PHP-centric PaaS to build, package, test and deploy applications in the same workflow.
</p>

# ContinuousPHP Documentation

This is the official documentation for the ContinuousPHP platform, written by Continuous SA with community contributions. 

## Installation with Docker

### Clone this project

```git clone git@github.com:continuousphp/documentation.git```

### Start development server on http://localhost:8000

```docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material```

### Build documentation

```docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material build```

## Documentation

You can find Markdown documentation into `docs` subfolder.
Thanks to open an issue if you see something missing in our documentation.

## Credit

This project was made based on Open-Source project, thanks to them!

 * [mkdocs](http://www.mkdocs.org/) - Mkdocs
 * [mkdocs-material](https://squidfunk.github.io/mkdocs-material/) - Material for Mkdocs

## Contributing

1. Fork it :clap:
2. Create your feature branch: `git checkout -b feat/my-new-feature`
3. Write your Unit and Functional tests
4. Commit your changes: `git commit -am 'Add some feature'`
5. Push to the branch: `git push origin feat/my-new-feature`
6. Submit a pull request with the details of your implementation
7. Take a drink during our review and merge :beers:

