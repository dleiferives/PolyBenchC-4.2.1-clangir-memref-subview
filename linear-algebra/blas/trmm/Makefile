include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

trmm: trmm.c trmm.h
	${VERBOSE} ${CC} -o trmm trmm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: trmm.cir

mlir: trmm.cir.mlir

trmm.cir:
	${VERBOSE} ${CC} -emit-cir  trmm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp trmm.mlir trmm.cir

trmm.cir.mlir: trmm.cir
	cir-opt trmm.cir --cir-to-mlir -o trmm.cir.mlir 

clean:
	@ rm -f trmm *.cir *.mlir

