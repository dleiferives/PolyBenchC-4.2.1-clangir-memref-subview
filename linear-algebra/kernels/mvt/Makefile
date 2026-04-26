include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

mvt: mvt.c mvt.h
	${VERBOSE} ${CC} -o mvt mvt.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: mvt.cir

mlir: mvt.cir.mlir

mvt.cir:
	${VERBOSE} ${CC} -emit-cir  mvt.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp mvt.mlir mvt.cir

mvt.cir.mlir: mvt.cir
	cir-opt mvt.cir --cir-to-mlir -o mvt.cir.mlir 

clean:
	@ rm -f mvt *.cir *.mlir

