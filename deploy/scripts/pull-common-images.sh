#!/bin/bash
set -eo pipefail

docker pull daunnc/geodocker-zookeeper:latest
docker pull daunnc/geodocker-hadoop:latest
docker pull daunnc/geodocker-accumulo-gis:latest
docker pull daunnc/geodocker-spark:latest

