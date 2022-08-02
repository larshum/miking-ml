transform-dune: FORCE
	$(eval PWD := $(shell pwd))
	sed 's:%%PWD%%:$(PWD):g' dune.untransformed > dune
FORCE:

program.exe: program.ml libmexpr-cuda.a
	dune build $@
libmexpr-cuda.a: mexpr-cuda.cu
	nvcc -I`ocamlc -where` $^ -lib -O3 -o $@
rebuild: transform-dune
	rm -f libmexpr-cuda.a
	dune clean
	make program.exe
