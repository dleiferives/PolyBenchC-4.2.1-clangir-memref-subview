include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

trisolv: trisolv.c trisolv.h
	${VERBOSE} ${CC} -o trisolv trisolv.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: trisolv.cir

mlir: trisolv.cir.mlir

trisolv.cir:
	${VERBOSE} ${CC} -emit-cir  trisolv.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp trisolv.mlir trisolv.cir

trisolv.cir.mlir: trisolv.cir
	cir-opt trisolv.cir --cir-to-mlir -o trisolv.cir.mlir 

clean:
	@ rm -f trisolv *.cir *.mlir

