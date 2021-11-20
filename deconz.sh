 docker run -d \
   --name=deconz \
   --net=host \
   --restart=always \
   -v /etc/localtime:/etc/localtime:ro \
   -v ~/.local/share/dresden-elektronik/deCONZ:/root/.local/share/dresden-elektronik/deCONZ \
   --device=/dev/ttyACM0 \
   -e DECONZ_DEVICE=/dev/ttyACM0 \
   -e DECONZ_WEB_PORT=8080 \
   -e DECONZ_WS_PORT=8443 \
   deconzcommunity/deconz