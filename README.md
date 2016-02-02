# my-bower-package

This repository contains a Bower package that I created in order to learn how to create public and private packages with Bower.

## Public packages

The creation of a public package is pretty straightforward. Assuming that you have a bunch of files – grouped under a directory – that you want to package :

* You create a JSON file called « bower.json » within the directory that contains all the files you want to package. This file represents the package’s specification. See: https://github.com/bower/spec/blob/master/json.md
* You create a repository on GitHub that will contain the source of your package.
* You push all the packages’ files to the GitHub repository.
* Create a Git tag that will be used to reference all the files within a given version of the package. Make sure that this tag and the value of the property « version », within the package’s specification file « bower.json », are identical.
* Make sure that you committed and pushed the package’s specification file « bower.json ». It’s easy to forget that part.
* Push the newly created tag. It’s easy to forget that part, since tags are not pushed with the repository’s files.
* Then you can register the package on Heroku.

Some useful commands:

Create a tag: `git tag -a 1.0.0 -m "This is the version 1.0.0"`

Delete a tag on your local copy of the repository: `git tag -d 1.0.0`

Push a tag: `push -u origin master 1.0.0`

Delete a tag on the remote repository: `git push origin --delete 1.0.0`

List all tags on your local copy of the repository: `git tag`

List all tags on the remote repository: `git ls-remote --tags`

Get the origin of the repository: `git config --get remote.origin.url`

Register the package on Heroku: `bower register my-bower-package git://github.com/denis-beurive/my-bower-package.git`

Install the package: `bower install my-bower-package`


