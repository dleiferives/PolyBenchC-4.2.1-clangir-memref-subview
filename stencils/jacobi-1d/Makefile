include ../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

jacobi-1d: jacobi-1d.c jacobi-1d.h
	${VERBOSE} ${CC} -o jacobi-1d jacobi-1d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

cir: jacobi-1d.cir

mlir: jacobi-1d.cir.mlir

jacobi-1d.cir:
	${VERBOSE} ${CC} -emit-cir  jacobi-1d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}
	cp jacobi-1d.mlir jacobi-1d.cir

jacobi-1d.cir.mlir: jacobi-1d.cir
	cir-opt jacobi-1d.cir --cir-to-mlir -o jacobi-1d.cir.mlir 

clean:
	@ rm -f jacobi-1d *.cir *.mlir

