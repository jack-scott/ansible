#!/bin/bash
DATA_LOCATION=/home/jack/archive_data
docker run -v $DATA_LOCATION:/data -it -p 8000:8000 archivebox/archivebox:dev
