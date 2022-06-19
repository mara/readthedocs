Publishing Guide
================

After checking the coding standards the package can be published.

Pre-checks
----------

* if the project has a CI pipeline, check that it run through successfully.
* check if all new features are documented in `docs/*` (linking to readthedocs.io)


Bump the new version
--------------------

The following steps should be done to release a new version of a package:

* increment the version behind [`<mara_module>.__version__`](https://legacy.python.org/dev/peps/pep-0396/)
* add the new version in CHANGELOG.md file
* call `make` in the root folder to locally build and install the package
* ca
