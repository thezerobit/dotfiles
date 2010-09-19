postfuturist's dotfiles
-----------------------

This is my personal collection of dotfiles, which I deploy in the home
folder on all my Ubuntu Linux desktops.

Installation
------------

There is a python script you can run from the dotfiles folder that will
move any existing dot files in your home folder into a ~/backup folder
and create symlinks into the dotfiles folder. Do this:

`python make_links.py`

I hacked up the script pretty quickly, so I make no guarantees that it
works correctly. It assumes that it has full permissions to write to
everything in your home folder and doesn't have a whole lot of error
handling.

.vimrc and .vim
---------------

This is a big part of the reason for the dotfiles repository. I have
spent some time refining my Vim configuration for maximum efficiency.

In order to use the [Command-T](http://wincent.com/products/command-t)
plugin, it has a small C component which must be built for whatever
platform you are on. It requires Ruby and Ruby development files. On
Ubuntu, you can get the dependencies with
this line:

`sudo apt-get install ruby1.8 ruby1.8-dev`

Then, to build the module, cd into the .vim/ruby/command-t folder and
run the following commands:

`ruby extconf.rb && make`

That's all you should need to get that working.

Other included vim plugins are:

* [NERDTree](http://www.vim.org/scripts/script.php?script_id=1658)
* [snipMate](http://www.vim.org/scripts/script.php?script_id=2540)
* [Markdown](http://www.vim.org/scripts/script.php?script_id=2882)
* and possibly others

.bashrc
-------

This file is pretty Ubuntu-centric with some things changed to support
rvm.

.ackrc
------

Made so ack will search through .inc files, a common PHP file extension.

.bash aliases
-------------

Just aliases 'ack' to 'ack-grep' which is the name that the ack script
is installed as in Ubuntu.

.gemrc
------

Causes gem to not waste time installing docs.

.hgrc and .gitconfig
--------------------

These you might want to change, since they have personal information.

.nethackrc
----------

A simple Nethack config.

License
-------

The parts of these files written by me are public domain. Other people's
code (mainly in .vim folder) is under whatever license they released the
code.
