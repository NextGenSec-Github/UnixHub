#!/bin/bash

# Generate IPs for a given range
for ip in $(seq 1 254); do
  echo "172.16.10.${ip}" >> 172-16-10-hosts.txt
done

# Or just use echo 10.1.0.{1..254} | sed 's/ /\n/g' >> ip_range.txt
# Or printf "10.1.0.%d\n" {1..254} >> ip_range.txt
