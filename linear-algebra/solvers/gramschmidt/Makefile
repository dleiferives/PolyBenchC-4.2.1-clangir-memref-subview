include ../../../config.mk

EXTRA_FLAGS=-lm

.PHONY: mlir cir clean

gramschmidt: gramschmidt.c gramschmidt.h
	${VERBOSE} ${CC} -o gramschmidt gramschmidt.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}

cir: gramschmidt.cir

mlir: gramschmidt.cir.mlir

gramschmidt.cir:
	${VERBOSE} ${CC} -emit-cir  gramschmidt.c ${CFLAGS} -I. -I../../../utilities ../../../utilities/polybench.c ${EXTRA_FLAGS}
	cp gramschmidt.mlir gramschmidt.cir

gramschmidt.cir.mlir: gramschmidt.cir
	cir-opt gramschmidt.cir --cir-to-mlir -o gramschmidt.cir.mlir 

clean:
	@ rm -f gramschmidt *.cir *.mlir

