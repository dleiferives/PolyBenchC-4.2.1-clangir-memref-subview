include ../../config.mk

EXTRA_FLAGS=-lm

.PHONY: mlir cir clean

correlation: correlation.c correlation.h
	${VERBOSE} ${CC} -o correlation correlation.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

cir: correlation.cir

mlir: correlation.cir.mlir

correlation.cir:
	${VERBOSE} ${CC} -emit-cir  correlation.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}
	cp correlation.mlir correlation.cir

correlation.cir.mlir: correlation.cir
	cir-opt correlation.cir --cir-to-mlir -o correlation.cir.mlir 

clean:
	@ rm -f correlation *.cir *.mlir

