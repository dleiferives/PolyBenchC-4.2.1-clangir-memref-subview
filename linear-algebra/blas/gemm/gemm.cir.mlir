module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/blas/gemm/gemm.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_7 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_8 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_9 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_9] : memref<1xi32>
    %c0_10 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_10] : memref<1xi32>
    %c0_11 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_12] : memref<1xmemref<?xf64>>
    %c0_13 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_13] : memref<1xmemref<?xf64>>
    %c0_14 = arith.constant 0 : index
    memref.store %arg6, %alloca_5[%c0_14] : memref<1xmemref<?xf64>>
    %c0_15 = arith.constant 0 : index
    memref.store %arg7, %alloca_6[%c0_15] : memref<1xmemref<?xf64>>
    %c0_16 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_16] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_17 = arith.constant 0 : index
    %3 = memref.load %alloca_1[%c0_17] : memref<1xi32>
    %c0_i32_18 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_18 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_19 = arith.constant 0 : index
    %6 = memref.load %alloca_0[%c0_19] : memref<1xi32>
    %c0_i32_20 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_20 : i32
    %8 = arith.extsi %7 : i32 to i64
    %cst = arith.constant 1.500000e+00 : f64
    %c0_21 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_21] : memref<1xmemref<?xf64>>
    %c0_22 = arith.constant 0 : index
    memref.store %cst, %9[%c0_22] : memref<?xf64>
    %cst_23 = arith.constant 1.200000e+00 : f64
    %c0_24 = arith.constant 0 : index
    %10 = memref.load %alloca_3[%c0_24] : memref<1xmemref<?xf64>>
    %c0_25 = arith.constant 0 : index
    memref.store %cst_23, %10[%c0_25] : memref<?xf64>
    memref.alloca_scope  {
      %c0_i32_26 = arith.constant 0 : i32
      %c0_27 = arith.constant 0 : index
      memref.store %c0_i32_26, %alloca_7[%c0_27] : memref<1xi32>
      scf.while : () -> () {
        %c0_28 = arith.constant 0 : index
        %11 = memref.load %alloca_7[%c0_28] : memref<1xi32>
        %c0_29 = arith.constant 0 : index
        %12 = memref.load %alloca[%c0_29] : memref<1xi32>
        %13 = arith.cmpi slt, %11, %12 : i32
        scf.condition(%13)
      } do {
        memref.alloca_scope  {
          %c0_i32_30 = arith.constant 0 : i32
          %c0_31 = arith.constant 0 : index
          memref.store %c0_i32_30, %alloca_8[%c0_31] : memref<1xi32>
          scf.while : () -> () {
            %c0_32 = arith.constant 0 : index
            %13 = memref.load %alloca_8[%c0_32] : memref<1xi32>
            %c0_33 = arith.constant 0 : index
            %14 = memref.load %alloca_0[%c0_33] : memref<1xi32>
            %15 = arith.cmpi slt, %13, %14 : i32
            scf.condition(%15)
          } do {
            %c0_32 = arith.constant 0 : index
            %13 = memref.load %alloca_7[%c0_32] : memref<1xi32>
            %c0_33 = arith.constant 0 : index
            %14 = memref.load %alloca_8[%c0_33] : memref<1xi32>
            %15 = arith.muli %13, %14 : i32
            %c1_i32_34 = arith.constant 1 : i32
            %16 = arith.addi %15, %c1_i32_34 : i32
            %c0_35 = arith.constant 0 : index
            %17 = memref.load %alloca[%c0_35] : memref<1xi32>
            %18 = arith.remsi %16, %17 : i32
            %19 = arith.sitofp %18 : i32 to f64
            %c0_36 = arith.constant 0 : index
            %20 = memref.load %alloca[%c0_36] : memref<1xi32>
            %21 = arith.sitofp %20 : i32 to f64
            %22 = arith.divf %19, %21 : f64
            %c0_37 = arith.constant 0 : index
            %23 = memref.load %alloca_4[%c0_37] : memref<1xmemref<?xf64>>
            %c0_38 = arith.constant 0 : index
            %24 = memref.load %alloca_7[%c0_38] : memref<1xi32>
            %25 = arith.extsi %24 : i32 to i64
            %26 = arith.muli %25, %2 : i64
            %27 = arith.index_cast %26 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_39 = arith.constant 0 : index
            %c0_40 = arith.constant 0 : index
            %dim = memref.dim %23, %c0_40 : memref<?xf64>
            %28 = arith.subi %dim, %27 : index
            %subview = memref.subview %23[%27] [%28] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%28], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_41 = arith.constant 0 : index
            %29 = memref.load %alloca_8[%c0_41] : memref<1xi32>
            %30 = arith.index_cast %29 : i32 to index
            %c0_42 = arith.constant 0 : index
            %dim_43 = memref.dim %reinterpret_cast, %c0_42 : memref<?xf64>
            %31 = arith.subi %dim_43, %30 : index
            %c1_44 = arith.constant 1 : index
            %subview_45 = memref.subview %reinterpret_cast[%30] [%31] [%c1_44] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_46 = arith.constant 0 : index
            memref.store %22, %subview_45[%c0_46] : memref<?xf64, strided<[?], offset: ?>>
            %c0_47 = arith.constant 0 : index
            %32 = memref.load %alloca_8[%c0_47] : memref<1xi32>
            %c1_i32_48 = arith.constant 1 : i32
            %33 = arith.addi %32, %c1_i32_48 : i32
            %c0_49 = arith.constant 0 : index
            memref.store %33, %alloca_8[%c0_49] : memref<1xi32>
            scf.yield
          }
        }
        %c0_28 = arith.constant 0 : index
        %11 = memref.load %alloca_7[%c0_28] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %12 = arith.addi %11, %c1_i32 : i32
        %c0_29 = arith.constant 0 : index
        memref.store %12, %alloca_7[%c0_29] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_26 = arith.constant 0 : i32
      %c0_27 = arith.constant 0 : index
      memref.store %c0_i32_26, %alloca_7[%c0_27] : memref<1xi32>
      scf.while : () -> () {
        %c0_28 = arith.constant 0 : index
        %11 = memref.load %alloca_7[%c0_28] : memref<1xi32>
        %c0_29 = arith.constant 0 : index
        %12 = memref.load %alloca[%c0_29] : memref<1xi32>
        %13 = arith.cmpi slt, %11, %12 : i32
        scf.condition(%13)
      } do {
        memref.alloca_scope  {
          %c0_i32_30 = arith.constant 0 : i32
          %c0_31 = arith.constant 0 : index
          memref.store %c0_i32_30, %alloca_8[%c0_31] : memref<1xi32>
          scf.while : () -> () {
            %c0_32 = arith.constant 0 : index
            %13 = memref.load %alloca_8[%c0_32] : memref<1xi32>
            %c0_33 = arith.constant 0 : index
            %14 = memref.load %alloca_1[%c0_33] : memref<1xi32>
            %15 = arith.cmpi slt, %13, %14 : i32
            scf.condition(%15)
          } do {
            %c0_32 = arith.constant 0 : index
            %13 = memref.load %alloca_7[%c0_32] : memref<1xi32>
            %c0_33 = arith.constant 0 : index
            %14 = memref.load %alloca_8[%c0_33] : memref<1xi32>
            %c1_i32_34 = arith.constant 1 : i32
            %15 = arith.addi %14, %c1_i32_34 : i32
            %16 = arith.muli %13, %15 : i32
            %c0_35 = arith.constant 0 : index
            %17 = memref.load %alloca_1[%c0_35] : memref<1xi32>
            %18 = arith.remsi %16, %17 : i32
            %19 = arith.sitofp %18 : i32 to f64
            %c0_36 = arith.constant 0 : index
            %20 = memref.load %alloca_1[%c0_36] : memref<1xi32>
            %21 = arith.sitofp %20 : i32 to f64
            %22 = arith.divf %19, %21 : f64
            %c0_37 = arith.constant 0 : index
            %23 = memref.load %alloca_5[%c0_37] : memref<1xmemref<?xf64>>
            %c0_38 = arith.constant 0 : index
            %24 = memref.load %alloca_7[%c0_38] : memref<1xi32>
            %25 = arith.extsi %24 : i32 to i64
            %26 = arith.muli %25, %5 : i64
            %27 = arith.index_cast %26 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_39 = arith.constant 0 : index
            %c0_40 = arith.constant 0 : index
            %dim = memref.dim %23, %c0_40 : memref<?xf64>
            %28 = arith.subi %dim, %27 : index
            %subview = memref.subview %23[%27] [%28] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%28], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_41 = arith.constant 0 : index
            %29 = memref.load %alloca_8[%c0_41] : memref<1xi32>
            %30 = arith.index_cast %29 : i32 to index
            %c0_42 = arith.constant 0 : index
            %dim_43 = memref.dim %reinterpret_cast, %c0_42 : memref<?xf64>
            %31 = arith.subi %dim_43, %30 : index
            %c1_44 = arith.constant 1 : index
            %subview_45 = memref.subview %reinterpret_cast[%30] [%31] [%c1_44] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_46 = arith.constant 0 : index
            memref.store %22, %subview_45[%c0_46] : memref<?xf64, strided<[?], offset: ?>>
            %c0_47 = arith.constant 0 : index
            %32 = memref.load %alloca_8[%c0_47] : memref<1xi32>
            %c1_i32_48 = arith.constant 1 : i32
            %33 = arith.addi %32, %c1_i32_48 : i32
            %c0_49 = arith.constant 0 : index
            memref.store %33, %alloca_8[%c0_49] : memref<1xi32>
            scf.yield
          }
        }
        %c0_28 = arith.constant 0 : index
        %11 = memref.load %alloca_7[%c0_28] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %12 = arith.addi %11, %c1_i32 : i32
        %c0_29 = arith.constant 0 : index
        memref.store %12, %alloca_7[%c0_29] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_26 = arith.constant 0 : i32
      %c0_27 = arith.constant 0 : index
      memref.store %c0_i32_26, %alloca_7[%c0_27] : memref<1xi32>
      scf.while : () -> () {
        %c0_28 = arith.constant 0 : index
        %11 = memref.load %alloca_7[%c0_28] : memref<1xi32>
        %c0_29 = arith.constant 0 : index
        %12 = memref.load %alloca_1[%c0_29] : memref<1xi32>
        %13 = arith.cmpi slt, %11, %12 : i32
        scf.condition(%13)
      } do {
        memref.alloca_scope  {
          %c0_i32_30 = arith.constant 0 : i32
          %c0_31 = arith.constant 0 : index
          memref.store %c0_i32_30, %alloca_8[%c0_31] : memref<1xi32>
          scf.while : () -> () {
            %c0_32 = arith.constant 0 : index
            %13 = memref.load %alloca_8[%c0_32] : memref<1xi32>
            %c0_33 = arith.constant 0 : index
            %14 = memref.load %alloca_0[%c0_33] : memref<1xi32>
            %15 = arith.cmpi slt, %13, %14 : i32
            scf.condition(%15)
          } do {
            %c0_32 = arith.constant 0 : index
            %13 = memref.load %alloca_7[%c0_32] : memref<1xi32>
            %c0_33 = arith.constant 0 : index
            %14 = memref.load %alloca_8[%c0_33] : memref<1xi32>
            %c2_i32 = arith.constant 2 : i32
            %15 = arith.addi %14, %c2_i32 : i32
            %16 = arith.muli %13, %15 : i32
            %c0_34 = arith.constant 0 : index
            %17 = memref.load %alloca_0[%c0_34] : memref<1xi32>
            %18 = arith.remsi %16, %17 : i32
            %19 = arith.sitofp %18 : i32 to f64
            %c0_35 = arith.constant 0 : index
            %20 = memref.load %alloca_0[%c0_35] : memref<1xi32>
            %21 = arith.sitofp %20 : i32 to f64
            %22 = arith.divf %19, %21 : f64
            %c0_36 = arith.constant 0 : index
            %23 = memref.load %alloca_6[%c0_36] : memref<1xmemref<?xf64>>
            %c0_37 = arith.constant 0 : index
            %24 = memref.load %alloca_7[%c0_37] : memref<1xi32>
            %25 = arith.extsi %24 : i32 to i64
            %26 = arith.muli %25, %8 : i64
            %27 = arith.index_cast %26 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_38 = arith.constant 0 : index
            %c0_39 = arith.constant 0 : index
            %dim = memref.dim %23, %c0_39 : memref<?xf64>
            %28 = arith.subi %dim, %27 : index
            %subview = memref.subview %23[%27] [%28] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%28], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_40 = arith.constant 0 : index
            %29 = memref.load %alloca_8[%c0_40] : memref<1xi32>
            %30 = arith.index_cast %29 : i32 to index
            %c0_41 = arith.constant 0 : index
            %dim_42 = memref.dim %reinterpret_cast, %c0_41 : memref<?xf64>
            %31 = arith.subi %dim_42, %30 : index
            %c1_43 = arith.constant 1 : index
            %subview_44 = memref.subview %reinterpret_cast[%30] [%31] [%c1_43] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_45 = arith.constant 0 : index
            memref.store %22, %subview_44[%c0_45] : memref<?xf64, strided<[?], offset: ?>>
            %c0_46 = arith.constant 0 : index
            %32 = memref.load %alloca_8[%c0_46] : memref<1xi32>
            %c1_i32_47 = arith.constant 1 : i32
            %33 = arith.addi %32, %c1_i32_47 : i32
            %c0_48 = arith.constant 0 : index
            memref.store %33, %alloca_8[%c0_48] : memref<1xi32>
            scf.yield
          }
        }
        %c0_28 = arith.constant 0 : index
        %11 = memref.load %alloca_7[%c0_28] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %12 = arith.addi %11, %c1_i32 : i32
        %c0_29 = arith.constant 0 : index
        memref.store %12, %alloca_7[%c0_29] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_7 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_8 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_9 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_10 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_10] : memref<1xi32>
    %c0_11 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_11] : memref<1xi32>
    %c0_12 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_12] : memref<1xf64>
    %c0_13 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_13] : memref<1xf64>
    %c0_14 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_14] : memref<1xmemref<?xf64>>
    %c0_15 = arith.constant 0 : index
    memref.store %arg6, %alloca_5[%c0_15] : memref<1xmemref<?xf64>>
    %c0_16 = arith.constant 0 : index
    memref.store %arg7, %alloca_6[%c0_16] : memref<1xmemref<?xf64>>
    %c0_17 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_17] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_18 = arith.constant 0 : index
    %3 = memref.load %alloca_1[%c0_18] : memref<1xi32>
    %c0_i32_19 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_19 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_20 = arith.constant 0 : index
    %6 = memref.load %alloca_0[%c0_20] : memref<1xi32>
    %c0_i32_21 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_21 : i32
    %8 = arith.extsi %7 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_22 = arith.constant 0 : i32
      %c0_23 = arith.constant 0 : index
      memref.store %c0_i32_22, %alloca_7[%c0_23] : memref<1xi32>
      scf.while : () -> () {
        %c0_24 = arith.constant 0 : index
        %9 = memref.load %alloca_7[%c0_24] : memref<1xi32>
        %c0_25 = arith.constant 0 : index
        %10 = memref.load %alloca[%c0_25] : memref<1xi32>
        %11 = arith.cmpi slt, %9, %10 : i32
        scf.condition(%11)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_i32_26 = arith.constant 0 : i32
            %c0_27 = arith.constant 0 : index
            memref.store %c0_i32_26, %alloca_8[%c0_27] : memref<1xi32>
            scf.while : () -> () {
              %c0_28 = arith.constant 0 : index
              %11 = memref.load %alloca_8[%c0_28] : memref<1xi32>
              %c0_29 = arith.constant 0 : index
              %12 = memref.load %alloca_0[%c0_29] : memref<1xi32>
              %13 = arith.cmpi slt, %11, %12 : i32
              scf.condition(%13)
            } do {
              %c0_28 = arith.constant 0 : index
              %11 = memref.load %alloca_3[%c0_28] : memref<1xf64>
              %c0_29 = arith.constant 0 : index
              %12 = memref.load %alloca_4[%c0_29] : memref<1xmemref<?xf64>>
              %c0_30 = arith.constant 0 : index
              %13 = memref.load %alloca_7[%c0_30] : memref<1xi32>
              %14 = arith.extsi %13 : i32 to i64
              %15 = arith.muli %14, %2 : i64
              %16 = arith.index_cast %15 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_31 = arith.constant 0 : index
              %c0_32 = arith.constant 0 : index
              %dim = memref.dim %12, %c0_32 : memref<?xf64>
              %17 = arith.subi %dim, %16 : index
              %subview = memref.subview %12[%16] [%17] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%17], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_33 = arith.constant 0 : index
              %18 = memref.load %alloca_8[%c0_33] : memref<1xi32>
              %19 = arith.index_cast %18 : i32 to index
              %c0_34 = arith.constant 0 : index
              %dim_35 = memref.dim %reinterpret_cast, %c0_34 : memref<?xf64>
              %20 = arith.subi %dim_35, %19 : index
              %c1_36 = arith.constant 1 : index
              %subview_37 = memref.subview %reinterpret_cast[%19] [%20] [%c1_36] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_38 = arith.constant 0 : index
              %21 = memref.load %subview_37[%c0_38] : memref<?xf64, strided<[?], offset: ?>>
              %22 = arith.mulf %21, %11 : f64
              %c0_39 = arith.constant 0 : index
              memref.store %22, %subview_37[%c0_39] : memref<?xf64, strided<[?], offset: ?>>
              %c0_40 = arith.constant 0 : index
              %23 = memref.load %alloca_8[%c0_40] : memref<1xi32>
              %c1_i32_41 = arith.constant 1 : i32
              %24 = arith.addi %23, %c1_i32_41 : i32
              %c0_42 = arith.constant 0 : index
              memref.store %24, %alloca_8[%c0_42] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c0_i32_26 = arith.constant 0 : i32
            %c0_27 = arith.constant 0 : index
            memref.store %c0_i32_26, %alloca_9[%c0_27] : memref<1xi32>
            scf.while : () -> () {
              %c0_28 = arith.constant 0 : index
              %11 = memref.load %alloca_9[%c0_28] : memref<1xi32>
              %c0_29 = arith.constant 0 : index
              %12 = memref.load %alloca_1[%c0_29] : memref<1xi32>
              %13 = arith.cmpi slt, %11, %12 : i32
              scf.condition(%13)
            } do {
              memref.alloca_scope  {
                memref.alloca_scope  {
                  %c0_i32_31 = arith.constant 0 : i32
                  %c0_32 = arith.constant 0 : index
                  memref.store %c0_i32_31, %alloca_8[%c0_32] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_33 = arith.constant 0 : index
                    %13 = memref.load %alloca_8[%c0_33] : memref<1xi32>
                    %c0_34 = arith.constant 0 : index
                    %14 = memref.load %alloca_0[%c0_34] : memref<1xi32>
                    %15 = arith.cmpi slt, %13, %14 : i32
                    scf.condition(%15)
                  } do {
                    %c0_33 = arith.constant 0 : index
                    %13 = memref.load %alloca_2[%c0_33] : memref<1xf64>
                    %c0_34 = arith.constant 0 : index
                    %14 = memref.load %alloca_5[%c0_34] : memref<1xmemref<?xf64>>
                    %c0_35 = arith.constant 0 : index
                    %15 = memref.load %alloca_7[%c0_35] : memref<1xi32>
                    %16 = arith.extsi %15 : i32 to i64
                    %17 = arith.muli %16, %5 : i64
                    %18 = arith.index_cast %17 : i64 to index
                    %c1 = arith.constant 1 : index
                    %c0_36 = arith.constant 0 : index
                    %c0_37 = arith.constant 0 : index
                    %dim = memref.dim %14, %c0_37 : memref<?xf64>
                    %19 = arith.subi %dim, %18 : index
                    %subview = memref.subview %14[%18] [%19] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%19], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_38 = arith.constant 0 : index
                    %20 = memref.load %alloca_9[%c0_38] : memref<1xi32>
                    %21 = arith.index_cast %20 : i32 to index
                    %c0_39 = arith.constant 0 : index
                    %dim_40 = memref.dim %reinterpret_cast, %c0_39 : memref<?xf64>
                    %22 = arith.subi %dim_40, %21 : index
                    %c1_41 = arith.constant 1 : index
                    %subview_42 = memref.subview %reinterpret_cast[%21] [%22] [%c1_41] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_43 = arith.constant 0 : index
                    %23 = memref.load %subview_42[%c0_43] : memref<?xf64, strided<[?], offset: ?>>
                    %24 = arith.mulf %13, %23 : f64
                    %c0_44 = arith.constant 0 : index
                    %25 = memref.load %alloca_6[%c0_44] : memref<1xmemref<?xf64>>
                    %c0_45 = arith.constant 0 : index
                    %26 = memref.load %alloca_9[%c0_45] : memref<1xi32>
                    %27 = arith.extsi %26 : i32 to i64
                    %28 = arith.muli %27, %8 : i64
                    %29 = arith.index_cast %28 : i64 to index
                    %c1_46 = arith.constant 1 : index
                    %c0_47 = arith.constant 0 : index
                    %c0_48 = arith.constant 0 : index
                    %dim_49 = memref.dim %25, %c0_48 : memref<?xf64>
                    %30 = arith.subi %dim_49, %29 : index
                    %subview_50 = memref.subview %25[%29] [%30] [%c1_46] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_51 = memref.reinterpret_cast %subview_50 to offset: [0], sizes: [%30], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_52 = arith.constant 0 : index
                    %31 = memref.load %alloca_8[%c0_52] : memref<1xi32>
                    %32 = arith.index_cast %31 : i32 to index
                    %c0_53 = arith.constant 0 : index
                    %dim_54 = memref.dim %reinterpret_cast_51, %c0_53 : memref<?xf64>
                    %33 = arith.subi %dim_54, %32 : index
                    %c1_55 = arith.constant 1 : index
                    %subview_56 = memref.subview %reinterpret_cast_51[%32] [%33] [%c1_55] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_57 = arith.constant 0 : index
                    %34 = memref.load %subview_56[%c0_57] : memref<?xf64, strided<[?], offset: ?>>
                    %35 = arith.mulf %24, %34 : f64
                    %c0_58 = arith.constant 0 : index
                    %36 = memref.load %alloca_4[%c0_58] : memref<1xmemref<?xf64>>
                    %c0_59 = arith.constant 0 : index
                    %37 = memref.load %alloca_7[%c0_59] : memref<1xi32>
                    %38 = arith.extsi %37 : i32 to i64
                    %39 = arith.muli %38, %2 : i64
                    %40 = arith.index_cast %39 : i64 to index
                    %c1_60 = arith.constant 1 : index
                    %c0_61 = arith.constant 0 : index
                    %c0_62 = arith.constant 0 : index
                    %dim_63 = memref.dim %36, %c0_62 : memref<?xf64>
                    %41 = arith.subi %dim_63, %40 : index
                    %subview_64 = memref.subview %36[%40] [%41] [%c1_60] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_65 = memref.reinterpret_cast %subview_64 to offset: [0], sizes: [%41], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_66 = arith.constant 0 : index
                    %42 = memref.load %alloca_8[%c0_66] : memref<1xi32>
                    %43 = arith.index_cast %42 : i32 to index
                    %c0_67 = arith.constant 0 : index
                    %dim_68 = memref.dim %reinterpret_cast_65, %c0_67 : memref<?xf64>
                    %44 = arith.subi %dim_68, %43 : index
                    %c1_69 = arith.constant 1 : index
                    %subview_70 = memref.subview %reinterpret_cast_65[%43] [%44] [%c1_69] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_71 = arith.constant 0 : index
                    %45 = memref.load %subview_70[%c0_71] : memref<?xf64, strided<[?], offset: ?>>
                    %46 = arith.addf %45, %35 : f64
                    %c0_72 = arith.constant 0 : index
                    memref.store %46, %subview_70[%c0_72] : memref<?xf64, strided<[?], offset: ?>>
                    %c0_73 = arith.constant 0 : index
                    %47 = memref.load %alloca_8[%c0_73] : memref<1xi32>
                    %c1_i32_74 = arith.constant 1 : i32
                    %48 = arith.addi %47, %c1_i32_74 : i32
                    %c0_75 = arith.constant 0 : index
                    memref.store %48, %alloca_8[%c0_75] : memref<1xi32>
                    scf.yield
                  }
                }
              }
              %c0_28 = arith.constant 0 : index
              %11 = memref.load %alloca_9[%c0_28] : memref<1xi32>
              %c1_i32_29 = arith.constant 1 : i32
              %12 = arith.addi %11, %c1_i32_29 : i32
              %c0_30 = arith.constant 0 : index
              memref.store %12, %alloca_9[%c0_30] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_24 = arith.constant 0 : index
        %9 = memref.load %alloca_7[%c0_24] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %10 = arith.addi %9, %c1_i32 : i32
        %c0_25 = arith.constant 0 : index
        memref.store %10, %alloca_7[%c0_25] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_stop(...)
  llvm.func @polybench_timer_print(...)
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global external @stderr() {addr_space = 0 : i32, alignment = 8 : i64} : !llvm.ptr
  memref.global "private" constant @".str" : memref<23xi8> = dense<[61, 61, 66, 69, 71, 73, 78, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.1" : memref<15xi8> = dense<[98, 101, 103, 105, 110, 32, 100, 117, 109, 112, 58, 32, 37, 115, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[67, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.3" : memref<2xi8> = dense<[10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.4" : memref<8xi8> = dense<[37, 48, 46, 50, 108, 102, 32, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.5" : memref<17xi8> = dense<[10, 101, 110, 100, 32, 32, 32, 100, 117, 109, 112, 58, 32, 37, 115, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.6" : memref<23xi8> = dense<[61, 61, 69, 78, 68, 32, 32, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  func.func private @print_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_4 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_4] : memref<1xi32>
    %c0_5 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_5] : memref<1xmemref<?xf64>>
    %c0_6 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_6] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %3 = llvm.mlir.addressof @stderr : !llvm.ptr
    %4 = llvm.load %3 : !llvm.ptr -> !llvm.ptr
    %5 = memref.get_global @".str" : memref<23xi8>
    %c0_7 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c23 = arith.constant 23 : index
    %subview = memref.subview %5[%c0_7] [%c23] [%c1] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%c23], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr = memref.extract_aligned_pointer_as_index %reinterpret_cast : memref<?xi8> -> index
    %6 = arith.index_castui %intptr : index to i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %8 = llvm.call @fprintf(%4, %7) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %9 = llvm.mlir.addressof @stderr : !llvm.ptr
    %10 = llvm.load %9 : !llvm.ptr -> !llvm.ptr
    %11 = memref.get_global @".str.1" : memref<15xi8>
    %c0_8 = arith.constant 0 : index
    %c1_9 = arith.constant 1 : index
    %c15 = arith.constant 15 : index
    %subview_10 = memref.subview %11[%c0_8] [%c15] [%c1_9] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_11 = memref.reinterpret_cast %subview_10 to offset: [0], sizes: [%c15], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %12 = memref.get_global @".str.2" : memref<2xi8>
    %c0_12 = arith.constant 0 : index
    %c1_13 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %subview_14 = memref.subview %12[%c0_12] [%c2] [%c1_13] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_15 = memref.reinterpret_cast %subview_14 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_16 = memref.extract_aligned_pointer_as_index %reinterpret_cast_11 : memref<?xi8> -> index
    %13 = arith.index_castui %intptr_16 : index to i64
    %14 = llvm.inttoptr %13 : i64 to !llvm.ptr
    %intptr_17 = memref.extract_aligned_pointer_as_index %reinterpret_cast_15 : memref<?xi8> -> index
    %15 = arith.index_castui %intptr_17 : index to i64
    %16 = llvm.inttoptr %15 : i64 to !llvm.ptr
    %17 = llvm.call @fprintf(%10, %14, %16) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32_35 = arith.constant 0 : i32
      %c0_36 = arith.constant 0 : index
      memref.store %c0_i32_35, %alloca_2[%c0_36] : memref<1xi32>
      scf.while : () -> () {
        %c0_37 = arith.constant 0 : index
        %33 = memref.load %alloca_2[%c0_37] : memref<1xi32>
        %c0_38 = arith.constant 0 : index
        %34 = memref.load %alloca[%c0_38] : memref<1xi32>
        %35 = arith.cmpi slt, %33, %34 : i32
        scf.condition(%35)
      } do {
        memref.alloca_scope  {
          %c0_i32_39 = arith.constant 0 : i32
          %c0_40 = arith.constant 0 : index
          memref.store %c0_i32_39, %alloca_3[%c0_40] : memref<1xi32>
          scf.while : () -> () {
            %c0_41 = arith.constant 0 : index
            %35 = memref.load %alloca_3[%c0_41] : memref<1xi32>
            %c0_42 = arith.constant 0 : index
            %36 = memref.load %alloca_0[%c0_42] : memref<1xi32>
            %37 = arith.cmpi slt, %35, %36 : i32
            scf.condition(%37)
          } do {
            memref.alloca_scope  {
              memref.alloca_scope  {
                %c0_62 = arith.constant 0 : index
                %53 = memref.load %alloca_2[%c0_62] : memref<1xi32>
                %c0_63 = arith.constant 0 : index
                %54 = memref.load %alloca[%c0_63] : memref<1xi32>
                %55 = arith.muli %53, %54 : i32
                %c0_64 = arith.constant 0 : index
                %56 = memref.load %alloca_3[%c0_64] : memref<1xi32>
                %57 = arith.addi %55, %56 : i32
                %c20_i32 = arith.constant 20 : i32
                %58 = arith.remsi %57, %c20_i32 : i32
                %c0_i32_65 = arith.constant 0 : i32
                %59 = arith.cmpi eq, %58, %c0_i32_65 : i32
                scf.if %59 {
                  %60 = llvm.mlir.addressof @stderr : !llvm.ptr
                  %61 = llvm.load %60 : !llvm.ptr -> !llvm.ptr
                  %62 = memref.get_global @".str.3" : memref<2xi8>
                  %c0_66 = arith.constant 0 : index
                  %c1_67 = arith.constant 1 : index
                  %c2_68 = arith.constant 2 : index
                  %subview_69 = memref.subview %62[%c0_66] [%c2_68] [%c1_67] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
                  %reinterpret_cast_70 = memref.reinterpret_cast %subview_69 to offset: [0], sizes: [%c2_68], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                  %intptr_71 = memref.extract_aligned_pointer_as_index %reinterpret_cast_70 : memref<?xi8> -> index
                  %63 = arith.index_castui %intptr_71 : index to i64
                  %64 = llvm.inttoptr %63 : i64 to !llvm.ptr
                  %65 = llvm.call @fprintf(%61, %64) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                }
              }
              %37 = llvm.mlir.addressof @stderr : !llvm.ptr
              %38 = llvm.load %37 : !llvm.ptr -> !llvm.ptr
              %39 = memref.get_global @".str.4" : memref<8xi8>
              %c0_44 = arith.constant 0 : index
              %c1_45 = arith.constant 1 : index
              %c8 = arith.constant 8 : index
              %subview_46 = memref.subview %39[%c0_44] [%c8] [%c1_45] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_47 = memref.reinterpret_cast %subview_46 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %c0_48 = arith.constant 0 : index
              %40 = memref.load %alloca_1[%c0_48] : memref<1xmemref<?xf64>>
              %c0_49 = arith.constant 0 : index
              %41 = memref.load %alloca_2[%c0_49] : memref<1xi32>
              %42 = arith.extsi %41 : i32 to i64
              %43 = arith.muli %42, %2 : i64
              %44 = arith.index_cast %43 : i64 to index
              %c1_50 = arith.constant 1 : index
              %c0_51 = arith.constant 0 : index
              %c0_52 = arith.constant 0 : index
              %dim = memref.dim %40, %c0_52 : memref<?xf64>
              %45 = arith.subi %dim, %44 : index
              %subview_53 = memref.subview %40[%44] [%45] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_54 = memref.reinterpret_cast %subview_53 to offset: [0], sizes: [%45], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_55 = arith.constant 0 : index
              %46 = memref.load %alloca_3[%c0_55] : memref<1xi32>
              %47 = arith.index_cast %46 : i32 to index
              %c0_56 = arith.constant 0 : index
              %dim_57 = memref.dim %reinterpret_cast_54, %c0_56 : memref<?xf64>
              %48 = arith.subi %dim_57, %47 : index
              %c1_58 = arith.constant 1 : index
              %subview_59 = memref.subview %reinterpret_cast_54[%47] [%48] [%c1_58] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_60 = arith.constant 0 : index
              %49 = memref.load %subview_59[%c0_60] : memref<?xf64, strided<[?], offset: ?>>
              %intptr_61 = memref.extract_aligned_pointer_as_index %reinterpret_cast_47 : memref<?xi8> -> index
              %50 = arith.index_castui %intptr_61 : index to i64
              %51 = llvm.inttoptr %50 : i64 to !llvm.ptr
              %52 = llvm.call @fprintf(%38, %51, %49) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
            }
            %c0_41 = arith.constant 0 : index
            %35 = memref.load %alloca_3[%c0_41] : memref<1xi32>
            %c1_i32_42 = arith.constant 1 : i32
            %36 = arith.addi %35, %c1_i32_42 : i32
            %c0_43 = arith.constant 0 : index
            memref.store %36, %alloca_3[%c0_43] : memref<1xi32>
            scf.yield
          }
        }
        %c0_37 = arith.constant 0 : index
        %33 = memref.load %alloca_2[%c0_37] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %34 = arith.addi %33, %c1_i32 : i32
        %c0_38 = arith.constant 0 : index
        memref.store %34, %alloca_2[%c0_38] : memref<1xi32>
        scf.yield
      }
    }
    %18 = llvm.mlir.addressof @stderr : !llvm.ptr
    %19 = llvm.load %18 : !llvm.ptr -> !llvm.ptr
    %20 = memref.get_global @".str.5" : memref<17xi8>
    %c0_18 = arith.constant 0 : index
    %c1_19 = arith.constant 1 : index
    %c17 = arith.constant 17 : index
    %subview_20 = memref.subview %20[%c0_18] [%c17] [%c1_19] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_21 = memref.reinterpret_cast %subview_20 to offset: [0], sizes: [%c17], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %21 = memref.get_global @".str.2" : memref<2xi8>
    %c0_22 = arith.constant 0 : index
    %c1_23 = arith.constant 1 : index
    %c2_24 = arith.constant 2 : index
    %subview_25 = memref.subview %21[%c0_22] [%c2_24] [%c1_23] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_26 = memref.reinterpret_cast %subview_25 to offset: [0], sizes: [%c2_24], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_27 = memref.extract_aligned_pointer_as_index %reinterpret_cast_21 : memref<?xi8> -> index
    %22 = arith.index_castui %intptr_27 : index to i64
    %23 = llvm.inttoptr %22 : i64 to !llvm.ptr
    %intptr_28 = memref.extract_aligned_pointer_as_index %reinterpret_cast_26 : memref<?xi8> -> index
    %24 = arith.index_castui %intptr_28 : index to i64
    %25 = llvm.inttoptr %24 : i64 to !llvm.ptr
    %26 = llvm.call @fprintf(%19, %23, %25) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %27 = llvm.mlir.addressof @stderr : !llvm.ptr
    %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
    %29 = memref.get_global @".str.6" : memref<23xi8>
    %c0_29 = arith.constant 0 : index
    %c1_30 = arith.constant 1 : index
    %c23_31 = arith.constant 23 : index
    %subview_32 = memref.subview %29[%c0_29] [%c23_31] [%c1_30] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_33 = memref.reinterpret_cast %subview_32 to offset: [0], sizes: [%c23_31], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_34 = memref.extract_aligned_pointer_as_index %reinterpret_cast_33 : memref<?xi8> -> index
    %30 = arith.index_castui %intptr_34 : index to i64
    %31 = llvm.inttoptr %30 : i64 to !llvm.ptr
    %32 = llvm.call @fprintf(%28, %31) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    return
  }
  func.func private @free(!llvm.ptr)
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xmemref<?xi8>>>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %cast = memref.cast %alloca_5 : memref<1xf64> to memref<?xf64>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %cast_7 = memref.cast %alloca_6 : memref<1xf64> to memref<?xf64>
    %alloca_8 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_9 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_10 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_11 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_11] : memref<1xmemref<?xmemref<?xi8>>>
    %c1000_i32 = arith.constant 1000 : i32
    %c0_12 = arith.constant 0 : index
    memref.store %c1000_i32, %alloca_2[%c0_12] : memref<1xi32>
    %c1100_i32 = arith.constant 1100 : i32
    %c0_13 = arith.constant 0 : index
    memref.store %c1100_i32, %alloca_3[%c0_13] : memref<1xi32>
    %c1200_i32 = arith.constant 1200 : i32
    %c0_14 = arith.constant 0 : index
    memref.store %c1200_i32, %alloca_4[%c0_14] : memref<1xi32>
    %c0_15 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_15] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_16 = arith.constant 0 : index
    %2 = memref.load %alloca_3[%c0_16] : memref<1xi32>
    %c0_i32_17 = arith.constant 0 : i32
    %3 = arith.addi %2, %c0_i32_17 : i32
    %4 = arith.muli %1, %3 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %6 = arith.trunci %c8_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xf64>
    %c0_18 = arith.constant 0 : index
    memref.store %8, %alloca_8[%c0_18] : memref<1xmemref<?xf64>>
    %c0_19 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_19] : memref<1xi32>
    %c0_i32_20 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_20 : i32
    %c0_21 = arith.constant 0 : index
    %11 = memref.load %alloca_4[%c0_21] : memref<1xi32>
    %c0_i32_22 = arith.constant 0 : i32
    %12 = arith.addi %11, %c0_i32_22 : i32
    %13 = arith.muli %10, %12 : i32
    %14 = arith.extsi %13 : i32 to i64
    %c8_i64_23 = arith.constant 8 : i64
    %15 = arith.trunci %c8_i64_23 : i64 to i32
    %16 = call @polybench_alloc_data(%14, %15) : (i64, i32) -> !llvm.ptr
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.ptr to memref<?xf64>
    %c0_24 = arith.constant 0 : index
    memref.store %17, %alloca_9[%c0_24] : memref<1xmemref<?xf64>>
    %c0_25 = arith.constant 0 : index
    %18 = memref.load %alloca_4[%c0_25] : memref<1xi32>
    %c0_i32_26 = arith.constant 0 : i32
    %19 = arith.addi %18, %c0_i32_26 : i32
    %c0_27 = arith.constant 0 : index
    %20 = memref.load %alloca_3[%c0_27] : memref<1xi32>
    %c0_i32_28 = arith.constant 0 : i32
    %21 = arith.addi %20, %c0_i32_28 : i32
    %22 = arith.muli %19, %21 : i32
    %23 = arith.extsi %22 : i32 to i64
    %c8_i64_29 = arith.constant 8 : i64
    %24 = arith.trunci %c8_i64_29 : i64 to i32
    %25 = call @polybench_alloc_data(%23, %24) : (i64, i32) -> !llvm.ptr
    %26 = builtin.unrealized_conversion_cast %25 : !llvm.ptr to memref<?xf64>
    %c0_30 = arith.constant 0 : index
    memref.store %26, %alloca_10[%c0_30] : memref<1xmemref<?xf64>>
    %c0_31 = arith.constant 0 : index
    %27 = memref.load %alloca_2[%c0_31] : memref<1xi32>
    %c0_32 = arith.constant 0 : index
    %28 = memref.load %alloca_3[%c0_32] : memref<1xi32>
    %c0_33 = arith.constant 0 : index
    %29 = memref.load %alloca_4[%c0_33] : memref<1xi32>
    %c0_34 = arith.constant 0 : index
    %30 = memref.load %alloca_8[%c0_34] : memref<1xmemref<?xf64>>
    %c0_35 = arith.constant 0 : index
    %31 = memref.load %alloca_9[%c0_35] : memref<1xmemref<?xf64>>
    %c0_36 = arith.constant 0 : index
    %32 = memref.load %alloca_10[%c0_36] : memref<1xmemref<?xf64>>
    call @init_array(%27, %28, %29, %cast, %cast_7, %30, %31, %32) : (i32, i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %33 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %33() : !llvm.ptr, () -> ()
    %c0_37 = arith.constant 0 : index
    %34 = memref.load %alloca_2[%c0_37] : memref<1xi32>
    %c0_38 = arith.constant 0 : index
    %35 = memref.load %alloca_3[%c0_38] : memref<1xi32>
    %c0_39 = arith.constant 0 : index
    %36 = memref.load %alloca_4[%c0_39] : memref<1xi32>
    %c0_40 = arith.constant 0 : index
    %37 = memref.load %alloca_5[%c0_40] : memref<1xf64>
    %c0_41 = arith.constant 0 : index
    %38 = memref.load %alloca_6[%c0_41] : memref<1xf64>
    %c0_42 = arith.constant 0 : index
    %39 = memref.load %alloca_8[%c0_42] : memref<1xmemref<?xf64>>
    %c0_43 = arith.constant 0 : index
    %40 = memref.load %alloca_9[%c0_43] : memref<1xmemref<?xf64>>
    %c0_44 = arith.constant 0 : index
    %41 = memref.load %alloca_10[%c0_44] : memref<1xmemref<?xf64>>
    call @kernel_gemm(%34, %35, %36, %37, %38, %39, %40, %41) : (i32, i32, i32, f64, f64, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %42 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %42() : !llvm.ptr, () -> ()
    %43 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %43() : !llvm.ptr, () -> ()
    %c0_45 = arith.constant 0 : index
    %44 = memref.load %alloca_2[%c0_45] : memref<1xi32>
    %c0_46 = arith.constant 0 : index
    %45 = memref.load %alloca_3[%c0_46] : memref<1xi32>
    %c0_47 = arith.constant 0 : index
    %46 = memref.load %alloca_8[%c0_47] : memref<1xmemref<?xf64>>
    call @print_array(%44, %45, %46) : (i32, i32, memref<?xf64>) -> ()
    %c0_48 = arith.constant 0 : index
    %47 = memref.load %alloca_8[%c0_48] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %47 : memref<?xf64> -> index
    %48 = arith.index_castui %intptr : index to i64
    %49 = llvm.inttoptr %48 : i64 to !llvm.ptr
    call @free(%49) : (!llvm.ptr) -> ()
    %c0_49 = arith.constant 0 : index
    %50 = memref.load %alloca_9[%c0_49] : memref<1xmemref<?xf64>>
    %intptr_50 = memref.extract_aligned_pointer_as_index %50 : memref<?xf64> -> index
    %51 = arith.index_castui %intptr_50 : index to i64
    %52 = llvm.inttoptr %51 : i64 to !llvm.ptr
    call @free(%52) : (!llvm.ptr) -> ()
    %c0_51 = arith.constant 0 : index
    %53 = memref.load %alloca_10[%c0_51] : memref<1xmemref<?xf64>>
    %intptr_52 = memref.extract_aligned_pointer_as_index %53 : memref<?xf64> -> index
    %54 = arith.index_castui %intptr_52 : index to i64
    %55 = llvm.inttoptr %54 : i64 to !llvm.ptr
    call @free(%55) : (!llvm.ptr) -> ()
    %c0_i32_53 = arith.constant 0 : i32
    %c0_54 = arith.constant 0 : index
    memref.store %c0_i32_53, %alloca_1[%c0_54] : memref<1xi32>
    %c0_55 = arith.constant 0 : index
    %56 = memref.load %alloca_1[%c0_55] : memref<1xi32>
    return %56 : i32
  }
}

