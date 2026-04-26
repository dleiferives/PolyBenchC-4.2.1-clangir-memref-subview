include ../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

deriche: deriche.c deriche.h
	${VERBOSE} ${CC} -o deriche deriche.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

cir: deriche.cir

mlir: deriche.cir.mlir

deriche.cir:
	${VERBOSE} ${CC} -emit-cir  deriche.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}
	cp deriche.mlir deriche.cir

deriche.cir.mlir: deriche.cir
	cir-opt deriche.cir --cir-to-mlir -o deriche.cir.mlir 

clean:
	@ rm -f deriche *.cir *.mlir

