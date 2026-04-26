include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

symm: symm.c symm.h
	${VERBOSE} ${CC} -o symm symm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: symm.cir

mlir: symm.cir.mlir

symm.cir:
	${VERBOSE} ${CC} -emit-cir  symm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp symm.mlir symm.cir

symm.cir.mlir: symm.cir
	cir-opt symm.cir --cir-to-mlir -o symm.cir.mlir 

clean:
	@ rm -f symm *.cir *.mlir

