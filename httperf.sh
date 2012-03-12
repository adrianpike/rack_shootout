#!/bin/bash
echo "===== BANG ====="
httperf --hog --server 192.168.1.3 --port 8080 --uri /bang --wsess=1000,5,2 --rate=10 --timeout 5

echo "===== BOOM ====="
httperf --hog --server 192.168.1.3 --port 8080 --uri /boom --wsess=1000,5,2 --rate=10 --timeout 5