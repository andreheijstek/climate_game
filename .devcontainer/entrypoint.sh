#!/usr/bin/env bash
set -e

echo "Removing old Rails PID if present..."
rm -f /app/tmp/pids/server.pid

exec "$@"
