module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/kernels/atax/atax.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_6 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_6] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_7] : memref<1xmemref<?xf64>>
    %c0_8 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_8] : memref<1xmemref<?xf64>>
    %c0_9 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_9] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_10 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_10] : memref<1xi32>
    %4 = arith.sitofp %3 : i32 to f64
    %c0_11 = arith.constant 0 : index
    memref.store %4, %alloca_5[%c0_11] : memref<1xf64>
    memref.alloca_scope  {
      %c0_i32_12 = arith.constant 0 : i32
      %c0_13 = arith.constant 0 : index
      memref.store %c0_i32_12, %alloca_3[%c0_13] : memref<1xi32>
      scf.while : () -> () {
        %c0_14 = arith.constant 0 : index
        %5 = memref.load %alloca_3[%c0_14] : memref<1xi32>
        %c0_15 = arith.constant 0 : index
        %6 = memref.load %alloca_0[%c0_15] : memref<1xi32>
        %7 = arith.cmpi slt, %5, %6 : i32
        scf.condition(%7)
      } do {
        %c1_i32 = arith.constant 1 : i32
        %5 = arith.sitofp %c1_i32 : i32 to f64
        %c0_14 = arith.constant 0 : index
        %6 = memref.load %alloca_3[%c0_14] : memref<1xi32>
        %7 = arith.sitofp %6 : i32 to f64
        %c0_15 = arith.constant 0 : index
        %8 = memref.load %alloca_5[%c0_15] : memref<1xf64>
        %9 = arith.divf %7, %8 : f64
        %10 = arith.addf %5, %9 : f64
        %c0_16 = arith.constant 0 : index
        %11 = memref.load %alloca_2[%c0_16] : memref<1xmemref<?xf64>>
        %c0_17 = arith.constant 0 : index
        %12 = memref.load %alloca_3[%c0_17] : memref<1xi32>
        %13 = arith.index_cast %12 : i32 to index
        %c0_18 = arith.constant 0 : index
        %dim = memref.dim %11, %c0_18 : memref<?xf64>
        %14 = arith.subi %dim, %13 : index
        %c1 = arith.constant 1 : index
        %subview = memref.subview %11[%13] [%14] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
        %c0_19 = arith.constant 0 : index
        memref.store %10, %subview[%c0_19] : memref<?xf64, strided<[?], offset: ?>>
        %c0_20 = arith.constant 0 : index
        %15 = memref.load %alloca_3[%c0_20] : memref<1xi32>
        %c1_i32_21 = arith.constant 1 : i32
        %16 = arith.addi %15, %c1_i32_21 : i32
        %c0_22 = arith.constant 0 : index
        memref.store %16, %alloca_3[%c0_22] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_12 = arith.constant 0 : i32
      %c0_13 = arith.constant 0 : index
      memref.store %c0_i32_12, %alloca_3[%c0_13] : memref<1xi32>
      scf.while : () -> () {
        %c0_14 = arith.constant 0 : index
        %5 = memref.load %alloca_3[%c0_14] : memref<1xi32>
        %c0_15 = arith.constant 0 : index
        %6 = memref.load %alloca[%c0_15] : memref<1xi32>
        %7 = arith.cmpi slt, %5, %6 : i32
        scf.condition(%7)
      } do {
        memref.alloca_scope  {
          %c0_i32_16 = arith.constant 0 : i32
          %c0_17 = arith.constant 0 : index
          memref.store %c0_i32_16, %alloca_4[%c0_17] : memref<1xi32>
          scf.while : () -> () {
            %c0_18 = arith.constant 0 : index
            %7 = memref.load %alloca_4[%c0_18] : memref<1xi32>
            %c0_19 = arith.constant 0 : index
            %8 = memref.load %alloca_0[%c0_19] : memref<1xi32>
            %9 = arith.cmpi slt, %7, %8 : i32
            scf.condition(%9)
          } do {
            %c0_18 = arith.constant 0 : index
            %7 = memref.load %alloca_3[%c0_18] : memref<1xi32>
            %c0_19 = arith.constant 0 : index
            %8 = memref.load %alloca_4[%c0_19] : memref<1xi32>
            %9 = arith.addi %7, %8 : i32
            %c0_20 = arith.constant 0 : index
            %10 = memref.load %alloca_0[%c0_20] : memref<1xi32>
            %11 = arith.remsi %9, %10 : i32
            %12 = arith.sitofp %11 : i32 to f64
            %c5_i32 = arith.constant 5 : i32
            %c0_21 = arith.constant 0 : index
            %13 = memref.load %alloca[%c0_21] : memref<1xi32>
            %14 = arith.muli %c5_i32, %13 : i32
            %15 = arith.sitofp %14 : i32 to f64
            %16 = arith.divf %12, %15 : f64
            %c0_22 = arith.constant 0 : index
            %17 = memref.load %alloca_1[%c0_22] : memref<1xmemref<?xf64>>
            %c0_23 = arith.constant 0 : index
            %18 = memref.load %alloca_3[%c0_23] : memref<1xi32>
            %19 = arith.extsi %18 : i32 to i64
            %20 = arith.muli %19, %2 : i64
            %21 = arith.index_cast %20 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_24 = arith.constant 0 : index
            %c0_25 = arith.constant 0 : index
            %dim = memref.dim %17, %c0_25 : memref<?xf64>
            %22 = arith.subi %dim, %21 : index
            %subview = memref.subview %17[%21] [%22] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%22], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_26 = arith.constant 0 : index
            %23 = memref.load %alloca_4[%c0_26] : memref<1xi32>
            %24 = arith.index_cast %23 : i32 to index
            %c0_27 = arith.constant 0 : index
            %dim_28 = memref.dim %reinterpret_cast, %c0_27 : memref<?xf64>
            %25 = arith.subi %dim_28, %24 : index
            %c1_29 = arith.constant 1 : index
            %subview_30 = memref.subview %reinterpret_cast[%24] [%25] [%c1_29] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_31 = arith.constant 0 : index
            memref.store %16, %subview_30[%c0_31] : memref<?xf64, strided<[?], offset: ?>>
            %c0_32 = arith.constant 0 : index
            %26 = memref.load %alloca_4[%c0_32] : memref<1xi32>
            %c1_i32_33 = arith.constant 1 : i32
            %27 = arith.addi %26, %c1_i32_33 : i32
            %c0_34 = arith.constant 0 : index
            memref.store %27, %alloca_4[%c0_34] : memref<1xi32>
            scf.yield
          }
        }
        %c0_14 = arith.constant 0 : index
        %5 = memref.load %alloca_3[%c0_14] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %6 = arith.addi %5, %c1_i32 : i32
        %c0_15 = arith.constant 0 : index
        memref.store %6, %alloca_3[%c0_15] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_7] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_8] : memref<1xmemref<?xf64>>
    %c0_9 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_10] : memref<1xmemref<?xf64>>
    %c0_11 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_12] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_13 = arith.constant 0 : i32
      %c0_14 = arith.constant 0 : index
      memref.store %c0_i32_13, %alloca_5[%c0_14] : memref<1xi32>
      scf.while : () -> () {
        %c0_15 = arith.constant 0 : index
        %3 = memref.load %alloca_5[%c0_15] : memref<1xi32>
        %c0_16 = arith.constant 0 : index
        %4 = memref.load %alloca_0[%c0_16] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        %c0_i32_15 = arith.constant 0 : i32
        %3 = arith.sitofp %c0_i32_15 : i32 to f64
        %c0_16 = arith.constant 0 : index
        %4 = memref.load %alloca_3[%c0_16] : memref<1xmemref<?xf64>>
        %c0_17 = arith.constant 0 : index
        %5 = memref.load %alloca_5[%c0_17] : memref<1xi32>
        %6 = arith.index_cast %5 : i32 to index
        %c0_18 = arith.constant 0 : index
        %dim = memref.dim %4, %c0_18 : memref<?xf64>
        %7 = arith.subi %dim, %6 : index
        %c1 = arith.constant 1 : index
        %subview = memref.subview %4[%6] [%7] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
        %c0_19 = arith.constant 0 : index
        memref.store %3, %subview[%c0_19] : memref<?xf64, strided<[?], offset: ?>>
        %c0_20 = arith.constant 0 : index
        %8 = memref.load %alloca_5[%c0_20] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %9 = arith.addi %8, %c1_i32 : i32
        %c0_21 = arith.constant 0 : index
        memref.store %9, %alloca_5[%c0_21] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_13 = arith.constant 0 : i32
      %c0_14 = arith.constant 0 : index
      memref.store %c0_i32_13, %alloca_5[%c0_14] : memref<1xi32>
      scf.while : () -> () {
        %c0_15 = arith.constant 0 : index
        %3 = memref.load %alloca_5[%c0_15] : memref<1xi32>
        %c0_16 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_16] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %cst = arith.constant 0.000000e+00 : f64
          %c0_17 = arith.constant 0 : index
          %5 = memref.load %alloca_4[%c0_17] : memref<1xmemref<?xf64>>
          %c0_18 = arith.constant 0 : index
          %6 = memref.load %alloca_5[%c0_18] : memref<1xi32>
          %7 = arith.index_cast %6 : i32 to index
          %c0_19 = arith.constant 0 : index
          %dim = memref.dim %5, %c0_19 : memref<?xf64>
          %8 = arith.subi %dim, %7 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %5[%7] [%8] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_20 = arith.constant 0 : index
          memref.store %cst, %subview[%c0_20] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_i32_21 = arith.constant 0 : i32
            %c0_22 = arith.constant 0 : index
            memref.store %c0_i32_21, %alloca_6[%c0_22] : memref<1xi32>
            scf.while : () -> () {
              %c0_23 = arith.constant 0 : index
              %9 = memref.load %alloca_6[%c0_23] : memref<1xi32>
              %c0_24 = arith.constant 0 : index
              %10 = memref.load %alloca_0[%c0_24] : memref<1xi32>
              %11 = arith.cmpi slt, %9, %10 : i32
              scf.condition(%11)
            } do {
              %c0_23 = arith.constant 0 : index
              %9 = memref.load %alloca_4[%c0_23] : memref<1xmemref<?xf64>>
              %c0_24 = arith.constant 0 : index
              %10 = memref.load %alloca_5[%c0_24] : memref<1xi32>
              %11 = arith.index_cast %10 : i32 to index
              %c0_25 = arith.constant 0 : index
              %dim_26 = memref.dim %9, %c0_25 : memref<?xf64>
              %12 = arith.subi %dim_26, %11 : index
              %c1_27 = arith.constant 1 : index
              %subview_28 = memref.subview %9[%11] [%12] [%c1_27] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_29 = arith.constant 0 : index
              %13 = memref.load %subview_28[%c0_29] : memref<?xf64, strided<[?], offset: ?>>
              %c0_30 = arith.constant 0 : index
              %14 = memref.load %alloca_1[%c0_30] : memref<1xmemref<?xf64>>
              %c0_31 = arith.constant 0 : index
              %15 = memref.load %alloca_5[%c0_31] : memref<1xi32>
              %16 = arith.extsi %15 : i32 to i64
              %17 = arith.muli %16, %2 : i64
              %18 = arith.index_cast %17 : i64 to index
              %c1_32 = arith.constant 1 : index
              %c0_33 = arith.constant 0 : index
              %c0_34 = arith.constant 0 : index
              %dim_35 = memref.dim %14, %c0_34 : memref<?xf64>
              %19 = arith.subi %dim_35, %18 : index
              %subview_36 = memref.subview %14[%18] [%19] [%c1_32] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview_36 to offset: [0], sizes: [%19], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_37 = arith.constant 0 : index
              %20 = memref.load %alloca_6[%c0_37] : memref<1xi32>
              %21 = arith.index_cast %20 : i32 to index
              %c0_38 = arith.constant 0 : index
              %dim_39 = memref.dim %reinterpret_cast, %c0_38 : memref<?xf64>
              %22 = arith.subi %dim_39, %21 : index
              %c1_40 = arith.constant 1 : index
              %subview_41 = memref.subview %reinterpret_cast[%21] [%22] [%c1_40] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_42 = arith.constant 0 : index
              %23 = memref.load %subview_41[%c0_42] : memref<?xf64, strided<[?], offset: ?>>
              %c0_43 = arith.constant 0 : index
              %24 = memref.load %alloca_2[%c0_43] : memref<1xmemref<?xf64>>
              %c0_44 = arith.constant 0 : index
              %25 = memref.load %alloca_6[%c0_44] : memref<1xi32>
              %26 = arith.index_cast %25 : i32 to index
              %c0_45 = arith.constant 0 : index
              %dim_46 = memref.dim %24, %c0_45 : memref<?xf64>
              %27 = arith.subi %dim_46, %26 : index
              %c1_47 = arith.constant 1 : index
              %subview_48 = memref.subview %24[%26] [%27] [%c1_47] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_49 = arith.constant 0 : index
              %28 = memref.load %subview_48[%c0_49] : memref<?xf64, strided<[?], offset: ?>>
              %29 = arith.mulf %23, %28 : f64
              %30 = arith.addf %13, %29 : f64
              %c0_50 = arith.constant 0 : index
              %31 = memref.load %alloca_4[%c0_50] : memref<1xmemref<?xf64>>
              %c0_51 = arith.constant 0 : index
              %32 = memref.load %alloca_5[%c0_51] : memref<1xi32>
              %33 = arith.index_cast %32 : i32 to index
              %c0_52 = arith.constant 0 : index
              %dim_53 = memref.dim %31, %c0_52 : memref<?xf64>
              %34 = arith.subi %dim_53, %33 : index
              %c1_54 = arith.constant 1 : index
              %subview_55 = memref.subview %31[%33] [%34] [%c1_54] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_56 = arith.constant 0 : index
              memref.store %30, %subview_55[%c0_56] : memref<?xf64, strided<[?], offset: ?>>
              %c0_57 = arith.constant 0 : index
              %35 = memref.load %alloca_6[%c0_57] : memref<1xi32>
              %c1_i32_58 = arith.constant 1 : i32
              %36 = arith.addi %35, %c1_i32_58 : i32
              %c0_59 = arith.constant 0 : index
              memref.store %36, %alloca_6[%c0_59] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c0_i32_21 = arith.constant 0 : i32
            %c0_22 = arith.constant 0 : index
            memref.store %c0_i32_21, %alloca_6[%c0_22] : memref<1xi32>
            scf.while : () -> () {
              %c0_23 = arith.constant 0 : index
              %9 = memref.load %alloca_6[%c0_23] : memref<1xi32>
              %c0_24 = arith.constant 0 : index
              %10 = memref.load %alloca_0[%c0_24] : memref<1xi32>
              %11 = arith.cmpi slt, %9, %10 : i32
              scf.condition(%11)
            } do {
              %c0_23 = arith.constant 0 : index
              %9 = memref.load %alloca_3[%c0_23] : memref<1xmemref<?xf64>>
              %c0_24 = arith.constant 0 : index
              %10 = memref.load %alloca_6[%c0_24] : memref<1xi32>
              %11 = arith.index_cast %10 : i32 to index
              %c0_25 = arith.constant 0 : index
              %dim_26 = memref.dim %9, %c0_25 : memref<?xf64>
              %12 = arith.subi %dim_26, %11 : index
              %c1_27 = arith.constant 1 : index
              %subview_28 = memref.subview %9[%11] [%12] [%c1_27] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_29 = arith.constant 0 : index
              %13 = memref.load %subview_28[%c0_29] : memref<?xf64, strided<[?], offset: ?>>
              %c0_30 = arith.constant 0 : index
              %14 = memref.load %alloca_1[%c0_30] : memref<1xmemref<?xf64>>
              %c0_31 = arith.constant 0 : index
              %15 = memref.load %alloca_5[%c0_31] : memref<1xi32>
              %16 = arith.extsi %15 : i32 to i64
              %17 = arith.muli %16, %2 : i64
              %18 = arith.index_cast %17 : i64 to index
              %c1_32 = arith.constant 1 : index
              %c0_33 = arith.constant 0 : index
              %c0_34 = arith.constant 0 : index
              %dim_35 = memref.dim %14, %c0_34 : memref<?xf64>
              %19 = arith.subi %dim_35, %18 : index
              %subview_36 = memref.subview %14[%18] [%19] [%c1_32] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview_36 to offset: [0], sizes: [%19], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_37 = arith.constant 0 : index
              %20 = memref.load %alloca_6[%c0_37] : memref<1xi32>
              %21 = arith.index_cast %20 : i32 to index
              %c0_38 = arith.constant 0 : index
              %dim_39 = memref.dim %reinterpret_cast, %c0_38 : memref<?xf64>
              %22 = arith.subi %dim_39, %21 : index
              %c1_40 = arith.constant 1 : index
              %subview_41 = memref.subview %reinterpret_cast[%21] [%22] [%c1_40] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_42 = arith.constant 0 : index
              %23 = memref.load %subview_41[%c0_42] : memref<?xf64, strided<[?], offset: ?>>
              %c0_43 = arith.constant 0 : index
              %24 = memref.load %alloca_4[%c0_43] : memref<1xmemref<?xf64>>
              %c0_44 = arith.constant 0 : index
              %25 = memref.load %alloca_5[%c0_44] : memref<1xi32>
              %26 = arith.index_cast %25 : i32 to index
              %c0_45 = arith.constant 0 : index
              %dim_46 = memref.dim %24, %c0_45 : memref<?xf64>
              %27 = arith.subi %dim_46, %26 : index
              %c1_47 = arith.constant 1 : index
              %subview_48 = memref.subview %24[%26] [%27] [%c1_47] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_49 = arith.constant 0 : index
              %28 = memref.load %subview_48[%c0_49] : memref<?xf64, strided<[?], offset: ?>>
              %29 = arith.mulf %23, %28 : f64
              %30 = arith.addf %13, %29 : f64
              %c0_50 = arith.constant 0 : index
              %31 = memref.load %alloca_3[%c0_50] : memref<1xmemref<?xf64>>
              %c0_51 = arith.constant 0 : index
              %32 = memref.load %alloca_6[%c0_51] : memref<1xi32>
              %33 = arith.index_cast %32 : i32 to index
              %c0_52 = arith.constant 0 : index
              %dim_53 = memref.dim %31, %c0_52 : memref<?xf64>
              %34 = arith.subi %dim_53, %33 : index
              %c1_54 = arith.constant 1 : index
              %subview_55 = memref.subview %31[%33] [%34] [%c1_54] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_56 = arith.constant 0 : index
              memref.store %30, %subview_55[%c0_56] : memref<?xf64, strided<[?], offset: ?>>
              %c0_57 = arith.constant 0 : index
              %35 = memref.load %alloca_6[%c0_57] : memref<1xi32>
              %c1_i32_58 = arith.constant 1 : i32
              %36 = arith.addi %35, %c1_i32_58 : i32
              %c0_59 = arith.constant 0 : index
              memref.store %36, %alloca_6[%c0_59] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_15 = arith.constant 0 : index
        %3 = memref.load %alloca_5[%c0_15] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_16 = arith.constant 0 : index
        memref.store %4, %alloca_5[%c0_16] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[121, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.3" : memref<2xi8> = dense<[10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.4" : memref<8xi8> = dense<[37, 48, 46, 50, 108, 102, 32, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.5" : memref<17xi8> = dense<[10, 101, 110, 100, 32, 32, 32, 100, 117, 109, 112, 58, 32, 37, 115, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.6" : memref<23xi8> = dense<[61, 61, 69, 78, 68, 32, 32, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  func.func private @print_array(%arg0: i32, %arg1: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_2 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_2] : memref<1xmemref<?xf64>>
    %0 = llvm.mlir.addressof @stderr : !llvm.ptr
    %1 = llvm.load %0 : !llvm.ptr -> !llvm.ptr
    %2 = memref.get_global @".str" : memref<23xi8>
    %c0_3 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c23 = arith.constant 23 : index
    %subview = memref.subview %2[%c0_3] [%c23] [%c1] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%c23], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr = memref.extract_aligned_pointer_as_index %reinterpret_cast : memref<?xi8> -> index
    %3 = arith.index_castui %intptr : index to i64
    %4 = llvm.inttoptr %3 : i64 to !llvm.ptr
    %5 = llvm.call @fprintf(%1, %4) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %6 = llvm.mlir.addressof @stderr : !llvm.ptr
    %7 = llvm.load %6 : !llvm.ptr -> !llvm.ptr
    %8 = memref.get_global @".str.1" : memref<15xi8>
    %c0_4 = arith.constant 0 : index
    %c1_5 = arith.constant 1 : index
    %c15 = arith.constant 15 : index
    %subview_6 = memref.subview %8[%c0_4] [%c15] [%c1_5] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_7 = memref.reinterpret_cast %subview_6 to offset: [0], sizes: [%c15], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %9 = memref.get_global @".str.2" : memref<2xi8>
    %c0_8 = arith.constant 0 : index
    %c1_9 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %subview_10 = memref.subview %9[%c0_8] [%c2] [%c1_9] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_11 = memref.reinterpret_cast %subview_10 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_12 = memref.extract_aligned_pointer_as_index %reinterpret_cast_7 : memref<?xi8> -> index
    %10 = arith.index_castui %intptr_12 : index to i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr
    %intptr_13 = memref.extract_aligned_pointer_as_index %reinterpret_cast_11 : memref<?xi8> -> index
    %12 = arith.index_castui %intptr_13 : index to i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr
    %14 = llvm.call @fprintf(%7, %11, %13) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32 = arith.constant 0 : i32
      %c0_31 = arith.constant 0 : index
      memref.store %c0_i32, %alloca_1[%c0_31] : memref<1xi32>
      scf.while : () -> () {
        %c0_32 = arith.constant 0 : index
        %30 = memref.load %alloca_1[%c0_32] : memref<1xi32>
        %c0_33 = arith.constant 0 : index
        %31 = memref.load %alloca[%c0_33] : memref<1xi32>
        %32 = arith.cmpi slt, %30, %31 : i32
        scf.condition(%32)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_45 = arith.constant 0 : index
            %43 = memref.load %alloca_1[%c0_45] : memref<1xi32>
            %c20_i32 = arith.constant 20 : i32
            %44 = arith.remsi %43, %c20_i32 : i32
            %c0_i32_46 = arith.constant 0 : i32
            %45 = arith.cmpi eq, %44, %c0_i32_46 : i32
            scf.if %45 {
              %46 = llvm.mlir.addressof @stderr : !llvm.ptr
              %47 = llvm.load %46 : !llvm.ptr -> !llvm.ptr
              %48 = memref.get_global @".str.3" : memref<2xi8>
              %c0_47 = arith.constant 0 : index
              %c1_48 = arith.constant 1 : index
              %c2_49 = arith.constant 2 : index
              %subview_50 = memref.subview %48[%c0_47] [%c2_49] [%c1_48] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_51 = memref.reinterpret_cast %subview_50 to offset: [0], sizes: [%c2_49], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %intptr_52 = memref.extract_aligned_pointer_as_index %reinterpret_cast_51 : memref<?xi8> -> index
              %49 = arith.index_castui %intptr_52 : index to i64
              %50 = llvm.inttoptr %49 : i64 to !llvm.ptr
              %51 = llvm.call @fprintf(%47, %50) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
            }
          }
          %32 = llvm.mlir.addressof @stderr : !llvm.ptr
          %33 = llvm.load %32 : !llvm.ptr -> !llvm.ptr
          %34 = memref.get_global @".str.4" : memref<8xi8>
          %c0_34 = arith.constant 0 : index
          %c1_35 = arith.constant 1 : index
          %c8 = arith.constant 8 : index
          %subview_36 = memref.subview %34[%c0_34] [%c8] [%c1_35] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
          %reinterpret_cast_37 = memref.reinterpret_cast %subview_36 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
          %c0_38 = arith.constant 0 : index
          %35 = memref.load %alloca_0[%c0_38] : memref<1xmemref<?xf64>>
          %c0_39 = arith.constant 0 : index
          %36 = memref.load %alloca_1[%c0_39] : memref<1xi32>
          %37 = arith.index_cast %36 : i32 to index
          %c0_40 = arith.constant 0 : index
          %dim = memref.dim %35, %c0_40 : memref<?xf64>
          %38 = arith.subi %dim, %37 : index
          %c1_41 = arith.constant 1 : index
          %subview_42 = memref.subview %35[%37] [%38] [%c1_41] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_43 = arith.constant 0 : index
          %39 = memref.load %subview_42[%c0_43] : memref<?xf64, strided<[?], offset: ?>>
          %intptr_44 = memref.extract_aligned_pointer_as_index %reinterpret_cast_37 : memref<?xi8> -> index
          %40 = arith.index_castui %intptr_44 : index to i64
          %41 = llvm.inttoptr %40 : i64 to !llvm.ptr
          %42 = llvm.call @fprintf(%33, %41, %39) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
        }
        %c0_32 = arith.constant 0 : index
        %30 = memref.load %alloca_1[%c0_32] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %31 = arith.addi %30, %c1_i32 : i32
        %c0_33 = arith.constant 0 : index
        memref.store %31, %alloca_1[%c0_33] : memref<1xi32>
        scf.yield
      }
    }
    %15 = llvm.mlir.addressof @stderr : !llvm.ptr
    %16 = llvm.load %15 : !llvm.ptr -> !llvm.ptr
    %17 = memref.get_global @".str.5" : memref<17xi8>
    %c0_14 = arith.constant 0 : index
    %c1_15 = arith.constant 1 : index
    %c17 = arith.constant 17 : index
    %subview_16 = memref.subview %17[%c0_14] [%c17] [%c1_15] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_17 = memref.reinterpret_cast %subview_16 to offset: [0], sizes: [%c17], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %18 = memref.get_global @".str.2" : memref<2xi8>
    %c0_18 = arith.constant 0 : index
    %c1_19 = arith.constant 1 : index
    %c2_20 = arith.constant 2 : index
    %subview_21 = memref.subview %18[%c0_18] [%c2_20] [%c1_19] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_22 = memref.reinterpret_cast %subview_21 to offset: [0], sizes: [%c2_20], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_23 = memref.extract_aligned_pointer_as_index %reinterpret_cast_17 : memref<?xi8> -> index
    %19 = arith.index_castui %intptr_23 : index to i64
    %20 = llvm.inttoptr %19 : i64 to !llvm.ptr
    %intptr_24 = memref.extract_aligned_pointer_as_index %reinterpret_cast_22 : memref<?xi8> -> index
    %21 = arith.index_castui %intptr_24 : index to i64
    %22 = llvm.inttoptr %21 : i64 to !llvm.ptr
    %23 = llvm.call @fprintf(%16, %20, %22) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %24 = llvm.mlir.addressof @stderr : !llvm.ptr
    %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
    %26 = memref.get_global @".str.6" : memref<23xi8>
    %c0_25 = arith.constant 0 : index
    %c1_26 = arith.constant 1 : index
    %c23_27 = arith.constant 23 : index
    %subview_28 = memref.subview %26[%c0_25] [%c23_27] [%c1_26] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_29 = memref.reinterpret_cast %subview_28 to offset: [0], sizes: [%c23_27], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_30 = memref.extract_aligned_pointer_as_index %reinterpret_cast_29 : memref<?xi8> -> index
    %27 = arith.index_castui %intptr_30 : index to i64
    %28 = llvm.inttoptr %27 : i64 to !llvm.ptr
    %29 = llvm.call @fprintf(%25, %28) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
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
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_8] : memref<1xmemref<?xmemref<?xi8>>>
    %c1900_i32 = arith.constant 1900 : i32
    %c0_9 = arith.constant 0 : index
    memref.store %c1900_i32, %alloca_2[%c0_9] : memref<1xi32>
    %c2100_i32 = arith.constant 2100 : i32
    %c0_10 = arith.constant 0 : index
    memref.store %c2100_i32, %alloca_3[%c0_10] : memref<1xi32>
    %c0_11 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_11] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_12 = arith.constant 0 : index
    %2 = memref.load %alloca_3[%c0_12] : memref<1xi32>
    %c0_i32_13 = arith.constant 0 : i32
    %3 = arith.addi %2, %c0_i32_13 : i32
    %4 = arith.muli %1, %3 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %6 = arith.trunci %c8_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xf64>
    %c0_14 = arith.constant 0 : index
    memref.store %8, %alloca_4[%c0_14] : memref<1xmemref<?xf64>>
    %c0_15 = arith.constant 0 : index
    %9 = memref.load %alloca_3[%c0_15] : memref<1xi32>
    %c0_i32_16 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_16 : i32
    %11 = arith.extsi %10 : i32 to i64
    %c8_i64_17 = arith.constant 8 : i64
    %12 = arith.trunci %c8_i64_17 : i64 to i32
    %13 = call @polybench_alloc_data(%11, %12) : (i64, i32) -> !llvm.ptr
    %14 = builtin.unrealized_conversion_cast %13 : !llvm.ptr to memref<?xf64>
    %c0_18 = arith.constant 0 : index
    memref.store %14, %alloca_5[%c0_18] : memref<1xmemref<?xf64>>
    %c0_19 = arith.constant 0 : index
    %15 = memref.load %alloca_3[%c0_19] : memref<1xi32>
    %c0_i32_20 = arith.constant 0 : i32
    %16 = arith.addi %15, %c0_i32_20 : i32
    %17 = arith.extsi %16 : i32 to i64
    %c8_i64_21 = arith.constant 8 : i64
    %18 = arith.trunci %c8_i64_21 : i64 to i32
    %19 = call @polybench_alloc_data(%17, %18) : (i64, i32) -> !llvm.ptr
    %20 = builtin.unrealized_conversion_cast %19 : !llvm.ptr to memref<?xf64>
    %c0_22 = arith.constant 0 : index
    memref.store %20, %alloca_6[%c0_22] : memref<1xmemref<?xf64>>
    %c0_23 = arith.constant 0 : index
    %21 = memref.load %alloca_2[%c0_23] : memref<1xi32>
    %c0_i32_24 = arith.constant 0 : i32
    %22 = arith.addi %21, %c0_i32_24 : i32
    %23 = arith.extsi %22 : i32 to i64
    %c8_i64_25 = arith.constant 8 : i64
    %24 = arith.trunci %c8_i64_25 : i64 to i32
    %25 = call @polybench_alloc_data(%23, %24) : (i64, i32) -> !llvm.ptr
    %26 = builtin.unrealized_conversion_cast %25 : !llvm.ptr to memref<?xf64>
    %c0_26 = arith.constant 0 : index
    memref.store %26, %alloca_7[%c0_26] : memref<1xmemref<?xf64>>
    %c0_27 = arith.constant 0 : index
    %27 = memref.load %alloca_2[%c0_27] : memref<1xi32>
    %c0_28 = arith.constant 0 : index
    %28 = memref.load %alloca_3[%c0_28] : memref<1xi32>
    %c0_29 = arith.constant 0 : index
    %29 = memref.load %alloca_4[%c0_29] : memref<1xmemref<?xf64>>
    %c0_30 = arith.constant 0 : index
    %30 = memref.load %alloca_5[%c0_30] : memref<1xmemref<?xf64>>
    call @init_array(%27, %28, %29, %30) : (i32, i32, memref<?xf64>, memref<?xf64>) -> ()
    %31 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %31() : !llvm.ptr, () -> ()
    %c0_31 = arith.constant 0 : index
    %32 = memref.load %alloca_2[%c0_31] : memref<1xi32>
    %c0_32 = arith.constant 0 : index
    %33 = memref.load %alloca_3[%c0_32] : memref<1xi32>
    %c0_33 = arith.constant 0 : index
    %34 = memref.load %alloca_4[%c0_33] : memref<1xmemref<?xf64>>
    %c0_34 = arith.constant 0 : index
    %35 = memref.load %alloca_5[%c0_34] : memref<1xmemref<?xf64>>
    %c0_35 = arith.constant 0 : index
    %36 = memref.load %alloca_6[%c0_35] : memref<1xmemref<?xf64>>
    %c0_36 = arith.constant 0 : index
    %37 = memref.load %alloca_7[%c0_36] : memref<1xmemref<?xf64>>
    call @kernel_atax(%32, %33, %34, %35, %36, %37) : (i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %38 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %38() : !llvm.ptr, () -> ()
    %39 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %39() : !llvm.ptr, () -> ()
    %c0_37 = arith.constant 0 : index
    %40 = memref.load %alloca_3[%c0_37] : memref<1xi32>
    %c0_38 = arith.constant 0 : index
    %41 = memref.load %alloca_6[%c0_38] : memref<1xmemref<?xf64>>
    call @print_array(%40, %41) : (i32, memref<?xf64>) -> ()
    %c0_39 = arith.constant 0 : index
    %42 = memref.load %alloca_4[%c0_39] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %42 : memref<?xf64> -> index
    %43 = arith.index_castui %intptr : index to i64
    %44 = llvm.inttoptr %43 : i64 to !llvm.ptr
    call @free(%44) : (!llvm.ptr) -> ()
    %c0_40 = arith.constant 0 : index
    %45 = memref.load %alloca_5[%c0_40] : memref<1xmemref<?xf64>>
    %intptr_41 = memref.extract_aligned_pointer_as_index %45 : memref<?xf64> -> index
    %46 = arith.index_castui %intptr_41 : index to i64
    %47 = llvm.inttoptr %46 : i64 to !llvm.ptr
    call @free(%47) : (!llvm.ptr) -> ()
    %c0_42 = arith.constant 0 : index
    %48 = memref.load %alloca_6[%c0_42] : memref<1xmemref<?xf64>>
    %intptr_43 = memref.extract_aligned_pointer_as_index %48 : memref<?xf64> -> index
    %49 = arith.index_castui %intptr_43 : index to i64
    %50 = llvm.inttoptr %49 : i64 to !llvm.ptr
    call @free(%50) : (!llvm.ptr) -> ()
    %c0_44 = arith.constant 0 : index
    %51 = memref.load %alloca_7[%c0_44] : memref<1xmemref<?xf64>>
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

