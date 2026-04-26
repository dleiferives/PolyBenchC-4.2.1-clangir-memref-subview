include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

syr2k: syr2k.c syr2k.h
	${VERBOSE} ${CC} -o syr2k syr2k.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: syr2k.cir

mlir: syr2k.cir.mlir

syr2k.cir:
	${VERBOSE} ${CC} -emit-cir  syr2k.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp syr2k.mlir syr2k.cir

syr2k.cir.mlir: syr2k.cir
	cir-opt syr2k.cir --cir-to-mlir -o syr2k.cir.mlir 

clean:
	@ rm -f syr2k *.cir *.mlir

