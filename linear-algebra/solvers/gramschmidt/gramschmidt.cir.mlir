module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/solvers/gramschmidt/gramschmidt.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_6 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_6] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_7] : memref<1xmemref<?xf64>>
    %c0_8 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_8] : memref<1xmemref<?xf64>>
    %c0_9 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_10] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_11 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_11] : memref<1xi32>
    %c0_i32_12 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_12 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_13 = arith.constant 0 : index
    %6 = memref.load %alloca_0[%c0_13] : memref<1xi32>
    %c0_i32_14 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_14 : i32
    %8 = arith.extsi %7 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_15 = arith.constant 0 : i32
      %c0_16 = arith.constant 0 : index
      memref.store %c0_i32_15, %alloca_4[%c0_16] : memref<1xi32>
      scf.while : () -> () {
        %c0_17 = arith.constant 0 : index
        %9 = memref.load %alloca_4[%c0_17] : memref<1xi32>
        %c0_18 = arith.constant 0 : index
        %10 = memref.load %alloca[%c0_18] : memref<1xi32>
        %11 = arith.cmpi slt, %9, %10 : i32
        scf.condition(%11)
      } do {
        memref.alloca_scope  {
          %c0_i32_19 = arith.constant 0 : i32
          %c0_20 = arith.constant 0 : index
          memref.store %c0_i32_19, %alloca_5[%c0_20] : memref<1xi32>
          scf.while : () -> () {
            %c0_21 = arith.constant 0 : index
            %11 = memref.load %alloca_5[%c0_21] : memref<1xi32>
            %c0_22 = arith.constant 0 : index
            %12 = memref.load %alloca_0[%c0_22] : memref<1xi32>
            %13 = arith.cmpi slt, %11, %12 : i32
            scf.condition(%13)
          } do {
            memref.alloca_scope  {
              %c0_24 = arith.constant 0 : index
              %13 = memref.load %alloca_4[%c0_24] : memref<1xi32>
              %c0_25 = arith.constant 0 : index
              %14 = memref.load %alloca_5[%c0_25] : memref<1xi32>
              %15 = arith.muli %13, %14 : i32
              %c0_26 = arith.constant 0 : index
              %16 = memref.load %alloca[%c0_26] : memref<1xi32>
              %17 = arith.remsi %15, %16 : i32
              %18 = arith.sitofp %17 : i32 to f64
              %c0_27 = arith.constant 0 : index
              %19 = memref.load %alloca[%c0_27] : memref<1xi32>
              %20 = arith.sitofp %19 : i32 to f64
              %21 = arith.divf %18, %20 : f64
              %c100_i32 = arith.constant 100 : i32
              %22 = arith.sitofp %c100_i32 : i32 to f64
              %23 = arith.mulf %21, %22 : f64
              %c10_i32 = arith.constant 10 : i32
              %24 = arith.sitofp %c10_i32 : i32 to f64
              %25 = arith.addf %23, %24 : f64
              %c0_28 = arith.constant 0 : index
              %26 = memref.load %alloca_1[%c0_28] : memref<1xmemref<?xf64>>
              %c0_29 = arith.constant 0 : index
              %27 = memref.load %alloca_4[%c0_29] : memref<1xi32>
              %28 = arith.extsi %27 : i32 to i64
              %29 = arith.muli %28, %2 : i64
              %30 = arith.index_cast %29 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_30 = arith.constant 0 : index
              %c0_31 = arith.constant 0 : index
              %dim = memref.dim %26, %c0_31 : memref<?xf64>
              %31 = arith.subi %dim, %30 : index
              %subview = memref.subview %26[%30] [%31] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%31], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_32 = arith.constant 0 : index
              %32 = memref.load %alloca_5[%c0_32] : memref<1xi32>
              %33 = arith.index_cast %32 : i32 to index
              %c0_33 = arith.constant 0 : index
              %dim_34 = memref.dim %reinterpret_cast, %c0_33 : memref<?xf64>
              %34 = arith.subi %dim_34, %33 : index
              %c1_35 = arith.constant 1 : index
              %subview_36 = memref.subview %reinterpret_cast[%33] [%34] [%c1_35] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_37 = arith.constant 0 : index
              memref.store %25, %subview_36[%c0_37] : memref<?xf64, strided<[?], offset: ?>>
              %cst = arith.constant 0.000000e+00 : f64
              %c0_38 = arith.constant 0 : index
              %35 = memref.load %alloca_3[%c0_38] : memref<1xmemref<?xf64>>
              %c0_39 = arith.constant 0 : index
              %36 = memref.load %alloca_4[%c0_39] : memref<1xi32>
              %37 = arith.extsi %36 : i32 to i64
              %38 = arith.muli %37, %8 : i64
              %39 = arith.index_cast %38 : i64 to index
              %c1_40 = arith.constant 1 : index
              %c0_41 = arith.constant 0 : index
              %c0_42 = arith.constant 0 : index
              %dim_43 = memref.dim %35, %c0_42 : memref<?xf64>
              %40 = arith.subi %dim_43, %39 : index
              %subview_44 = memref.subview %35[%39] [%40] [%c1_40] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_45 = memref.reinterpret_cast %subview_44 to offset: [0], sizes: [%40], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_46 = arith.constant 0 : index
              %41 = memref.load %alloca_5[%c0_46] : memref<1xi32>
              %42 = arith.index_cast %41 : i32 to index
              %c0_47 = arith.constant 0 : index
              %dim_48 = memref.dim %reinterpret_cast_45, %c0_47 : memref<?xf64>
              %43 = arith.subi %dim_48, %42 : index
              %c1_49 = arith.constant 1 : index
              %subview_50 = memref.subview %reinterpret_cast_45[%42] [%43] [%c1_49] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_51 = arith.constant 0 : index
              memref.store %cst, %subview_50[%c0_51] : memref<?xf64, strided<[?], offset: ?>>
            }
            %c0_21 = arith.constant 0 : index
            %11 = memref.load %alloca_5[%c0_21] : memref<1xi32>
            %c1_i32_22 = arith.constant 1 : i32
            %12 = arith.addi %11, %c1_i32_22 : i32
            %c0_23 = arith.constant 0 : index
            memref.store %12, %alloca_5[%c0_23] : memref<1xi32>
            scf.yield
          }
        }
        %c0_17 = arith.constant 0 : index
        %9 = memref.load %alloca_4[%c0_17] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %10 = arith.addi %9, %c1_i32 : i32
        %c0_18 = arith.constant 0 : index
        memref.store %10, %alloca_4[%c0_18] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_15 = arith.constant 0 : i32
      %c0_16 = arith.constant 0 : index
      memref.store %c0_i32_15, %alloca_4[%c0_16] : memref<1xi32>
      scf.while : () -> () {
        %c0_17 = arith.constant 0 : index
        %9 = memref.load %alloca_4[%c0_17] : memref<1xi32>
        %c0_18 = arith.constant 0 : index
        %10 = memref.load %alloca_0[%c0_18] : memref<1xi32>
        %11 = arith.cmpi slt, %9, %10 : i32
        scf.condition(%11)
      } do {
        memref.alloca_scope  {
          %c0_i32_19 = arith.constant 0 : i32
          %c0_20 = arith.constant 0 : index
          memref.store %c0_i32_19, %alloca_5[%c0_20] : memref<1xi32>
          scf.while : () -> () {
            %c0_21 = arith.constant 0 : index
            %11 = memref.load %alloca_5[%c0_21] : memref<1xi32>
            %c0_22 = arith.constant 0 : index
            %12 = memref.load %alloca_0[%c0_22] : memref<1xi32>
            %13 = arith.cmpi slt, %11, %12 : i32
            scf.condition(%13)
          } do {
            %cst = arith.constant 0.000000e+00 : f64
            %c0_21 = arith.constant 0 : index
            %11 = memref.load %alloca_2[%c0_21] : memref<1xmemref<?xf64>>
            %c0_22 = arith.constant 0 : index
            %12 = memref.load %alloca_4[%c0_22] : memref<1xi32>
            %13 = arith.extsi %12 : i32 to i64
            %14 = arith.muli %13, %5 : i64
            %15 = arith.index_cast %14 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_23 = arith.constant 0 : index
            %c0_24 = arith.constant 0 : index
            %dim = memref.dim %11, %c0_24 : memref<?xf64>
            %16 = arith.subi %dim, %15 : index
            %subview = memref.subview %11[%15] [%16] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%16], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_25 = arith.constant 0 : index
            %17 = memref.load %alloca_5[%c0_25] : memref<1xi32>
            %18 = arith.index_cast %17 : i32 to index
            %c0_26 = arith.constant 0 : index
            %dim_27 = memref.dim %reinterpret_cast, %c0_26 : memref<?xf64>
            %19 = arith.subi %dim_27, %18 : index
            %c1_28 = arith.constant 1 : index
            %subview_29 = memref.subview %reinterpret_cast[%18] [%19] [%c1_28] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_30 = arith.constant 0 : index
            memref.store %cst, %subview_29[%c0_30] : memref<?xf64, strided<[?], offset: ?>>
            %c0_31 = arith.constant 0 : index
            %20 = memref.load %alloca_5[%c0_31] : memref<1xi32>
            %c1_i32_32 = arith.constant 1 : i32
            %21 = arith.addi %20, %c1_i32_32 : i32
            %c0_33 = arith.constant 0 : index
            memref.store %21, %alloca_5[%c0_33] : memref<1xi32>
            scf.yield
          }
        }
        %c0_17 = arith.constant 0 : index
        %9 = memref.load %alloca_4[%c0_17] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %10 = arith.addi %9, %c1_i32 : i32
        %c0_18 = arith.constant 0 : index
        memref.store %10, %alloca_4[%c0_18] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @sqrt(f64) -> f64
  func.func private @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_8] : memref<1xi32>
    %c0_9 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_10] : memref<1xmemref<?xf64>>
    %c0_11 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_12] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_13 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_13] : memref<1xi32>
    %c0_i32_14 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_14 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_15 = arith.constant 0 : index
    %6 = memref.load %alloca_0[%c0_15] : memref<1xi32>
    %c0_i32_16 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_16 : i32
    %8 = arith.extsi %7 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_17 = arith.constant 0 : i32
      %c0_18 = arith.constant 0 : index
      memref.store %c0_i32_17, %alloca_6[%c0_18] : memref<1xi32>
      scf.while : () -> () {
        %c0_19 = arith.constant 0 : index
        %9 = memref.load %alloca_6[%c0_19] : memref<1xi32>
        %c0_20 = arith.constant 0 : index
        %10 = memref.load %alloca_0[%c0_20] : memref<1xi32>
        %11 = arith.cmpi slt, %9, %10 : i32
        scf.condition(%11)
      } do {
        memref.alloca_scope  {
          %cst = arith.constant 0.000000e+00 : f64
          %c0_21 = arith.constant 0 : index
          memref.store %cst, %alloca_7[%c0_21] : memref<1xf64>
          memref.alloca_scope  {
            %c0_i32_33 = arith.constant 0 : i32
            %c0_34 = arith.constant 0 : index
            memref.store %c0_i32_33, %alloca_4[%c0_34] : memref<1xi32>
            scf.while : () -> () {
              %c0_35 = arith.constant 0 : index
              %22 = memref.load %alloca_4[%c0_35] : memref<1xi32>
              %c0_36 = arith.constant 0 : index
              %23 = memref.load %alloca[%c0_36] : memref<1xi32>
              %24 = arith.cmpi slt, %22, %23 : i32
              scf.condition(%24)
            } do {
              %c0_35 = arith.constant 0 : index
              %22 = memref.load %alloca_1[%c0_35] : memref<1xmemref<?xf64>>
              %c0_36 = arith.constant 0 : index
              %23 = memref.load %alloca_4[%c0_36] : memref<1xi32>
              %24 = arith.extsi %23 : i32 to i64
              %25 = arith.muli %24, %2 : i64
              %26 = arith.index_cast %25 : i64 to index
              %c1_37 = arith.constant 1 : index
              %c0_38 = arith.constant 0 : index
              %c0_39 = arith.constant 0 : index
              %dim_40 = memref.dim %22, %c0_39 : memref<?xf64>
              %27 = arith.subi %dim_40, %26 : index
              %subview_41 = memref.subview %22[%26] [%27] [%c1_37] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_42 = memref.reinterpret_cast %subview_41 to offset: [0], sizes: [%27], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_43 = arith.constant 0 : index
              %28 = memref.load %alloca_6[%c0_43] : memref<1xi32>
              %29 = arith.index_cast %28 : i32 to index
              %c0_44 = arith.constant 0 : index
              %dim_45 = memref.dim %reinterpret_cast_42, %c0_44 : memref<?xf64>
              %30 = arith.subi %dim_45, %29 : index
              %c1_46 = arith.constant 1 : index
              %subview_47 = memref.subview %reinterpret_cast_42[%29] [%30] [%c1_46] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_48 = arith.constant 0 : index
              %31 = memref.load %subview_47[%c0_48] : memref<?xf64, strided<[?], offset: ?>>
              %c0_49 = arith.constant 0 : index
              %32 = memref.load %alloca_1[%c0_49] : memref<1xmemref<?xf64>>
              %c0_50 = arith.constant 0 : index
              %33 = memref.load %alloca_4[%c0_50] : memref<1xi32>
              %34 = arith.extsi %33 : i32 to i64
              %35 = arith.muli %34, %2 : i64
              %36 = arith.index_cast %35 : i64 to index
              %c1_51 = arith.constant 1 : index
              %c0_52 = arith.constant 0 : index
              %c0_53 = arith.constant 0 : index
              %dim_54 = memref.dim %32, %c0_53 : memref<?xf64>
              %37 = arith.subi %dim_54, %36 : index
              %subview_55 = memref.subview %32[%36] [%37] [%c1_51] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_56 = memref.reinterpret_cast %subview_55 to offset: [0], sizes: [%37], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_57 = arith.constant 0 : index
              %38 = memref.load %alloca_6[%c0_57] : memref<1xi32>
              %39 = arith.index_cast %38 : i32 to index
              %c0_58 = arith.constant 0 : index
              %dim_59 = memref.dim %reinterpret_cast_56, %c0_58 : memref<?xf64>
              %40 = arith.subi %dim_59, %39 : index
              %c1_60 = arith.constant 1 : index
              %subview_61 = memref.subview %reinterpret_cast_56[%39] [%40] [%c1_60] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_62 = arith.constant 0 : index
              %41 = memref.load %subview_61[%c0_62] : memref<?xf64, strided<[?], offset: ?>>
              %42 = arith.mulf %31, %41 : f64
              %c0_63 = arith.constant 0 : index
              %43 = memref.load %alloca_7[%c0_63] : memref<1xf64>
              %44 = arith.addf %43, %42 : f64
              %c0_64 = arith.constant 0 : index
              memref.store %44, %alloca_7[%c0_64] : memref<1xf64>
              %c0_65 = arith.constant 0 : index
              %45 = memref.load %alloca_4[%c0_65] : memref<1xi32>
              %c1_i32_66 = arith.constant 1 : i32
              %46 = arith.addi %45, %c1_i32_66 : i32
              %c0_67 = arith.constant 0 : index
              memref.store %46, %alloca_4[%c0_67] : memref<1xi32>
              scf.yield
            }
          }
          %c0_22 = arith.constant 0 : index
          %11 = memref.load %alloca_7[%c0_22] : memref<1xf64>
          %12 = func.call @sqrt(%11) : (f64) -> f64
          %c0_23 = arith.constant 0 : index
          %13 = memref.load %alloca_2[%c0_23] : memref<1xmemref<?xf64>>
          %c0_24 = arith.constant 0 : index
          %14 = memref.load %alloca_6[%c0_24] : memref<1xi32>
          %15 = arith.extsi %14 : i32 to i64
          %16 = arith.muli %15, %5 : i64
          %17 = arith.index_cast %16 : i64 to index
          %c1 = arith.constant 1 : index
          %c0_25 = arith.constant 0 : index
          %c0_26 = arith.constant 0 : index
          %dim = memref.dim %13, %c0_26 : memref<?xf64>
          %18 = arith.subi %dim, %17 : index
          %subview = memref.subview %13[%17] [%18] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%18], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
          %c0_27 = arith.constant 0 : index
          %19 = memref.load %alloca_6[%c0_27] : memref<1xi32>
          %20 = arith.index_cast %19 : i32 to index
          %c0_28 = arith.constant 0 : index
          %dim_29 = memref.dim %reinterpret_cast, %c0_28 : memref<?xf64>
          %21 = arith.subi %dim_29, %20 : index
          %c1_30 = arith.constant 1 : index
          %subview_31 = memref.subview %reinterpret_cast[%20] [%21] [%c1_30] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_32 = arith.constant 0 : index
          memref.store %12, %subview_31[%c0_32] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_i32_33 = arith.constant 0 : i32
            %c0_34 = arith.constant 0 : index
            memref.store %c0_i32_33, %alloca_4[%c0_34] : memref<1xi32>
            scf.while : () -> () {
              %c0_35 = arith.constant 0 : index
              %22 = memref.load %alloca_4[%c0_35] : memref<1xi32>
              %c0_36 = arith.constant 0 : index
              %23 = memref.load %alloca[%c0_36] : memref<1xi32>
              %24 = arith.cmpi slt, %22, %23 : i32
              scf.condition(%24)
            } do {
              %c0_35 = arith.constant 0 : index
              %22 = memref.load %alloca_1[%c0_35] : memref<1xmemref<?xf64>>
              %c0_36 = arith.constant 0 : index
              %23 = memref.load %alloca_4[%c0_36] : memref<1xi32>
              %24 = arith.extsi %23 : i32 to i64
              %25 = arith.muli %24, %2 : i64
              %26 = arith.index_cast %25 : i64 to index
              %c1_37 = arith.constant 1 : index
              %c0_38 = arith.constant 0 : index
              %c0_39 = arith.constant 0 : index
              %dim_40 = memref.dim %22, %c0_39 : memref<?xf64>
              %27 = arith.subi %dim_40, %26 : index
              %subview_41 = memref.subview %22[%26] [%27] [%c1_37] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_42 = memref.reinterpret_cast %subview_41 to offset: [0], sizes: [%27], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_43 = arith.constant 0 : index
              %28 = memref.load %alloca_6[%c0_43] : memref<1xi32>
              %29 = arith.index_cast %28 : i32 to index
              %c0_44 = arith.constant 0 : index
              %dim_45 = memref.dim %reinterpret_cast_42, %c0_44 : memref<?xf64>
              %30 = arith.subi %dim_45, %29 : index
              %c1_46 = arith.constant 1 : index
              %subview_47 = memref.subview %reinterpret_cast_42[%29] [%30] [%c1_46] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_48 = arith.constant 0 : index
              %31 = memref.load %subview_47[%c0_48] : memref<?xf64, strided<[?], offset: ?>>
              %c0_49 = arith.constant 0 : index
              %32 = memref.load %alloca_2[%c0_49] : memref<1xmemref<?xf64>>
              %c0_50 = arith.constant 0 : index
              %33 = memref.load %alloca_6[%c0_50] : memref<1xi32>
              %34 = arith.extsi %33 : i32 to i64
              %35 = arith.muli %34, %5 : i64
              %36 = arith.index_cast %35 : i64 to index
              %c1_51 = arith.constant 1 : index
              %c0_52 = arith.constant 0 : index
              %c0_53 = arith.constant 0 : index
              %dim_54 = memref.dim %32, %c0_53 : memref<?xf64>
              %37 = arith.subi %dim_54, %36 : index
              %subview_55 = memref.subview %32[%36] [%37] [%c1_51] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_56 = memref.reinterpret_cast %subview_55 to offset: [0], sizes: [%37], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_57 = arith.constant 0 : index
              %38 = memref.load %alloca_6[%c0_57] : memref<1xi32>
              %39 = arith.index_cast %38 : i32 to index
              %c0_58 = arith.constant 0 : index
              %dim_59 = memref.dim %reinterpret_cast_56, %c0_58 : memref<?xf64>
              %40 = arith.subi %dim_59, %39 : index
              %c1_60 = arith.constant 1 : index
              %subview_61 = memref.subview %reinterpret_cast_56[%39] [%40] [%c1_60] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_62 = arith.constant 0 : index
              %41 = memref.load %subview_61[%c0_62] : memref<?xf64, strided<[?], offset: ?>>
              %42 = arith.divf %31, %41 : f64
              %c0_63 = arith.constant 0 : index
              %43 = memref.load %alloca_3[%c0_63] : memref<1xmemref<?xf64>>
              %c0_64 = arith.constant 0 : index
              %44 = memref.load %alloca_4[%c0_64] : memref<1xi32>
              %45 = arith.extsi %44 : i32 to i64
              %46 = arith.muli %45, %8 : i64
              %47 = arith.index_cast %46 : i64 to index
              %c1_65 = arith.constant 1 : index
              %c0_66 = arith.constant 0 : index
              %c0_67 = arith.constant 0 : index
              %dim_68 = memref.dim %43, %c0_67 : memref<?xf64>
              %48 = arith.subi %dim_68, %47 : index
              %subview_69 = memref.subview %43[%47] [%48] [%c1_65] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_70 = memref.reinterpret_cast %subview_69 to offset: [0], sizes: [%48], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_71 = arith.constant 0 : index
              %49 = memref.load %alloca_6[%c0_71] : memref<1xi32>
              %50 = arith.index_cast %49 : i32 to index
              %c0_72 = arith.constant 0 : index
              %dim_73 = memref.dim %reinterpret_cast_70, %c0_72 : memref<?xf64>
              %51 = arith.subi %dim_73, %50 : index
              %c1_74 = arith.constant 1 : index
              %subview_75 = memref.subview %reinterpret_cast_70[%50] [%51] [%c1_74] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_76 = arith.constant 0 : index
              memref.store %42, %subview_75[%c0_76] : memref<?xf64, strided<[?], offset: ?>>
              %c0_77 = arith.constant 0 : index
              %52 = memref.load %alloca_4[%c0_77] : memref<1xi32>
              %c1_i32_78 = arith.constant 1 : i32
              %53 = arith.addi %52, %c1_i32_78 : i32
              %c0_79 = arith.constant 0 : index
              memref.store %53, %alloca_4[%c0_79] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c0_33 = arith.constant 0 : index
            %22 = memref.load %alloca_6[%c0_33] : memref<1xi32>
            %c1_i32_34 = arith.constant 1 : i32
            %23 = arith.addi %22, %c1_i32_34 : i32
            %c0_35 = arith.constant 0 : index
            memref.store %23, %alloca_5[%c0_35] : memref<1xi32>
            scf.while : () -> () {
              %c0_36 = arith.constant 0 : index
              %24 = memref.load %alloca_5[%c0_36] : memref<1xi32>
              %c0_37 = arith.constant 0 : index
              %25 = memref.load %alloca_0[%c0_37] : memref<1xi32>
              %26 = arith.cmpi slt, %24, %25 : i32
              scf.condition(%26)
            } do {
              memref.alloca_scope  {
                %cst_39 = arith.constant 0.000000e+00 : f64
                %c0_40 = arith.constant 0 : index
                %26 = memref.load %alloca_2[%c0_40] : memref<1xmemref<?xf64>>
                %c0_41 = arith.constant 0 : index
                %27 = memref.load %alloca_6[%c0_41] : memref<1xi32>
                %28 = arith.extsi %27 : i32 to i64
                %29 = arith.muli %28, %5 : i64
                %30 = arith.index_cast %29 : i64 to index
                %c1_42 = arith.constant 1 : index
                %c0_43 = arith.constant 0 : index
                %c0_44 = arith.constant 0 : index
                %dim_45 = memref.dim %26, %c0_44 : memref<?xf64>
                %31 = arith.subi %dim_45, %30 : index
                %subview_46 = memref.subview %26[%30] [%31] [%c1_42] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_47 = memref.reinterpret_cast %subview_46 to offset: [0], sizes: [%31], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_48 = arith.constant 0 : index
                %32 = memref.load %alloca_5[%c0_48] : memref<1xi32>
                %33 = arith.index_cast %32 : i32 to index
                %c0_49 = arith.constant 0 : index
                %dim_50 = memref.dim %reinterpret_cast_47, %c0_49 : memref<?xf64>
                %34 = arith.subi %dim_50, %33 : index
                %c1_51 = arith.constant 1 : index
                %subview_52 = memref.subview %reinterpret_cast_47[%33] [%34] [%c1_51] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_53 = arith.constant 0 : index
                memref.store %cst_39, %subview_52[%c0_53] : memref<?xf64, strided<[?], offset: ?>>
                memref.alloca_scope  {
                  %c0_i32_54 = arith.constant 0 : i32
                  %c0_55 = arith.constant 0 : index
                  memref.store %c0_i32_54, %alloca_4[%c0_55] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_56 = arith.constant 0 : index
                    %35 = memref.load %alloca_4[%c0_56] : memref<1xi32>
                    %c0_57 = arith.constant 0 : index
                    %36 = memref.load %alloca[%c0_57] : memref<1xi32>
                    %37 = arith.cmpi slt, %35, %36 : i32
                    scf.condition(%37)
                  } do {
                    %c0_56 = arith.constant 0 : index
                    %35 = memref.load %alloca_3[%c0_56] : memref<1xmemref<?xf64>>
                    %c0_57 = arith.constant 0 : index
                    %36 = memref.load %alloca_4[%c0_57] : memref<1xi32>
                    %37 = arith.extsi %36 : i32 to i64
                    %38 = arith.muli %37, %8 : i64
                    %39 = arith.index_cast %38 : i64 to index
                    %c1_58 = arith.constant 1 : index
                    %c0_59 = arith.constant 0 : index
                    %c0_60 = arith.constant 0 : index
                    %dim_61 = memref.dim %35, %c0_60 : memref<?xf64>
                    %40 = arith.subi %dim_61, %39 : index
                    %subview_62 = memref.subview %35[%39] [%40] [%c1_58] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_63 = memref.reinterpret_cast %subview_62 to offset: [0], sizes: [%40], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_64 = arith.constant 0 : index
                    %41 = memref.load %alloca_6[%c0_64] : memref<1xi32>
                    %42 = arith.index_cast %41 : i32 to index
                    %c0_65 = arith.constant 0 : index
                    %dim_66 = memref.dim %reinterpret_cast_63, %c0_65 : memref<?xf64>
                    %43 = arith.subi %dim_66, %42 : index
                    %c1_67 = arith.constant 1 : index
                    %subview_68 = memref.subview %reinterpret_cast_63[%42] [%43] [%c1_67] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_69 = arith.constant 0 : index
                    %44 = memref.load %subview_68[%c0_69] : memref<?xf64, strided<[?], offset: ?>>
                    %c0_70 = arith.constant 0 : index
                    %45 = memref.load %alloca_1[%c0_70] : memref<1xmemref<?xf64>>
                    %c0_71 = arith.constant 0 : index
                    %46 = memref.load %alloca_4[%c0_71] : memref<1xi32>
                    %47 = arith.extsi %46 : i32 to i64
                    %48 = arith.muli %47, %2 : i64
                    %49 = arith.index_cast %48 : i64 to index
                    %c1_72 = arith.constant 1 : index
                    %c0_73 = arith.constant 0 : index
                    %c0_74 = arith.constant 0 : index
                    %dim_75 = memref.dim %45, %c0_74 : memref<?xf64>
                    %50 = arith.subi %dim_75, %49 : index
                    %subview_76 = memref.subview %45[%49] [%50] [%c1_72] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_77 = memref.reinterpret_cast %subview_76 to offset: [0], sizes: [%50], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_78 = arith.constant 0 : index
                    %51 = memref.load %alloca_5[%c0_78] : memref<1xi32>
                    %52 = arith.index_cast %51 : i32 to index
                    %c0_79 = arith.constant 0 : index
                    %dim_80 = memref.dim %reinterpret_cast_77, %c0_79 : memref<?xf64>
                    %53 = arith.subi %dim_80, %52 : index
                    %c1_81 = arith.constant 1 : index
                    %subview_82 = memref.subview %reinterpret_cast_77[%52] [%53] [%c1_81] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_83 = arith.constant 0 : index
                    %54 = memref.load %subview_82[%c0_83] : memref<?xf64, strided<[?], offset: ?>>
                    %55 = arith.mulf %44, %54 : f64
                    %c0_84 = arith.constant 0 : index
                    %56 = memref.load %alloca_2[%c0_84] : memref<1xmemref<?xf64>>
                    %c0_85 = arith.constant 0 : index
                    %57 = memref.load %alloca_6[%c0_85] : memref<1xi32>
                    %58 = arith.extsi %57 : i32 to i64
                    %59 = arith.muli %58, %5 : i64
                    %60 = arith.index_cast %59 : i64 to index
                    %c1_86 = arith.constant 1 : index
                    %c0_87 = arith.constant 0 : index
                    %c0_88 = arith.constant 0 : index
                    %dim_89 = memref.dim %56, %c0_88 : memref<?xf64>
                    %61 = arith.subi %dim_89, %60 : index
                    %subview_90 = memref.subview %56[%60] [%61] [%c1_86] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_91 = memref.reinterpret_cast %subview_90 to offset: [0], sizes: [%61], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_92 = arith.constant 0 : index
                    %62 = memref.load %alloca_5[%c0_92] : memref<1xi32>
                    %63 = arith.index_cast %62 : i32 to index
                    %c0_93 = arith.constant 0 : index
                    %dim_94 = memref.dim %reinterpret_cast_91, %c0_93 : memref<?xf64>
                    %64 = arith.subi %dim_94, %63 : index
                    %c1_95 = arith.constant 1 : index
                    %subview_96 = memref.subview %reinterpret_cast_91[%63] [%64] [%c1_95] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_97 = arith.constant 0 : index
                    %65 = memref.load %subview_96[%c0_97] : memref<?xf64, strided<[?], offset: ?>>
                    %66 = arith.addf %65, %55 : f64
                    %c0_98 = arith.constant 0 : index
                    memref.store %66, %subview_96[%c0_98] : memref<?xf64, strided<[?], offset: ?>>
                    %c0_99 = arith.constant 0 : index
                    %67 = memref.load %alloca_4[%c0_99] : memref<1xi32>
                    %c1_i32_100 = arith.constant 1 : i32
                    %68 = arith.addi %67, %c1_i32_100 : i32
                    %c0_101 = arith.constant 0 : index
                    memref.store %68, %alloca_4[%c0_101] : memref<1xi32>
                    scf.yield
                  }
                }
                memref.alloca_scope  {
                  %c0_i32_54 = arith.constant 0 : i32
                  %c0_55 = arith.constant 0 : index
                  memref.store %c0_i32_54, %alloca_4[%c0_55] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_56 = arith.constant 0 : index
                    %35 = memref.load %alloca_4[%c0_56] : memref<1xi32>
                    %c0_57 = arith.constant 0 : index
                    %36 = memref.load %alloca[%c0_57] : memref<1xi32>
                    %37 = arith.cmpi slt, %35, %36 : i32
                    scf.condition(%37)
                  } do {
                    %c0_56 = arith.constant 0 : index
                    %35 = memref.load %alloca_1[%c0_56] : memref<1xmemref<?xf64>>
                    %c0_57 = arith.constant 0 : index
                    %36 = memref.load %alloca_4[%c0_57] : memref<1xi32>
                    %37 = arith.extsi %36 : i32 to i64
                    %38 = arith.muli %37, %2 : i64
                    %39 = arith.index_cast %38 : i64 to index
                    %c1_58 = arith.constant 1 : index
                    %c0_59 = arith.constant 0 : index
                    %c0_60 = arith.constant 0 : index
                    %dim_61 = memref.dim %35, %c0_60 : memref<?xf64>
                    %40 = arith.subi %dim_61, %39 : index
                    %subview_62 = memref.subview %35[%39] [%40] [%c1_58] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_63 = memref.reinterpret_cast %subview_62 to offset: [0], sizes: [%40], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_64 = arith.constant 0 : index
                    %41 = memref.load %alloca_5[%c0_64] : memref<1xi32>
                    %42 = arith.index_cast %41 : i32 to index
                    %c0_65 = arith.constant 0 : index
                    %dim_66 = memref.dim %reinterpret_cast_63, %c0_65 : memref<?xf64>
                    %43 = arith.subi %dim_66, %42 : index
                    %c1_67 = arith.constant 1 : index
                    %subview_68 = memref.subview %reinterpret_cast_63[%42] [%43] [%c1_67] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_69 = arith.constant 0 : index
                    %44 = memref.load %subview_68[%c0_69] : memref<?xf64, strided<[?], offset: ?>>
                    %c0_70 = arith.constant 0 : index
                    %45 = memref.load %alloca_3[%c0_70] : memref<1xmemref<?xf64>>
                    %c0_71 = arith.constant 0 : index
                    %46 = memref.load %alloca_4[%c0_71] : memref<1xi32>
                    %47 = arith.extsi %46 : i32 to i64
                    %48 = arith.muli %47, %8 : i64
                    %49 = arith.index_cast %48 : i64 to index
                    %c1_72 = arith.constant 1 : index
                    %c0_73 = arith.constant 0 : index
                    %c0_74 = arith.constant 0 : index
                    %dim_75 = memref.dim %45, %c0_74 : memref<?xf64>
                    %50 = arith.subi %dim_75, %49 : index
                    %subview_76 = memref.subview %45[%49] [%50] [%c1_72] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_77 = memref.reinterpret_cast %subview_76 to offset: [0], sizes: [%50], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_78 = arith.constant 0 : index
                    %51 = memref.load %alloca_6[%c0_78] : memref<1xi32>
                    %52 = arith.index_cast %51 : i32 to index
                    %c0_79 = arith.constant 0 : index
                    %dim_80 = memref.dim %reinterpret_cast_77, %c0_79 : memref<?xf64>
                    %53 = arith.subi %dim_80, %52 : index
                    %c1_81 = arith.constant 1 : index
                    %subview_82 = memref.subview %reinterpret_cast_77[%52] [%53] [%c1_81] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_83 = arith.constant 0 : index
                    %54 = memref.load %subview_82[%c0_83] : memref<?xf64, strided<[?], offset: ?>>
                    %c0_84 = arith.constant 0 : index
                    %55 = memref.load %alloca_2[%c0_84] : memref<1xmemref<?xf64>>
                    %c0_85 = arith.constant 0 : index
                    %56 = memref.load %alloca_6[%c0_85] : memref<1xi32>
                    %57 = arith.extsi %56 : i32 to i64
                    %58 = arith.muli %57, %5 : i64
                    %59 = arith.index_cast %58 : i64 to index
                    %c1_86 = arith.constant 1 : index
                    %c0_87 = arith.constant 0 : index
                    %c0_88 = arith.constant 0 : index
                    %dim_89 = memref.dim %55, %c0_88 : memref<?xf64>
                    %60 = arith.subi %dim_89, %59 : index
                    %subview_90 = memref.subview %55[%59] [%60] [%c1_86] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_91 = memref.reinterpret_cast %subview_90 to offset: [0], sizes: [%60], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_92 = arith.constant 0 : index
                    %61 = memref.load %alloca_5[%c0_92] : memref<1xi32>
                    %62 = arith.index_cast %61 : i32 to index
                    %c0_93 = arith.constant 0 : index
                    %dim_94 = memref.dim %reinterpret_cast_91, %c0_93 : memref<?xf64>
                    %63 = arith.subi %dim_94, %62 : index
                    %c1_95 = arith.constant 1 : index
                    %subview_96 = memref.subview %reinterpret_cast_91[%62] [%63] [%c1_95] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_97 = arith.constant 0 : index
                    %64 = memref.load %subview_96[%c0_97] : memref<?xf64, strided<[?], offset: ?>>
                    %65 = arith.mulf %54, %64 : f64
                    %66 = arith.subf %44, %65 : f64
                    %c0_98 = arith.constant 0 : index
                    %67 = memref.load %alloca_1[%c0_98] : memref<1xmemref<?xf64>>
                    %c0_99 = arith.constant 0 : index
                    %68 = memref.load %alloca_4[%c0_99] : memref<1xi32>
                    %69 = arith.extsi %68 : i32 to i64
                    %70 = arith.muli %69, %2 : i64
                    %71 = arith.index_cast %70 : i64 to index
                    %c1_100 = arith.constant 1 : index
                    %c0_101 = arith.constant 0 : index
                    %c0_102 = arith.constant 0 : index
                    %dim_103 = memref.dim %67, %c0_102 : memref<?xf64>
                    %72 = arith.subi %dim_103, %71 : index
                    %subview_104 = memref.subview %67[%71] [%72] [%c1_100] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_105 = memref.reinterpret_cast %subview_104 to offset: [0], sizes: [%72], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_106 = arith.constant 0 : index
                    %73 = memref.load %alloca_5[%c0_106] : memref<1xi32>
                    %74 = arith.index_cast %73 : i32 to index
                    %c0_107 = arith.constant 0 : index
                    %dim_108 = memref.dim %reinterpret_cast_105, %c0_107 : memref<?xf64>
                    %75 = arith.subi %dim_108, %74 : index
                    %c1_109 = arith.constant 1 : index
                    %subview_110 = memref.subview %reinterpret_cast_105[%74] [%75] [%c1_109] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_111 = arith.constant 0 : index
                    memref.store %66, %subview_110[%c0_111] : memref<?xf64, strided<[?], offset: ?>>
                    %c0_112 = arith.constant 0 : index
                    %76 = memref.load %alloca_4[%c0_112] : memref<1xi32>
                    %c1_i32_113 = arith.constant 1 : i32
                    %77 = arith.addi %76, %c1_i32_113 : i32
                    %c0_114 = arith.constant 0 : index
                    memref.store %77, %alloca_4[%c0_114] : memref<1xi32>
                    scf.yield
                  }
                }
              }
              %c0_36 = arith.constant 0 : index
              %24 = memref.load %alloca_5[%c0_36] : memref<1xi32>
              %c1_i32_37 = arith.constant 1 : i32
              %25 = arith.addi %24, %c1_i32_37 : i32
              %c0_38 = arith.constant 0 : index
              memref.store %25, %alloca_5[%c0_38] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_19 = arith.constant 0 : index
        %9 = memref.load %alloca_6[%c0_19] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %10 = arith.addi %9, %c1_i32 : i32
        %c0_20 = arith.constant 0 : index
        memref.store %10, %alloca_6[%c0_20] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[82, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.3" : memref<2xi8> = dense<[10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.4" : memref<8xi8> = dense<[37, 48, 46, 50, 108, 102, 32, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.5" : memref<17xi8> = dense<[10, 101, 110, 100, 32, 32, 32, 100, 117, 109, 112, 58, 32, 37, 115, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.6" : memref<2xi8> = dense<[81, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.7" : memref<23xi8> = dense<[61, 61, 69, 78, 68, 32, 32, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  func.func private @print_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_6 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_6] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_7] : memref<1xmemref<?xf64>>
    %c0_8 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_8] : memref<1xmemref<?xf64>>
    %c0_9 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_10] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_11 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_11] : memref<1xi32>
    %c0_i32_12 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_12 : i32
    %5 = arith.extsi %4 : i32 to i64
    %6 = llvm.mlir.addressof @stderr : !llvm.ptr
    %7 = llvm.load %6 : !llvm.ptr -> !llvm.ptr
    %8 = memref.get_global @".str" : memref<23xi8>
    %c0_13 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c23 = arith.constant 23 : index
    %subview = memref.subview %8[%c0_13] [%c23] [%c1] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%c23], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr = memref.extract_aligned_pointer_as_index %reinterpret_cast : memref<?xi8> -> index
    %9 = arith.index_castui %intptr : index to i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr
    %11 = llvm.call @fprintf(%7, %10) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %12 = llvm.mlir.addressof @stderr : !llvm.ptr
    %13 = llvm.load %12 : !llvm.ptr -> !llvm.ptr
    %14 = memref.get_global @".str.1" : memref<15xi8>
    %c0_14 = arith.constant 0 : index
    %c1_15 = arith.constant 1 : index
    %c15 = arith.constant 15 : index
    %subview_16 = memref.subview %14[%c0_14] [%c15] [%c1_15] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_17 = memref.reinterpret_cast %subview_16 to offset: [0], sizes: [%c15], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %15 = memref.get_global @".str.2" : memref<2xi8>
    %c0_18 = arith.constant 0 : index
    %c1_19 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %subview_20 = memref.subview %15[%c0_18] [%c2] [%c1_19] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_21 = memref.reinterpret_cast %subview_20 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_22 = memref.extract_aligned_pointer_as_index %reinterpret_cast_17 : memref<?xi8> -> index
    %16 = arith.index_castui %intptr_22 : index to i64
    %17 = llvm.inttoptr %16 : i64 to !llvm.ptr
    %intptr_23 = memref.extract_aligned_pointer_as_index %reinterpret_cast_21 : memref<?xi8> -> index
    %18 = arith.index_castui %intptr_23 : index to i64
    %19 = llvm.inttoptr %18 : i64 to !llvm.ptr
    %20 = llvm.call @fprintf(%13, %17, %19) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32_65 = arith.constant 0 : i32
      %c0_66 = arith.constant 0 : index
      memref.store %c0_i32_65, %alloca_4[%c0_66] : memref<1xi32>
      scf.while : () -> () {
        %c0_67 = arith.constant 0 : index
        %54 = memref.load %alloca_4[%c0_67] : memref<1xi32>
        %c0_68 = arith.constant 0 : index
        %55 = memref.load %alloca_0[%c0_68] : memref<1xi32>
        %56 = arith.cmpi slt, %54, %55 : i32
        scf.condition(%56)
      } do {
        memref.alloca_scope  {
          %c0_i32_69 = arith.constant 0 : i32
          %c0_70 = arith.constant 0 : index
          memref.store %c0_i32_69, %alloca_5[%c0_70] : memref<1xi32>
          scf.while : () -> () {
            %c0_71 = arith.constant 0 : index
            %56 = memref.load %alloca_5[%c0_71] : memref<1xi32>
            %c0_72 = arith.constant 0 : index
            %57 = memref.load %alloca_0[%c0_72] : memref<1xi32>
            %58 = arith.cmpi slt, %56, %57 : i32
            scf.condition(%58)
          } do {
            memref.alloca_scope  {
              memref.alloca_scope  {
                %c0_92 = arith.constant 0 : index
                %74 = memref.load %alloca_4[%c0_92] : memref<1xi32>
                %c0_93 = arith.constant 0 : index
                %75 = memref.load %alloca_0[%c0_93] : memref<1xi32>
                %76 = arith.muli %74, %75 : i32
                %c0_94 = arith.constant 0 : index
                %77 = memref.load %alloca_5[%c0_94] : memref<1xi32>
                %78 = arith.addi %76, %77 : i32
                %c20_i32 = arith.constant 20 : i32
                %79 = arith.remsi %78, %c20_i32 : i32
                %c0_i32_95 = arith.constant 0 : i32
                %80 = arith.cmpi eq, %79, %c0_i32_95 : i32
                scf.if %80 {
                  %81 = llvm.mlir.addressof @stderr : !llvm.ptr
                  %82 = llvm.load %81 : !llvm.ptr -> !llvm.ptr
                  %83 = memref.get_global @".str.3" : memref<2xi8>
                  %c0_96 = arith.constant 0 : index
                  %c1_97 = arith.constant 1 : index
                  %c2_98 = arith.constant 2 : index
                  %subview_99 = memref.subview %83[%c0_96] [%c2_98] [%c1_97] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
                  %reinterpret_cast_100 = memref.reinterpret_cast %subview_99 to offset: [0], sizes: [%c2_98], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                  %intptr_101 = memref.extract_aligned_pointer_as_index %reinterpret_cast_100 : memref<?xi8> -> index
                  %84 = arith.index_castui %intptr_101 : index to i64
                  %85 = llvm.inttoptr %84 : i64 to !llvm.ptr
                  %86 = llvm.call @fprintf(%82, %85) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                }
              }
              %58 = llvm.mlir.addressof @stderr : !llvm.ptr
              %59 = llvm.load %58 : !llvm.ptr -> !llvm.ptr
              %60 = memref.get_global @".str.4" : memref<8xi8>
              %c0_74 = arith.constant 0 : index
              %c1_75 = arith.constant 1 : index
              %c8 = arith.constant 8 : index
              %subview_76 = memref.subview %60[%c0_74] [%c8] [%c1_75] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_77 = memref.reinterpret_cast %subview_76 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %c0_78 = arith.constant 0 : index
              %61 = memref.load %alloca_2[%c0_78] : memref<1xmemref<?xf64>>
              %c0_79 = arith.constant 0 : index
              %62 = memref.load %alloca_4[%c0_79] : memref<1xi32>
              %63 = arith.extsi %62 : i32 to i64
              %64 = arith.muli %63, %2 : i64
              %65 = arith.index_cast %64 : i64 to index
              %c1_80 = arith.constant 1 : index
              %c0_81 = arith.constant 0 : index
              %c0_82 = arith.constant 0 : index
              %dim = memref.dim %61, %c0_82 : memref<?xf64>
              %66 = arith.subi %dim, %65 : index
              %subview_83 = memref.subview %61[%65] [%66] [%c1_80] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_84 = memref.reinterpret_cast %subview_83 to offset: [0], sizes: [%66], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_85 = arith.constant 0 : index
              %67 = memref.load %alloca_5[%c0_85] : memref<1xi32>
              %68 = arith.index_cast %67 : i32 to index
              %c0_86 = arith.constant 0 : index
              %dim_87 = memref.dim %reinterpret_cast_84, %c0_86 : memref<?xf64>
              %69 = arith.subi %dim_87, %68 : index
              %c1_88 = arith.constant 1 : index
              %subview_89 = memref.subview %reinterpret_cast_84[%68] [%69] [%c1_88] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_90 = arith.constant 0 : index
              %70 = memref.load %subview_89[%c0_90] : memref<?xf64, strided<[?], offset: ?>>
              %intptr_91 = memref.extract_aligned_pointer_as_index %reinterpret_cast_77 : memref<?xi8> -> index
              %71 = arith.index_castui %intptr_91 : index to i64
              %72 = llvm.inttoptr %71 : i64 to !llvm.ptr
              %73 = llvm.call @fprintf(%59, %72, %70) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
            }
            %c0_71 = arith.constant 0 : index
            %56 = memref.load %alloca_5[%c0_71] : memref<1xi32>
            %c1_i32_72 = arith.constant 1 : i32
            %57 = arith.addi %56, %c1_i32_72 : i32
            %c0_73 = arith.constant 0 : index
            memref.store %57, %alloca_5[%c0_73] : memref<1xi32>
            scf.yield
          }
        }
        %c0_67 = arith.constant 0 : index
        %54 = memref.load %alloca_4[%c0_67] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %55 = arith.addi %54, %c1_i32 : i32
        %c0_68 = arith.constant 0 : index
        memref.store %55, %alloca_4[%c0_68] : memref<1xi32>
        scf.yield
      }
    }
    %21 = llvm.mlir.addressof @stderr : !llvm.ptr
    %22 = llvm.load %21 : !llvm.ptr -> !llvm.ptr
    %23 = memref.get_global @".str.5" : memref<17xi8>
    %c0_24 = arith.constant 0 : index
    %c1_25 = arith.constant 1 : index
    %c17 = arith.constant 17 : index
    %subview_26 = memref.subview %23[%c0_24] [%c17] [%c1_25] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_27 = memref.reinterpret_cast %subview_26 to offset: [0], sizes: [%c17], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %24 = memref.get_global @".str.2" : memref<2xi8>
    %c0_28 = arith.constant 0 : index
    %c1_29 = arith.constant 1 : index
    %c2_30 = arith.constant 2 : index
    %subview_31 = memref.subview %24[%c0_28] [%c2_30] [%c1_29] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_32 = memref.reinterpret_cast %subview_31 to offset: [0], sizes: [%c2_30], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_33 = memref.extract_aligned_pointer_as_index %reinterpret_cast_27 : memref<?xi8> -> index
    %25 = arith.index_castui %intptr_33 : index to i64
    %26 = llvm.inttoptr %25 : i64 to !llvm.ptr
    %intptr_34 = memref.extract_aligned_pointer_as_index %reinterpret_cast_32 : memref<?xi8> -> index
    %27 = arith.index_castui %intptr_34 : index to i64
    %28 = llvm.inttoptr %27 : i64 to !llvm.ptr
    %29 = llvm.call @fprintf(%22, %26, %28) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %30 = llvm.mlir.addressof @stderr : !llvm.ptr
    %31 = llvm.load %30 : !llvm.ptr -> !llvm.ptr
    %32 = memref.get_global @".str.1" : memref<15xi8>
    %c0_35 = arith.constant 0 : index
    %c1_36 = arith.constant 1 : index
    %c15_37 = arith.constant 15 : index
    %subview_38 = memref.subview %32[%c0_35] [%c15_37] [%c1_36] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_39 = memref.reinterpret_cast %subview_38 to offset: [0], sizes: [%c15_37], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %33 = memref.get_global @".str.6" : memref<2xi8>
    %c0_40 = arith.constant 0 : index
    %c1_41 = arith.constant 1 : index
    %c2_42 = arith.constant 2 : index
    %subview_43 = memref.subview %33[%c0_40] [%c2_42] [%c1_41] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_44 = memref.reinterpret_cast %subview_43 to offset: [0], sizes: [%c2_42], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_45 = memref.extract_aligned_pointer_as_index %reinterpret_cast_39 : memref<?xi8> -> index
    %34 = arith.index_castui %intptr_45 : index to i64
    %35 = llvm.inttoptr %34 : i64 to !llvm.ptr
    %intptr_46 = memref.extract_aligned_pointer_as_index %reinterpret_cast_44 : memref<?xi8> -> index
    %36 = arith.index_castui %intptr_46 : index to i64
    %37 = llvm.inttoptr %36 : i64 to !llvm.ptr
    %38 = llvm.call @fprintf(%31, %35, %37) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32_65 = arith.constant 0 : i32
      %c0_66 = arith.constant 0 : index
      memref.store %c0_i32_65, %alloca_4[%c0_66] : memref<1xi32>
      scf.while : () -> () {
        %c0_67 = arith.constant 0 : index
        %54 = memref.load %alloca_4[%c0_67] : memref<1xi32>
        %c0_68 = arith.constant 0 : index
        %55 = memref.load %alloca[%c0_68] : memref<1xi32>
        %56 = arith.cmpi slt, %54, %55 : i32
        scf.condition(%56)
      } do {
        memref.alloca_scope  {
          %c0_i32_69 = arith.constant 0 : i32
          %c0_70 = arith.constant 0 : index
          memref.store %c0_i32_69, %alloca_5[%c0_70] : memref<1xi32>
          scf.while : () -> () {
            %c0_71 = arith.constant 0 : index
            %56 = memref.load %alloca_5[%c0_71] : memref<1xi32>
            %c0_72 = arith.constant 0 : index
            %57 = memref.load %alloca_0[%c0_72] : memref<1xi32>
            %58 = arith.cmpi slt, %56, %57 : i32
            scf.condition(%58)
          } do {
            memref.alloca_scope  {
              memref.alloca_scope  {
                %c0_92 = arith.constant 0 : index
                %74 = memref.load %alloca_4[%c0_92] : memref<1xi32>
                %c0_93 = arith.constant 0 : index
                %75 = memref.load %alloca_0[%c0_93] : memref<1xi32>
                %76 = arith.muli %74, %75 : i32
                %c0_94 = arith.constant 0 : index
                %77 = memref.load %alloca_5[%c0_94] : memref<1xi32>
                %78 = arith.addi %76, %77 : i32
                %c20_i32 = arith.constant 20 : i32
                %79 = arith.remsi %78, %c20_i32 : i32
                %c0_i32_95 = arith.constant 0 : i32
                %80 = arith.cmpi eq, %79, %c0_i32_95 : i32
                scf.if %80 {
                  %81 = llvm.mlir.addressof @stderr : !llvm.ptr
                  %82 = llvm.load %81 : !llvm.ptr -> !llvm.ptr
                  %83 = memref.get_global @".str.3" : memref<2xi8>
                  %c0_96 = arith.constant 0 : index
                  %c1_97 = arith.constant 1 : index
                  %c2_98 = arith.constant 2 : index
                  %subview_99 = memref.subview %83[%c0_96] [%c2_98] [%c1_97] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
                  %reinterpret_cast_100 = memref.reinterpret_cast %subview_99 to offset: [0], sizes: [%c2_98], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                  %intptr_101 = memref.extract_aligned_pointer_as_index %reinterpret_cast_100 : memref<?xi8> -> index
                  %84 = arith.index_castui %intptr_101 : index to i64
                  %85 = llvm.inttoptr %84 : i64 to !llvm.ptr
                  %86 = llvm.call @fprintf(%82, %85) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                }
              }
              %58 = llvm.mlir.addressof @stderr : !llvm.ptr
              %59 = llvm.load %58 : !llvm.ptr -> !llvm.ptr
              %60 = memref.get_global @".str.4" : memref<8xi8>
              %c0_74 = arith.constant 0 : index
              %c1_75 = arith.constant 1 : index
              %c8 = arith.constant 8 : index
              %subview_76 = memref.subview %60[%c0_74] [%c8] [%c1_75] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_77 = memref.reinterpret_cast %subview_76 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %c0_78 = arith.constant 0 : index
              %61 = memref.load %alloca_3[%c0_78] : memref<1xmemref<?xf64>>
              %c0_79 = arith.constant 0 : index
              %62 = memref.load %alloca_4[%c0_79] : memref<1xi32>
              %63 = arith.extsi %62 : i32 to i64
              %64 = arith.muli %63, %5 : i64
              %65 = arith.index_cast %64 : i64 to index
              %c1_80 = arith.constant 1 : index
              %c0_81 = arith.constant 0 : index
              %c0_82 = arith.constant 0 : index
              %dim = memref.dim %61, %c0_82 : memref<?xf64>
              %66 = arith.subi %dim, %65 : index
              %subview_83 = memref.subview %61[%65] [%66] [%c1_80] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_84 = memref.reinterpret_cast %subview_83 to offset: [0], sizes: [%66], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_85 = arith.constant 0 : index
              %67 = memref.load %alloca_5[%c0_85] : memref<1xi32>
              %68 = arith.index_cast %67 : i32 to index
              %c0_86 = arith.constant 0 : index
              %dim_87 = memref.dim %reinterpret_cast_84, %c0_86 : memref<?xf64>
              %69 = arith.subi %dim_87, %68 : index
              %c1_88 = arith.constant 1 : index
              %subview_89 = memref.subview %reinterpret_cast_84[%68] [%69] [%c1_88] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_90 = arith.constant 0 : index
              %70 = memref.load %subview_89[%c0_90] : memref<?xf64, strided<[?], offset: ?>>
              %intptr_91 = memref.extract_aligned_pointer_as_index %reinterpret_cast_77 : memref<?xi8> -> index
              %71 = arith.index_castui %intptr_91 : index to i64
              %72 = llvm.inttoptr %71 : i64 to !llvm.ptr
              %73 = llvm.call @fprintf(%59, %72, %70) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
            }
            %c0_71 = arith.constant 0 : index
            %56 = memref.load %alloca_5[%c0_71] : memref<1xi32>
            %c1_i32_72 = arith.constant 1 : i32
            %57 = arith.addi %56, %c1_i32_72 : i32
            %c0_73 = arith.constant 0 : index
            memref.store %57, %alloca_5[%c0_73] : memref<1xi32>
            scf.yield
          }
        }
        %c0_67 = arith.constant 0 : index
        %54 = memref.load %alloca_4[%c0_67] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %55 = arith.addi %54, %c1_i32 : i32
        %c0_68 = arith.constant 0 : index
        memref.store %55, %alloca_4[%c0_68] : memref<1xi32>
        scf.yield
      }
    }
    %39 = llvm.mlir.addressof @stderr : !llvm.ptr
    %40 = llvm.load %39 : !llvm.ptr -> !llvm.ptr
    %41 = memref.get_global @".str.5" : memref<17xi8>
    %c0_47 = arith.constant 0 : index
    %c1_48 = arith.constant 1 : index
    %c17_49 = arith.constant 17 : index
    %subview_50 = memref.subview %41[%c0_47] [%c17_49] [%c1_48] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_51 = memref.reinterpret_cast %subview_50 to offset: [0], sizes: [%c17_49], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %42 = memref.get_global @".str.6" : memref<2xi8>
    %c0_52 = arith.constant 0 : index
    %c1_53 = arith.constant 1 : index
    %c2_54 = arith.constant 2 : index
    %subview_55 = memref.subview %42[%c0_52] [%c2_54] [%c1_53] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_56 = memref.reinterpret_cast %subview_55 to offset: [0], sizes: [%c2_54], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_57 = memref.extract_aligned_pointer_as_index %reinterpret_cast_51 : memref<?xi8> -> index
    %43 = arith.index_castui %intptr_57 : index to i64
    %44 = llvm.inttoptr %43 : i64 to !llvm.ptr
    %intptr_58 = memref.extract_aligned_pointer_as_index %reinterpret_cast_56 : memref<?xi8> -> index
    %45 = arith.index_castui %intptr_58 : index to i64
    %46 = llvm.inttoptr %45 : i64 to !llvm.ptr
    %47 = llvm.call @fprintf(%40, %44, %46) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %48 = llvm.mlir.addressof @stderr : !llvm.ptr
    %49 = llvm.load %48 : !llvm.ptr -> !llvm.ptr
    %50 = memref.get_global @".str.7" : memref<23xi8>
    %c0_59 = arith.constant 0 : index
    %c1_60 = arith.constant 1 : index
    %c23_61 = arith.constant 23 : index
    %subview_62 = memref.subview %50[%c0_59] [%c23_61] [%c1_60] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_63 = memref.reinterpret_cast %subview_62 to offset: [0], sizes: [%c23_61], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_64 = memref.extract_aligned_pointer_as_index %reinterpret_cast_63 : memref<?xi8> -> index
    %51 = arith.index_castui %intptr_64 : index to i64
    %52 = llvm.inttoptr %51 : i64 to !llvm.ptr
    %53 = llvm.call @fprintf(%49, %52) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    return
  }
  func.func private @free(!llvm.ptr)
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xmemref<?xi8>>>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_7] : memref<1xmemref<?xmemref<?xi8>>>
    %c1000_i32 = arith.constant 1000 : i32
    %c0_8 = arith.constant 0 : index
    memref.store %c1000_i32, %alloca_2[%c0_8] : memref<1xi32>
    %c1200_i32 = arith.constant 1200 : i32
    %c0_9 = arith.constant 0 : index
    memref.store %c1200_i32, %alloca_3[%c0_9] : memref<1xi32>
    %c0_10 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_10] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_11 = arith.constant 0 : index
    %2 = memref.load %alloca_3[%c0_11] : memref<1xi32>
    %c0_i32_12 = arith.constant 0 : i32
    %3 = arith.addi %2, %c0_i32_12 : i32
    %4 = arith.muli %1, %3 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %6 = arith.trunci %c8_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xf64>
    %c0_13 = arith.constant 0 : index
    memref.store %8, %alloca_4[%c0_13] : memref<1xmemref<?xf64>>
    %c0_14 = arith.constant 0 : index
    %9 = memref.load %alloca_3[%c0_14] : memref<1xi32>
    %c0_i32_15 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_15 : i32
    %c0_16 = arith.constant 0 : index
    %11 = memref.load %alloca_3[%c0_16] : memref<1xi32>
    %c0_i32_17 = arith.constant 0 : i32
    %12 = arith.addi %11, %c0_i32_17 : i32
    %13 = arith.muli %10, %12 : i32
    %14 = arith.extsi %13 : i32 to i64
    %c8_i64_18 = arith.constant 8 : i64
    %15 = arith.trunci %c8_i64_18 : i64 to i32
    %16 = call @polybench_alloc_data(%14, %15) : (i64, i32) -> !llvm.ptr
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.ptr to memref<?xf64>
    %c0_19 = arith.constant 0 : index
    memref.store %17, %alloca_5[%c0_19] : memref<1xmemref<?xf64>>
    %c0_20 = arith.constant 0 : index
    %18 = memref.load %alloca_2[%c0_20] : memref<1xi32>
    %c0_i32_21 = arith.constant 0 : i32
    %19 = arith.addi %18, %c0_i32_21 : i32
    %c0_22 = arith.constant 0 : index
    %20 = memref.load %alloca_3[%c0_22] : memref<1xi32>
    %c0_i32_23 = arith.constant 0 : i32
    %21 = arith.addi %20, %c0_i32_23 : i32
    %22 = arith.muli %19, %21 : i32
    %23 = arith.extsi %22 : i32 to i64
    %c8_i64_24 = arith.constant 8 : i64
    %24 = arith.trunci %c8_i64_24 : i64 to i32
    %25 = call @polybench_alloc_data(%23, %24) : (i64, i32) -> !llvm.ptr
    %26 = builtin.unrealized_conversion_cast %25 : !llvm.ptr to memref<?xf64>
    %c0_25 = arith.constant 0 : index
    memref.store %26, %alloca_6[%c0_25] : memref<1xmemref<?xf64>>
    %c0_26 = arith.constant 0 : index
    %27 = memref.load %alloca_2[%c0_26] : memref<1xi32>
    %c0_27 = arith.constant 0 : index
    %28 = memref.load %alloca_3[%c0_27] : memref<1xi32>
    %c0_28 = arith.constant 0 : index
    %29 = memref.load %alloca_4[%c0_28] : memref<1xmemref<?xf64>>
    %c0_29 = arith.constant 0 : index
    %30 = memref.load %alloca_5[%c0_29] : memref<1xmemref<?xf64>>
    %c0_30 = arith.constant 0 : index
    %31 = memref.load %alloca_6[%c0_30] : memref<1xmemref<?xf64>>
    call @init_array(%27, %28, %29, %30, %31) : (i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %32 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %32() : !llvm.ptr, () -> ()
    %c0_31 = arith.constant 0 : index
    %33 = memref.load %alloca_2[%c0_31] : memref<1xi32>
    %c0_32 = arith.constant 0 : index
    %34 = memref.load %alloca_3[%c0_32] : memref<1xi32>
    %c0_33 = arith.constant 0 : index
    %35 = memref.load %alloca_4[%c0_33] : memref<1xmemref<?xf64>>
    %c0_34 = arith.constant 0 : index
    %36 = memref.load %alloca_5[%c0_34] : memref<1xmemref<?xf64>>
    %c0_35 = arith.constant 0 : index
    %37 = memref.load %alloca_6[%c0_35] : memref<1xmemref<?xf64>>
    call @kernel_gramschmidt(%33, %34, %35, %36, %37) : (i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %38 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %38() : !llvm.ptr, () -> ()
    %39 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %39() : !llvm.ptr, () -> ()
    %c0_36 = arith.constant 0 : index
    %40 = memref.load %alloca_2[%c0_36] : memref<1xi32>
    %c0_37 = arith.constant 0 : index
    %41 = memref.load %alloca_3[%c0_37] : memref<1xi32>
    %c0_38 = arith.constant 0 : index
    %42 = memref.load %alloca_4[%c0_38] : memref<1xmemref<?xf64>>
    %c0_39 = arith.constant 0 : index
    %43 = memref.load %alloca_5[%c0_39] : memref<1xmemref<?xf64>>
    %c0_40 = arith.constant 0 : index
    %44 = memref.load %alloca_6[%c0_40] : memref<1xmemref<?xf64>>
    call @print_array(%40, %41, %42, %43, %44) : (i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %c0_41 = arith.constant 0 : index
    %45 = memref.load %alloca_4[%c0_41] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %45 : memref<?xf64> -> index
    %46 = arith.index_castui %intptr : index to i64
    %47 = llvm.inttoptr %46 : i64 to !llvm.ptr
    call @free(%47) : (!llvm.ptr) -> ()
    %c0_42 = arith.constant 0 : index
    %48 = memref.load %alloca_5[%c0_42] : memref<1xmemref<?xf64>>
    %intptr_43 = memref.extract_aligned_pointer_as_index %48 : memref<?xf64> -> index
    %49 = arith.index_castui %intptr_43 : index to i64
    %50 = llvm.inttoptr %49 : i64 to !llvm.ptr
    call @free(%50) : (!llvm.ptr) -> ()
    %c0_44 = arith.constant 0 : index
    %51 = memref.load %alloca_6[%c0_44] : memref<1xmemref<?xf64>>
    %intptr_45 = memref.extract_aligned_pointer_as_index %51 : memref<?xf64> -> index
    %52 = arith.index_castui %intptr_45 : index to i64
    %53 = llvm.inttoptr %52 : i64 to !llvm.ptr
    call @free(%53) : (!llvm.ptr) -> ()
    %c0_i32_46 = arith.constant 0 : i32
    %c0_47 = arith.constant 0 : index
    memref.store %c0_i32_46, %alloca_1[%c0_47] : memref<1xi32>
    %c0_48 = arith.constant 0 : index
    %54 = memref.load %alloca_1[%c0_48] : memref<1xi32>
    return %54 : i32
  }
}

