Coding standards
================

TBD

Version numbering
-----------------

* [PEP-440] use [Semantic Versioning](https://semver.org/)
* [PEP-396] use a `__version__` attribute in the `__init__.py` file of your top-level package


[PEP-396]: https://legacy.python.org/dev/peps/pep-0396/
[PEP-440]: https://peps.python.org/pep-0440/
[PEP 518]: https://peps.python.org/pep-0518/

All modules MUST ([RFC 2119]) have
----------------------------------

* a readme file

All projects SHOULD ([RFC 2119]) have
-------------------------------------

* have a documentation on ReadTheDocs.io named `<package_name>.readthedocs.io page`
* [PEP 518] a default `pyproject.toml` file. See also [What the heck is pyproject.toml](https://snarky.ca/what-the-heck-is-pyproject-toml/)
* have a "Links" area at the bottom of your Repository Readme file


[RFC 2119]: https://datatracker.ietf.org/doc/html/rfc2119
