include ../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

covariance: covariance.c covariance.h
	${VERBOSE} ${CC} -o covariance covariance.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

cir: covariance.cir

mlir: covariance.cir.mlir

covariance.cir:
	${VERBOSE} ${CC} -emit-cir  covariance.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}
	cp covariance.mlir covariance.cir

covariance.cir.mlir: covariance.cir
	cir-opt covariance.cir --cir-to-mlir -o covariance.cir.mlir 

clean:
	@ rm -f covariance *.cir *.mlir

