# syntax=docker/dockerfile:1
FROM busybox:latest
COPY --chmod=755 <<EOF /app/run.sh
#!/bin/sh
while true; do
  echo -ne "The time bh 21now $(date +%T)\\r"
  sleep 1
done
EOF

ENTRYPOINT /app/run.sh
