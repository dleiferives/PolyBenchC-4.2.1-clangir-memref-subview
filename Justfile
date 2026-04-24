
gen:
	perl utilities/makefile-gen.pl .

make-all:
	find . -name Makefile -execdir make \;

clean-all:
	find . -name Makefile -execdir make clean \;


cir-all:
	find . -name Makefile -execdir make cir \;


mlir-all:
	find . -name Makefile -execdir make mlir \;
