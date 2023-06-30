#!/usr/bin/env sh

DIRECTORY=data

if [ ! -d "$DIRECTORY" ]; then
  echo "$POSTGRES_USER" > .pwd
  initdb -D "$DIRECTORY" -U "$POSTGRES_USER" --pwfile=.pwd
  rm .pwd
fi

exec postgres -p "$PORT" -D "$DIRECTORY"
