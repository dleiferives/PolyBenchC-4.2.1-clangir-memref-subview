include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

bicg: bicg.c bicg.h
	${VERBOSE} ${CC} -o bicg bicg.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: bicg.cir

mlir: bicg.cir.mlir

bicg.cir:
	${VERBOSE} ${CC} -emit-cir  bicg.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp bicg.mlir bicg.cir

bicg.cir.mlir: bicg.cir
	cir-opt bicg.cir --cir-to-mlir -o bicg.cir.mlir 

clean:
	@ rm -f bicg *.cir *.mlir

