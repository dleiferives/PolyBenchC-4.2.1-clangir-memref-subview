include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

atax: atax.c atax.h
	${VERBOSE} ${CC} -o atax atax.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: atax.cir

mlir: atax.cir.mlir

atax.cir:
	${VERBOSE} ${CC} -emit-cir  atax.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp atax.mlir atax.cir

atax.cir.mlir: atax.cir
	cir-opt atax.cir --cir-to-mlir -o atax.cir.mlir 

clean:
	@ rm -f atax *.cir *.mlir

