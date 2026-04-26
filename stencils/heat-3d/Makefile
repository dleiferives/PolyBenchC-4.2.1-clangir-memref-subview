include ../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

heat-3d: heat-3d.c heat-3d.h
	${VERBOSE} ${CC} -o heat-3d heat-3d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

cir: heat-3d.cir

mlir: heat-3d.cir.mlir

heat-3d.cir:
	${VERBOSE} ${CC} -emit-cir  heat-3d.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}
	cp heat-3d.mlir heat-3d.cir

heat-3d.cir.mlir: heat-3d.cir
	cir-opt heat-3d.cir --cir-to-mlir -o heat-3d.cir.mlir 

clean:
	@ rm -f heat-3d *.cir *.mlir

