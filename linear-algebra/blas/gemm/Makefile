include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

gemm: gemm.c gemm.h
	${VERBOSE} ${CC} -o gemm gemm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: gemm.cir

mlir: gemm.cir.mlir

gemm.cir:
	${VERBOSE} ${CC} -emit-cir  gemm.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp gemm.mlir gemm.cir

gemm.cir.mlir: gemm.cir
	cir-opt gemm.cir --cir-to-mlir -o gemm.cir.mlir 

clean:
	@ rm -f gemm *.cir *.mlir

