include ../../../config.mk

EXTRA_FLAGS=-lm

.PHONY: mlir cir clean

cholesky: cholesky.c cholesky.h
	${VERBOSE} ${CC} -o cholesky cholesky.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: cholesky.cir

mlir: cholesky.cir.mlir

cholesky.cir:
	${VERBOSE} ${CC} -emit-cir  cholesky.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp cholesky.mlir cholesky.cir

cholesky.cir.mlir: cholesky.cir
	cir-opt cholesky.cir --cir-to-mlir -o cholesky.cir.mlir 

clean:
	@ rm -f cholesky *.cir *.mlir

