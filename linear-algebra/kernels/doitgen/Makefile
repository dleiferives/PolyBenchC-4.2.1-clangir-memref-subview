include ../../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

doitgen: doitgen.c doitgen.h
	${VERBOSE} ${CC} -o doitgen doitgen.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: doitgen.cir

mlir: doitgen.cir.mlir

doitgen.cir:
	${VERBOSE} ${CC} -emit-cir  doitgen.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp doitgen.mlir doitgen.cir

doitgen.cir.mlir: doitgen.cir
	cir-opt doitgen.cir --cir-to-mlir -o doitgen.cir.mlir 

clean:
	@ rm -f doitgen *.cir *.mlir

