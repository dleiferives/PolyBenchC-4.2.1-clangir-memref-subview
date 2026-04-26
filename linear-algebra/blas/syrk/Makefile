include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

syrk: syrk.c syrk.h
	${VERBOSE} ${CC} -o syrk syrk.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: syrk.cir

mlir: syrk.cir.mlir

syrk.cir:
	${VERBOSE} ${CC} -emit-cir  syrk.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp syrk.mlir syrk.cir

syrk.cir.mlir: syrk.cir
	cir-opt syrk.cir --cir-to-mlir -o syrk.cir.mlir 

clean:
	@ rm -f syrk *.cir *.mlir

