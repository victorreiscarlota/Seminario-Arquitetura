#!/bin/sh
while true; do
  inotifywait -r -e modify,create,delete /usr/share/nginx/html
  echo "Detectada alteração. Recarregando navegadores..."
  curl -X POST http://localhost:35729/kick
done