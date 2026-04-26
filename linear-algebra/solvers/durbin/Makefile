include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

durbin: durbin.c durbin.h
	${VERBOSE} ${CC} -o durbin durbin.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: durbin.cir

mlir: durbin.cir.mlir

durbin.cir:
	${VERBOSE} ${CC} -emit-cir  durbin.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp durbin.mlir durbin.cir

durbin.cir.mlir: durbin.cir
	cir-opt durbin.cir --cir-to-mlir -o durbin.cir.mlir 

clean:
	@ rm -f durbin *.cir *.mlir

