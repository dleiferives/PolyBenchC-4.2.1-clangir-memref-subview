include ../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

nussinov: nussinov.c nussinov.h
	${VERBOSE} ${CC} -o nussinov nussinov.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

cir: nussinov.cir

mlir: nussinov.cir.mlir

nussinov.cir:
	${VERBOSE} ${CC} -emit-cir  nussinov.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}
	cp nussinov.mlir nussinov.cir

nussinov.cir.mlir: nussinov.cir
	cir-opt nussinov.cir --cir-to-mlir -o nussinov.cir.mlir 

clean:
	@ rm -f nussinov *.cir *.mlir

