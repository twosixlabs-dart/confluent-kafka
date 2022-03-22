#!/usr/bin/env bash

nohup /etc/confluent/docker/run >> /root/kafka.log &

create-readers-acls.sh

tail -f /root/kafka.log