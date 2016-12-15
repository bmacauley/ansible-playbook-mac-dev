# Ansible playbook for Mac setup and configuration

This is playbook to install and configure software on a Macbook used for devops and cloud development.

![Build status](https://travis-ci.org/bmacauley/ansible-playbook-mac-dev.svg?branch=master)

It is continually evolving and leans heavily on the following examples on Github:

* [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)
* [BattleSchool](http://spencer.gibb.us/blog/2014/02/03/introducing-battleschool)
* [osxc](https://github.com/osxc)
* [MWGriffin/ansible-playbooks](https://github.com/MWGriffin/ansible-playbooks)

##Installation

Run the installer script...

```shell
curl -fsSL https://raw.githubusercontent.com/bmacauley/ansible-playbook-mac-dev/v0.2/install | bash
```

The installer script installs Apple's command line tools , Homebrew, Python Pip, Ansible and finally it downloads and runs this playbook


Alternatively...

1. Install Apple's command line tools, if they are not installed (`xcode-select --install`)
2. Install [Homebrew](http://brew.sh/)
3. Install [Ansible](http://docs.ansible.com/ansible/intro_installation.html)
4. Clone this playbook to your Macbook
5. Run `$ ansible-galaxy install -r requirements.yml` inside this directory to install required Ansible roles
6. Run `ansible-playbook main.yml -i inventory -K` inside this directory. Enter your account password when prompted.


## Defaults

Not everyone's development environment and preferred software configuration is the same.

You can override any of the defaults configured in default.config.yml by creating a config.yml file and setting the overrides in that file. For example, you can customize the installed packages and apps with something like:




## Included Applications

Applications (Homebrew Casks):

  - [ack](http://beyondgrep.com/)
  - [awscli](https://aws.amazon.com/cli/)
  - [aws-shell](https://aws.amazon.com/blogs/developer/super-charge-your-aws-command-line-experience-with-aws-shell/) 
  - autoconf
  - bash
  - bash-completion
  - [battery](https://github.com/Goles/Battery)
  - [cowsay](https://en.wikipedia.org/wiki/Cowsay)
  - [ctags](http://ctags.sourceforge.net/)
  - [curl](https://curl.haxx.se/)
  - [docker](https://www.docker.com/)
  - [docker-clean](https://github.com/ZZROTDesign/docker-clean)
  - [docker-compose](https://docs.docker.com/compose/)
  - docker-gen
  - docker-machine
  - enca
  - [fish](https://fishshell.com/)
  - [freetds](http://www.freetds.org/)
  - gdbm
  - geoip
  - gettext
  - [git](https://git-scm.com/)
  - [git-crypt](https://github.com/AGWA/git-crypt)
  - git-flow
  - [git-subrepo](https://github.com/ingydotnet/git-subrepo)
  - [gitup](http://gitup.co/)
  - [go](https://golang.org/)
  - [gpg](https://www.gnupg.org/)
  - [gradle](https://gradle.org/)
  - [hub](https://hub.github.com/)
  - [heroku](https://www.heroku.com/)
  - [heroku-toolbelt](https://devcenter.heroku.com/articles/heroku-cli)
  - [htop-osx](https://hisham.hm/htop/)
  - [httpie](https://httpie.org/)
  - [hugo](https://gohugo.io/)
  - [ipcalc](http://jodies.de/ipcalc)
  - [iperf](https://iperf.fr/)
  - [jq](https://stedolan.github.io/jq/)
  - keychain
  - libevent
  - libffi
  - libvterm
  - libxml2
  - libyaml
  - [macvim](http://macvim-dev.github.io/macvim/)
  - [maven](https://maven.apache.org/)
  - [mcrypt](http://mcrypt.sourceforge.net/)
  - md5sha1sum
  - [mercurial](https://www.mercurial-scm.org/)
  - [mobile-shell](https://mosh.org/)
  - [mtr](https://en.wikipedia.org/wiki/MTR_(software))
  - [multitail](https://www.vanheusden.com/multitail/)
  - [mysql](https://www.mysql.com/)
  - [nmap](https://nmap.org/)
  - [node](https://nodejs.org/en/)
  - [npm](https://www.npmjs.com/)
  - [nvm](https://github.com/creationix/nvm)
  - [nginx](https://www.nginx.com/)
  - [mas](https://github.com/mas-cli/mas)
  - [openssl](https://www.openssl.org/)
  - [openvpn](https://openvpn.net/)
  - [p7zip](http://p7zip.sourceforge.net/)
  - [packer](https://www.packer.io/)
  - [pandoc](http://pandoc.org/)
  - [parallel](https://www.gnu.org/software/parallel/)
  - [postgresql](https://www.postgresql.org/)
  - [pup](https://github.com/grahamlyons/pup)
  - [pv](https://linux.die.net/man/1/pv)
  - [python](https://www.python.org/)
  - python3
  - [rancher-cli](http://rancher.com/)
  - rancher-compose
  - [rbenv](https://github.com/rbenv/rbenv)
  - readline
  - reattach-to-user-namespace
  - [redis](https://redis.io/)
  - [ruby](https://www.ruby-lang.org/en/)
  - [s3cmd](http://s3tools.org/s3cmd)
  - [saltstack](https://saltstack.com/)
  - [scons](http://scons.org/)
  - [spark](https://zachholman.com/spark/)
  - [sqlite](https://sqlite.org/)
  - [ssh-copy-id](https://linux.die.net/man/1/ssh-copy-id)
  - [tccutil](https://github.com/jacobsalmela/tccutil)
  - [terraform](https://www.terraform.io/)
  - [terragrunt](https://github.com/gruntwork-io/terragrunt)
  - [the_platinum_searcher](https://github.com/monochromegane/the_platinum_searcher)
  - [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
  - [tig](https://github.com/jonas/tig)
  - [tmux](https://tmux.github.io/)
  - [tree](https://www.cyberciti.biz/faq/linux-show-directory-structure-command-line/)
  - unixodbc
  - [vim](http://www.vim.org/)
  - [wget](https://www.gnu.org/software/wget/)
  - [wrk](https://github.com/wg/wrk)
  - [zeromq](http://zeromq.org/)
  - [zsh](https://en.wikipedia.org/wiki/Z_shell)


Packages(Homebrew):

  - [alfred](https://www.alfredapp.com/)
  - [amazon-workdocs](https://aws.amazon.com/workdocs/)
  - [amazon-workspaces](https://aws.amazon.com/workspaces/)
  - [atom](https://atom.io/)
  - [caffeine](http://lightheadsw.com/caffeine/)
  - [charles](https://www.charlesproxy.com/)
  - [clipmenu](http://www.clipmenu.com/)
  - [coconutbattery](http://www.coconut-flavour.com/coconutbattery/)
  - [cyberduck](https://cyberduck.io/?l=en)
  - [docker](https://www.docker.com/products/docker)
  - [dropbox](https://www.dropbox.com/)
  - [fantastical](https://flexibits.com/fantastical)
  - [firefox](https://www.mozilla.org/en-GB/firefox/)
  - [flux](https://justgetflux.com/)
  - [gas-mask](https://github.com/2ndalpha/gasmask)
  - [gitter](https://gitter.im/)
  - [github-desktop](https://desktop.github.com/)
  - [google-chrome](https://www.google.co.uk/chrome/)
  - [google-drive](https://www.google.com/drive/)
  - [google-hangouts](https://hangouts.google.com/)
  - [intellij-idea](https://www.jetbrains.com/idea/)
  - [iterm2](https://www.iterm2.com/)
  - [istat-menus](https://bjango.com/mac/istatmenus/)
  - [java](https://www.java.com/en/)
  - [jump-desktop](https://jumpdesktop.com/)
  - [joinme](https://www.join.me/)
  - [kitematic](https://kitematic.com/)
  - [kindle](https://www.amazon.com/Kindle-eBooks/)
  - [limechat](http://limechat.net/mac/)
  - [omnigraffle](https://www.omnigroup.com/omnigraffle)
  - [pgadmin4](https://www.pgadmin.org/)
  - [postico](https://eggerapps.at/postico/)
  - [postman](https://www.getpostman.com/)
  - [powershell](https://msdn.microsoft.com/en-us/powershell/)
  - [pycharm](https://www.jetbrains.com/pycharm/)
  - [sequel-pro](https://www.sequelpro.com/)
  - [skitch](https://evernote.com/skitch/)
  - [sourcetree](https://www.sourcetreeapp.com/)
  - [slack](https://slack.com/)
  - [sublime-text](https://www.sublimetext.com/)
  - [tomighty](http://tomighty.org/)
  - [transmit](https://panic.com/transmit/)
  - [tunnelblick](https://tunnelblick.net/)
  - [vagrant](https://www.vagrantup.com/)
  - [virtualbox](https://www.virtualbox.org/)
  - [visual-studio-code](https://code.visualstudio.com/)
  - [wifi-explorer](https://www.adriangranados.com/apps/wifi-explorer)

## Testing the Playbook
Instructions to build a Mac OS X VirtualBox VM(geerlingguy), on which you can continually run and re-run this playbook to test changes and make sure things work correctly.

Additionally, this project is continuously tested on Travis CI's macOS infrastructure.


