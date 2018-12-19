# Bash Args
Bash Args is a simple way for get arguments in your bash script.

#### Install

Download this repo tarball or on releases page and include lib like on example below.

```bash
#!/bin/bash

source $(pwd)/lib/args.sh
```

#### Usage

For use this script, you define what argument name and variable that will receive value, like example below.

```bash
my_key=$(get_param_value "my-amazing-secret-key" "$@")
echo $my_key
```

After this, if you inform param in your script, the value will be assigned on variable.

Bash args support this argument formats.

```bash
./myscript -my-amazing-secret-key value
./myscript -my-amazing-secret-key=value
./myscript --my-amazing-secret-key value
./myscript --my-amazing-secret-key=value
```

#### Tests

For testing, [bats](https://github.com/sstephenson/bats) is required.

```bash
cd tests
bats main.bats
```