include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

gesummv: gesummv.c gesummv.h
	${VERBOSE} ${CC} -o gesummv gesummv.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: gesummv.cir

mlir: gesummv.cir.mlir

gesummv.cir:
	${VERBOSE} ${CC} -emit-cir  gesummv.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp gesummv.mlir gesummv.cir

gesummv.cir.mlir: gesummv.cir
	cir-opt gesummv.cir --cir-to-mlir -o gesummv.cir.mlir 

clean:
	@ rm -f gesummv *.cir *.mlir

