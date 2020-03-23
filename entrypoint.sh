#!/bin/bash

[ "$1" != "--" ] && exec "$@"

# Empty the configuration file
truncate -s 0 server.cfg

# Generate the new configuration file
for var in "${!TW_@}"; do
    printf '%s %s\n' "${var#TW_}" "${!var}" >> server.cfg
done

# Start the server
exec ./teeworlds_srv -f server.cfg
