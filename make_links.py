#!/usr/bin/env python
'''
make_links.py, a script to backup current config files
and replace with symlinks to files in dotfiles folder.

copyright 2010 Stephen A. Goss
'''
from __future__ import print_function

import os, shutil, stat
from os.path import (dirname, realpath, join, isdir, isfile, expanduser)

def should_ask(filename):
    return filename.startswith('.bash') or filename.endswith('profile')

def link_files(files, file_dir):
    home_dir = expanduser("~")
    backup_folder_path = join(home_dir, "backups")
    if not isdir(backup_folder_path):
        print("creating backup folder : %s" % backup_folder_path)
        os.mkdir(backup_folder_path)
    for filename in files:
        if should_ask(filename):
            answer = raw_input('Symlink %s ? ' % filename)
            if not answer in ['y', 'Y']:
                continue
        print("processing %s ..." % filename)
        target = join(home_dir, filename)
        dotfile = join(file_dir, filename)
        try:
            statinfo = os.lstat(target)
        except:
            print("file does not exist : %s" % target)
            statinfo = None
        if statinfo:
            if stat.S_ISLNK(statinfo.st_mode):
                print("removing old symlink : %s" % target)
                os.remove(target)
            else:
                backup = join(backup_folder_path, filename)
                if stat.S_ISDIR(statinfo.st_mode):
                    if not isdir(backup):
                        print("copying (folder) %s to %s " % (target, backup))
                        shutil.copytree(target, backup)
                    print("deleting folder: %s" % target)
                    shutil.rmtree(target)
                else:
                    if not isfile(backup):
                        print("copying %s to %s " % (target, backup))
                        shutil.copyfile(target, backup)
                    print("delete file : %s" % target)
                    os.remove(target)
        print("creating symlink : %s to %s" % (dotfile,target))
        os.symlink(dotfile, target)

if __name__ == '__main__':
    dotfiles_dir = dirname(realpath(__file__))
    print("dotfiles in this folder : %s" % dotfiles_dir)
    dotfiles = os.listdir(dotfiles_dir)
    dotfiles = filter(lambda x: x.startswith('.'), dotfiles)
    dotfiles = set(dotfiles) - set(['.git', '.gitignore'])
    dotfiles = list(dotfiles)
    print("\n".join(dotfiles))

    link_files(dotfiles, dotfiles_dir)

    profiles_dir = join(dirname(realpath(__file__)), 'profiles')
    profiles = os.listdir(profiles_dir)
    profile_name = raw_input("Select profile (" + " ".join(profiles) + "): ")
    prof_dir = join(profiles_dir, profile_name)
    if isdir(prof_dir):
        prof_files = set(os.listdir(prof_dir))
        print("Linking profile files...")
        link_files(prof_files, prof_dir)
    else:
        print("Error: invalid profile.")

    print("done!")
