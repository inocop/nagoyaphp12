#!/bin/bash

cd `dirname $0`

# MSYS_NO_PATHCONV=1 for windows git bash
MSYS_NO_PATHCONV=1 docker run -it --rm --volume `pwd`:/var/nagoyaphp12 ruby:2.4.4-alpine ruby /var/nagoyaphp12/src/test.rb
