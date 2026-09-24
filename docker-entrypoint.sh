#!/bin/sh
set -e

db_dir=$(dirname "${DATABASE_PATH:-/app/data/chalk.db}")
mkdir -p "$db_dir"
chown -R node:node "$db_dir"

exec su node -s /bin/sh -c 'exec "$@"' sh "$@"