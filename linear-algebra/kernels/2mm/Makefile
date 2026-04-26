include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

2mm: 2mm.c 2mm.h
	${VERBOSE} ${CC} -o 2mm 2mm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: 2mm.cir

mlir: 2mm.cir.mlir

2mm.cir:
	${VERBOSE} ${CC} -emit-cir  2mm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp 2mm.mlir 2mm.cir

2mm.cir.mlir: 2mm.cir
	cir-opt 2mm.cir --cir-to-mlir -o 2mm.cir.mlir 

clean:
	@ rm -f 2mm *.cir *.mlir

