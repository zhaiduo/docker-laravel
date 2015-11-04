
###Enter container:
docker exec -it dockerlaravel_phpnginx_1 /bin/bash

###Copy data to container:
docker cp data dockerlaravel_phpnginx_1:/var/www

###Start
docker-machine (re)start default

###Machine
docker-machine env default

###Close
docker-machine stop default

###IP
docker-machine ip

###Help
docker-machine help

