program.exe: program.ml libgpu.a
	dune build $@
libgpu.a: gpu.cu
	nvcc -I`ocamlc -where` $^ -lib -O3 -o $@
rebuild:
	rm -f libgpu.a
	dune clean
	make program.exe
