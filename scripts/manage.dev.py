#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

$DIR/manage.py $@ --settings=sandbox.settings_debug
