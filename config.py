import platform
import os
from subprocess import call

def isWindowsSystem():
    return 'Windows' in platform.system()

def isLinuxSystem():
    return 'Linux' in platform.system()

def init_windows():
    os.system('mklink .bashrc config\\bashrc')
    os.system('mklink .vimrc config\\vimrc')
    os.system('mklink .vim config\\vim')
    os.system('mklink vim_local config\\vim_local')

def init_linux():
    os.system('ln -s config\\bashrc .bashrc')
    os.system('ln -s config\\vimrc .vimrc')
    os.system('ln -s config\\vim .vim')
    os.system('ln -s config\\vim_local vim_local')

if __name__=="__main__":
    os.chdir(os.environ['HOME'])
    sys_info = platform.system()
    if (sys_info == "Windows"):
        init_windows()
    elif (sys_info == "Linux"):
        init_linux()

