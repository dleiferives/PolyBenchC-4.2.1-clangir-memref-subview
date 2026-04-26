include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

gemver: gemver.c gemver.h
	${VERBOSE} ${CC} -o gemver gemver.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: gemver.cir

mlir: gemver.cir.mlir

gemver.cir:
	${VERBOSE} ${CC} -emit-cir  gemver.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp gemver.mlir gemver.cir

gemver.cir.mlir: gemver.cir
	cir-opt gemver.cir --cir-to-mlir -o gemver.cir.mlir 

clean:
	@ rm -f gemver *.cir *.mlir

