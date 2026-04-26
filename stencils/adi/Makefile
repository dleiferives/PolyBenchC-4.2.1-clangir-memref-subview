include ../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

adi: adi.c adi.h
	${VERBOSE} ${CC} -o adi adi.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

cir: adi.cir

mlir: adi.cir.mlir

adi.cir:
	${VERBOSE} ${CC} -emit-cir  adi.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}
	cp adi.mlir adi.cir

adi.cir.mlir: adi.cir
	cir-opt adi.cir --cir-to-mlir -o adi.cir.mlir 

clean:
	@ rm -f adi *.cir *.mlir

