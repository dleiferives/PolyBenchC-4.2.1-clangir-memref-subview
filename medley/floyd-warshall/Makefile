include ../../config.mk

EXTRA_FLAGS=

.PHONY: mlir cir clean

floyd-warshall: floyd-warshall.c floyd-warshall.h
	${VERBOSE} ${CC} -o floyd-warshall floyd-warshall.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}

cir: floyd-warshall.cir

mlir: floyd-warshall.cir.mlir

floyd-warshall.cir:
	${VERBOSE} ${CC} -emit-cir  floyd-warshall.c ${CFLAGS} -I. -I../../utilities ../../utilities/polybench.c ${EXTRA_FLAGS}
	cp floyd-warshall.mlir floyd-warshall.cir

floyd-warshall.cir.mlir: floyd-warshall.cir
	cir-opt floyd-warshall.cir --cir-to-mlir -o floyd-warshall.cir.mlir 

clean:
	@ rm -f floyd-warshall *.cir *.mlir

