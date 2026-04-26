# Correlation — CIR compilation notes

## Paths

### CIR → MLIR (ThroughMLIR)
```
make clean && make mlir
# produces correlation.cir.mlir
```
Requires the patched `cir-opt` (fixes for `fprintf` variadic lowering, see below).

### CIR → LLVM (DirectToLLVM)
```
clang -c correlation.c -O2 -DPOLYBENCH_USE_C99_PROTO -DPOLYBENCH_TIME \
  -I. -I../../utilities \
  -fclangir-direct-lowering \
  -o correlation.direct.o
```

To inspect the LLVM dialect output instead of emitting an object:
```
clang -c correlation.c -O2 -DPOLYBENCH_USE_C99_PROTO -DPOLYBENCH_TIME \
  -I. -I../../utilities \
  -fclangir-direct-lowering \
  -emit-mlir=llvm \
  -o correlation.direct.ll.mlir
```

## Fixes applied to cir-opt (LowerCIRToMLIR.cpp)

**Problem:** `fprintf` was lowered to `func.call` (failing verification) instead of `llvm.call`.

**Root cause:** `CIRFuncOpLowering` converts `cir.func @fprintf` to `llvm.func` before `CIRCallOpLowering` processes the call sites. The fallback lookup for `mlir::LLVM::LLVMFuncOp` existed but was blocked by two build errors:

1. `mlir::ArrayRef<mlir::Type>(TypeRange::iterator, TypeRange::iterator)` — no such constructor.
   Fixed by replacing with `SmallVector` + `llvm::append_range`.

2. `op.getResult(0)` — `cir::CallOp` generates a zero-arg `getResult()` wrapper; calling it with `(0)` gives "too many arguments".
   Fixed by using `op->getResult(0)` (base `mlir::Operation` method).
