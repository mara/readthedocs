How to contribute to Mara
=========================

Thank you for considering contributing to Mara!


Reporting issues
----------------

Include the following information in your post:

-   Describe what you expected to happen.
-   If possible, include a `minimal reproducible example`_ to help us
    identify the issue. This also helps check that the issue is not with
    your own code.
-   Describe what actually happened. Include the full traceback if there
    was an exception.
-   List your Python and Mara package versions. If possible, check if this
    issue is already fixed in the latest releases or the latest code in
    the repository.

.. _minimal reproducible example: https://stackoverflow.com/help/minimal-reproducible-example


Submitting patches
------------------

If there is not an open issue for what you want to submit, prefer
opening one for discussion before working on a PR. You can work on any
issue that doesn't have an open PR linked to it or a maintainer assigned
to it. These show up in the sidebar. No need to ask if you can work on
an issue that interests you.

Include the following in your patch:

-   Include tests if your patch adds or changes code. Make sure the test
    fails without your patch.
-   Update any relevant docs pages and docstrings. Docs pages and
    docstrings should be wrapped at 72 characters.
-   Add an entry in ``CHANGELOG.md``. Use the same style as other
    entries. Also include ``.. versionchanged::`` inline changelogs in
    relevant docstrings.


First time setup
~~~~~~~~~~~~~~~~

-   Download and install the `latest version of git`_.
-   Configure git with your `username`_ and `email`_.

    .. code-block:: text

        $ git config --global user.name 'your name'
        $ git config --global user.email 'your email'

-   Make sure you have a `GitHub account`_.
-   Fork the Mara package to your GitHub account by clicking the Fork button.
-   `Clone`_ the mara package repository locally. Replace
    ``{mara-package-name}`` with the mara package name you want to contribute to.

    .. code-block:: text

        $ git clone https://github.com/mara/{mara-package-name}
        $ cd {mara-package-name}

-   Add your fork as a remote to push your work to. Replace
    ``{username}`` with your username and ``{mara-package-name}`` with the mara
    package name you want to contribute to. This names the remote "fork", the
    default Mara remote is "origin".

    .. code-block:: text

        $ git remote add fork https://github.com/{username}/{mara-package-name}

-   Create a virtual environment and install flask locally

      .. code-block:: text

         $ make

.. _latest version of git: https://git-scm.com/downloads
.. _username: https://docs.github.com/en/github/using-git/setting-your-username-in-git
.. _email: https://docs.github.com/en/github/setting-up-and-managing-your-github-user-account/setting-your-commit-email-address
.. _GitHub account: https://github.com/join
.. _Clone: https://docs.github.com/en/github/getting-started-with-github/fork-a-repo#step-2-create-a-local-clone-of-your-fork


Start coding
~~~~~~~~~~~~

-   Create a branch to identify the issue you would like to work on. If
    you're submitting a bug or documentation fix, branch off of the
    latest ".x" branch.

    .. code-block:: text

        $ git fetch origin
        $ git checkout -b your-branch-name origin/2.0.x

    If you're submitting a feature addition or change, branch off of the
    "main" branch.

    .. code-block:: text

        $ git fetch origin
        $ git checkout -b your-branch-name origin/main

-   Using your favorite editor, make your changes,
    `committing as you go`_.
-   Include tests that cover any code changes you make. Make sure the
    test fails without your patch. Run the tests as described below.
-   Push your commits to your fork on GitHub and
    `create a pull request`_. Link to the issue being addressed with
    ``fixes #123`` in the pull request.

    .. code-block:: text

        $ git push --set-upstream fork your-branch-name

.. _committing as you go: https://dont-be-afraid-to-commit.readthedocs.io/en/latest/git/commandlinegit.html#commit-your-changes
.. _create a pull request: https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request


Running the tests
~~~~~~~~~~~~~~~~~

Run the basic test suite with pytest.

.. code-block:: text

    $ make test

This runs the tests for the current environment, which is usually
sufficient. CI will run the full suite when you submit your pull
request.


Building the docs
~~~~~~~~~~~~~~~~~

Build the docs in the ``docs`` directory using Sphinx.

.. code-block:: text

    $ cd docs
    $ make html

Open ``_build/html/index.html`` in your browser to view the docs.

Read more about `Sphinx <https://www.sphinx-doc.org/en/stable/>`__.
