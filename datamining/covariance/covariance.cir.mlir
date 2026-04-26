module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/datamining/covariance/covariance.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_5 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_5] : memref<1xi32>
    %c0_6 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_6] : memref<1xmemref<?xf64>>
    %c0_7 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_7] : memref<1xmemref<?xf64>>
    %c0_8 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_8] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_9 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_9] : memref<1xi32>
    %4 = arith.sitofp %3 : i32 to f64
    %c0_10 = arith.constant 0 : index
    %5 = memref.load %alloca_1[%c0_10] : memref<1xmemref<?xf64>>
    %c0_11 = arith.constant 0 : index
    memref.store %4, %5[%c0_11] : memref<?xf64>
    memref.alloca_scope  {
      %c0_i32_12 = arith.constant 0 : i32
      %c0_13 = arith.constant 0 : index
      memref.store %c0_i32_12, %alloca_3[%c0_13] : memref<1xi32>
      scf.while : () -> () {
        %c0_14 = arith.constant 0 : index
        %6 = memref.load %alloca_3[%c0_14] : memref<1xi32>
        %c1400_i32 = arith.constant 1400 : i32
        %7 = arith.cmpi slt, %6, %c1400_i32 : i32
        scf.condition(%7)
      } do {
        memref.alloca_scope  {
          %c0_i32_16 = arith.constant 0 : i32
          %c0_17 = arith.constant 0 : index
          memref.store %c0_i32_16, %alloca_4[%c0_17] : memref<1xi32>
          scf.while : () -> () {
            %c0_18 = arith.constant 0 : index
            %8 = memref.load %alloca_4[%c0_18] : memref<1xi32>
            %c1200_i32 = arith.constant 1200 : i32
            %9 = arith.cmpi slt, %8, %c1200_i32 : i32
            scf.condition(%9)
          } do {
            %c0_18 = arith.constant 0 : index
            %8 = memref.load %alloca_3[%c0_18] : memref<1xi32>
            %9 = arith.sitofp %8 : i32 to f64
            %c0_19 = arith.constant 0 : index
            %10 = memref.load %alloca_4[%c0_19] : memref<1xi32>
            %11 = arith.sitofp %10 : i32 to f64
            %12 = arith.mulf %9, %11 : f64
            %c1200_i32 = arith.constant 1200 : i32
            %13 = arith.sitofp %c1200_i32 : i32 to f64
            %14 = arith.divf %12, %13 : f64
            %c0_20 = arith.constant 0 : index
            %15 = memref.load %alloca_2[%c0_20] : memref<1xmemref<?xf64>>
            %c0_21 = arith.constant 0 : index
            %16 = memref.load %alloca_3[%c0_21] : memref<1xi32>
            %17 = arith.extsi %16 : i32 to i64
            %18 = arith.muli %17, %2 : i64
            %19 = arith.index_cast %18 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_22 = arith.constant 0 : index
            %c0_23 = arith.constant 0 : index
            %dim = memref.dim %15, %c0_23 : memref<?xf64>
            %20 = arith.subi %dim, %19 : index
            %subview = memref.subview %15[%19] [%20] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%20], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_24 = arith.constant 0 : index
            %21 = memref.load %alloca_4[%c0_24] : memref<1xi32>
            %22 = arith.index_cast %21 : i32 to index
            %c0_25 = arith.constant 0 : index
            %dim_26 = memref.dim %reinterpret_cast, %c0_25 : memref<?xf64>
            %23 = arith.subi %dim_26, %22 : index
            %c1_27 = arith.constant 1 : index
            %subview_28 = memref.subview %reinterpret_cast[%22] [%23] [%c1_27] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_29 = arith.constant 0 : index
            memref.store %14, %subview_28[%c0_29] : memref<?xf64, strided<[?], offset: ?>>
            %c0_30 = arith.constant 0 : index
            %24 = memref.load %alloca_4[%c0_30] : memref<1xi32>
            %c1_i32_31 = arith.constant 1 : i32
            %25 = arith.addi %24, %c1_i32_31 : i32
            %c0_32 = arith.constant 0 : index
            memref.store %25, %alloca_4[%c0_32] : memref<1xi32>
            scf.yield
          }
        }
        %c0_14 = arith.constant 0 : index
        %6 = memref.load %alloca_3[%c0_14] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %7 = arith.addi %6, %c1_i32 : i32
        %c0_15 = arith.constant 0 : index
        memref.store %7, %alloca_3[%c0_15] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_7 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_8] : memref<1xi32>
    %c0_9 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_9] : memref<1xf64>
    %c0_10 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_10] : memref<1xmemref<?xf64>>
    %c0_11 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_12] : memref<1xmemref<?xf64>>
    %c0_13 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_13] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_14 = arith.constant 0 : index
    %3 = memref.load %alloca[%c0_14] : memref<1xi32>
    %c0_i32_15 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_15 : i32
    %5 = arith.extsi %4 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_16 = arith.constant 0 : i32
      %c0_17 = arith.constant 0 : index
      memref.store %c0_i32_16, %alloca_6[%c0_17] : memref<1xi32>
      scf.while : () -> () {
        %c0_18 = arith.constant 0 : index
        %6 = memref.load %alloca_6[%c0_18] : memref<1xi32>
        %c0_19 = arith.constant 0 : index
        %7 = memref.load %alloca[%c0_19] : memref<1xi32>
        %8 = arith.cmpi slt, %6, %7 : i32
        scf.condition(%8)
      } do {
        memref.alloca_scope  {
          %cst = arith.constant 0.000000e+00 : f64
          %c0_20 = arith.constant 0 : index
          %8 = memref.load %alloca_4[%c0_20] : memref<1xmemref<?xf64>>
          %c0_21 = arith.constant 0 : index
          %9 = memref.load %alloca_6[%c0_21] : memref<1xi32>
          %10 = arith.index_cast %9 : i32 to index
          %c0_22 = arith.constant 0 : index
          %dim = memref.dim %8, %c0_22 : memref<?xf64>
          %11 = arith.subi %dim, %10 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %8[%10] [%11] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_23 = arith.constant 0 : index
          memref.store %cst, %subview[%c0_23] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_i32_33 = arith.constant 0 : i32
            %c0_34 = arith.constant 0 : index
            memref.store %c0_i32_33, %alloca_5[%c0_34] : memref<1xi32>
            scf.while : () -> () {
              %c0_35 = arith.constant 0 : index
              %19 = memref.load %alloca_5[%c0_35] : memref<1xi32>
              %c0_36 = arith.constant 0 : index
              %20 = memref.load %alloca_0[%c0_36] : memref<1xi32>
              %21 = arith.cmpi slt, %19, %20 : i32
              scf.condition(%21)
            } do {
              %c0_35 = arith.constant 0 : index
              %19 = memref.load %alloca_2[%c0_35] : memref<1xmemref<?xf64>>
              %c0_36 = arith.constant 0 : index
              %20 = memref.load %alloca_5[%c0_36] : memref<1xi32>
              %21 = arith.extsi %20 : i32 to i64
              %22 = arith.muli %21, %2 : i64
              %23 = arith.index_cast %22 : i64 to index
              %c1_37 = arith.constant 1 : index
              %c0_38 = arith.constant 0 : index
              %c0_39 = arith.constant 0 : index
              %dim_40 = memref.dim %19, %c0_39 : memref<?xf64>
              %24 = arith.subi %dim_40, %23 : index
              %subview_41 = memref.subview %19[%23] [%24] [%c1_37] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview_41 to offset: [0], sizes: [%24], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_42 = arith.constant 0 : index
              %25 = memref.load %alloca_6[%c0_42] : memref<1xi32>
              %26 = arith.index_cast %25 : i32 to index
              %c0_43 = arith.constant 0 : index
              %dim_44 = memref.dim %reinterpret_cast, %c0_43 : memref<?xf64>
              %27 = arith.subi %dim_44, %26 : index
              %c1_45 = arith.constant 1 : index
              %subview_46 = memref.subview %reinterpret_cast[%26] [%27] [%c1_45] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_47 = arith.constant 0 : index
              %28 = memref.load %subview_46[%c0_47] : memref<?xf64, strided<[?], offset: ?>>
              %c0_48 = arith.constant 0 : index
              %29 = memref.load %alloca_4[%c0_48] : memref<1xmemref<?xf64>>
              %c0_49 = arith.constant 0 : index
              %30 = memref.load %alloca_6[%c0_49] : memref<1xi32>
              %31 = arith.index_cast %30 : i32 to index
              %c0_50 = arith.constant 0 : index
              %dim_51 = memref.dim %29, %c0_50 : memref<?xf64>
              %32 = arith.subi %dim_51, %31 : index
              %c1_52 = arith.constant 1 : index
              %subview_53 = memref.subview %29[%31] [%32] [%c1_52] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_54 = arith.constant 0 : index
              %33 = memref.load %subview_53[%c0_54] : memref<?xf64, strided<[?], offset: ?>>
              %34 = arith.addf %33, %28 : f64
              %c0_55 = arith.constant 0 : index
              memref.store %34, %subview_53[%c0_55] : memref<?xf64, strided<[?], offset: ?>>
              %c0_56 = arith.constant 0 : index
              %35 = memref.load %alloca_5[%c0_56] : memref<1xi32>
              %c1_i32_57 = arith.constant 1 : i32
              %36 = arith.addi %35, %c1_i32_57 : i32
              %c0_58 = arith.constant 0 : index
              memref.store %36, %alloca_5[%c0_58] : memref<1xi32>
              scf.yield
            }
          }
          %c0_24 = arith.constant 0 : index
          %12 = memref.load %alloca_1[%c0_24] : memref<1xf64>
          %c0_25 = arith.constant 0 : index
          %13 = memref.load %alloca_4[%c0_25] : memref<1xmemref<?xf64>>
          %c0_26 = arith.constant 0 : index
          %14 = memref.load %alloca_6[%c0_26] : memref<1xi32>
          %15 = arith.index_cast %14 : i32 to index
          %c0_27 = arith.constant 0 : index
          %dim_28 = memref.dim %13, %c0_27 : memref<?xf64>
          %16 = arith.subi %dim_28, %15 : index
          %c1_29 = arith.constant 1 : index
          %subview_30 = memref.subview %13[%15] [%16] [%c1_29] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_31 = arith.constant 0 : index
          %17 = memref.load %subview_30[%c0_31] : memref<?xf64, strided<[?], offset: ?>>
          %18 = arith.divf %17, %12 : f64
          %c0_32 = arith.constant 0 : index
          memref.store %18, %subview_30[%c0_32] : memref<?xf64, strided<[?], offset: ?>>
        }
        %c0_18 = arith.constant 0 : index
        %6 = memref.load %alloca_6[%c0_18] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %7 = arith.addi %6, %c1_i32 : i32
        %c0_19 = arith.constant 0 : index
        memref.store %7, %alloca_6[%c0_19] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_16 = arith.constant 0 : i32
      %c0_17 = arith.constant 0 : index
      memref.store %c0_i32_16, %alloca_5[%c0_17] : memref<1xi32>
      scf.while : () -> () {
        %c0_18 = arith.constant 0 : index
        %6 = memref.load %alloca_5[%c0_18] : memref<1xi32>
        %c0_19 = arith.constant 0 : index
        %7 = memref.load %alloca_0[%c0_19] : memref<1xi32>
        %8 = arith.cmpi slt, %6, %7 : i32
        scf.condition(%8)
      } do {
        memref.alloca_scope  {
          %c0_i32_20 = arith.constant 0 : i32
          %c0_21 = arith.constant 0 : index
          memref.store %c0_i32_20, %alloca_6[%c0_21] : memref<1xi32>
          scf.while : () -> () {
            %c0_22 = arith.constant 0 : index
            %8 = memref.load %alloca_6[%c0_22] : memref<1xi32>
            %c0_23 = arith.constant 0 : index
            %9 = memref.load %alloca[%c0_23] : memref<1xi32>
            %10 = arith.cmpi slt, %8, %9 : i32
            scf.condition(%10)
          } do {
            %c0_22 = arith.constant 0 : index
            %8 = memref.load %alloca_4[%c0_22] : memref<1xmemref<?xf64>>
            %c0_23 = arith.constant 0 : index
            %9 = memref.load %alloca_6[%c0_23] : memref<1xi32>
            %10 = arith.index_cast %9 : i32 to index
            %c0_24 = arith.constant 0 : index
            %dim = memref.dim %8, %c0_24 : memref<?xf64>
            %11 = arith.subi %dim, %10 : index
            %c1 = arith.constant 1 : index
            %subview = memref.subview %8[%10] [%11] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_25 = arith.constant 0 : index
            %12 = memref.load %subview[%c0_25] : memref<?xf64, strided<[?], offset: ?>>
            %c0_26 = arith.constant 0 : index
            %13 = memref.load %alloca_2[%c0_26] : memref<1xmemref<?xf64>>
            %c0_27 = arith.constant 0 : index
            %14 = memref.load %alloca_5[%c0_27] : memref<1xi32>
            %15 = arith.extsi %14 : i32 to i64
            %16 = arith.muli %15, %2 : i64
            %17 = arith.index_cast %16 : i64 to index
            %c1_28 = arith.constant 1 : index
            %c0_29 = arith.constant 0 : index
            %c0_30 = arith.constant 0 : index
            %dim_31 = memref.dim %13, %c0_30 : memref<?xf64>
            %18 = arith.subi %dim_31, %17 : index
            %subview_32 = memref.subview %13[%17] [%18] [%c1_28] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview_32 to offset: [0], sizes: [%18], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_33 = arith.constant 0 : index
            %19 = memref.load %alloca_6[%c0_33] : memref<1xi32>
            %20 = arith.index_cast %19 : i32 to index
            %c0_34 = arith.constant 0 : index
            %dim_35 = memref.dim %reinterpret_cast, %c0_34 : memref<?xf64>
            %21 = arith.subi %dim_35, %20 : index
            %c1_36 = arith.constant 1 : index
            %subview_37 = memref.subview %reinterpret_cast[%20] [%21] [%c1_36] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_38 = arith.constant 0 : index
            %22 = memref.load %subview_37[%c0_38] : memref<?xf64, strided<[?], offset: ?>>
            %23 = arith.subf %22, %12 : f64
            %c0_39 = arith.constant 0 : index
            memref.store %23, %subview_37[%c0_39] : memref<?xf64, strided<[?], offset: ?>>
            %c0_40 = arith.constant 0 : index
            %24 = memref.load %alloca_6[%c0_40] : memref<1xi32>
            %c1_i32_41 = arith.constant 1 : i32
            %25 = arith.addi %24, %c1_i32_41 : i32
            %c0_42 = arith.constant 0 : index
            memref.store %25, %alloca_6[%c0_42] : memref<1xi32>
            scf.yield
          }
        }
        %c0_18 = arith.constant 0 : index
        %6 = memref.load %alloca_5[%c0_18] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %7 = arith.addi %6, %c1_i32 : i32
        %c0_19 = arith.constant 0 : index
        memref.store %7, %alloca_5[%c0_19] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_16 = arith.constant 0 : i32
      %c0_17 = arith.constant 0 : index
      memref.store %c0_i32_16, %alloca_5[%c0_17] : memref<1xi32>
      scf.while : () -> () {
        %c0_18 = arith.constant 0 : index
        %6 = memref.load %alloca_5[%c0_18] : memref<1xi32>
        %c0_19 = arith.constant 0 : index
        %7 = memref.load %alloca[%c0_19] : memref<1xi32>
        %8 = arith.cmpi slt, %6, %7 : i32
        scf.condition(%8)
      } do {
        memref.alloca_scope  {
          %c0_20 = arith.constant 0 : index
          %8 = memref.load %alloca_5[%c0_20] : memref<1xi32>
          %c0_21 = arith.constant 0 : index
          memref.store %8, %alloca_6[%c0_21] : memref<1xi32>
          scf.while : () -> () {
            %c0_22 = arith.constant 0 : index
            %9 = memref.load %alloca_6[%c0_22] : memref<1xi32>
            %c0_23 = arith.constant 0 : index
            %10 = memref.load %alloca[%c0_23] : memref<1xi32>
            %11 = arith.cmpi slt, %9, %10 : i32
            scf.condition(%11)
          } do {
            memref.alloca_scope  {
              %cst = arith.constant 0.000000e+00 : f64
              %c0_25 = arith.constant 0 : index
              %11 = memref.load %alloca_3[%c0_25] : memref<1xmemref<?xf64>>
              %c0_26 = arith.constant 0 : index
              %12 = memref.load %alloca_5[%c0_26] : memref<1xi32>
              %13 = arith.extsi %12 : i32 to i64
              %14 = arith.muli %13, %5 : i64
              %15 = arith.index_cast %14 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_27 = arith.constant 0 : index
              %c0_28 = arith.constant 0 : index
              %dim = memref.dim %11, %c0_28 : memref<?xf64>
              %16 = arith.subi %dim, %15 : index
              %subview = memref.subview %11[%15] [%16] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%16], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_29 = arith.constant 0 : index
              %17 = memref.load %alloca_6[%c0_29] : memref<1xi32>
              %18 = arith.index_cast %17 : i32 to index
              %c0_30 = arith.constant 0 : index
              %dim_31 = memref.dim %reinterpret_cast, %c0_30 : memref<?xf64>
              %19 = arith.subi %dim_31, %18 : index
              %c1_32 = arith.constant 1 : index
              %subview_33 = memref.subview %reinterpret_cast[%18] [%19] [%c1_32] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_34 = arith.constant 0 : index
              memref.store %cst, %subview_33[%c0_34] : memref<?xf64, strided<[?], offset: ?>>
              memref.alloca_scope  {
                %c0_i32_80 = arith.constant 0 : i32
                %c0_81 = arith.constant 0 : index
                memref.store %c0_i32_80, %alloca_7[%c0_81] : memref<1xi32>
                scf.while : () -> () {
                  %c0_82 = arith.constant 0 : index
                  %52 = memref.load %alloca_7[%c0_82] : memref<1xi32>
                  %c0_83 = arith.constant 0 : index
                  %53 = memref.load %alloca_0[%c0_83] : memref<1xi32>
                  %54 = arith.cmpi slt, %52, %53 : i32
                  scf.condition(%54)
                } do {
                  %c0_82 = arith.constant 0 : index
                  %52 = memref.load %alloca_2[%c0_82] : memref<1xmemref<?xf64>>
                  %c0_83 = arith.constant 0 : index
                  %53 = memref.load %alloca_7[%c0_83] : memref<1xi32>
                  %54 = arith.extsi %53 : i32 to i64
                  %55 = arith.muli %54, %2 : i64
                  %56 = arith.index_cast %55 : i64 to index
                  %c1_84 = arith.constant 1 : index
                  %c0_85 = arith.constant 0 : index
                  %c0_86 = arith.constant 0 : index
                  %dim_87 = memref.dim %52, %c0_86 : memref<?xf64>
                  %57 = arith.subi %dim_87, %56 : index
                  %subview_88 = memref.subview %52[%56] [%57] [%c1_84] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_89 = memref.reinterpret_cast %subview_88 to offset: [0], sizes: [%57], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_90 = arith.constant 0 : index
                  %58 = memref.load %alloca_5[%c0_90] : memref<1xi32>
                  %59 = arith.index_cast %58 : i32 to index
                  %c0_91 = arith.constant 0 : index
                  %dim_92 = memref.dim %reinterpret_cast_89, %c0_91 : memref<?xf64>
                  %60 = arith.subi %dim_92, %59 : index
                  %c1_93 = arith.constant 1 : index
                  %subview_94 = memref.subview %reinterpret_cast_89[%59] [%60] [%c1_93] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_95 = arith.constant 0 : index
                  %61 = memref.load %subview_94[%c0_95] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_96 = arith.constant 0 : index
                  %62 = memref.load %alloca_2[%c0_96] : memref<1xmemref<?xf64>>
                  %c0_97 = arith.constant 0 : index
                  %63 = memref.load %alloca_7[%c0_97] : memref<1xi32>
                  %64 = arith.extsi %63 : i32 to i64
                  %65 = arith.muli %64, %2 : i64
                  %66 = arith.index_cast %65 : i64 to index
                  %c1_98 = arith.constant 1 : index
                  %c0_99 = arith.constant 0 : index
                  %c0_100 = arith.constant 0 : index
                  %dim_101 = memref.dim %62, %c0_100 : memref<?xf64>
                  %67 = arith.subi %dim_101, %66 : index
                  %subview_102 = memref.subview %62[%66] [%67] [%c1_98] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_103 = memref.reinterpret_cast %subview_102 to offset: [0], sizes: [%67], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_104 = arith.constant 0 : index
                  %68 = memref.load %alloca_6[%c0_104] : memref<1xi32>
                  %69 = arith.index_cast %68 : i32 to index
                  %c0_105 = arith.constant 0 : index
                  %dim_106 = memref.dim %reinterpret_cast_103, %c0_105 : memref<?xf64>
                  %70 = arith.subi %dim_106, %69 : index
                  %c1_107 = arith.constant 1 : index
                  %subview_108 = memref.subview %reinterpret_cast_103[%69] [%70] [%c1_107] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_109 = arith.constant 0 : index
                  %71 = memref.load %subview_108[%c0_109] : memref<?xf64, strided<[?], offset: ?>>
                  %72 = arith.mulf %61, %71 : f64
                  %c0_110 = arith.constant 0 : index
                  %73 = memref.load %alloca_3[%c0_110] : memref<1xmemref<?xf64>>
                  %c0_111 = arith.constant 0 : index
                  %74 = memref.load %alloca_5[%c0_111] : memref<1xi32>
                  %75 = arith.extsi %74 : i32 to i64
                  %76 = arith.muli %75, %5 : i64
                  %77 = arith.index_cast %76 : i64 to index
                  %c1_112 = arith.constant 1 : index
                  %c0_113 = arith.constant 0 : index
                  %c0_114 = arith.constant 0 : index
                  %dim_115 = memref.dim %73, %c0_114 : memref<?xf64>
                  %78 = arith.subi %dim_115, %77 : index
                  %subview_116 = memref.subview %73[%77] [%78] [%c1_112] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_117 = memref.reinterpret_cast %subview_116 to offset: [0], sizes: [%78], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_118 = arith.constant 0 : index
                  %79 = memref.load %alloca_6[%c0_118] : memref<1xi32>
                  %80 = arith.index_cast %79 : i32 to index
                  %c0_119 = arith.constant 0 : index
                  %dim_120 = memref.dim %reinterpret_cast_117, %c0_119 : memref<?xf64>
                  %81 = arith.subi %dim_120, %80 : index
                  %c1_121 = arith.constant 1 : index
                  %subview_122 = memref.subview %reinterpret_cast_117[%80] [%81] [%c1_121] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_123 = arith.constant 0 : index
                  %82 = memref.load %subview_122[%c0_123] : memref<?xf64, strided<[?], offset: ?>>
                  %83 = arith.addf %82, %72 : f64
                  %c0_124 = arith.constant 0 : index
                  memref.store %83, %subview_122[%c0_124] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_125 = arith.constant 0 : index
                  %84 = memref.load %alloca_7[%c0_125] : memref<1xi32>
                  %c1_i32_126 = arith.constant 1 : i32
                  %85 = arith.addi %84, %c1_i32_126 : i32
                  %c0_127 = arith.constant 0 : index
                  memref.store %85, %alloca_7[%c0_127] : memref<1xi32>
                  scf.yield
                }
              }
              %c0_35 = arith.constant 0 : index
              %20 = memref.load %alloca_1[%c0_35] : memref<1xf64>
              %cst_36 = arith.constant 1.000000e+00 : f64
              %21 = arith.subf %20, %cst_36 : f64
              %c0_37 = arith.constant 0 : index
              %22 = memref.load %alloca_3[%c0_37] : memref<1xmemref<?xf64>>
              %c0_38 = arith.constant 0 : index
              %23 = memref.load %alloca_5[%c0_38] : memref<1xi32>
              %24 = arith.extsi %23 : i32 to i64
              %25 = arith.muli %24, %5 : i64
              %26 = arith.index_cast %25 : i64 to index
              %c1_39 = arith.constant 1 : index
              %c0_40 = arith.constant 0 : index
              %c0_41 = arith.constant 0 : index
              %dim_42 = memref.dim %22, %c0_41 : memref<?xf64>
              %27 = arith.subi %dim_42, %26 : index
              %subview_43 = memref.subview %22[%26] [%27] [%c1_39] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_44 = memref.reinterpret_cast %subview_43 to offset: [0], sizes: [%27], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_45 = arith.constant 0 : index
              %28 = memref.load %alloca_6[%c0_45] : memref<1xi32>
              %29 = arith.index_cast %28 : i32 to index
              %c0_46 = arith.constant 0 : index
              %dim_47 = memref.dim %reinterpret_cast_44, %c0_46 : memref<?xf64>
              %30 = arith.subi %dim_47, %29 : index
              %c1_48 = arith.constant 1 : index
              %subview_49 = memref.subview %reinterpret_cast_44[%29] [%30] [%c1_48] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_50 = arith.constant 0 : index
              %31 = memref.load %subview_49[%c0_50] : memref<?xf64, strided<[?], offset: ?>>
              %32 = arith.divf %31, %21 : f64
              %c0_51 = arith.constant 0 : index
              memref.store %32, %subview_49[%c0_51] : memref<?xf64, strided<[?], offset: ?>>
              %c0_52 = arith.constant 0 : index
              %33 = memref.load %alloca_3[%c0_52] : memref<1xmemref<?xf64>>
              %c0_53 = arith.constant 0 : index
              %34 = memref.load %alloca_5[%c0_53] : memref<1xi32>
              %35 = arith.extsi %34 : i32 to i64
              %36 = arith.muli %35, %5 : i64
              %37 = arith.index_cast %36 : i64 to index
              %c1_54 = arith.constant 1 : index
              %c0_55 = arith.constant 0 : index
              %c0_56 = arith.constant 0 : index
              %dim_57 = memref.dim %33, %c0_56 : memref<?xf64>
              %38 = arith.subi %dim_57, %37 : index
              %subview_58 = memref.subview %33[%37] [%38] [%c1_54] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_59 = memref.reinterpret_cast %subview_58 to offset: [0], sizes: [%38], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_60 = arith.constant 0 : index
              %39 = memref.load %alloca_6[%c0_60] : memref<1xi32>
              %40 = arith.index_cast %39 : i32 to index
              %c0_61 = arith.constant 0 : index
              %dim_62 = memref.dim %reinterpret_cast_59, %c0_61 : memref<?xf64>
              %41 = arith.subi %dim_62, %40 : index
              %c1_63 = arith.constant 1 : index
              %subview_64 = memref.subview %reinterpret_cast_59[%40] [%41] [%c1_63] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_65 = arith.constant 0 : index
              %42 = memref.load %subview_64[%c0_65] : memref<?xf64, strided<[?], offset: ?>>
              %c0_66 = arith.constant 0 : index
              %43 = memref.load %alloca_3[%c0_66] : memref<1xmemref<?xf64>>
              %c0_67 = arith.constant 0 : index
              %44 = memref.load %alloca_6[%c0_67] : memref<1xi32>
              %45 = arith.extsi %44 : i32 to i64
              %46 = arith.muli %45, %5 : i64
              %47 = arith.index_cast %46 : i64 to index
              %c1_68 = arith.constant 1 : index
              %c0_69 = arith.constant 0 : index
              %c0_70 = arith.constant 0 : index
              %dim_71 = memref.dim %43, %c0_70 : memref<?xf64>
              %48 = arith.subi %dim_71, %47 : index
              %subview_72 = memref.subview %43[%47] [%48] [%c1_68] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_73 = memref.reinterpret_cast %subview_72 to offset: [0], sizes: [%48], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_74 = arith.constant 0 : index
              %49 = memref.load %alloca_5[%c0_74] : memref<1xi32>
              %50 = arith.index_cast %49 : i32 to index
              %c0_75 = arith.constant 0 : index
              %dim_76 = memref.dim %reinterpret_cast_73, %c0_75 : memref<?xf64>
              %51 = arith.subi %dim_76, %50 : index
              %c1_77 = arith.constant 1 : index
              %subview_78 = memref.subview %reinterpret_cast_73[%50] [%51] [%c1_77] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_79 = arith.constant 0 : index
              memref.store %42, %subview_78[%c0_79] : memref<?xf64, strided<[?], offset: ?>>
            }
            %c0_22 = arith.constant 0 : index
            %9 = memref.load %alloca_6[%c0_22] : memref<1xi32>
            %c1_i32_23 = arith.constant 1 : i32
            %10 = arith.addi %9, %c1_i32_23 : i32
            %c0_24 = arith.constant 0 : index
            memref.store %10, %alloca_6[%c0_24] : memref<1xi32>
            scf.yield
          }
        }
        %c0_18 = arith.constant 0 : index
        %6 = memref.load %alloca_5[%c0_18] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %7 = arith.addi %6, %c1_i32 : i32
        %c0_19 = arith.constant 0 : index
        memref.store %7, %alloca_5[%c0_19] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<4xi8> = dense<[99, 111, 118, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.3" : memref<2xi8> = dense<[10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.4" : memref<8xi8> = dense<[37, 48, 46, 50, 108, 102, 32, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.5" : memref<17xi8> = dense<[10, 101, 110, 100, 32, 32, 32, 100, 117, 109, 112, 58, 32, 37, 115, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.6" : memref<23xi8> = dense<[61, 61, 69, 78, 68, 32, 32, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  func.func private @print_array(%arg0: i32, %arg1: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_3 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_3] : memref<1xmemref<?xf64>>
    %c0_4 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_4] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %3 = llvm.mlir.addressof @stderr : !llvm.ptr
    %4 = llvm.load %3 : !llvm.ptr -> !llvm.ptr
    %5 = memref.get_global @".str" : memref<23xi8>
    %c0_5 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c23 = arith.constant 23 : index
    %subview = memref.subview %5[%c0_5] [%c23] [%c1] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%c23], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr = memref.extract_aligned_pointer_as_index %reinterpret_cast : memref<?xi8> -> index
    %6 = arith.index_castui %intptr : index to i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %8 = llvm.call @fprintf(%4, %7) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %9 = llvm.mlir.addressof @stderr : !llvm.ptr
    %10 = llvm.load %9 : !llvm.ptr -> !llvm.ptr
    %11 = memref.get_global @".str.1" : memref<15xi8>
    %c0_6 = arith.constant 0 : index
    %c1_7 = arith.constant 1 : index
    %c15 = arith.constant 15 : index
    %subview_8 = memref.subview %11[%c0_6] [%c15] [%c1_7] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_9 = memref.reinterpret_cast %subview_8 to offset: [0], sizes: [%c15], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %12 = memref.get_global @".str.2" : memref<4xi8>
    %c0_10 = arith.constant 0 : index
    %c1_11 = arith.constant 1 : index
    %c4 = arith.constant 4 : index
    %subview_12 = memref.subview %12[%c0_10] [%c4] [%c1_11] : memref<4xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_13 = memref.reinterpret_cast %subview_12 to offset: [0], sizes: [%c4], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_14 = memref.extract_aligned_pointer_as_index %reinterpret_cast_9 : memref<?xi8> -> index
    %13 = arith.index_castui %intptr_14 : index to i64
    %14 = llvm.inttoptr %13 : i64 to !llvm.ptr
    %intptr_15 = memref.extract_aligned_pointer_as_index %reinterpret_cast_13 : memref<?xi8> -> index
    %15 = arith.index_castui %intptr_15 : index to i64
    %16 = llvm.inttoptr %15 : i64 to !llvm.ptr
    %17 = llvm.call @fprintf(%10, %14, %16) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32_33 = arith.constant 0 : i32
      %c0_34 = arith.constant 0 : index
      memref.store %c0_i32_33, %alloca_1[%c0_34] : memref<1xi32>
      scf.while : () -> () {
        %c0_35 = arith.constant 0 : index
        %33 = memref.load %alloca_1[%c0_35] : memref<1xi32>
        %c0_36 = arith.constant 0 : index
        %34 = memref.load %alloca[%c0_36] : memref<1xi32>
        %35 = arith.cmpi slt, %33, %34 : i32
        scf.condition(%35)
      } do {
        memref.alloca_scope  {
          %c0_i32_37 = arith.constant 0 : i32
          %c0_38 = arith.constant 0 : index
          memref.store %c0_i32_37, %alloca_2[%c0_38] : memref<1xi32>
          scf.while : () -> () {
            %c0_39 = arith.constant 0 : index
            %35 = memref.load %alloca_2[%c0_39] : memref<1xi32>
            %c0_40 = arith.constant 0 : index
            %36 = memref.load %alloca[%c0_40] : memref<1xi32>
            %37 = arith.cmpi slt, %35, %36 : i32
            scf.condition(%37)
          } do {
            memref.alloca_scope  {
              memref.alloca_scope  {
                %c0_60 = arith.constant 0 : index
                %53 = memref.load %alloca_1[%c0_60] : memref<1xi32>
                %c0_61 = arith.constant 0 : index
                %54 = memref.load %alloca[%c0_61] : memref<1xi32>
                %55 = arith.muli %53, %54 : i32
                %c0_62 = arith.constant 0 : index
                %56 = memref.load %alloca_2[%c0_62] : memref<1xi32>
                %57 = arith.addi %55, %56 : i32
                %c20_i32 = arith.constant 20 : i32
                %58 = arith.remsi %57, %c20_i32 : i32
                %c0_i32_63 = arith.constant 0 : i32
                %59 = arith.cmpi eq, %58, %c0_i32_63 : i32
                scf.if %59 {
                  %60 = llvm.mlir.addressof @stderr : !llvm.ptr
                  %61 = llvm.load %60 : !llvm.ptr -> !llvm.ptr
                  %62 = memref.get_global @".str.3" : memref<2xi8>
                  %c0_64 = arith.constant 0 : index
                  %c1_65 = arith.constant 1 : index
                  %c2 = arith.constant 2 : index
                  %subview_66 = memref.subview %62[%c0_64] [%c2] [%c1_65] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
                  %reinterpret_cast_67 = memref.reinterpret_cast %subview_66 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                  %intptr_68 = memref.extract_aligned_pointer_as_index %reinterpret_cast_67 : memref<?xi8> -> index
                  %63 = arith.index_castui %intptr_68 : index to i64
                  %64 = llvm.inttoptr %63 : i64 to !llvm.ptr
                  %65 = llvm.call @fprintf(%61, %64) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                }
              }
              %37 = llvm.mlir.addressof @stderr : !llvm.ptr
              %38 = llvm.load %37 : !llvm.ptr -> !llvm.ptr
              %39 = memref.get_global @".str.4" : memref<8xi8>
              %c0_42 = arith.constant 0 : index
              %c1_43 = arith.constant 1 : index
              %c8 = arith.constant 8 : index
              %subview_44 = memref.subview %39[%c0_42] [%c8] [%c1_43] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_45 = memref.reinterpret_cast %subview_44 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %c0_46 = arith.constant 0 : index
              %40 = memref.load %alloca_0[%c0_46] : memref<1xmemref<?xf64>>
              %c0_47 = arith.constant 0 : index
              %41 = memref.load %alloca_1[%c0_47] : memref<1xi32>
              %42 = arith.extsi %41 : i32 to i64
              %43 = arith.muli %42, %2 : i64
              %44 = arith.index_cast %43 : i64 to index
              %c1_48 = arith.constant 1 : index
              %c0_49 = arith.constant 0 : index
              %c0_50 = arith.constant 0 : index
              %dim = memref.dim %40, %c0_50 : memref<?xf64>
              %45 = arith.subi %dim, %44 : index
              %subview_51 = memref.subview %40[%44] [%45] [%c1_48] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_52 = memref.reinterpret_cast %subview_51 to offset: [0], sizes: [%45], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_53 = arith.constant 0 : index
              %46 = memref.load %alloca_2[%c0_53] : memref<1xi32>
              %47 = arith.index_cast %46 : i32 to index
              %c0_54 = arith.constant 0 : index
              %dim_55 = memref.dim %reinterpret_cast_52, %c0_54 : memref<?xf64>
              %48 = arith.subi %dim_55, %47 : index
              %c1_56 = arith.constant 1 : index
              %subview_57 = memref.subview %reinterpret_cast_52[%47] [%48] [%c1_56] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_58 = arith.constant 0 : index
              %49 = memref.load %subview_57[%c0_58] : memref<?xf64, strided<[?], offset: ?>>
              %intptr_59 = memref.extract_aligned_pointer_as_index %reinterpret_cast_45 : memref<?xi8> -> index
              %50 = arith.index_castui %intptr_59 : index to i64
              %51 = llvm.inttoptr %50 : i64 to !llvm.ptr
              %52 = llvm.call @fprintf(%38, %51, %49) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
            }
            %c0_39 = arith.constant 0 : index
            %35 = memref.load %alloca_2[%c0_39] : memref<1xi32>
            %c1_i32_40 = arith.constant 1 : i32
            %36 = arith.addi %35, %c1_i32_40 : i32
            %c0_41 = arith.constant 0 : index
            memref.store %36, %alloca_2[%c0_41] : memref<1xi32>
            scf.yield
          }
        }
        %c0_35 = arith.constant 0 : index
        %33 = memref.load %alloca_1[%c0_35] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %34 = arith.addi %33, %c1_i32 : i32
        %c0_36 = arith.constant 0 : index
        memref.store %34, %alloca_1[%c0_36] : memref<1xi32>
        scf.yield
      }
    }
    %18 = llvm.mlir.addressof @stderr : !llvm.ptr
    %19 = llvm.load %18 : !llvm.ptr -> !llvm.ptr
    %20 = memref.get_global @".str.5" : memref<17xi8>
    %c0_16 = arith.constant 0 : index
    %c1_17 = arith.constant 1 : index
    %c17 = arith.constant 17 : index
    %subview_18 = memref.subview %20[%c0_16] [%c17] [%c1_17] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_19 = memref.reinterpret_cast %subview_18 to offset: [0], sizes: [%c17], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %21 = memref.get_global @".str.2" : memref<4xi8>
    %c0_20 = arith.constant 0 : index
    %c1_21 = arith.constant 1 : index
    %c4_22 = arith.constant 4 : index
    %subview_23 = memref.subview %21[%c0_20] [%c4_22] [%c1_21] : memref<4xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_24 = memref.reinterpret_cast %subview_23 to offset: [0], sizes: [%c4_22], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_25 = memref.extract_aligned_pointer_as_index %reinterpret_cast_19 : memref<?xi8> -> index
    %22 = arith.index_castui %intptr_25 : index to i64
    %23 = llvm.inttoptr %22 : i64 to !llvm.ptr
    %intptr_26 = memref.extract_aligned_pointer_as_index %reinterpret_cast_24 : memref<?xi8> -> index
    %24 = arith.index_castui %intptr_26 : index to i64
    %25 = llvm.inttoptr %24 : i64 to !llvm.ptr
    %26 = llvm.call @fprintf(%19, %23, %25) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %27 = llvm.mlir.addressof @stderr : !llvm.ptr
    %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
    %29 = memref.get_global @".str.6" : memref<23xi8>
    %c0_27 = arith.constant 0 : index
    %c1_28 = arith.constant 1 : index
    %c23_29 = arith.constant 23 : index
    %subview_30 = memref.subview %29[%c0_27] [%c23_29] [%c1_28] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_31 = memref.reinterpret_cast %subview_30 to offset: [0], sizes: [%c23_29], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_32 = memref.extract_aligned_pointer_as_index %reinterpret_cast_31 : memref<?xi8> -> index
    %30 = arith.index_castui %intptr_32 : index to i64
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
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %cast = memref.cast %alloca_4 : memref<1xf64> to memref<?xf64>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_8] : memref<1xmemref<?xmemref<?xi8>>>
    %c1400_i32 = arith.constant 1400 : i32
    %c0_9 = arith.constant 0 : index
    memref.store %c1400_i32, %alloca_2[%c0_9] : memref<1xi32>
    %c1200_i32 = arith.constant 1200 : i32
    %c0_10 = arith.constant 0 : index
    memref.store %c1200_i32, %alloca_3[%c0_10] : memref<1xi32>
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
    memref.store %8, %alloca_5[%c0_14] : memref<1xmemref<?xf64>>
    %c0_15 = arith.constant 0 : index
    %9 = memref.load %alloca_3[%c0_15] : memref<1xi32>
    %c0_i32_16 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_16 : i32
    %c0_17 = arith.constant 0 : index
    %11 = memref.load %alloca_3[%c0_17] : memref<1xi32>
    %c0_i32_18 = arith.constant 0 : i32
    %12 = arith.addi %11, %c0_i32_18 : i32
    %13 = arith.muli %10, %12 : i32
    %14 = arith.extsi %13 : i32 to i64
    %c8_i64_19 = arith.constant 8 : i64
    %15 = arith.trunci %c8_i64_19 : i64 to i32
    %16 = call @polybench_alloc_data(%14, %15) : (i64, i32) -> !llvm.ptr
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.ptr to memref<?xf64>
    %c0_20 = arith.constant 0 : index
    memref.store %17, %alloca_6[%c0_20] : memref<1xmemref<?xf64>>
    %c0_21 = arith.constant 0 : index
    %18 = memref.load %alloca_3[%c0_21] : memref<1xi32>
    %c0_i32_22 = arith.constant 0 : i32
    %19 = arith.addi %18, %c0_i32_22 : i32
    %20 = arith.extsi %19 : i32 to i64
    %c8_i64_23 = arith.constant 8 : i64
    %21 = arith.trunci %c8_i64_23 : i64 to i32
    %22 = call @polybench_alloc_data(%20, %21) : (i64, i32) -> !llvm.ptr
    %23 = builtin.unrealized_conversion_cast %22 : !llvm.ptr to memref<?xf64>
    %c0_24 = arith.constant 0 : index
    memref.store %23, %alloca_7[%c0_24] : memref<1xmemref<?xf64>>
    %c0_25 = arith.constant 0 : index
    %24 = memref.load %alloca_3[%c0_25] : memref<1xi32>
    %c0_26 = arith.constant 0 : index
    %25 = memref.load %alloca_2[%c0_26] : memref<1xi32>
    %c0_27 = arith.constant 0 : index
    %26 = memref.load %alloca_5[%c0_27] : memref<1xmemref<?xf64>>
    call @init_array(%24, %25, %cast, %26) : (i32, i32, memref<?xf64>, memref<?xf64>) -> ()
    %27 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %27() : !llvm.ptr, () -> ()
    %c0_28 = arith.constant 0 : index
    %28 = memref.load %alloca_3[%c0_28] : memref<1xi32>
    %c0_29 = arith.constant 0 : index
    %29 = memref.load %alloca_2[%c0_29] : memref<1xi32>
    %c0_30 = arith.constant 0 : index
    %30 = memref.load %alloca_4[%c0_30] : memref<1xf64>
    %c0_31 = arith.constant 0 : index
    %31 = memref.load %alloca_5[%c0_31] : memref<1xmemref<?xf64>>
    %c0_32 = arith.constant 0 : index
    %32 = memref.load %alloca_6[%c0_32] : memref<1xmemref<?xf64>>
    %c0_33 = arith.constant 0 : index
    %33 = memref.load %alloca_7[%c0_33] : memref<1xmemref<?xf64>>
    call @kernel_covariance(%28, %29, %30, %31, %32, %33) : (i32, i32, f64, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %34 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %34() : !llvm.ptr, () -> ()
    %35 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %35() : !llvm.ptr, () -> ()
    %c0_34 = arith.constant 0 : index
    %36 = memref.load %alloca_3[%c0_34] : memref<1xi32>
    %c0_35 = arith.constant 0 : index
    %37 = memref.load %alloca_6[%c0_35] : memref<1xmemref<?xf64>>
    call @print_array(%36, %37) : (i32, memref<?xf64>) -> ()
    %c0_36 = arith.constant 0 : index
    %38 = memref.load %alloca_5[%c0_36] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %38 : memref<?xf64> -> index
    %39 = arith.index_castui %intptr : index to i64
    %40 = llvm.inttoptr %39 : i64 to !llvm.ptr
    call @free(%40) : (!llvm.ptr) -> ()
    %c0_37 = arith.constant 0 : index
    %41 = memref.load %alloca_6[%c0_37] : memref<1xmemref<?xf64>>
    %intptr_38 = memref.extract_aligned_pointer_as_index %41 : memref<?xf64> -> index
    %42 = arith.index_castui %intptr_38 : index to i64
    %43 = llvm.inttoptr %42 : i64 to !llvm.ptr
    call @free(%43) : (!llvm.ptr) -> ()
    %c0_39 = arith.constant 0 : index
    %44 = memref.load %alloca_7[%c0_39] : memref<1xmemref<?xf64>>
    %intptr_40 = memref.extract_aligned_pointer_as_index %44 : memref<?xf64> -> index
    %45 = arith.index_castui %intptr_40 : index to i64
    %46 = llvm.inttoptr %45 : i64 to !llvm.ptr
    call @free(%46) : (!llvm.ptr) -> ()
    %c0_i32_41 = arith.constant 0 : i32
    %c0_42 = arith.constant 0 : index
    memref.store %c0_i32_41, %alloca_1[%c0_42] : memref<1xi32>
    %c0_43 = arith.constant 0 : index
    %47 = memref.load %alloca_1[%c0_43] : memref<1xi32>
    return %47 : i32
  }
}

