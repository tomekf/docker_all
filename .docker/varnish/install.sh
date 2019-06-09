#!/bin/bash

apt-get -y update
apt-get -y install varnish

touch /etc/varnish/secret