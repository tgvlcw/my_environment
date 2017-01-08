#!/usr/bin/env python

import platform
import os
import shutil
from subprocess import call

def isWindowsSystem():
    return 'Windows' in platform.system()

def isLinuxSystem():
    return 'Linux' in platform.system()

def init_windows():
    os.system('mklink .bashrc %s\\bashrc' %config_dir)
    os.system('mklink .vimrc %s\\vimrc' %config_dir)
    os.system('mklink .vim %s\\vim' %config_dir)
    os.system('mklink vim_local %s\\vim_local' %config_dir)

def init_linux():
    os.system('ln -s %s/bashrc .bashrc' %config_dir)
    os.system('ln -s %s/vimrc .vimrc' %config_dir)
    os.system('ln -s %s/vim .vim' %config_dir)
    os.system('ln -s %s/vim_local vim_local' %config_dir)

def delete_file(file_name):
    file_path = "%s/%s" %(home_dir, file_name)
    if os.path.exists(file_path):
        if os.path.isfile(file_path):
            os.remove(file_path)
        elif os.path.isdir(file_path):
            shutil.rmtree(file_path, True)
        print("delete %s" %file_path)

def global_init():
    delete_file(".bashrc")
    delete_file(".vimrc")
    delete_file(".vim")
    delete_file("vim_local")


if __name__=="__main__":
    home_dir = os.environ['HOME']
    print("home dir: %s" %home_dir)
    config_dir = os.getcwd()
    print("config directory: %s" %config_dir)
    os.chdir("%s" %home_dir)
    global_init()
    sys_info = platform.system()
    if (sys_info == "Windows"):
        print("system: Windows")
        init_windows()
    elif (sys_info == "Linux"):
        print("system: Linux")
        init_linux()

