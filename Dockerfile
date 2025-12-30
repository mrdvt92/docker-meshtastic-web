FROM ghcr.io/meshtastic/web:nightly

WORKDIR /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
