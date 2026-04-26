include ../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

seidel-2d: seidel-2d.c seidel-2d.h
	${VERBOSE} ${CC} -o seidel-2d seidel-2d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

cir: seidel-2d.cir

mlir: seidel-2d.cir.mlir

seidel-2d.cir:
	${VERBOSE} ${CC} -emit-cir  seidel-2d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}
	cp seidel-2d.mlir seidel-2d.cir

seidel-2d.cir.mlir: seidel-2d.cir
	cir-opt seidel-2d.cir --cir-to-mlir -o seidel-2d.cir.mlir 

clean:
	@ rm -f seidel-2d *.cir *.mlir

