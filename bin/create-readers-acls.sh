#!/usr/bin/env bash

TOPIC="${TOPIC:-'stream.out'}"

IFS=',' read -r -a users <<<"$READERS"

if [ ${#users[@]} -eq 0 ]; then
  echo "no readers specified"
else
  for user in "${users[@]}"; do
    echo "Adding acl for user: $user on topic: $TOPIC"
    kafka-acls \
      --bootstrap-server localhost:9092 \
      --add \
      --allow-principal User:"$user" \
      --consumer \
      --group "*" \
      --topic "$TOPIC"
  done
fi
