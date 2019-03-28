===========================
Yubikey Gnome Screen Locker
===========================

A small bash script and couple of udev rules to facilitate the locking of all gnome sessions upon removal
of your Yubikey. 

Installation
============

1. Run the makefile ``sudo make install``
2. Reload udev ``sudo udevadm control --reload``

Uninstallation
==============

1. Run the make uninstall command ``sudo make uninstall``
2. Reload udev ``sudo udevadm control --reload``


Disabling the locker
====================

Sometimes you might want to keep your session active when you unplug the key. To disable the locking feature
temporarily, run the following command 

.. code:: bash

    sudo yubikey-screenlock -d
    
To re-enable the locker, run the following

.. code:: bash

    sudo yubikey-screenlock -e

:Author:
 |   Zarren Spry <zarrenspry@gmail.com>
 |   PGP Fingerprint: 770E 94A7 B764 C0D3 1AE2  D33C 34BC E0BC D665 C5E9 