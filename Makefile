OUTPUT = yamax.urdf
INPUT = robots/yamax.xacro

$(OUTPUT): $(INPUT) $(wildcard xacro/*.xacro) $(wildcard xacro/config/*.xacro)
	xacro $(INPUT) --inorder --xacro-ns > $(OUTPUT)

.PHONY: clean
clean:
	rm $(OUTPUT)
