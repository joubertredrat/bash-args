#!/bin/bash
#
# Test script
#

source $(pwd)/../lib/args.sh

arg_foo=$(bash_args_get_value "foo" "$@")
echo $arg_foo