#!/bin/bash

#https://github.com/ArchiveBox/ArchiveBox

DATA_LOCATION=/home/jack/archive_data

docker run -v $DATA_LOCATION:/data -it archivebox/archivebox:dev init --setup
