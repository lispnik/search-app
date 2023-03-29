# README

A simple search interface to OpenLibrary.

## Setup

Create a *Ruby 3.2.1* environment with, for example, RVM

The SASS needs a system compiler in order to build and compile the SCSS.

## Development 

Start the server with:

```shell
bin/rails server -b 0.0.0.0 -p 3000 -e development
```

## Deployment

Install the Heroku CLI

```shell
heroku apps:create
```
Push a branch to the Heroku remote. e.g.

```shell
git push heroku main
```

Git console messages from Heroku will include the deployment end point.

Application entry point is the root path.
