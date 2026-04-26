module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/stencils/fdtd-2d/fdtd-2d.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_7 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_8] : memref<1xi32>
    %c0_9 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_9] : memref<1xi32>
    %c0_10 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_10] : memref<1xmemref<?xf64>>
    %c0_11 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_12] : memref<1xmemref<?xf64>>
    %c0_13 = arith.constant 0 : index
    memref.store %arg6, %alloca_5[%c0_13] : memref<1xmemref<?xf64>>
    %c0_14 = arith.constant 0 : index
    %0 = memref.load %alloca_1[%c0_14] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_15 = arith.constant 0 : index
    %3 = memref.load %alloca_1[%c0_15] : memref<1xi32>
    %c0_i32_16 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_16 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_17 = arith.constant 0 : index
    %6 = memref.load %alloca_1[%c0_17] : memref<1xi32>
    %c0_i32_18 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_18 : i32
    %8 = arith.extsi %7 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_19 = arith.constant 0 : i32
      %c0_20 = arith.constant 0 : index
      memref.store %c0_i32_19, %alloca_6[%c0_20] : memref<1xi32>
      scf.while : () -> () {
        %c0_21 = arith.constant 0 : index
        %9 = memref.load %alloca_6[%c0_21] : memref<1xi32>
        %c0_22 = arith.constant 0 : index
        %10 = memref.load %alloca[%c0_22] : memref<1xi32>
        %11 = arith.cmpi slt, %9, %10 : i32
        scf.condition(%11)
      } do {
        %c0_21 = arith.constant 0 : index
        %9 = memref.load %alloca_6[%c0_21] : memref<1xi32>
        %10 = arith.sitofp %9 : i32 to f64
        %c0_22 = arith.constant 0 : index
        %11 = memref.load %alloca_5[%c0_22] : memref<1xmemref<?xf64>>
        %c0_23 = arith.constant 0 : index
        %12 = memref.load %alloca_6[%c0_23] : memref<1xi32>
        %13 = arith.index_cast %12 : i32 to index
        %c0_24 = arith.constant 0 : index
        %dim = memref.dim %11, %c0_24 : memref<?xf64>
        %14 = arith.subi %dim, %13 : index
        %c1 = arith.constant 1 : index
        %subview = memref.subview %11[%13] [%14] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
        %c0_25 = arith.constant 0 : index
        memref.store %10, %subview[%c0_25] : memref<?xf64, strided<[?], offset: ?>>
        %c0_26 = arith.constant 0 : index
        %15 = memref.load %alloca_6[%c0_26] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %16 = arith.addi %15, %c1_i32 : i32
        %c0_27 = arith.constant 0 : index
        memref.store %16, %alloca_6[%c0_27] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_19 = arith.constant 0 : i32
      %c0_20 = arith.constant 0 : index
      memref.store %c0_i32_19, %alloca_6[%c0_20] : memref<1xi32>
      scf.while : () -> () {
        %c0_21 = arith.constant 0 : index
        %9 = memref.load %alloca_6[%c0_21] : memref<1xi32>
        %c0_22 = arith.constant 0 : index
        %10 = memref.load %alloca_0[%c0_22] : memref<1xi32>
        %11 = arith.cmpi slt, %9, %10 : i32
        scf.condition(%11)
      } do {
        memref.alloca_scope  {
          %c0_i32_23 = arith.constant 0 : i32
          %c0_24 = arith.constant 0 : index
          memref.store %c0_i32_23, %alloca_7[%c0_24] : memref<1xi32>
          scf.while : () -> () {
            %c0_25 = arith.constant 0 : index
            %11 = memref.load %alloca_7[%c0_25] : memref<1xi32>
            %c0_26 = arith.constant 0 : index
            %12 = memref.load %alloca_1[%c0_26] : memref<1xi32>
            %13 = arith.cmpi slt, %11, %12 : i32
            scf.condition(%13)
          } do {
            memref.alloca_scope  {
              %c0_28 = arith.constant 0 : index
              %13 = memref.load %alloca_6[%c0_28] : memref<1xi32>
              %14 = arith.sitofp %13 : i32 to f64
              %c0_29 = arith.constant 0 : index
              %15 = memref.load %alloca_7[%c0_29] : memref<1xi32>
              %c1_i32_30 = arith.constant 1 : i32
              %16 = arith.addi %15, %c1_i32_30 : i32
              %17 = arith.sitofp %16 : i32 to f64
              %18 = arith.mulf %14, %17 : f64
              %c0_31 = arith.constant 0 : index
              %19 = memref.load %alloca_0[%c0_31] : memref<1xi32>
              %20 = arith.sitofp %19 : i32 to f64
              %21 = arith.divf %18, %20 : f64
              %c0_32 = arith.constant 0 : index
              %22 = memref.load %alloca_2[%c0_32] : memref<1xmemref<?xf64>>
              %c0_33 = arith.constant 0 : index
              %23 = memref.load %alloca_6[%c0_33] : memref<1xi32>
              %24 = arith.extsi %23 : i32 to i64
              %25 = arith.muli %24, %2 : i64
              %26 = arith.index_cast %25 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_34 = arith.constant 0 : index
              %c0_35 = arith.constant 0 : index
              %dim = memref.dim %22, %c0_35 : memref<?xf64>
              %27 = arith.subi %dim, %26 : index
              %subview = memref.subview %22[%26] [%27] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%27], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_36 = arith.constant 0 : index
              %28 = memref.load %alloca_7[%c0_36] : memref<1xi32>
              %29 = arith.index_cast %28 : i32 to index
              %c0_37 = arith.constant 0 : index
              %dim_38 = memref.dim %reinterpret_cast, %c0_37 : memref<?xf64>
              %30 = arith.subi %dim_38, %29 : index
              %c1_39 = arith.constant 1 : index
              %subview_40 = memref.subview %reinterpret_cast[%29] [%30] [%c1_39] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_41 = arith.constant 0 : index
              memref.store %21, %subview_40[%c0_41] : memref<?xf64, strided<[?], offset: ?>>
              %c0_42 = arith.constant 0 : index
              %31 = memref.load %alloca_6[%c0_42] : memref<1xi32>
              %32 = arith.sitofp %31 : i32 to f64
              %c0_43 = arith.constant 0 : index
              %33 = memref.load %alloca_7[%c0_43] : memref<1xi32>
              %c2_i32 = arith.constant 2 : i32
              %34 = arith.addi %33, %c2_i32 : i32
              %35 = arith.sitofp %34 : i32 to f64
              %36 = arith.mulf %32, %35 : f64
              %c0_44 = arith.constant 0 : index
              %37 = memref.load %alloca_1[%c0_44] : memref<1xi32>
              %38 = arith.sitofp %37 : i32 to f64
              %39 = arith.divf %36, %38 : f64
              %c0_45 = arith.constant 0 : index
              %40 = memref.load %alloca_3[%c0_45] : memref<1xmemref<?xf64>>
              %c0_46 = arith.constant 0 : index
              %41 = memref.load %alloca_6[%c0_46] : memref<1xi32>
              %42 = arith.extsi %41 : i32 to i64
              %43 = arith.muli %42, %5 : i64
              %44 = arith.index_cast %43 : i64 to index
              %c1_47 = arith.constant 1 : index
              %c0_48 = arith.constant 0 : index
              %c0_49 = arith.constant 0 : index
              %dim_50 = memref.dim %40, %c0_49 : memref<?xf64>
              %45 = arith.subi %dim_50, %44 : index
              %subview_51 = memref.subview %40[%44] [%45] [%c1_47] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_52 = memref.reinterpret_cast %subview_51 to offset: [0], sizes: [%45], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_53 = arith.constant 0 : index
              %46 = memref.load %alloca_7[%c0_53] : memref<1xi32>
              %47 = arith.index_cast %46 : i32 to index
              %c0_54 = arith.constant 0 : index
              %dim_55 = memref.dim %reinterpret_cast_52, %c0_54 : memref<?xf64>
              %48 = arith.subi %dim_55, %47 : index
              %c1_56 = arith.constant 1 : index
              %subview_57 = memref.subview %reinterpret_cast_52[%47] [%48] [%c1_56] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_58 = arith.constant 0 : index
              memref.store %39, %subview_57[%c0_58] : memref<?xf64, strided<[?], offset: ?>>
              %c0_59 = arith.constant 0 : index
              %49 = memref.load %alloca_6[%c0_59] : memref<1xi32>
              %50 = arith.sitofp %49 : i32 to f64
              %c0_60 = arith.constant 0 : index
              %51 = memref.load %alloca_7[%c0_60] : memref<1xi32>
              %c3_i32 = arith.constant 3 : i32
              %52 = arith.addi %51, %c3_i32 : i32
              %53 = arith.sitofp %52 : i32 to f64
              %54 = arith.mulf %50, %53 : f64
              %c0_61 = arith.constant 0 : index
              %55 = memref.load %alloca_0[%c0_61] : memref<1xi32>
              %56 = arith.sitofp %55 : i32 to f64
              %57 = arith.divf %54, %56 : f64
              %c0_62 = arith.constant 0 : index
              %58 = memref.load %alloca_4[%c0_62] : memref<1xmemref<?xf64>>
              %c0_63 = arith.constant 0 : index
              %59 = memref.load %alloca_6[%c0_63] : memref<1xi32>
              %60 = arith.extsi %59 : i32 to i64
              %61 = arith.muli %60, %8 : i64
              %62 = arith.index_cast %61 : i64 to index
              %c1_64 = arith.constant 1 : index
              %c0_65 = arith.constant 0 : index
              %c0_66 = arith.constant 0 : index
              %dim_67 = memref.dim %58, %c0_66 : memref<?xf64>
              %63 = arith.subi %dim_67, %62 : index
              %subview_68 = memref.subview %58[%62] [%63] [%c1_64] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_69 = memref.reinterpret_cast %subview_68 to offset: [0], sizes: [%63], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_70 = arith.constant 0 : index
              %64 = memref.load %alloca_7[%c0_70] : memref<1xi32>
              %65 = arith.index_cast %64 : i32 to index
              %c0_71 = arith.constant 0 : index
              %dim_72 = memref.dim %reinterpret_cast_69, %c0_71 : memref<?xf64>
              %66 = arith.subi %dim_72, %65 : index
              %c1_73 = arith.constant 1 : index
              %subview_74 = memref.subview %reinterpret_cast_69[%65] [%66] [%c1_73] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_75 = arith.constant 0 : index
              memref.store %57, %subview_74[%c0_75] : memref<?xf64, strided<[?], offset: ?>>
            }
            %c0_25 = arith.constant 0 : index
            %11 = memref.load %alloca_7[%c0_25] : memref<1xi32>
            %c1_i32_26 = arith.constant 1 : i32
            %12 = arith.addi %11, %c1_i32_26 : i32
            %c0_27 = arith.constant 0 : index
            memref.store %12, %alloca_7[%c0_27] : memref<1xi32>
            scf.yield
          }
        }
        %c0_21 = arith.constant 0 : index
        %9 = memref.load %alloca_6[%c0_21] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %10 = arith.addi %9, %c1_i32 : i32
        %c0_22 = arith.constant 0 : index
        memref.store %10, %alloca_6[%c0_22] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
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
    %0 = memref.load %alloca_1[%c0_15] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_16 = arith.constant 0 : index
    %3 = memref.load %alloca_1[%c0_16] : memref<1xi32>
    %c0_i32_17 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_17 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_18 = arith.constant 0 : index
    %6 = memref.load %alloca_1[%c0_18] : memref<1xi32>
    %c0_i32_19 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_19 : i32
    %8 = arith.extsi %7 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_20 = arith.constant 0 : i32
      %c0_21 = arith.constant 0 : index
      memref.store %c0_i32_20, %alloca_6[%c0_21] : memref<1xi32>
      scf.while : () -> () {
        %c0_22 = arith.constant 0 : index
        %9 = memref.load %alloca_6[%c0_22] : memref<1xi32>
        %c0_23 = arith.constant 0 : index
        %10 = memref.load %alloca[%c0_23] : memref<1xi32>
        %11 = arith.cmpi slt, %9, %10 : i32
        scf.condition(%11)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_i32_24 = arith.constant 0 : i32
            %c0_25 = arith.constant 0 : index
            memref.store %c0_i32_24, %alloca_8[%c0_25] : memref<1xi32>
            scf.while : () -> () {
              %c0_26 = arith.constant 0 : index
              %11 = memref.load %alloca_8[%c0_26] : memref<1xi32>
              %c0_27 = arith.constant 0 : index
              %12 = memref.load %alloca_1[%c0_27] : memref<1xi32>
              %13 = arith.cmpi slt, %11, %12 : i32
              scf.condition(%13)
            } do {
              %c0_26 = arith.constant 0 : index
              %11 = memref.load %alloca_5[%c0_26] : memref<1xmemref<?xf64>>
              %c0_27 = arith.constant 0 : index
              %12 = memref.load %alloca_6[%c0_27] : memref<1xi32>
              %13 = arith.index_cast %12 : i32 to index
              %c0_28 = arith.constant 0 : index
              %dim = memref.dim %11, %c0_28 : memref<?xf64>
              %14 = arith.subi %dim, %13 : index
              %c1 = arith.constant 1 : index
              %subview = memref.subview %11[%13] [%14] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_29 = arith.constant 0 : index
              %15 = memref.load %subview[%c0_29] : memref<?xf64, strided<[?], offset: ?>>
              %c0_30 = arith.constant 0 : index
              %16 = memref.load %alloca_3[%c0_30] : memref<1xmemref<?xf64>>
              %c0_i32_31 = arith.constant 0 : i32
              %17 = arith.extsi %c0_i32_31 : i32 to i64
              %18 = arith.muli %17, %5 : i64
              %19 = arith.index_cast %18 : i64 to index
              %c1_32 = arith.constant 1 : index
              %c0_33 = arith.constant 0 : index
              %c0_34 = arith.constant 0 : index
              %dim_35 = memref.dim %16, %c0_34 : memref<?xf64>
              %20 = arith.subi %dim_35, %19 : index
              %subview_36 = memref.subview %16[%19] [%20] [%c1_32] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview_36 to offset: [0], sizes: [%20], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_37 = arith.constant 0 : index
              %21 = memref.load %alloca_8[%c0_37] : memref<1xi32>
              %22 = arith.index_cast %21 : i32 to index
              %c0_38 = arith.constant 0 : index
              %dim_39 = memref.dim %reinterpret_cast, %c0_38 : memref<?xf64>
              %23 = arith.subi %dim_39, %22 : index
              %c1_40 = arith.constant 1 : index
              %subview_41 = memref.subview %reinterpret_cast[%22] [%23] [%c1_40] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_42 = arith.constant 0 : index
              memref.store %15, %subview_41[%c0_42] : memref<?xf64, strided<[?], offset: ?>>
              %c0_43 = arith.constant 0 : index
              %24 = memref.load %alloca_8[%c0_43] : memref<1xi32>
              %c1_i32_44 = arith.constant 1 : i32
              %25 = arith.addi %24, %c1_i32_44 : i32
              %c0_45 = arith.constant 0 : index
              memref.store %25, %alloca_8[%c0_45] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c1_i32_24 = arith.constant 1 : i32
            %c0_25 = arith.constant 0 : index
            memref.store %c1_i32_24, %alloca_7[%c0_25] : memref<1xi32>
            scf.while : () -> () {
              %c0_26 = arith.constant 0 : index
              %11 = memref.load %alloca_7[%c0_26] : memref<1xi32>
              %c0_27 = arith.constant 0 : index
              %12 = memref.load %alloca_0[%c0_27] : memref<1xi32>
              %13 = arith.cmpi slt, %11, %12 : i32
              scf.condition(%13)
            } do {
              memref.alloca_scope  {
                %c0_i32_29 = arith.constant 0 : i32
                %c0_30 = arith.constant 0 : index
                memref.store %c0_i32_29, %alloca_8[%c0_30] : memref<1xi32>
                scf.while : () -> () {
                  %c0_31 = arith.constant 0 : index
                  %13 = memref.load %alloca_8[%c0_31] : memref<1xi32>
                  %c0_32 = arith.constant 0 : index
                  %14 = memref.load %alloca_1[%c0_32] : memref<1xi32>
                  %15 = arith.cmpi slt, %13, %14 : i32
                  scf.condition(%15)
                } do {
                  %c0_31 = arith.constant 0 : index
                  %13 = memref.load %alloca_3[%c0_31] : memref<1xmemref<?xf64>>
                  %c0_32 = arith.constant 0 : index
                  %14 = memref.load %alloca_7[%c0_32] : memref<1xi32>
                  %15 = arith.extsi %14 : i32 to i64
                  %16 = arith.muli %15, %5 : i64
                  %17 = arith.index_cast %16 : i64 to index
                  %c1 = arith.constant 1 : index
                  %c0_33 = arith.constant 0 : index
                  %c0_34 = arith.constant 0 : index
                  %dim = memref.dim %13, %c0_34 : memref<?xf64>
                  %18 = arith.subi %dim, %17 : index
                  %subview = memref.subview %13[%17] [%18] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%18], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_35 = arith.constant 0 : index
                  %19 = memref.load %alloca_8[%c0_35] : memref<1xi32>
                  %20 = arith.index_cast %19 : i32 to index
                  %c0_36 = arith.constant 0 : index
                  %dim_37 = memref.dim %reinterpret_cast, %c0_36 : memref<?xf64>
                  %21 = arith.subi %dim_37, %20 : index
                  %c1_38 = arith.constant 1 : index
                  %subview_39 = memref.subview %reinterpret_cast[%20] [%21] [%c1_38] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_40 = arith.constant 0 : index
                  %22 = memref.load %subview_39[%c0_40] : memref<?xf64, strided<[?], offset: ?>>
                  %cst = arith.constant 5.000000e-01 : f64
                  %c0_41 = arith.constant 0 : index
                  %23 = memref.load %alloca_4[%c0_41] : memref<1xmemref<?xf64>>
                  %c0_42 = arith.constant 0 : index
                  %24 = memref.load %alloca_7[%c0_42] : memref<1xi32>
                  %25 = arith.extsi %24 : i32 to i64
                  %26 = arith.muli %25, %8 : i64
                  %27 = arith.index_cast %26 : i64 to index
                  %c1_43 = arith.constant 1 : index
                  %c0_44 = arith.constant 0 : index
                  %c0_45 = arith.constant 0 : index
                  %dim_46 = memref.dim %23, %c0_45 : memref<?xf64>
                  %28 = arith.subi %dim_46, %27 : index
                  %subview_47 = memref.subview %23[%27] [%28] [%c1_43] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_48 = memref.reinterpret_cast %subview_47 to offset: [0], sizes: [%28], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_49 = arith.constant 0 : index
                  %29 = memref.load %alloca_8[%c0_49] : memref<1xi32>
                  %30 = arith.index_cast %29 : i32 to index
                  %c0_50 = arith.constant 0 : index
                  %dim_51 = memref.dim %reinterpret_cast_48, %c0_50 : memref<?xf64>
                  %31 = arith.subi %dim_51, %30 : index
                  %c1_52 = arith.constant 1 : index
                  %subview_53 = memref.subview %reinterpret_cast_48[%30] [%31] [%c1_52] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_54 = arith.constant 0 : index
                  %32 = memref.load %subview_53[%c0_54] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_55 = arith.constant 0 : index
                  %33 = memref.load %alloca_4[%c0_55] : memref<1xmemref<?xf64>>
                  %c0_56 = arith.constant 0 : index
                  %34 = memref.load %alloca_7[%c0_56] : memref<1xi32>
                  %c1_i32_57 = arith.constant 1 : i32
                  %35 = arith.subi %34, %c1_i32_57 : i32
                  %36 = arith.extsi %35 : i32 to i64
                  %37 = arith.muli %36, %8 : i64
                  %38 = arith.index_cast %37 : i64 to index
                  %c1_58 = arith.constant 1 : index
                  %c0_59 = arith.constant 0 : index
                  %c0_60 = arith.constant 0 : index
                  %dim_61 = memref.dim %33, %c0_60 : memref<?xf64>
                  %39 = arith.subi %dim_61, %38 : index
                  %subview_62 = memref.subview %33[%38] [%39] [%c1_58] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_63 = memref.reinterpret_cast %subview_62 to offset: [0], sizes: [%39], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_64 = arith.constant 0 : index
                  %40 = memref.load %alloca_8[%c0_64] : memref<1xi32>
                  %41 = arith.index_cast %40 : i32 to index
                  %c0_65 = arith.constant 0 : index
                  %dim_66 = memref.dim %reinterpret_cast_63, %c0_65 : memref<?xf64>
                  %42 = arith.subi %dim_66, %41 : index
                  %c1_67 = arith.constant 1 : index
                  %subview_68 = memref.subview %reinterpret_cast_63[%41] [%42] [%c1_67] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_69 = arith.constant 0 : index
                  %43 = memref.load %subview_68[%c0_69] : memref<?xf64, strided<[?], offset: ?>>
                  %44 = arith.subf %32, %43 : f64
                  %45 = arith.mulf %cst, %44 : f64
                  %46 = arith.subf %22, %45 : f64
                  %c0_70 = arith.constant 0 : index
                  %47 = memref.load %alloca_3[%c0_70] : memref<1xmemref<?xf64>>
                  %c0_71 = arith.constant 0 : index
                  %48 = memref.load %alloca_7[%c0_71] : memref<1xi32>
                  %49 = arith.extsi %48 : i32 to i64
                  %50 = arith.muli %49, %5 : i64
                  %51 = arith.index_cast %50 : i64 to index
                  %c1_72 = arith.constant 1 : index
                  %c0_73 = arith.constant 0 : index
                  %c0_74 = arith.constant 0 : index
                  %dim_75 = memref.dim %47, %c0_74 : memref<?xf64>
                  %52 = arith.subi %dim_75, %51 : index
                  %subview_76 = memref.subview %47[%51] [%52] [%c1_72] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_77 = memref.reinterpret_cast %subview_76 to offset: [0], sizes: [%52], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_78 = arith.constant 0 : index
                  %53 = memref.load %alloca_8[%c0_78] : memref<1xi32>
                  %54 = arith.index_cast %53 : i32 to index
                  %c0_79 = arith.constant 0 : index
                  %dim_80 = memref.dim %reinterpret_cast_77, %c0_79 : memref<?xf64>
                  %55 = arith.subi %dim_80, %54 : index
                  %c1_81 = arith.constant 1 : index
                  %subview_82 = memref.subview %reinterpret_cast_77[%54] [%55] [%c1_81] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_83 = arith.constant 0 : index
                  memref.store %46, %subview_82[%c0_83] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_84 = arith.constant 0 : index
                  %56 = memref.load %alloca_8[%c0_84] : memref<1xi32>
                  %c1_i32_85 = arith.constant 1 : i32
                  %57 = arith.addi %56, %c1_i32_85 : i32
                  %c0_86 = arith.constant 0 : index
                  memref.store %57, %alloca_8[%c0_86] : memref<1xi32>
                  scf.yield
                }
              }
              %c0_26 = arith.constant 0 : index
              %11 = memref.load %alloca_7[%c0_26] : memref<1xi32>
              %c1_i32_27 = arith.constant 1 : i32
              %12 = arith.addi %11, %c1_i32_27 : i32
              %c0_28 = arith.constant 0 : index
              memref.store %12, %alloca_7[%c0_28] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c0_i32_24 = arith.constant 0 : i32
            %c0_25 = arith.constant 0 : index
            memref.store %c0_i32_24, %alloca_7[%c0_25] : memref<1xi32>
            scf.while : () -> () {
              %c0_26 = arith.constant 0 : index
              %11 = memref.load %alloca_7[%c0_26] : memref<1xi32>
              %c0_27 = arith.constant 0 : index
              %12 = memref.load %alloca_0[%c0_27] : memref<1xi32>
              %13 = arith.cmpi slt, %11, %12 : i32
              scf.condition(%13)
            } do {
              memref.alloca_scope  {
                %c1_i32_29 = arith.constant 1 : i32
                %c0_30 = arith.constant 0 : index
                memref.store %c1_i32_29, %alloca_8[%c0_30] : memref<1xi32>
                scf.while : () -> () {
                  %c0_31 = arith.constant 0 : index
                  %13 = memref.load %alloca_8[%c0_31] : memref<1xi32>
                  %c0_32 = arith.constant 0 : index
                  %14 = memref.load %alloca_1[%c0_32] : memref<1xi32>
                  %15 = arith.cmpi slt, %13, %14 : i32
                  scf.condition(%15)
                } do {
                  %c0_31 = arith.constant 0 : index
                  %13 = memref.load %alloca_2[%c0_31] : memref<1xmemref<?xf64>>
                  %c0_32 = arith.constant 0 : index
                  %14 = memref.load %alloca_7[%c0_32] : memref<1xi32>
                  %15 = arith.extsi %14 : i32 to i64
                  %16 = arith.muli %15, %2 : i64
                  %17 = arith.index_cast %16 : i64 to index
                  %c1 = arith.constant 1 : index
                  %c0_33 = arith.constant 0 : index
                  %c0_34 = arith.constant 0 : index
                  %dim = memref.dim %13, %c0_34 : memref<?xf64>
                  %18 = arith.subi %dim, %17 : index
                  %subview = memref.subview %13[%17] [%18] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%18], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_35 = arith.constant 0 : index
                  %19 = memref.load %alloca_8[%c0_35] : memref<1xi32>
                  %20 = arith.index_cast %19 : i32 to index
                  %c0_36 = arith.constant 0 : index
                  %dim_37 = memref.dim %reinterpret_cast, %c0_36 : memref<?xf64>
                  %21 = arith.subi %dim_37, %20 : index
                  %c1_38 = arith.constant 1 : index
                  %subview_39 = memref.subview %reinterpret_cast[%20] [%21] [%c1_38] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_40 = arith.constant 0 : index
                  %22 = memref.load %subview_39[%c0_40] : memref<?xf64, strided<[?], offset: ?>>
                  %cst = arith.constant 5.000000e-01 : f64
                  %c0_41 = arith.constant 0 : index
                  %23 = memref.load %alloca_4[%c0_41] : memref<1xmemref<?xf64>>
                  %c0_42 = arith.constant 0 : index
                  %24 = memref.load %alloca_7[%c0_42] : memref<1xi32>
                  %25 = arith.extsi %24 : i32 to i64
                  %26 = arith.muli %25, %8 : i64
                  %27 = arith.index_cast %26 : i64 to index
                  %c1_43 = arith.constant 1 : index
                  %c0_44 = arith.constant 0 : index
                  %c0_45 = arith.constant 0 : index
                  %dim_46 = memref.dim %23, %c0_45 : memref<?xf64>
                  %28 = arith.subi %dim_46, %27 : index
                  %subview_47 = memref.subview %23[%27] [%28] [%c1_43] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_48 = memref.reinterpret_cast %subview_47 to offset: [0], sizes: [%28], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_49 = arith.constant 0 : index
                  %29 = memref.load %alloca_8[%c0_49] : memref<1xi32>
                  %30 = arith.index_cast %29 : i32 to index
                  %c0_50 = arith.constant 0 : index
                  %dim_51 = memref.dim %reinterpret_cast_48, %c0_50 : memref<?xf64>
                  %31 = arith.subi %dim_51, %30 : index
                  %c1_52 = arith.constant 1 : index
                  %subview_53 = memref.subview %reinterpret_cast_48[%30] [%31] [%c1_52] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_54 = arith.constant 0 : index
                  %32 = memref.load %subview_53[%c0_54] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_55 = arith.constant 0 : index
                  %33 = memref.load %alloca_4[%c0_55] : memref<1xmemref<?xf64>>
                  %c0_56 = arith.constant 0 : index
                  %34 = memref.load %alloca_7[%c0_56] : memref<1xi32>
                  %35 = arith.extsi %34 : i32 to i64
                  %36 = arith.muli %35, %8 : i64
                  %37 = arith.index_cast %36 : i64 to index
                  %c1_57 = arith.constant 1 : index
                  %c0_58 = arith.constant 0 : index
                  %c0_59 = arith.constant 0 : index
                  %dim_60 = memref.dim %33, %c0_59 : memref<?xf64>
                  %38 = arith.subi %dim_60, %37 : index
                  %subview_61 = memref.subview %33[%37] [%38] [%c1_57] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_62 = memref.reinterpret_cast %subview_61 to offset: [0], sizes: [%38], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_63 = arith.constant 0 : index
                  %39 = memref.load %alloca_8[%c0_63] : memref<1xi32>
                  %c1_i32_64 = arith.constant 1 : i32
                  %40 = arith.subi %39, %c1_i32_64 : i32
                  %41 = arith.index_cast %40 : i32 to index
                  %c0_65 = arith.constant 0 : index
                  %dim_66 = memref.dim %reinterpret_cast_62, %c0_65 : memref<?xf64>
                  %42 = arith.subi %dim_66, %41 : index
                  %c1_67 = arith.constant 1 : index
                  %subview_68 = memref.subview %reinterpret_cast_62[%41] [%42] [%c1_67] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_69 = arith.constant 0 : index
                  %43 = memref.load %subview_68[%c0_69] : memref<?xf64, strided<[?], offset: ?>>
                  %44 = arith.subf %32, %43 : f64
                  %45 = arith.mulf %cst, %44 : f64
                  %46 = arith.subf %22, %45 : f64
                  %c0_70 = arith.constant 0 : index
                  %47 = memref.load %alloca_2[%c0_70] : memref<1xmemref<?xf64>>
                  %c0_71 = arith.constant 0 : index
                  %48 = memref.load %alloca_7[%c0_71] : memref<1xi32>
                  %49 = arith.extsi %48 : i32 to i64
                  %50 = arith.muli %49, %2 : i64
                  %51 = arith.index_cast %50 : i64 to index
                  %c1_72 = arith.constant 1 : index
                  %c0_73 = arith.constant 0 : index
                  %c0_74 = arith.constant 0 : index
                  %dim_75 = memref.dim %47, %c0_74 : memref<?xf64>
                  %52 = arith.subi %dim_75, %51 : index
                  %subview_76 = memref.subview %47[%51] [%52] [%c1_72] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_77 = memref.reinterpret_cast %subview_76 to offset: [0], sizes: [%52], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_78 = arith.constant 0 : index
                  %53 = memref.load %alloca_8[%c0_78] : memref<1xi32>
                  %54 = arith.index_cast %53 : i32 to index
                  %c0_79 = arith.constant 0 : index
                  %dim_80 = memref.dim %reinterpret_cast_77, %c0_79 : memref<?xf64>
                  %55 = arith.subi %dim_80, %54 : index
                  %c1_81 = arith.constant 1 : index
                  %subview_82 = memref.subview %reinterpret_cast_77[%54] [%55] [%c1_81] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_83 = arith.constant 0 : index
                  memref.store %46, %subview_82[%c0_83] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_84 = arith.constant 0 : index
                  %56 = memref.load %alloca_8[%c0_84] : memref<1xi32>
                  %c1_i32_85 = arith.constant 1 : i32
                  %57 = arith.addi %56, %c1_i32_85 : i32
                  %c0_86 = arith.constant 0 : index
                  memref.store %57, %alloca_8[%c0_86] : memref<1xi32>
                  scf.yield
                }
              }
              %c0_26 = arith.constant 0 : index
              %11 = memref.load %alloca_7[%c0_26] : memref<1xi32>
              %c1_i32_27 = arith.constant 1 : i32
              %12 = arith.addi %11, %c1_i32_27 : i32
              %c0_28 = arith.constant 0 : index
              memref.store %12, %alloca_7[%c0_28] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c0_i32_24 = arith.constant 0 : i32
            %c0_25 = arith.constant 0 : index
            memref.store %c0_i32_24, %alloca_7[%c0_25] : memref<1xi32>
            scf.while : () -> () {
              %c0_26 = arith.constant 0 : index
              %11 = memref.load %alloca_7[%c0_26] : memref<1xi32>
              %c0_27 = arith.constant 0 : index
              %12 = memref.load %alloca_0[%c0_27] : memref<1xi32>
              %c1_i32_28 = arith.constant 1 : i32
              %13 = arith.subi %12, %c1_i32_28 : i32
              %14 = arith.cmpi slt, %11, %13 : i32
              scf.condition(%14)
            } do {
              memref.alloca_scope  {
                %c0_i32_29 = arith.constant 0 : i32
                %c0_30 = arith.constant 0 : index
                memref.store %c0_i32_29, %alloca_8[%c0_30] : memref<1xi32>
                scf.while : () -> () {
                  %c0_31 = arith.constant 0 : index
                  %13 = memref.load %alloca_8[%c0_31] : memref<1xi32>
                  %c0_32 = arith.constant 0 : index
                  %14 = memref.load %alloca_1[%c0_32] : memref<1xi32>
                  %c1_i32_33 = arith.constant 1 : i32
                  %15 = arith.subi %14, %c1_i32_33 : i32
                  %16 = arith.cmpi slt, %13, %15 : i32
                  scf.condition(%16)
                } do {
                  %c0_31 = arith.constant 0 : index
                  %13 = memref.load %alloca_4[%c0_31] : memref<1xmemref<?xf64>>
                  %c0_32 = arith.constant 0 : index
                  %14 = memref.load %alloca_7[%c0_32] : memref<1xi32>
                  %15 = arith.extsi %14 : i32 to i64
                  %16 = arith.muli %15, %8 : i64
                  %17 = arith.index_cast %16 : i64 to index
                  %c1 = arith.constant 1 : index
                  %c0_33 = arith.constant 0 : index
                  %c0_34 = arith.constant 0 : index
                  %dim = memref.dim %13, %c0_34 : memref<?xf64>
                  %18 = arith.subi %dim, %17 : index
                  %subview = memref.subview %13[%17] [%18] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%18], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_35 = arith.constant 0 : index
                  %19 = memref.load %alloca_8[%c0_35] : memref<1xi32>
                  %20 = arith.index_cast %19 : i32 to index
                  %c0_36 = arith.constant 0 : index
                  %dim_37 = memref.dim %reinterpret_cast, %c0_36 : memref<?xf64>
                  %21 = arith.subi %dim_37, %20 : index
                  %c1_38 = arith.constant 1 : index
                  %subview_39 = memref.subview %reinterpret_cast[%20] [%21] [%c1_38] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_40 = arith.constant 0 : index
                  %22 = memref.load %subview_39[%c0_40] : memref<?xf64, strided<[?], offset: ?>>
                  %cst = arith.constant 0.69999999999999996 : f64
                  %c0_41 = arith.constant 0 : index
                  %23 = memref.load %alloca_2[%c0_41] : memref<1xmemref<?xf64>>
                  %c0_42 = arith.constant 0 : index
                  %24 = memref.load %alloca_7[%c0_42] : memref<1xi32>
                  %25 = arith.extsi %24 : i32 to i64
                  %26 = arith.muli %25, %2 : i64
                  %27 = arith.index_cast %26 : i64 to index
                  %c1_43 = arith.constant 1 : index
                  %c0_44 = arith.constant 0 : index
                  %c0_45 = arith.constant 0 : index
                  %dim_46 = memref.dim %23, %c0_45 : memref<?xf64>
                  %28 = arith.subi %dim_46, %27 : index
                  %subview_47 = memref.subview %23[%27] [%28] [%c1_43] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_48 = memref.reinterpret_cast %subview_47 to offset: [0], sizes: [%28], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_49 = arith.constant 0 : index
                  %29 = memref.load %alloca_8[%c0_49] : memref<1xi32>
                  %c1_i32_50 = arith.constant 1 : i32
                  %30 = arith.addi %29, %c1_i32_50 : i32
                  %31 = arith.index_cast %30 : i32 to index
                  %c0_51 = arith.constant 0 : index
                  %dim_52 = memref.dim %reinterpret_cast_48, %c0_51 : memref<?xf64>
                  %32 = arith.subi %dim_52, %31 : index
                  %c1_53 = arith.constant 1 : index
                  %subview_54 = memref.subview %reinterpret_cast_48[%31] [%32] [%c1_53] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_55 = arith.constant 0 : index
                  %33 = memref.load %subview_54[%c0_55] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_56 = arith.constant 0 : index
                  %34 = memref.load %alloca_2[%c0_56] : memref<1xmemref<?xf64>>
                  %c0_57 = arith.constant 0 : index
                  %35 = memref.load %alloca_7[%c0_57] : memref<1xi32>
                  %36 = arith.extsi %35 : i32 to i64
                  %37 = arith.muli %36, %2 : i64
                  %38 = arith.index_cast %37 : i64 to index
                  %c1_58 = arith.constant 1 : index
                  %c0_59 = arith.constant 0 : index
                  %c0_60 = arith.constant 0 : index
                  %dim_61 = memref.dim %34, %c0_60 : memref<?xf64>
                  %39 = arith.subi %dim_61, %38 : index
                  %subview_62 = memref.subview %34[%38] [%39] [%c1_58] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_63 = memref.reinterpret_cast %subview_62 to offset: [0], sizes: [%39], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_64 = arith.constant 0 : index
                  %40 = memref.load %alloca_8[%c0_64] : memref<1xi32>
                  %41 = arith.index_cast %40 : i32 to index
                  %c0_65 = arith.constant 0 : index
                  %dim_66 = memref.dim %reinterpret_cast_63, %c0_65 : memref<?xf64>
                  %42 = arith.subi %dim_66, %41 : index
                  %c1_67 = arith.constant 1 : index
                  %subview_68 = memref.subview %reinterpret_cast_63[%41] [%42] [%c1_67] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_69 = arith.constant 0 : index
                  %43 = memref.load %subview_68[%c0_69] : memref<?xf64, strided<[?], offset: ?>>
                  %44 = arith.subf %33, %43 : f64
                  %c0_70 = arith.constant 0 : index
                  %45 = memref.load %alloca_3[%c0_70] : memref<1xmemref<?xf64>>
                  %c0_71 = arith.constant 0 : index
                  %46 = memref.load %alloca_7[%c0_71] : memref<1xi32>
                  %c1_i32_72 = arith.constant 1 : i32
                  %47 = arith.addi %46, %c1_i32_72 : i32
                  %48 = arith.extsi %47 : i32 to i64
                  %49 = arith.muli %48, %5 : i64
                  %50 = arith.index_cast %49 : i64 to index
                  %c1_73 = arith.constant 1 : index
                  %c0_74 = arith.constant 0 : index
                  %c0_75 = arith.constant 0 : index
                  %dim_76 = memref.dim %45, %c0_75 : memref<?xf64>
                  %51 = arith.subi %dim_76, %50 : index
                  %subview_77 = memref.subview %45[%50] [%51] [%c1_73] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_78 = memref.reinterpret_cast %subview_77 to offset: [0], sizes: [%51], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_79 = arith.constant 0 : index
                  %52 = memref.load %alloca_8[%c0_79] : memref<1xi32>
                  %53 = arith.index_cast %52 : i32 to index
                  %c0_80 = arith.constant 0 : index
                  %dim_81 = memref.dim %reinterpret_cast_78, %c0_80 : memref<?xf64>
                  %54 = arith.subi %dim_81, %53 : index
                  %c1_82 = arith.constant 1 : index
                  %subview_83 = memref.subview %reinterpret_cast_78[%53] [%54] [%c1_82] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_84 = arith.constant 0 : index
                  %55 = memref.load %subview_83[%c0_84] : memref<?xf64, strided<[?], offset: ?>>
                  %56 = arith.addf %44, %55 : f64
                  %c0_85 = arith.constant 0 : index
                  %57 = memref.load %alloca_3[%c0_85] : memref<1xmemref<?xf64>>
                  %c0_86 = arith.constant 0 : index
                  %58 = memref.load %alloca_7[%c0_86] : memref<1xi32>
                  %59 = arith.extsi %58 : i32 to i64
                  %60 = arith.muli %59, %5 : i64
                  %61 = arith.index_cast %60 : i64 to index
                  %c1_87 = arith.constant 1 : index
                  %c0_88 = arith.constant 0 : index
                  %c0_89 = arith.constant 0 : index
                  %dim_90 = memref.dim %57, %c0_89 : memref<?xf64>
                  %62 = arith.subi %dim_90, %61 : index
                  %subview_91 = memref.subview %57[%61] [%62] [%c1_87] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_92 = memref.reinterpret_cast %subview_91 to offset: [0], sizes: [%62], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_93 = arith.constant 0 : index
                  %63 = memref.load %alloca_8[%c0_93] : memref<1xi32>
                  %64 = arith.index_cast %63 : i32 to index
                  %c0_94 = arith.constant 0 : index
                  %dim_95 = memref.dim %reinterpret_cast_92, %c0_94 : memref<?xf64>
                  %65 = arith.subi %dim_95, %64 : index
                  %c1_96 = arith.constant 1 : index
                  %subview_97 = memref.subview %reinterpret_cast_92[%64] [%65] [%c1_96] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_98 = arith.constant 0 : index
                  %66 = memref.load %subview_97[%c0_98] : memref<?xf64, strided<[?], offset: ?>>
                  %67 = arith.subf %56, %66 : f64
                  %68 = arith.mulf %cst, %67 : f64
                  %69 = arith.subf %22, %68 : f64
                  %c0_99 = arith.constant 0 : index
                  %70 = memref.load %alloca_4[%c0_99] : memref<1xmemref<?xf64>>
                  %c0_100 = arith.constant 0 : index
                  %71 = memref.load %alloca_7[%c0_100] : memref<1xi32>
                  %72 = arith.extsi %71 : i32 to i64
                  %73 = arith.muli %72, %8 : i64
                  %74 = arith.index_cast %73 : i64 to index
                  %c1_101 = arith.constant 1 : index
                  %c0_102 = arith.constant 0 : index
                  %c0_103 = arith.constant 0 : index
                  %dim_104 = memref.dim %70, %c0_103 : memref<?xf64>
                  %75 = arith.subi %dim_104, %74 : index
                  %subview_105 = memref.subview %70[%74] [%75] [%c1_101] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_106 = memref.reinterpret_cast %subview_105 to offset: [0], sizes: [%75], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_107 = arith.constant 0 : index
                  %76 = memref.load %alloca_8[%c0_107] : memref<1xi32>
                  %77 = arith.index_cast %76 : i32 to index
                  %c0_108 = arith.constant 0 : index
                  %dim_109 = memref.dim %reinterpret_cast_106, %c0_108 : memref<?xf64>
                  %78 = arith.subi %dim_109, %77 : index
                  %c1_110 = arith.constant 1 : index
                  %subview_111 = memref.subview %reinterpret_cast_106[%77] [%78] [%c1_110] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_112 = arith.constant 0 : index
                  memref.store %69, %subview_111[%c0_112] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_113 = arith.constant 0 : index
                  %79 = memref.load %alloca_8[%c0_113] : memref<1xi32>
                  %c1_i32_114 = arith.constant 1 : i32
                  %80 = arith.addi %79, %c1_i32_114 : i32
                  %c0_115 = arith.constant 0 : index
                  memref.store %80, %alloca_8[%c0_115] : memref<1xi32>
                  scf.yield
                }
              }
              %c0_26 = arith.constant 0 : index
              %11 = memref.load %alloca_7[%c0_26] : memref<1xi32>
              %c1_i32_27 = arith.constant 1 : i32
              %12 = arith.addi %11, %c1_i32_27 : i32
              %c0_28 = arith.constant 0 : index
              memref.store %12, %alloca_7[%c0_28] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_22 = arith.constant 0 : index
        %9 = memref.load %alloca_6[%c0_22] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %10 = arith.addi %9, %c1_i32 : i32
        %c0_23 = arith.constant 0 : index
        memref.store %10, %alloca_6[%c0_23] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<3xi8> = dense<[101, 120, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.3" : memref<2xi8> = dense<[10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.4" : memref<8xi8> = dense<[37, 48, 46, 50, 108, 102, 32, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.5" : memref<17xi8> = dense<[10, 101, 110, 100, 32, 32, 32, 100, 117, 109, 112, 58, 32, 37, 115, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.6" : memref<23xi8> = dense<[61, 61, 69, 78, 68, 32, 32, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.7" : memref<3xi8> = dense<[101, 121, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.8" : memref<3xi8> = dense<[104, 122, 0]> {alignment = 1 : i64}
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
    %c0_13 = arith.constant 0 : index
    %6 = memref.load %alloca_0[%c0_13] : memref<1xi32>
    %c0_i32_14 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_14 : i32
    %8 = arith.extsi %7 : i32 to i64
    %9 = llvm.mlir.addressof @stderr : !llvm.ptr
    %10 = llvm.load %9 : !llvm.ptr -> !llvm.ptr
    %11 = memref.get_global @".str" : memref<23xi8>
    %c0_15 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c23 = arith.constant 23 : index
    %subview = memref.subview %11[%c0_15] [%c23] [%c1] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%c23], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr = memref.extract_aligned_pointer_as_index %reinterpret_cast : memref<?xi8> -> index
    %12 = arith.index_castui %intptr : index to i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr
    %14 = llvm.call @fprintf(%10, %13) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %15 = llvm.mlir.addressof @stderr : !llvm.ptr
    %16 = llvm.load %15 : !llvm.ptr -> !llvm.ptr
    %17 = memref.get_global @".str.1" : memref<15xi8>
    %c0_16 = arith.constant 0 : index
    %c1_17 = arith.constant 1 : index
    %c15 = arith.constant 15 : index
    %subview_18 = memref.subview %17[%c0_16] [%c15] [%c1_17] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_19 = memref.reinterpret_cast %subview_18 to offset: [0], sizes: [%c15], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %18 = memref.get_global @".str.2" : memref<3xi8>
    %c0_20 = arith.constant 0 : index
    %c1_21 = arith.constant 1 : index
    %c3 = arith.constant 3 : index
    %subview_22 = memref.subview %18[%c0_20] [%c3] [%c1_21] : memref<3xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_23 = memref.reinterpret_cast %subview_22 to offset: [0], sizes: [%c3], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_24 = memref.extract_aligned_pointer_as_index %reinterpret_cast_19 : memref<?xi8> -> index
    %19 = arith.index_castui %intptr_24 : index to i64
    %20 = llvm.inttoptr %19 : i64 to !llvm.ptr
    %intptr_25 = memref.extract_aligned_pointer_as_index %reinterpret_cast_23 : memref<?xi8> -> index
    %21 = arith.index_castui %intptr_25 : index to i64
    %22 = llvm.inttoptr %21 : i64 to !llvm.ptr
    %23 = llvm.call @fprintf(%16, %20, %22) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32_91 = arith.constant 0 : i32
      %c0_92 = arith.constant 0 : index
      memref.store %c0_i32_91, %alloca_4[%c0_92] : memref<1xi32>
      scf.while : () -> () {
        %c0_93 = arith.constant 0 : index
        %75 = memref.load %alloca_4[%c0_93] : memref<1xi32>
        %c0_94 = arith.constant 0 : index
        %76 = memref.load %alloca[%c0_94] : memref<1xi32>
        %77 = arith.cmpi slt, %75, %76 : i32
        scf.condition(%77)
      } do {
        memref.alloca_scope  {
          %c0_i32_95 = arith.constant 0 : i32
          %c0_96 = arith.constant 0 : index
          memref.store %c0_i32_95, %alloca_5[%c0_96] : memref<1xi32>
          scf.while : () -> () {
            %c0_97 = arith.constant 0 : index
            %77 = memref.load %alloca_5[%c0_97] : memref<1xi32>
            %c0_98 = arith.constant 0 : index
            %78 = memref.load %alloca_0[%c0_98] : memref<1xi32>
            %79 = arith.cmpi slt, %77, %78 : i32
            scf.condition(%79)
          } do {
            memref.alloca_scope  {
              memref.alloca_scope  {
                %c0_118 = arith.constant 0 : index
                %95 = memref.load %alloca_4[%c0_118] : memref<1xi32>
                %c0_119 = arith.constant 0 : index
                %96 = memref.load %alloca[%c0_119] : memref<1xi32>
                %97 = arith.muli %95, %96 : i32
                %c0_120 = arith.constant 0 : index
                %98 = memref.load %alloca_5[%c0_120] : memref<1xi32>
                %99 = arith.addi %97, %98 : i32
                %c20_i32 = arith.constant 20 : i32
                %100 = arith.remsi %99, %c20_i32 : i32
                %c0_i32_121 = arith.constant 0 : i32
                %101 = arith.cmpi eq, %100, %c0_i32_121 : i32
                scf.if %101 {
                  %102 = llvm.mlir.addressof @stderr : !llvm.ptr
                  %103 = llvm.load %102 : !llvm.ptr -> !llvm.ptr
                  %104 = memref.get_global @".str.3" : memref<2xi8>
                  %c0_122 = arith.constant 0 : index
                  %c1_123 = arith.constant 1 : index
                  %c2 = arith.constant 2 : index
                  %subview_124 = memref.subview %104[%c0_122] [%c2] [%c1_123] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
                  %reinterpret_cast_125 = memref.reinterpret_cast %subview_124 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                  %intptr_126 = memref.extract_aligned_pointer_as_index %reinterpret_cast_125 : memref<?xi8> -> index
                  %105 = arith.index_castui %intptr_126 : index to i64
                  %106 = llvm.inttoptr %105 : i64 to !llvm.ptr
                  %107 = llvm.call @fprintf(%103, %106) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                }
              }
              %79 = llvm.mlir.addressof @stderr : !llvm.ptr
              %80 = llvm.load %79 : !llvm.ptr -> !llvm.ptr
              %81 = memref.get_global @".str.4" : memref<8xi8>
              %c0_100 = arith.constant 0 : index
              %c1_101 = arith.constant 1 : index
              %c8 = arith.constant 8 : index
              %subview_102 = memref.subview %81[%c0_100] [%c8] [%c1_101] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_103 = memref.reinterpret_cast %subview_102 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %c0_104 = arith.constant 0 : index
              %82 = memref.load %alloca_1[%c0_104] : memref<1xmemref<?xf64>>
              %c0_105 = arith.constant 0 : index
              %83 = memref.load %alloca_4[%c0_105] : memref<1xi32>
              %84 = arith.extsi %83 : i32 to i64
              %85 = arith.muli %84, %2 : i64
              %86 = arith.index_cast %85 : i64 to index
              %c1_106 = arith.constant 1 : index
              %c0_107 = arith.constant 0 : index
              %c0_108 = arith.constant 0 : index
              %dim = memref.dim %82, %c0_108 : memref<?xf64>
              %87 = arith.subi %dim, %86 : index
              %subview_109 = memref.subview %82[%86] [%87] [%c1_106] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_110 = memref.reinterpret_cast %subview_109 to offset: [0], sizes: [%87], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_111 = arith.constant 0 : index
              %88 = memref.load %alloca_5[%c0_111] : memref<1xi32>
              %89 = arith.index_cast %88 : i32 to index
              %c0_112 = arith.constant 0 : index
              %dim_113 = memref.dim %reinterpret_cast_110, %c0_112 : memref<?xf64>
              %90 = arith.subi %dim_113, %89 : index
              %c1_114 = arith.constant 1 : index
              %subview_115 = memref.subview %reinterpret_cast_110[%89] [%90] [%c1_114] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_116 = arith.constant 0 : index
              %91 = memref.load %subview_115[%c0_116] : memref<?xf64, strided<[?], offset: ?>>
              %intptr_117 = memref.extract_aligned_pointer_as_index %reinterpret_cast_103 : memref<?xi8> -> index
              %92 = arith.index_castui %intptr_117 : index to i64
              %93 = llvm.inttoptr %92 : i64 to !llvm.ptr
              %94 = llvm.call @fprintf(%80, %93, %91) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
            }
            %c0_97 = arith.constant 0 : index
            %77 = memref.load %alloca_5[%c0_97] : memref<1xi32>
            %c1_i32_98 = arith.constant 1 : i32
            %78 = arith.addi %77, %c1_i32_98 : i32
            %c0_99 = arith.constant 0 : index
            memref.store %78, %alloca_5[%c0_99] : memref<1xi32>
            scf.yield
          }
        }
        %c0_93 = arith.constant 0 : index
        %75 = memref.load %alloca_4[%c0_93] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %76 = arith.addi %75, %c1_i32 : i32
        %c0_94 = arith.constant 0 : index
        memref.store %76, %alloca_4[%c0_94] : memref<1xi32>
        scf.yield
      }
    }
    %24 = llvm.mlir.addressof @stderr : !llvm.ptr
    %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
    %26 = memref.get_global @".str.5" : memref<17xi8>
    %c0_26 = arith.constant 0 : index
    %c1_27 = arith.constant 1 : index
    %c17 = arith.constant 17 : index
    %subview_28 = memref.subview %26[%c0_26] [%c17] [%c1_27] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_29 = memref.reinterpret_cast %subview_28 to offset: [0], sizes: [%c17], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %27 = memref.get_global @".str.2" : memref<3xi8>
    %c0_30 = arith.constant 0 : index
    %c1_31 = arith.constant 1 : index
    %c3_32 = arith.constant 3 : index
    %subview_33 = memref.subview %27[%c0_30] [%c3_32] [%c1_31] : memref<3xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_34 = memref.reinterpret_cast %subview_33 to offset: [0], sizes: [%c3_32], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_35 = memref.extract_aligned_pointer_as_index %reinterpret_cast_29 : memref<?xi8> -> index
    %28 = arith.index_castui %intptr_35 : index to i64
    %29 = llvm.inttoptr %28 : i64 to !llvm.ptr
    %intptr_36 = memref.extract_aligned_pointer_as_index %reinterpret_cast_34 : memref<?xi8> -> index
    %30 = arith.index_castui %intptr_36 : index to i64
    %31 = llvm.inttoptr %30 : i64 to !llvm.ptr
    %32 = llvm.call @fprintf(%25, %29, %31) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %33 = llvm.mlir.addressof @stderr : !llvm.ptr
    %34 = llvm.load %33 : !llvm.ptr -> !llvm.ptr
    %35 = memref.get_global @".str.6" : memref<23xi8>
    %c0_37 = arith.constant 0 : index
    %c1_38 = arith.constant 1 : index
    %c23_39 = arith.constant 23 : index
    %subview_40 = memref.subview %35[%c0_37] [%c23_39] [%c1_38] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_41 = memref.reinterpret_cast %subview_40 to offset: [0], sizes: [%c23_39], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_42 = memref.extract_aligned_pointer_as_index %reinterpret_cast_41 : memref<?xi8> -> index
    %36 = arith.index_castui %intptr_42 : index to i64
    %37 = llvm.inttoptr %36 : i64 to !llvm.ptr
    %38 = llvm.call @fprintf(%34, %37) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %39 = llvm.mlir.addressof @stderr : !llvm.ptr
    %40 = llvm.load %39 : !llvm.ptr -> !llvm.ptr
    %41 = memref.get_global @".str.1" : memref<15xi8>
    %c0_43 = arith.constant 0 : index
    %c1_44 = arith.constant 1 : index
    %c15_45 = arith.constant 15 : index
    %subview_46 = memref.subview %41[%c0_43] [%c15_45] [%c1_44] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_47 = memref.reinterpret_cast %subview_46 to offset: [0], sizes: [%c15_45], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %42 = memref.get_global @".str.7" : memref<3xi8>
    %c0_48 = arith.constant 0 : index
    %c1_49 = arith.constant 1 : index
    %c3_50 = arith.constant 3 : index
    %subview_51 = memref.subview %42[%c0_48] [%c3_50] [%c1_49] : memref<3xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_52 = memref.reinterpret_cast %subview_51 to offset: [0], sizes: [%c3_50], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_53 = memref.extract_aligned_pointer_as_index %reinterpret_cast_47 : memref<?xi8> -> index
    %43 = arith.index_castui %intptr_53 : index to i64
    %44 = llvm.inttoptr %43 : i64 to !llvm.ptr
    %intptr_54 = memref.extract_aligned_pointer_as_index %reinterpret_cast_52 : memref<?xi8> -> index
    %45 = arith.index_castui %intptr_54 : index to i64
    %46 = llvm.inttoptr %45 : i64 to !llvm.ptr
    %47 = llvm.call @fprintf(%40, %44, %46) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32_91 = arith.constant 0 : i32
      %c0_92 = arith.constant 0 : index
      memref.store %c0_i32_91, %alloca_4[%c0_92] : memref<1xi32>
      scf.while : () -> () {
        %c0_93 = arith.constant 0 : index
        %75 = memref.load %alloca_4[%c0_93] : memref<1xi32>
        %c0_94 = arith.constant 0 : index
        %76 = memref.load %alloca[%c0_94] : memref<1xi32>
        %77 = arith.cmpi slt, %75, %76 : i32
        scf.condition(%77)
      } do {
        memref.alloca_scope  {
          %c0_i32_95 = arith.constant 0 : i32
          %c0_96 = arith.constant 0 : index
          memref.store %c0_i32_95, %alloca_5[%c0_96] : memref<1xi32>
          scf.while : () -> () {
            %c0_97 = arith.constant 0 : index
            %77 = memref.load %alloca_5[%c0_97] : memref<1xi32>
            %c0_98 = arith.constant 0 : index
            %78 = memref.load %alloca_0[%c0_98] : memref<1xi32>
            %79 = arith.cmpi slt, %77, %78 : i32
            scf.condition(%79)
          } do {
            memref.alloca_scope  {
              memref.alloca_scope  {
                %c0_118 = arith.constant 0 : index
                %95 = memref.load %alloca_4[%c0_118] : memref<1xi32>
                %c0_119 = arith.constant 0 : index
                %96 = memref.load %alloca[%c0_119] : memref<1xi32>
                %97 = arith.muli %95, %96 : i32
                %c0_120 = arith.constant 0 : index
                %98 = memref.load %alloca_5[%c0_120] : memref<1xi32>
                %99 = arith.addi %97, %98 : i32
                %c20_i32 = arith.constant 20 : i32
                %100 = arith.remsi %99, %c20_i32 : i32
                %c0_i32_121 = arith.constant 0 : i32
                %101 = arith.cmpi eq, %100, %c0_i32_121 : i32
                scf.if %101 {
                  %102 = llvm.mlir.addressof @stderr : !llvm.ptr
                  %103 = llvm.load %102 : !llvm.ptr -> !llvm.ptr
                  %104 = memref.get_global @".str.3" : memref<2xi8>
                  %c0_122 = arith.constant 0 : index
                  %c1_123 = arith.constant 1 : index
                  %c2 = arith.constant 2 : index
                  %subview_124 = memref.subview %104[%c0_122] [%c2] [%c1_123] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
                  %reinterpret_cast_125 = memref.reinterpret_cast %subview_124 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                  %intptr_126 = memref.extract_aligned_pointer_as_index %reinterpret_cast_125 : memref<?xi8> -> index
                  %105 = arith.index_castui %intptr_126 : index to i64
                  %106 = llvm.inttoptr %105 : i64 to !llvm.ptr
                  %107 = llvm.call @fprintf(%103, %106) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                }
              }
              %79 = llvm.mlir.addressof @stderr : !llvm.ptr
              %80 = llvm.load %79 : !llvm.ptr -> !llvm.ptr
              %81 = memref.get_global @".str.4" : memref<8xi8>
              %c0_100 = arith.constant 0 : index
              %c1_101 = arith.constant 1 : index
              %c8 = arith.constant 8 : index
              %subview_102 = memref.subview %81[%c0_100] [%c8] [%c1_101] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_103 = memref.reinterpret_cast %subview_102 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %c0_104 = arith.constant 0 : index
              %82 = memref.load %alloca_2[%c0_104] : memref<1xmemref<?xf64>>
              %c0_105 = arith.constant 0 : index
              %83 = memref.load %alloca_4[%c0_105] : memref<1xi32>
              %84 = arith.extsi %83 : i32 to i64
              %85 = arith.muli %84, %5 : i64
              %86 = arith.index_cast %85 : i64 to index
              %c1_106 = arith.constant 1 : index
              %c0_107 = arith.constant 0 : index
              %c0_108 = arith.constant 0 : index
              %dim = memref.dim %82, %c0_108 : memref<?xf64>
              %87 = arith.subi %dim, %86 : index
              %subview_109 = memref.subview %82[%86] [%87] [%c1_106] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_110 = memref.reinterpret_cast %subview_109 to offset: [0], sizes: [%87], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_111 = arith.constant 0 : index
              %88 = memref.load %alloca_5[%c0_111] : memref<1xi32>
              %89 = arith.index_cast %88 : i32 to index
              %c0_112 = arith.constant 0 : index
              %dim_113 = memref.dim %reinterpret_cast_110, %c0_112 : memref<?xf64>
              %90 = arith.subi %dim_113, %89 : index
              %c1_114 = arith.constant 1 : index
              %subview_115 = memref.subview %reinterpret_cast_110[%89] [%90] [%c1_114] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_116 = arith.constant 0 : index
              %91 = memref.load %subview_115[%c0_116] : memref<?xf64, strided<[?], offset: ?>>
              %intptr_117 = memref.extract_aligned_pointer_as_index %reinterpret_cast_103 : memref<?xi8> -> index
              %92 = arith.index_castui %intptr_117 : index to i64
              %93 = llvm.inttoptr %92 : i64 to !llvm.ptr
              %94 = llvm.call @fprintf(%80, %93, %91) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
            }
            %c0_97 = arith.constant 0 : index
            %77 = memref.load %alloca_5[%c0_97] : memref<1xi32>
            %c1_i32_98 = arith.constant 1 : i32
            %78 = arith.addi %77, %c1_i32_98 : i32
            %c0_99 = arith.constant 0 : index
            memref.store %78, %alloca_5[%c0_99] : memref<1xi32>
            scf.yield
          }
        }
        %c0_93 = arith.constant 0 : index
        %75 = memref.load %alloca_4[%c0_93] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %76 = arith.addi %75, %c1_i32 : i32
        %c0_94 = arith.constant 0 : index
        memref.store %76, %alloca_4[%c0_94] : memref<1xi32>
        scf.yield
      }
    }
    %48 = llvm.mlir.addressof @stderr : !llvm.ptr
    %49 = llvm.load %48 : !llvm.ptr -> !llvm.ptr
    %50 = memref.get_global @".str.5" : memref<17xi8>
    %c0_55 = arith.constant 0 : index
    %c1_56 = arith.constant 1 : index
    %c17_57 = arith.constant 17 : index
    %subview_58 = memref.subview %50[%c0_55] [%c17_57] [%c1_56] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_59 = memref.reinterpret_cast %subview_58 to offset: [0], sizes: [%c17_57], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %51 = memref.get_global @".str.7" : memref<3xi8>
    %c0_60 = arith.constant 0 : index
    %c1_61 = arith.constant 1 : index
    %c3_62 = arith.constant 3 : index
    %subview_63 = memref.subview %51[%c0_60] [%c3_62] [%c1_61] : memref<3xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_64 = memref.reinterpret_cast %subview_63 to offset: [0], sizes: [%c3_62], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_65 = memref.extract_aligned_pointer_as_index %reinterpret_cast_59 : memref<?xi8> -> index
    %52 = arith.index_castui %intptr_65 : index to i64
    %53 = llvm.inttoptr %52 : i64 to !llvm.ptr
    %intptr_66 = memref.extract_aligned_pointer_as_index %reinterpret_cast_64 : memref<?xi8> -> index
    %54 = arith.index_castui %intptr_66 : index to i64
    %55 = llvm.inttoptr %54 : i64 to !llvm.ptr
    %56 = llvm.call @fprintf(%49, %53, %55) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %57 = llvm.mlir.addressof @stderr : !llvm.ptr
    %58 = llvm.load %57 : !llvm.ptr -> !llvm.ptr
    %59 = memref.get_global @".str.1" : memref<15xi8>
    %c0_67 = arith.constant 0 : index
    %c1_68 = arith.constant 1 : index
    %c15_69 = arith.constant 15 : index
    %subview_70 = memref.subview %59[%c0_67] [%c15_69] [%c1_68] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_71 = memref.reinterpret_cast %subview_70 to offset: [0], sizes: [%c15_69], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %60 = memref.get_global @".str.8" : memref<3xi8>
    %c0_72 = arith.constant 0 : index
    %c1_73 = arith.constant 1 : index
    %c3_74 = arith.constant 3 : index
    %subview_75 = memref.subview %60[%c0_72] [%c3_74] [%c1_73] : memref<3xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_76 = memref.reinterpret_cast %subview_75 to offset: [0], sizes: [%c3_74], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_77 = memref.extract_aligned_pointer_as_index %reinterpret_cast_71 : memref<?xi8> -> index
    %61 = arith.index_castui %intptr_77 : index to i64
    %62 = llvm.inttoptr %61 : i64 to !llvm.ptr
    %intptr_78 = memref.extract_aligned_pointer_as_index %reinterpret_cast_76 : memref<?xi8> -> index
    %63 = arith.index_castui %intptr_78 : index to i64
    %64 = llvm.inttoptr %63 : i64 to !llvm.ptr
    %65 = llvm.call @fprintf(%58, %62, %64) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32_91 = arith.constant 0 : i32
      %c0_92 = arith.constant 0 : index
      memref.store %c0_i32_91, %alloca_4[%c0_92] : memref<1xi32>
      scf.while : () -> () {
        %c0_93 = arith.constant 0 : index
        %75 = memref.load %alloca_4[%c0_93] : memref<1xi32>
        %c0_94 = arith.constant 0 : index
        %76 = memref.load %alloca[%c0_94] : memref<1xi32>
        %77 = arith.cmpi slt, %75, %76 : i32
        scf.condition(%77)
      } do {
        memref.alloca_scope  {
          %c0_i32_95 = arith.constant 0 : i32
          %c0_96 = arith.constant 0 : index
          memref.store %c0_i32_95, %alloca_5[%c0_96] : memref<1xi32>
          scf.while : () -> () {
            %c0_97 = arith.constant 0 : index
            %77 = memref.load %alloca_5[%c0_97] : memref<1xi32>
            %c0_98 = arith.constant 0 : index
            %78 = memref.load %alloca_0[%c0_98] : memref<1xi32>
            %79 = arith.cmpi slt, %77, %78 : i32
            scf.condition(%79)
          } do {
            memref.alloca_scope  {
              memref.alloca_scope  {
                %c0_118 = arith.constant 0 : index
                %95 = memref.load %alloca_4[%c0_118] : memref<1xi32>
                %c0_119 = arith.constant 0 : index
                %96 = memref.load %alloca[%c0_119] : memref<1xi32>
                %97 = arith.muli %95, %96 : i32
                %c0_120 = arith.constant 0 : index
                %98 = memref.load %alloca_5[%c0_120] : memref<1xi32>
                %99 = arith.addi %97, %98 : i32
                %c20_i32 = arith.constant 20 : i32
                %100 = arith.remsi %99, %c20_i32 : i32
                %c0_i32_121 = arith.constant 0 : i32
                %101 = arith.cmpi eq, %100, %c0_i32_121 : i32
                scf.if %101 {
                  %102 = llvm.mlir.addressof @stderr : !llvm.ptr
                  %103 = llvm.load %102 : !llvm.ptr -> !llvm.ptr
                  %104 = memref.get_global @".str.3" : memref<2xi8>
                  %c0_122 = arith.constant 0 : index
                  %c1_123 = arith.constant 1 : index
                  %c2 = arith.constant 2 : index
                  %subview_124 = memref.subview %104[%c0_122] [%c2] [%c1_123] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
                  %reinterpret_cast_125 = memref.reinterpret_cast %subview_124 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                  %intptr_126 = memref.extract_aligned_pointer_as_index %reinterpret_cast_125 : memref<?xi8> -> index
                  %105 = arith.index_castui %intptr_126 : index to i64
                  %106 = llvm.inttoptr %105 : i64 to !llvm.ptr
                  %107 = llvm.call @fprintf(%103, %106) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                }
              }
              %79 = llvm.mlir.addressof @stderr : !llvm.ptr
              %80 = llvm.load %79 : !llvm.ptr -> !llvm.ptr
              %81 = memref.get_global @".str.4" : memref<8xi8>
              %c0_100 = arith.constant 0 : index
              %c1_101 = arith.constant 1 : index
              %c8 = arith.constant 8 : index
              %subview_102 = memref.subview %81[%c0_100] [%c8] [%c1_101] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_103 = memref.reinterpret_cast %subview_102 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %c0_104 = arith.constant 0 : index
              %82 = memref.load %alloca_3[%c0_104] : memref<1xmemref<?xf64>>
              %c0_105 = arith.constant 0 : index
              %83 = memref.load %alloca_4[%c0_105] : memref<1xi32>
              %84 = arith.extsi %83 : i32 to i64
              %85 = arith.muli %84, %8 : i64
              %86 = arith.index_cast %85 : i64 to index
              %c1_106 = arith.constant 1 : index
              %c0_107 = arith.constant 0 : index
              %c0_108 = arith.constant 0 : index
              %dim = memref.dim %82, %c0_108 : memref<?xf64>
              %87 = arith.subi %dim, %86 : index
              %subview_109 = memref.subview %82[%86] [%87] [%c1_106] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_110 = memref.reinterpret_cast %subview_109 to offset: [0], sizes: [%87], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_111 = arith.constant 0 : index
              %88 = memref.load %alloca_5[%c0_111] : memref<1xi32>
              %89 = arith.index_cast %88 : i32 to index
              %c0_112 = arith.constant 0 : index
              %dim_113 = memref.dim %reinterpret_cast_110, %c0_112 : memref<?xf64>
              %90 = arith.subi %dim_113, %89 : index
              %c1_114 = arith.constant 1 : index
              %subview_115 = memref.subview %reinterpret_cast_110[%89] [%90] [%c1_114] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_116 = arith.constant 0 : index
              %91 = memref.load %subview_115[%c0_116] : memref<?xf64, strided<[?], offset: ?>>
              %intptr_117 = memref.extract_aligned_pointer_as_index %reinterpret_cast_103 : memref<?xi8> -> index
              %92 = arith.index_castui %intptr_117 : index to i64
              %93 = llvm.inttoptr %92 : i64 to !llvm.ptr
              %94 = llvm.call @fprintf(%80, %93, %91) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
            }
            %c0_97 = arith.constant 0 : index
            %77 = memref.load %alloca_5[%c0_97] : memref<1xi32>
            %c1_i32_98 = arith.constant 1 : i32
            %78 = arith.addi %77, %c1_i32_98 : i32
            %c0_99 = arith.constant 0 : index
            memref.store %78, %alloca_5[%c0_99] : memref<1xi32>
            scf.yield
          }
        }
        %c0_93 = arith.constant 0 : index
        %75 = memref.load %alloca_4[%c0_93] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %76 = arith.addi %75, %c1_i32 : i32
        %c0_94 = arith.constant 0 : index
        memref.store %76, %alloca_4[%c0_94] : memref<1xi32>
        scf.yield
      }
    }
    %66 = llvm.mlir.addressof @stderr : !llvm.ptr
    %67 = llvm.load %66 : !llvm.ptr -> !llvm.ptr
    %68 = memref.get_global @".str.5" : memref<17xi8>
    %c0_79 = arith.constant 0 : index
    %c1_80 = arith.constant 1 : index
    %c17_81 = arith.constant 17 : index
    %subview_82 = memref.subview %68[%c0_79] [%c17_81] [%c1_80] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_83 = memref.reinterpret_cast %subview_82 to offset: [0], sizes: [%c17_81], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %69 = memref.get_global @".str.8" : memref<3xi8>
    %c0_84 = arith.constant 0 : index
    %c1_85 = arith.constant 1 : index
    %c3_86 = arith.constant 3 : index
    %subview_87 = memref.subview %69[%c0_84] [%c3_86] [%c1_85] : memref<3xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_88 = memref.reinterpret_cast %subview_87 to offset: [0], sizes: [%c3_86], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_89 = memref.extract_aligned_pointer_as_index %reinterpret_cast_83 : memref<?xi8> -> index
    %70 = arith.index_castui %intptr_89 : index to i64
    %71 = llvm.inttoptr %70 : i64 to !llvm.ptr
    %intptr_90 = memref.extract_aligned_pointer_as_index %reinterpret_cast_88 : memref<?xi8> -> index
    %72 = arith.index_castui %intptr_90 : index to i64
    %73 = llvm.inttoptr %72 : i64 to !llvm.ptr
    %74 = llvm.call @fprintf(%67, %71, %73) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
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
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_8 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_9 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_9] : memref<1xmemref<?xmemref<?xi8>>>
    %c500_i32 = arith.constant 500 : i32
    %c0_10 = arith.constant 0 : index
    memref.store %c500_i32, %alloca_2[%c0_10] : memref<1xi32>
    %c1000_i32 = arith.constant 1000 : i32
    %c0_11 = arith.constant 0 : index
    memref.store %c1000_i32, %alloca_3[%c0_11] : memref<1xi32>
    %c1200_i32 = arith.constant 1200 : i32
    %c0_12 = arith.constant 0 : index
    memref.store %c1200_i32, %alloca_4[%c0_12] : memref<1xi32>
    %c0_13 = arith.constant 0 : index
    %0 = memref.load %alloca_3[%c0_13] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_14 = arith.constant 0 : index
    %2 = memref.load %alloca_4[%c0_14] : memref<1xi32>
    %c0_i32_15 = arith.constant 0 : i32
    %3 = arith.addi %2, %c0_i32_15 : i32
    %4 = arith.muli %1, %3 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %6 = arith.trunci %c8_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xf64>
    %c0_16 = arith.constant 0 : index
    memref.store %8, %alloca_5[%c0_16] : memref<1xmemref<?xf64>>
    %c0_17 = arith.constant 0 : index
    %9 = memref.load %alloca_3[%c0_17] : memref<1xi32>
    %c0_i32_18 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_18 : i32
    %c0_19 = arith.constant 0 : index
    %11 = memref.load %alloca_4[%c0_19] : memref<1xi32>
    %c0_i32_20 = arith.constant 0 : i32
    %12 = arith.addi %11, %c0_i32_20 : i32
    %13 = arith.muli %10, %12 : i32
    %14 = arith.extsi %13 : i32 to i64
    %c8_i64_21 = arith.constant 8 : i64
    %15 = arith.trunci %c8_i64_21 : i64 to i32
    %16 = call @polybench_alloc_data(%14, %15) : (i64, i32) -> !llvm.ptr
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.ptr to memref<?xf64>
    %c0_22 = arith.constant 0 : index
    memref.store %17, %alloca_6[%c0_22] : memref<1xmemref<?xf64>>
    %c0_23 = arith.constant 0 : index
    %18 = memref.load %alloca_3[%c0_23] : memref<1xi32>
    %c0_i32_24 = arith.constant 0 : i32
    %19 = arith.addi %18, %c0_i32_24 : i32
    %c0_25 = arith.constant 0 : index
    %20 = memref.load %alloca_4[%c0_25] : memref<1xi32>
    %c0_i32_26 = arith.constant 0 : i32
    %21 = arith.addi %20, %c0_i32_26 : i32
    %22 = arith.muli %19, %21 : i32
    %23 = arith.extsi %22 : i32 to i64
    %c8_i64_27 = arith.constant 8 : i64
    %24 = arith.trunci %c8_i64_27 : i64 to i32
    %25 = call @polybench_alloc_data(%23, %24) : (i64, i32) -> !llvm.ptr
    %26 = builtin.unrealized_conversion_cast %25 : !llvm.ptr to memref<?xf64>
    %c0_28 = arith.constant 0 : index
    memref.store %26, %alloca_7[%c0_28] : memref<1xmemref<?xf64>>
    %c0_29 = arith.constant 0 : index
    %27 = memref.load %alloca_2[%c0_29] : memref<1xi32>
    %c0_i32_30 = arith.constant 0 : i32
    %28 = arith.addi %27, %c0_i32_30 : i32
    %29 = arith.extsi %28 : i32 to i64
    %c8_i64_31 = arith.constant 8 : i64
    %30 = arith.trunci %c8_i64_31 : i64 to i32
    %31 = call @polybench_alloc_data(%29, %30) : (i64, i32) -> !llvm.ptr
    %32 = builtin.unrealized_conversion_cast %31 : !llvm.ptr to memref<?xf64>
    %c0_32 = arith.constant 0 : index
    memref.store %32, %alloca_8[%c0_32] : memref<1xmemref<?xf64>>
    %c0_33 = arith.constant 0 : index
    %33 = memref.load %alloca_2[%c0_33] : memref<1xi32>
    %c0_34 = arith.constant 0 : index
    %34 = memref.load %alloca_3[%c0_34] : memref<1xi32>
    %c0_35 = arith.constant 0 : index
    %35 = memref.load %alloca_4[%c0_35] : memref<1xi32>
    %c0_36 = arith.constant 0 : index
    %36 = memref.load %alloca_5[%c0_36] : memref<1xmemref<?xf64>>
    %c0_37 = arith.constant 0 : index
    %37 = memref.load %alloca_6[%c0_37] : memref<1xmemref<?xf64>>
    %c0_38 = arith.constant 0 : index
    %38 = memref.load %alloca_7[%c0_38] : memref<1xmemref<?xf64>>
    %c0_39 = arith.constant 0 : index
    %39 = memref.load %alloca_8[%c0_39] : memref<1xmemref<?xf64>>
    call @init_array(%33, %34, %35, %36, %37, %38, %39) : (i32, i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %40 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %40() : !llvm.ptr, () -> ()
    %c0_40 = arith.constant 0 : index
    %41 = memref.load %alloca_2[%c0_40] : memref<1xi32>
    %c0_41 = arith.constant 0 : index
    %42 = memref.load %alloca_3[%c0_41] : memref<1xi32>
    %c0_42 = arith.constant 0 : index
    %43 = memref.load %alloca_4[%c0_42] : memref<1xi32>
    %c0_43 = arith.constant 0 : index
    %44 = memref.load %alloca_5[%c0_43] : memref<1xmemref<?xf64>>
    %c0_44 = arith.constant 0 : index
    %45 = memref.load %alloca_6[%c0_44] : memref<1xmemref<?xf64>>
    %c0_45 = arith.constant 0 : index
    %46 = memref.load %alloca_7[%c0_45] : memref<1xmemref<?xf64>>
    %c0_46 = arith.constant 0 : index
    %47 = memref.load %alloca_8[%c0_46] : memref<1xmemref<?xf64>>
    call @kernel_fdtd_2d(%41, %42, %43, %44, %45, %46, %47) : (i32, i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %48 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %48() : !llvm.ptr, () -> ()
    %49 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %49() : !llvm.ptr, () -> ()
    %c0_47 = arith.constant 0 : index
    %50 = memref.load %alloca_3[%c0_47] : memref<1xi32>
    %c0_48 = arith.constant 0 : index
    %51 = memref.load %alloca_4[%c0_48] : memref<1xi32>
    %c0_49 = arith.constant 0 : index
    %52 = memref.load %alloca_5[%c0_49] : memref<1xmemref<?xf64>>
    %c0_50 = arith.constant 0 : index
    %53 = memref.load %alloca_6[%c0_50] : memref<1xmemref<?xf64>>
    %c0_51 = arith.constant 0 : index
    %54 = memref.load %alloca_7[%c0_51] : memref<1xmemref<?xf64>>
    call @print_array(%50, %51, %52, %53, %54) : (i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %c0_52 = arith.constant 0 : index
    %55 = memref.load %alloca_5[%c0_52] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %55 : memref<?xf64> -> index
    %56 = arith.index_castui %intptr : index to i64
    %57 = llvm.inttoptr %56 : i64 to !llvm.ptr
    call @free(%57) : (!llvm.ptr) -> ()
    %c0_53 = arith.constant 0 : index
    %58 = memref.load %alloca_6[%c0_53] : memref<1xmemref<?xf64>>
    %intptr_54 = memref.extract_aligned_pointer_as_index %58 : memref<?xf64> -> index
    %59 = arith.index_castui %intptr_54 : index to i64
    %60 = llvm.inttoptr %59 : i64 to !llvm.ptr
    call @free(%60) : (!llvm.ptr) -> ()
    %c0_55 = arith.constant 0 : index
    %61 = memref.load %alloca_7[%c0_55] : memref<1xmemref<?xf64>>
    %intptr_56 = memref.extract_aligned_pointer_as_index %61 : memref<?xf64> -> index
    %62 = arith.index_castui %intptr_56 : index to i64
    %63 = llvm.inttoptr %62 : i64 to !llvm.ptr
    call @free(%63) : (!llvm.ptr) -> ()
    %c0_57 = arith.constant 0 : index
    %64 = memref.load %alloca_8[%c0_57] : memref<1xmemref<?xf64>>
    %intptr_58 = memref.extract_aligned_pointer_as_index %64 : memref<?xf64> -> index
    %65 = arith.index_castui %intptr_58 : index to i64
    %66 = llvm.inttoptr %65 : i64 to !llvm.ptr
    call @free(%66) : (!llvm.ptr) -> ()
    %c0_i32_59 = arith.constant 0 : i32
    %c0_60 = arith.constant 0 : index
    memref.store %c0_i32_59, %alloca_1[%c0_60] : memref<1xi32>
    %c0_61 = arith.constant 0 : index
    %67 = memref.load %alloca_1[%c0_61] : memref<1xi32>
    return %67 : i32
  }
}

