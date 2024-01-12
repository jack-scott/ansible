#!/bin/bash
DATA_LOCATION=/home/jack/archive_data
docker run -v $DATA_LOCATION:/data -it archivebox/archivebox:dev add $1
