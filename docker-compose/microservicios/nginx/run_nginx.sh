#!/bin/bash
docker run -d --name nginx --network="NOMBRE DE LA RED" -p 8443:8443 -v $(pwd)/conf:/etc/nginx -v $(pwd)/ssl:/etc/ssl -v $(pwd)/logs:/var/log/nginx nginx_custom
