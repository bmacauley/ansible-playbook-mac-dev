#!/bin/bash
# Purpose:
#	- bootstrap machine in order to prepare for ansible playbook run

set -e 

# Download and install Command Line Tools if no developer tools exist
#       * previous evaluation didn't work completely, due to gcc binary existing for vanilla os x install
#       * gcc output on vanilla osx box:
#       * 'xcode-select: note: no developer tools were found at '/Applications/Xcode.app', requesting install.
#       * Choose an option in the dialog to download the command line developer tools'
#
# Evaluate 2 conditions
#       * ensure dev tools are installed by checking the output of gcc
#       * check to see if gcc binary even exists ( original logic )
# if either of the conditions are met, install dev tools

if [[ $(/usr/bin/gcc 2>&1) =~ "no developer tools were found" ]] || [[ ! -x /usr/bin/gcc ]]; then
    echo "Info   | Install   | xcode"
    xcode-select --install
fi

# Download and install Homebrew
if [[ ! -x /usr/local/bin/brew ]]; then
    echo "Info   | Install   | homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Download and install Pip

if [[ ! -x /usr/local/bin/pip ]]; then
    echo "Info   | Install   | Pip"
    easy_install pip
fi


# Download and install Ansible
if [[ ! -x /usr/local/bin/ansible ]]; then
    echo "Info   | Install   | Ansible"
    pip install ansible
fi


# Download and run ansible-playbook-mac-dev playbook

if [[ ! -x /tmp/ansible-playbook-mac-dev.tar.gz ]]; then
	echo "Info   | remove  | ansible-playbook-mac-dev.tar.gz"
	rm -rf /tmp/ansible-playbook-mac-dev.tar.gz
fi

curl -L -o /tmp/ansible-playbook-mac-dev.tar.gz https://github.com/bmacauley/ansible-playbook-mac-dev/archive/master.tar.gz

tar zxvf ansible-playbook-mac-dev.tar.gz




# Modify the PATH
# This should be subsequently updated in shell settings
export PATH=/usr/local/bin:$PATH

ansible-playbook /tmp/ansible-playbook-mac-dev/main.yml -i /tmp/ansible-playbook-mac-dev/inventory -K