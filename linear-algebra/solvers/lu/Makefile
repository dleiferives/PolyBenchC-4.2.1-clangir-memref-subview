include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

lu: lu.c lu.h
	${VERBOSE} ${CC} -o lu lu.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: lu.cir

mlir: lu.cir.mlir

lu.cir:
	${VERBOSE} ${CC} -emit-cir  lu.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp lu.mlir lu.cir

lu.cir.mlir: lu.cir
	cir-opt lu.cir --cir-to-mlir -o lu.cir.mlir 

clean:
	@ rm -f lu *.cir *.mlir

