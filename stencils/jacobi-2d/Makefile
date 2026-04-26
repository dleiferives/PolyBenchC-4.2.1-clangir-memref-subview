include ../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

jacobi-2d: jacobi-2d.c jacobi-2d.h
	${VERBOSE} ${CC} -o jacobi-2d jacobi-2d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

cir: jacobi-2d.cir

mlir: jacobi-2d.cir.mlir

jacobi-2d.cir:
	${VERBOSE} ${CC} -emit-cir  jacobi-2d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}
	cp jacobi-2d.mlir jacobi-2d.cir

jacobi-2d.cir.mlir: jacobi-2d.cir
	cir-opt jacobi-2d.cir --cir-to-mlir -o jacobi-2d.cir.mlir 

clean:
	@ rm -f jacobi-2d *.cir *.mlir

