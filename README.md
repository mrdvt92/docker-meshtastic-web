# Docker Meshtastic Web Client

The online Meshtastic Web Client at https://client.meshtastic.org/ does not support HTTP connections and for my situation the online system did not support my local HTTPS connection.  Therefore, this is my local docker build for Meshtastic Web Client.  This works on my network from anywhere in the world with my VPN.

# Docker Image

The docker image can be found at https://ghcr.io/meshtastic/web

The source is on GitHub at https://github.com/meshtastic/web 

# Run Docker

The HTTP web server in the container is running on port 8080 but, that common port is in use on my docker host. I moved  to the port to 5082.

`make run`

# Open Firewall

`make firewall`

# Access the Meshtastic Web Interface

http://{{server}}:5082/

