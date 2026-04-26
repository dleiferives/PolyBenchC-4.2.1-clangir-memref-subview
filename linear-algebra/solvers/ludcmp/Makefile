include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

ludcmp: ludcmp.c ludcmp.h
	${VERBOSE} ${CC} -o ludcmp ludcmp.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: ludcmp.cir

mlir: ludcmp.cir.mlir

ludcmp.cir:
	${VERBOSE} ${CC} -emit-cir  ludcmp.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp ludcmp.mlir ludcmp.cir

ludcmp.cir.mlir: ludcmp.cir
	cir-opt ludcmp.cir --cir-to-mlir -o ludcmp.cir.mlir 

clean:
	@ rm -f ludcmp *.cir *.mlir

