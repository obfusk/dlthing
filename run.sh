#!/bin/bash
: ${BROWSER:=xdg-open} ${PORT:=8888} ${HOST:=127.0.0.1}
. .venv/bin/activate
if [ "$BROWSER" != none ]; then
  ( sleep 5; "$BROWSER" "http://$HOST:$PORT/" ) &
fi
FLASK_APP=app.py exec flask run -h "$HOST" -p "$PORT"
