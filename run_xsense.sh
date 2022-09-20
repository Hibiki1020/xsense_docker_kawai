#!/bin/bash
image_name="amsl_xsense_ros"
tag_name="kinetic"

docker run -it --rm \
	--net=host \
	--privileged \
	$image_name:$tag_name \
	bash -c "source /home/ros_catkin_ws/devel/setup.bash;rosrun xsens_driver mtdevice.py -c oq100,aa100,wr100;roslaunch xsens_driver xsens_driver.launch"