module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/solvers/trisolv/trisolv.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_5 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_5] : memref<1xmemref<?xf64>>
    %c0_6 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_6] : memref<1xmemref<?xf64>>
    %c0_7 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_7] : memref<1xmemref<?xf64>>
    %c0_8 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_8] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_9 = arith.constant 0 : i32
      %c0_10 = arith.constant 0 : index
      memref.store %c0_i32_9, %alloca_3[%c0_10] : memref<1xi32>
      scf.while : () -> () {
        %c0_11 = arith.constant 0 : index
        %3 = memref.load %alloca_3[%c0_11] : memref<1xi32>
        %c0_12 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_12] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %c999_i32 = arith.constant 999 : i32
          %c0_i32_13 = arith.constant 0 : i32
          %5 = arith.subi %c0_i32_13, %c999_i32 : i32
          %6 = arith.sitofp %5 : i32 to f64
          %c0_14 = arith.constant 0 : index
          %7 = memref.load %alloca_1[%c0_14] : memref<1xmemref<?xf64>>
          %c0_15 = arith.constant 0 : index
          %8 = memref.load %alloca_3[%c0_15] : memref<1xi32>
          %9 = arith.index_cast %8 : i32 to index
          %c0_16 = arith.constant 0 : index
          %dim = memref.dim %7, %c0_16 : memref<?xf64>
          %10 = arith.subi %dim, %9 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %7[%9] [%10] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_17 = arith.constant 0 : index
          memref.store %6, %subview[%c0_17] : memref<?xf64, strided<[?], offset: ?>>
          %c0_18 = arith.constant 0 : index
          %11 = memref.load %alloca_3[%c0_18] : memref<1xi32>
          %12 = arith.sitofp %11 : i32 to f64
          %c0_19 = arith.constant 0 : index
          %13 = memref.load %alloca_2[%c0_19] : memref<1xmemref<?xf64>>
          %c0_20 = arith.constant 0 : index
          %14 = memref.load %alloca_3[%c0_20] : memref<1xi32>
          %15 = arith.index_cast %14 : i32 to index
          %c0_21 = arith.constant 0 : index
          %dim_22 = memref.dim %13, %c0_21 : memref<?xf64>
          %16 = arith.subi %dim_22, %15 : index
          %c1_23 = arith.constant 1 : index
          %subview_24 = memref.subview %13[%15] [%16] [%c1_23] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_25 = arith.constant 0 : index
          memref.store %12, %subview_24[%c0_25] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_i32_26 = arith.constant 0 : i32
            %c0_27 = arith.constant 0 : index
            memref.store %c0_i32_26, %alloca_4[%c0_27] : memref<1xi32>
            scf.while : () -> () {
              %c0_28 = arith.constant 0 : index
              %17 = memref.load %alloca_4[%c0_28] : memref<1xi32>
              %c0_29 = arith.constant 0 : index
              %18 = memref.load %alloca_3[%c0_29] : memref<1xi32>
              %19 = arith.cmpi sle, %17, %18 : i32
              scf.condition(%19)
            } do {
              %c0_28 = arith.constant 0 : index
              %17 = memref.load %alloca_3[%c0_28] : memref<1xi32>
              %c0_29 = arith.constant 0 : index
              %18 = memref.load %alloca[%c0_29] : memref<1xi32>
              %19 = arith.addi %17, %18 : i32
              %c0_30 = arith.constant 0 : index
              %20 = memref.load %alloca_4[%c0_30] : memref<1xi32>
              %21 = arith.subi %19, %20 : i32
              %c1_i32_31 = arith.constant 1 : i32
              %22 = arith.addi %21, %c1_i32_31 : i32
              %23 = arith.sitofp %22 : i32 to f64
              %c2_i32 = arith.constant 2 : i32
              %24 = arith.sitofp %c2_i32 : i32 to f64
              %25 = arith.mulf %23, %24 : f64
              %c0_32 = arith.constant 0 : index
              %26 = memref.load %alloca[%c0_32] : memref<1xi32>
              %27 = arith.sitofp %26 : i32 to f64
              %28 = arith.divf %25, %27 : f64
              %c0_33 = arith.constant 0 : index
              %29 = memref.load %alloca_0[%c0_33] : memref<1xmemref<?xf64>>
              %c0_34 = arith.constant 0 : index
              %30 = memref.load %alloca_3[%c0_34] : memref<1xi32>
              %31 = arith.extsi %30 : i32 to i64
              %32 = arith.muli %31, %2 : i64
              %33 = arith.index_cast %32 : i64 to index
              %c1_35 = arith.constant 1 : index
              %c0_36 = arith.constant 0 : index
              %c0_37 = arith.constant 0 : index
              %dim_38 = memref.dim %29, %c0_37 : memref<?xf64>
              %34 = arith.subi %dim_38, %33 : index
              %subview_39 = memref.subview %29[%33] [%34] [%c1_35] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview_39 to offset: [0], sizes: [%34], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_40 = arith.constant 0 : index
              %35 = memref.load %alloca_4[%c0_40] : memref<1xi32>
              %36 = arith.index_cast %35 : i32 to index
              %c0_41 = arith.constant 0 : index
              %dim_42 = memref.dim %reinterpret_cast, %c0_41 : memref<?xf64>
              %37 = arith.subi %dim_42, %36 : index
              %c1_43 = arith.constant 1 : index
              %subview_44 = memref.subview %reinterpret_cast[%36] [%37] [%c1_43] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_45 = arith.constant 0 : index
              memref.store %28, %subview_44[%c0_45] : memref<?xf64, strided<[?], offset: ?>>
              %c0_46 = arith.constant 0 : index
              %38 = memref.load %alloca_4[%c0_46] : memref<1xi32>
              %c1_i32_47 = arith.constant 1 : i32
              %39 = arith.addi %38, %c1_i32_47 : i32
              %c0_48 = arith.constant 0 : index
              memref.store %39, %alloca_4[%c0_48] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_11 = arith.constant 0 : index
        %3 = memref.load %alloca_3[%c0_11] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_12 = arith.constant 0 : index
        memref.store %4, %alloca_3[%c0_12] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_trisolv(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_5 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_5] : memref<1xmemref<?xf64>>
    %c0_6 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_6] : memref<1xmemref<?xf64>>
    %c0_7 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_7] : memref<1xmemref<?xf64>>
    %c0_8 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_8] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_9 = arith.constant 0 : i32
      %c0_10 = arith.constant 0 : index
      memref.store %c0_i32_9, %alloca_3[%c0_10] : memref<1xi32>
      scf.while : () -> () {
        %c0_11 = arith.constant 0 : index
        %3 = memref.load %alloca_3[%c0_11] : memref<1xi32>
        %c0_12 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_12] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %c0_13 = arith.constant 0 : index
          %5 = memref.load %alloca_2[%c0_13] : memref<1xmemref<?xf64>>
          %c0_14 = arith.constant 0 : index
          %6 = memref.load %alloca_3[%c0_14] : memref<1xi32>
          %7 = arith.index_cast %6 : i32 to index
          %c0_15 = arith.constant 0 : index
          %dim = memref.dim %5, %c0_15 : memref<?xf64>
          %8 = arith.subi %dim, %7 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %5[%7] [%8] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_16 = arith.constant 0 : index
          %9 = memref.load %subview[%c0_16] : memref<?xf64, strided<[?], offset: ?>>
          %c0_17 = arith.constant 0 : index
          %10 = memref.load %alloca_1[%c0_17] : memref<1xmemref<?xf64>>
          %c0_18 = arith.constant 0 : index
          %11 = memref.load %alloca_3[%c0_18] : memref<1xi32>
          %12 = arith.index_cast %11 : i32 to index
          %c0_19 = arith.constant 0 : index
          %dim_20 = memref.dim %10, %c0_19 : memref<?xf64>
          %13 = arith.subi %dim_20, %12 : index
          %c1_21 = arith.constant 1 : index
          %subview_22 = memref.subview %10[%12] [%13] [%c1_21] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_23 = arith.constant 0 : index
          memref.store %9, %subview_22[%c0_23] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_i32_51 = arith.constant 0 : i32
            %c0_52 = arith.constant 0 : index
            memref.store %c0_i32_51, %alloca_4[%c0_52] : memref<1xi32>
            scf.while : () -> () {
              %c0_53 = arith.constant 0 : index
              %34 = memref.load %alloca_4[%c0_53] : memref<1xi32>
              %c0_54 = arith.constant 0 : index
              %35 = memref.load %alloca_3[%c0_54] : memref<1xi32>
              %36 = arith.cmpi slt, %34, %35 : i32
              scf.condition(%36)
            } do {
              %c0_53 = arith.constant 0 : index
              %34 = memref.load %alloca_0[%c0_53] : memref<1xmemref<?xf64>>
              %c0_54 = arith.constant 0 : index
              %35 = memref.load %alloca_3[%c0_54] : memref<1xi32>
              %36 = arith.extsi %35 : i32 to i64
              %37 = arith.muli %36, %2 : i64
              %38 = arith.index_cast %37 : i64 to index
              %c1_55 = arith.constant 1 : index
              %c0_56 = arith.constant 0 : index
              %c0_57 = arith.constant 0 : index
              %dim_58 = memref.dim %34, %c0_57 : memref<?xf64>
              %39 = arith.subi %dim_58, %38 : index
              %subview_59 = memref.subview %34[%38] [%39] [%c1_55] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_60 = memref.reinterpret_cast %subview_59 to offset: [0], sizes: [%39], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_61 = arith.constant 0 : index
              %40 = memref.load %alloca_4[%c0_61] : memref<1xi32>
              %41 = arith.index_cast %40 : i32 to index
              %c0_62 = arith.constant 0 : index
              %dim_63 = memref.dim %reinterpret_cast_60, %c0_62 : memref<?xf64>
              %42 = arith.subi %dim_63, %41 : index
              %c1_64 = arith.constant 1 : index
              %subview_65 = memref.subview %reinterpret_cast_60[%41] [%42] [%c1_64] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_66 = arith.constant 0 : index
              %43 = memref.load %subview_65[%c0_66] : memref<?xf64, strided<[?], offset: ?>>
              %c0_67 = arith.constant 0 : index
              %44 = memref.load %alloca_1[%c0_67] : memref<1xmemref<?xf64>>
              %c0_68 = arith.constant 0 : index
              %45 = memref.load %alloca_4[%c0_68] : memref<1xi32>
              %46 = arith.index_cast %45 : i32 to index
              %c0_69 = arith.constant 0 : index
              %dim_70 = memref.dim %44, %c0_69 : memref<?xf64>
              %47 = arith.subi %dim_70, %46 : index
              %c1_71 = arith.constant 1 : index
              %subview_72 = memref.subview %44[%46] [%47] [%c1_71] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_73 = arith.constant 0 : index
              %48 = memref.load %subview_72[%c0_73] : memref<?xf64, strided<[?], offset: ?>>
              %49 = arith.mulf %43, %48 : f64
              %c0_74 = arith.constant 0 : index
              %50 = memref.load %alloca_1[%c0_74] : memref<1xmemref<?xf64>>
              %c0_75 = arith.constant 0 : index
              %51 = memref.load %alloca_3[%c0_75] : memref<1xi32>
              %52 = arith.index_cast %51 : i32 to index
              %c0_76 = arith.constant 0 : index
              %dim_77 = memref.dim %50, %c0_76 : memref<?xf64>
              %53 = arith.subi %dim_77, %52 : index
              %c1_78 = arith.constant 1 : index
              %subview_79 = memref.subview %50[%52] [%53] [%c1_78] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_80 = arith.constant 0 : index
              %54 = memref.load %subview_79[%c0_80] : memref<?xf64, strided<[?], offset: ?>>
              %55 = arith.subf %54, %49 : f64
              %c0_81 = arith.constant 0 : index
              memref.store %55, %subview_79[%c0_81] : memref<?xf64, strided<[?], offset: ?>>
              %c0_82 = arith.constant 0 : index
              %56 = memref.load %alloca_4[%c0_82] : memref<1xi32>
              %c1_i32_83 = arith.constant 1 : i32
              %57 = arith.addi %56, %c1_i32_83 : i32
              %c0_84 = arith.constant 0 : index
              memref.store %57, %alloca_4[%c0_84] : memref<1xi32>
              scf.yield
            }
          }
          %c0_24 = arith.constant 0 : index
          %14 = memref.load %alloca_1[%c0_24] : memref<1xmemref<?xf64>>
          %c0_25 = arith.constant 0 : index
          %15 = memref.load %alloca_3[%c0_25] : memref<1xi32>
          %16 = arith.index_cast %15 : i32 to index
          %c0_26 = arith.constant 0 : index
          %dim_27 = memref.dim %14, %c0_26 : memref<?xf64>
          %17 = arith.subi %dim_27, %16 : index
          %c1_28 = arith.constant 1 : index
          %subview_29 = memref.subview %14[%16] [%17] [%c1_28] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_30 = arith.constant 0 : index
          %18 = memref.load %subview_29[%c0_30] : memref<?xf64, strided<[?], offset: ?>>
          %c0_31 = arith.constant 0 : index
          %19 = memref.load %alloca_0[%c0_31] : memref<1xmemref<?xf64>>
          %c0_32 = arith.constant 0 : index
          %20 = memref.load %alloca_3[%c0_32] : memref<1xi32>
          %21 = arith.extsi %20 : i32 to i64
          %22 = arith.muli %21, %2 : i64
          %23 = arith.index_cast %22 : i64 to index
          %c1_33 = arith.constant 1 : index
          %c0_34 = arith.constant 0 : index
          %c0_35 = arith.constant 0 : index
          %dim_36 = memref.dim %19, %c0_35 : memref<?xf64>
          %24 = arith.subi %dim_36, %23 : index
          %subview_37 = memref.subview %19[%23] [%24] [%c1_33] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %reinterpret_cast = memref.reinterpret_cast %subview_37 to offset: [0], sizes: [%24], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
          %c0_38 = arith.constant 0 : index
          %25 = memref.load %alloca_3[%c0_38] : memref<1xi32>
          %26 = arith.index_cast %25 : i32 to index
          %c0_39 = arith.constant 0 : index
          %dim_40 = memref.dim %reinterpret_cast, %c0_39 : memref<?xf64>
          %27 = arith.subi %dim_40, %26 : index
          %c1_41 = arith.constant 1 : index
          %subview_42 = memref.subview %reinterpret_cast[%26] [%27] [%c1_41] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_43 = arith.constant 0 : index
          %28 = memref.load %subview_42[%c0_43] : memref<?xf64, strided<[?], offset: ?>>
          %29 = arith.divf %18, %28 : f64
          %c0_44 = arith.constant 0 : index
          %30 = memref.load %alloca_1[%c0_44] : memref<1xmemref<?xf64>>
          %c0_45 = arith.constant 0 : index
          %31 = memref.load %alloca_3[%c0_45] : memref<1xi32>
          %32 = arith.index_cast %31 : i32 to index
          %c0_46 = arith.constant 0 : index
          %dim_47 = memref.dim %30, %c0_46 : memref<?xf64>
          %33 = arith.subi %dim_47, %32 : index
          %c1_48 = arith.constant 1 : index
          %subview_49 = memref.subview %30[%32] [%33] [%c1_48] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_50 = arith.constant 0 : index
          memref.store %29, %subview_49[%c0_50] : memref<?xf64, strided<[?], offset: ?>>
        }
        %c0_11 = arith.constant 0 : index
        %3 = memref.load %alloca_3[%c0_11] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_12 = arith.constant 0 : index
        memref.store %4, %alloca_3[%c0_12] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[120, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.3" : memref<8xi8> = dense<[37, 48, 46, 50, 108, 102, 32, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.4" : memref<2xi8> = dense<[10, 0]> {alignment = 1 : i64}
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
          %32 = llvm.mlir.addressof @stderr : !llvm.ptr
          %33 = llvm.load %32 : !llvm.ptr -> !llvm.ptr
          %34 = memref.get_global @".str.3" : memref<8xi8>
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
              %48 = memref.get_global @".str.4" : memref<2xi8>
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
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_6 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_6] : memref<1xmemref<?xmemref<?xi8>>>
    %c2000_i32 = arith.constant 2000 : i32
    %c0_7 = arith.constant 0 : index
    memref.store %c2000_i32, %alloca_2[%c0_7] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_8] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_9 = arith.constant 0 : index
    %2 = memref.load %alloca_2[%c0_9] : memref<1xi32>
    %c0_i32_10 = arith.constant 0 : i32
    %3 = arith.addi %2, %c0_i32_10 : i32
    %4 = arith.muli %1, %3 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %6 = arith.trunci %c8_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xf64>
    %c0_11 = arith.constant 0 : index
    memref.store %8, %alloca_3[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_12] : memref<1xi32>
    %c0_i32_13 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_13 : i32
    %11 = arith.extsi %10 : i32 to i64
    %c8_i64_14 = arith.constant 8 : i64
    %12 = arith.trunci %c8_i64_14 : i64 to i32
    %13 = call @polybench_alloc_data(%11, %12) : (i64, i32) -> !llvm.ptr
    %14 = builtin.unrealized_conversion_cast %13 : !llvm.ptr to memref<?xf64>
    %c0_15 = arith.constant 0 : index
    memref.store %14, %alloca_4[%c0_15] : memref<1xmemref<?xf64>>
    %c0_16 = arith.constant 0 : index
    %15 = memref.load %alloca_2[%c0_16] : memref<1xi32>
    %c0_i32_17 = arith.constant 0 : i32
    %16 = arith.addi %15, %c0_i32_17 : i32
    %17 = arith.extsi %16 : i32 to i64
    %c8_i64_18 = arith.constant 8 : i64
    %18 = arith.trunci %c8_i64_18 : i64 to i32
    %19 = call @polybench_alloc_data(%17, %18) : (i64, i32) -> !llvm.ptr
    %20 = builtin.unrealized_conversion_cast %19 : !llvm.ptr to memref<?xf64>
    %c0_19 = arith.constant 0 : index
    memref.store %20, %alloca_5[%c0_19] : memref<1xmemref<?xf64>>
    %c0_20 = arith.constant 0 : index
    %21 = memref.load %alloca_2[%c0_20] : memref<1xi32>
    %c0_21 = arith.constant 0 : index
    %22 = memref.load %alloca_3[%c0_21] : memref<1xmemref<?xf64>>
    %c0_22 = arith.constant 0 : index
    %23 = memref.load %alloca_4[%c0_22] : memref<1xmemref<?xf64>>
    %c0_23 = arith.constant 0 : index
    %24 = memref.load %alloca_5[%c0_23] : memref<1xmemref<?xf64>>
    call @init_array(%21, %22, %23, %24) : (i32, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %25 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %25() : !llvm.ptr, () -> ()
    %c0_24 = arith.constant 0 : index
    %26 = memref.load %alloca_2[%c0_24] : memref<1xi32>
    %c0_25 = arith.constant 0 : index
    %27 = memref.load %alloca_3[%c0_25] : memref<1xmemref<?xf64>>
    %c0_26 = arith.constant 0 : index
    %28 = memref.load %alloca_4[%c0_26] : memref<1xmemref<?xf64>>
    %c0_27 = arith.constant 0 : index
    %29 = memref.load %alloca_5[%c0_27] : memref<1xmemref<?xf64>>
    call @kernel_trisolv(%26, %27, %28, %29) : (i32, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %30 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %30() : !llvm.ptr, () -> ()
    %31 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %31() : !llvm.ptr, () -> ()
    %c0_28 = arith.constant 0 : index
    %32 = memref.load %alloca_2[%c0_28] : memref<1xi32>
    %c0_29 = arith.constant 0 : index
    %33 = memref.load %alloca_4[%c0_29] : memref<1xmemref<?xf64>>
    call @print_array(%32, %33) : (i32, memref<?xf64>) -> ()
    %c0_30 = arith.constant 0 : index
    %34 = memref.load %alloca_3[%c0_30] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %34 : memref<?xf64> -> index
    %35 = arith.index_castui %intptr : index to i64
    %36 = llvm.inttoptr %35 : i64 to !llvm.ptr
    call @free(%36) : (!llvm.ptr) -> ()
    %c0_31 = arith.constant 0 : index
    %37 = memref.load %alloca_4[%c0_31] : memref<1xmemref<?xf64>>
    %intptr_32 = memref.extract_aligned_pointer_as_index %37 : memref<?xf64> -> index
    %38 = arith.index_castui %intptr_32 : index to i64
    %39 = llvm.inttoptr %38 : i64 to !llvm.ptr
    call @free(%39) : (!llvm.ptr) -> ()
    %c0_33 = arith.constant 0 : index
    %40 = memref.load %alloca_5[%c0_33] : memref<1xmemref<?xf64>>
    %intptr_34 = memref.extract_aligned_pointer_as_index %40 : memref<?xf64> -> index
    %41 = arith.index_castui %intptr_34 : index to i64
    %42 = llvm.inttoptr %41 : i64 to !llvm.ptr
    call @free(%42) : (!llvm.ptr) -> ()
    %c0_i32_35 = arith.constant 0 : i32
    %c0_36 = arith.constant 0 : index
    memref.store %c0_i32_35, %alloca_1[%c0_36] : memref<1xi32>
    %c0_37 = arith.constant 0 : index
    %43 = memref.load %alloca_1[%c0_37] : memref<1xi32>
    return %43 : i32
  }
}

