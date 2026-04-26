include ../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

fdtd-2d: fdtd-2d.c fdtd-2d.h
	${VERBOSE} ${CC} -o fdtd-2d fdtd-2d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

cir: fdtd-2d.cir

mlir: fdtd-2d.cir.mlir

fdtd-2d.cir:
	${VERBOSE} ${CC} -emit-cir  fdtd-2d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}
	cp fdtd-2d.mlir fdtd-2d.cir

fdtd-2d.cir.mlir: fdtd-2d.cir
	cir-opt fdtd-2d.cir --cir-to-mlir -o fdtd-2d.cir.mlir 

clean:
	@ rm -f fdtd-2d *.cir *.mlir

