#!/usr/bin/env bash
# use like this:  echo '${USER}' | sh parse_env.sh > outputfile.txt
# cat inputfile | sh parse_env.sh > outputfile.txt
while read -r line || [ -n "$line" ]; do
    while [[ "$line" =~ (\$\{[a-zA-Z_][a-zA-Z_0-9]*\}) ]] ; do
        LHS=${BASH_REMATCH[1]}
        RHS="$(eval echo "\"$LHS\"")"
        line=${line//$LHS/$RHS}
    done
    echo "$line"
done