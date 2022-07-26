#!/bin/bash
for it in {1..100}; do
  touch ${it}
  [ ! -d "repository" ] && mkdir repository
  cp ../test.img repository/${it}.bin
  git add *
  git commit -m "Populate ${it}" --allow-empty
  git push
done
