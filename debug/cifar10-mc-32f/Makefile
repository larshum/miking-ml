transform-dune: FORCE
	$(eval PWD := $(shell pwd))
	sed 's:%%PWD%%:$(PWD):g' dune.untransformed > dune
FORCE:

program.exe: program.ml libgpu.a
	dune build $@
libgpu.a: gpu.cu
	nvcc -I`ocamlc -where` $^ -lib -O3 -o $@
rebuild: transform-dune
	rm -f libgpu.a
	dune clean
	make program.exe
