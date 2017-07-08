#!/bin/bash
: ${BROWSER:=xdg-open} ${PORT:=8888} ${HOST:=127.0.0.1}
[ -e .venv ] && . .venv/bin/activate
if [ "$BROWSER" != none ]; then
  ( sleep 3; "$BROWSER" "http://$HOST:$PORT/" ) &
fi
FLASK_APP=dlthing.py exec flask run -h "$HOST" -p "$PORT"
