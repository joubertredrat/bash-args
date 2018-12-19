#!/bin/bash
#
# Test script
#

source $(pwd)/../lib/args.sh

arg_foo=$(get_param_value "foo" "$@")
echo $arg_foo