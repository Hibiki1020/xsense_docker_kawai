#!/bin/bash

image_name="amsl_xsense_ros"
tag_name="kinetic"
docker build -t $image_name:$tag_name --no-cache .