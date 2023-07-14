#!/bin/bash

if [ -f /tmp/gource.log ]; then
	rm -f /tmp/gource.log
fi

cd py-brain-inventory
git log --pretty=format:user:%aN%n%ct --reverse --raw > /tmp/gource.log
gource --log-format custom /tmp/gource.log

