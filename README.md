vagrant-modules
===============

Bash scripts to install software like chef and puppet

### Installation

Add this project as a git submodule and exec bash scripts directly in `Vagrantfile`

'''bash
# Add submodule
git submodule add git@github.com:vdubyna/vagrant-modules.git vagrant/modules
git add . && git commit

# Init submodule
git submodule init && git submodule update
'''

