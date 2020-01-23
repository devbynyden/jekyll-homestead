#!/usr/bin/env bash

# Check If Jekyll Has Been Installed

if [ -f /home/vagrant/.homestead-features/jekyll ]
then
    echo "Jekyll already installed."
    exit 0
fi

if [ ! -f /home/vagrant/.homestead-features/ruby ]
then
    echo "Ruby not installed, Ruby is a dependency so installation of Jekyll will be skipped."
    exit 0
fi

touch /home/vagrant/.homestead-features/jekyll
chown -Rf vagrant:vagrant /home/vagrant/.homestead-features

# Install Jekyll
gem install jekyll bundler