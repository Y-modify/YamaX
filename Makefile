OUTPUT = yamax.urdf
INPUT = robots/yamax.xacro

$(OUTPUT): $(INPUT) $(wildcard xacro/*.xacro) $(wildcard xacro/config/*.xacro)
	. /opt/ros/lunar/setup.sh
	xacro $(INPUT) --inorder --xacro-ns > $(OUTPUT)
