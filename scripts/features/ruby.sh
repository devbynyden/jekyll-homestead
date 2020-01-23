#!/usr/bin/env bash

# Check If Ruby Has Been Installed

if [ -f /home/vagrant/.homestead-features/ruby ]
then
    echo "Ruby already installed."
    exit 0
fi

touch /home/vagrant/.homestead-features/ruby
chown -Rf vagrant:vagrant /home/vagrant/.homestead-features

# Install Ruby
apt-get update
apt-get install -y ruby-full build-essential zlib1g-dev
echo '# Install Ruby Gems to ~/gems' >> /home/vagrant/.profile
echo 'export GEM_HOME="$HOME/gems"' >> /home/vagrant/.profile
echo 'export PATH="$HOME/gems/bin:$PATH"' >> /home/vagrant/.profile
source /home/vagrant/.profile