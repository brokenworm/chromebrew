<p><img src="/images/penguin.png" alt="Chromebrew logo" /></p>

Chromebrew
==========

Overview
--------

"gcc" and "make" pieces aren't missing anymore. Say hello to Chromebrew!

Prerequisites
-------------

You will need a Chromebook with developer mode enabled.

Installation
------------

The beta, dev, and Canary channels are ***not*** supported and should ***not*** be used with Chromebrew.

Open the terminal with Ctrl+Alt+T and type `shell`.

Then download and run the installation script below:

    curl -Ls https://raw.github.com/brokenworm/chromebrew/master/install.sh | bash

On a rooted Google OnHub, the command needs to be run with the "chronos" user. In order to make su work, a password is needed for the chronos user.

    # passwd chronos
    Changing password for chronos.
    Enter new UNIX password:
    Retype new UNIX password:
    # su - chronos
    Password:
    $ curl -Ls curl -Ls https://raw.github.com/brokenworm/chromebrew/master/install.sh | bash

Help
----

Please check out the [wiki](https://github.com/brokenworm/chromebrew/wiki) to find out more information about Chromebrew including helpful tips, resource links and frequently asked questions. Also please check existing [issues](https://github.com/brokenworm/chromebrew/issues) before submitting a new one.

Usage
-----

    crew <command> [-k|--keep] <package1> [<package2> ...]

Where available commands are:

  * build - `build package(s) from source and store the archive and checksum in the current working directory`
  * const - `display constant(s)`
  * download - `download package(s) to CREW_BREW_DIR (/usr/local/tmp/crew by default), but don't install`
  * files - `display installed files of package(s)`
  * help - `get information about command usage`
  * install - `install package(s) along with dependencies after prompting for confirmation`
  * list - `available or installed packages`
  * postinstall - `display postinstall messages of package(s)`
  * reinstall - `remove and install package(s)`
  * remove - `remove package(s)`
  * search - `look for package(s)`
  * update - `update crew itself`
  * upgrade - `update all or specific package(s)`
  * whatprovides - `regex search for package(s) that contains file(s)`

Available packages are listed in the [packages directory](https://github.com/brokenworm/chromebrew/tree/master/packages).

Chromebrew will wipe its `BREW_DIR` (`/usr/local/tmp/crew` by default) after installation unless you pass `-k` or `--keep` when running `crew install`.

    crew install --keep <package1> [<package2> ...]

License
-------

Copyright 2013-2020 Marsdroid
