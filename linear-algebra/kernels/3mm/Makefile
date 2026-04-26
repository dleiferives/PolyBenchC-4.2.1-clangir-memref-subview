include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

3mm: 3mm.c 3mm.h
	${VERBOSE} ${CC} -o 3mm 3mm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: 3mm.cir

mlir: 3mm.cir.mlir

3mm.cir:
	${VERBOSE} ${CC} -emit-cir  3mm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp 3mm.mlir 3mm.cir

3mm.cir.mlir: 3mm.cir
	cir-opt 3mm.cir --cir-to-mlir -o 3mm.cir.mlir 

clean:
	@ rm -f 3mm *.cir *.mlir

