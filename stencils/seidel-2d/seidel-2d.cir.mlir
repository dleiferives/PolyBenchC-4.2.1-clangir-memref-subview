module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/stencils/seidel-2d/seidel-2d.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: memref<?xf64>) {
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
    memref.alloca_scope  {
      %c0_i32_5 = arith.constant 0 : i32
      %c0_6 = arith.constant 0 : index
      memref.store %c0_i32_5, %alloca_1[%c0_6] : memref<1xi32>
      scf.while : () -> () {
        %c0_7 = arith.constant 0 : index
        %3 = memref.load %alloca_1[%c0_7] : memref<1xi32>
        %c0_8 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_8] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %c0_i32_9 = arith.constant 0 : i32
          %c0_10 = arith.constant 0 : index
          memref.store %c0_i32_9, %alloca_2[%c0_10] : memref<1xi32>
          scf.while : () -> () {
            %c0_11 = arith.constant 0 : index
            %5 = memref.load %alloca_2[%c0_11] : memref<1xi32>
            %c0_12 = arith.constant 0 : index
            %6 = memref.load %alloca[%c0_12] : memref<1xi32>
            %7 = arith.cmpi slt, %5, %6 : i32
            scf.condition(%7)
          } do {
            %c0_11 = arith.constant 0 : index
            %5 = memref.load %alloca_1[%c0_11] : memref<1xi32>
            %6 = arith.sitofp %5 : i32 to f64
            %c0_12 = arith.constant 0 : index
            %7 = memref.load %alloca_2[%c0_12] : memref<1xi32>
            %c2_i32 = arith.constant 2 : i32
            %8 = arith.addi %7, %c2_i32 : i32
            %9 = arith.sitofp %8 : i32 to f64
            %10 = arith.mulf %6, %9 : f64
            %c2_i32_13 = arith.constant 2 : i32
            %11 = arith.sitofp %c2_i32_13 : i32 to f64
            %12 = arith.addf %10, %11 : f64
            %c0_14 = arith.constant 0 : index
            %13 = memref.load %alloca[%c0_14] : memref<1xi32>
            %14 = arith.sitofp %13 : i32 to f64
            %15 = arith.divf %12, %14 : f64
            %c0_15 = arith.constant 0 : index
            %16 = memref.load %alloca_0[%c0_15] : memref<1xmemref<?xf64>>
            %c0_16 = arith.constant 0 : index
            %17 = memref.load %alloca_1[%c0_16] : memref<1xi32>
            %18 = arith.extsi %17 : i32 to i64
            %19 = arith.muli %18, %2 : i64
            %20 = arith.index_cast %19 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_17 = arith.constant 0 : index
            %c0_18 = arith.constant 0 : index
            %dim = memref.dim %16, %c0_18 : memref<?xf64>
            %21 = arith.subi %dim, %20 : index
            %subview = memref.subview %16[%20] [%21] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%21], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_19 = arith.constant 0 : index
            %22 = memref.load %alloca_2[%c0_19] : memref<1xi32>
            %23 = arith.index_cast %22 : i32 to index
            %c0_20 = arith.constant 0 : index
            %dim_21 = memref.dim %reinterpret_cast, %c0_20 : memref<?xf64>
            %24 = arith.subi %dim_21, %23 : index
            %c1_22 = arith.constant 1 : index
            %subview_23 = memref.subview %reinterpret_cast[%23] [%24] [%c1_22] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_24 = arith.constant 0 : index
            memref.store %15, %subview_23[%c0_24] : memref<?xf64, strided<[?], offset: ?>>
            %c0_25 = arith.constant 0 : index
            %25 = memref.load %alloca_2[%c0_25] : memref<1xi32>
            %c1_i32_26 = arith.constant 1 : i32
            %26 = arith.addi %25, %c1_i32_26 : i32
            %c0_27 = arith.constant 0 : index
            memref.store %26, %alloca_2[%c0_27] : memref<1xi32>
            scf.yield
          }
        }
        %c0_7 = arith.constant 0 : index
        %3 = memref.load %alloca_1[%c0_7] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_8 = arith.constant 0 : index
        memref.store %4, %alloca_1[%c0_8] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_5 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_5] : memref<1xi32>
    %c0_6 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_6] : memref<1xmemref<?xf64>>
    %c0_7 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_7] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_8 = arith.constant 0 : i32
      %c0_9 = arith.constant 0 : index
      memref.store %c0_i32_8, %alloca_2[%c0_9] : memref<1xi32>
      scf.while : () -> () {
        %c0_10 = arith.constant 0 : index
        %3 = memref.load %alloca_2[%c0_10] : memref<1xi32>
        %c0_11 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_11] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %5 = arith.subi %4, %c1_i32 : i32
        %6 = arith.cmpi sle, %3, %5 : i32
        scf.condition(%6)
      } do {
        memref.alloca_scope  {
          %c1_i32_12 = arith.constant 1 : i32
          %c0_13 = arith.constant 0 : index
          memref.store %c1_i32_12, %alloca_3[%c0_13] : memref<1xi32>
          scf.while : () -> () {
            %c0_14 = arith.constant 0 : index
            %5 = memref.load %alloca_3[%c0_14] : memref<1xi32>
            %c0_15 = arith.constant 0 : index
            %6 = memref.load %alloca_0[%c0_15] : memref<1xi32>
            %c2_i32 = arith.constant 2 : i32
            %7 = arith.subi %6, %c2_i32 : i32
            %8 = arith.cmpi sle, %5, %7 : i32
            scf.condition(%8)
          } do {
            memref.alloca_scope  {
              %c1_i32_17 = arith.constant 1 : i32
              %c0_18 = arith.constant 0 : index
              memref.store %c1_i32_17, %alloca_4[%c0_18] : memref<1xi32>
              scf.while : () -> () {
                %c0_19 = arith.constant 0 : index
                %7 = memref.load %alloca_4[%c0_19] : memref<1xi32>
                %c0_20 = arith.constant 0 : index
                %8 = memref.load %alloca_0[%c0_20] : memref<1xi32>
                %c2_i32 = arith.constant 2 : i32
                %9 = arith.subi %8, %c2_i32 : i32
                %10 = arith.cmpi sle, %7, %9 : i32
                scf.condition(%10)
              } do {
                %c0_19 = arith.constant 0 : index
                %7 = memref.load %alloca_1[%c0_19] : memref<1xmemref<?xf64>>
                %c0_20 = arith.constant 0 : index
                %8 = memref.load %alloca_3[%c0_20] : memref<1xi32>
                %c1_i32_21 = arith.constant 1 : i32
                %9 = arith.subi %8, %c1_i32_21 : i32
                %10 = arith.extsi %9 : i32 to i64
                %11 = arith.muli %10, %2 : i64
                %12 = arith.index_cast %11 : i64 to index
                %c1 = arith.constant 1 : index
                %c0_22 = arith.constant 0 : index
                %c0_23 = arith.constant 0 : index
                %dim = memref.dim %7, %c0_23 : memref<?xf64>
                %13 = arith.subi %dim, %12 : index
                %subview = memref.subview %7[%12] [%13] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%13], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_24 = arith.constant 0 : index
                %14 = memref.load %alloca_4[%c0_24] : memref<1xi32>
                %c1_i32_25 = arith.constant 1 : i32
                %15 = arith.subi %14, %c1_i32_25 : i32
                %16 = arith.index_cast %15 : i32 to index
                %c0_26 = arith.constant 0 : index
                %dim_27 = memref.dim %reinterpret_cast, %c0_26 : memref<?xf64>
                %17 = arith.subi %dim_27, %16 : index
                %c1_28 = arith.constant 1 : index
                %subview_29 = memref.subview %reinterpret_cast[%16] [%17] [%c1_28] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_30 = arith.constant 0 : index
                %18 = memref.load %subview_29[%c0_30] : memref<?xf64, strided<[?], offset: ?>>
                %c0_31 = arith.constant 0 : index
                %19 = memref.load %alloca_1[%c0_31] : memref<1xmemref<?xf64>>
                %c0_32 = arith.constant 0 : index
                %20 = memref.load %alloca_3[%c0_32] : memref<1xi32>
                %c1_i32_33 = arith.constant 1 : i32
                %21 = arith.subi %20, %c1_i32_33 : i32
                %22 = arith.extsi %21 : i32 to i64
                %23 = arith.muli %22, %2 : i64
                %24 = arith.index_cast %23 : i64 to index
                %c1_34 = arith.constant 1 : index
                %c0_35 = arith.constant 0 : index
                %c0_36 = arith.constant 0 : index
                %dim_37 = memref.dim %19, %c0_36 : memref<?xf64>
                %25 = arith.subi %dim_37, %24 : index
                %subview_38 = memref.subview %19[%24] [%25] [%c1_34] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_39 = memref.reinterpret_cast %subview_38 to offset: [0], sizes: [%25], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_40 = arith.constant 0 : index
                %26 = memref.load %alloca_4[%c0_40] : memref<1xi32>
                %27 = arith.index_cast %26 : i32 to index
                %c0_41 = arith.constant 0 : index
                %dim_42 = memref.dim %reinterpret_cast_39, %c0_41 : memref<?xf64>
                %28 = arith.subi %dim_42, %27 : index
                %c1_43 = arith.constant 1 : index
                %subview_44 = memref.subview %reinterpret_cast_39[%27] [%28] [%c1_43] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_45 = arith.constant 0 : index
                %29 = memref.load %subview_44[%c0_45] : memref<?xf64, strided<[?], offset: ?>>
                %30 = arith.addf %18, %29 : f64
                %c0_46 = arith.constant 0 : index
                %31 = memref.load %alloca_1[%c0_46] : memref<1xmemref<?xf64>>
                %c0_47 = arith.constant 0 : index
                %32 = memref.load %alloca_3[%c0_47] : memref<1xi32>
                %c1_i32_48 = arith.constant 1 : i32
                %33 = arith.subi %32, %c1_i32_48 : i32
                %34 = arith.extsi %33 : i32 to i64
                %35 = arith.muli %34, %2 : i64
                %36 = arith.index_cast %35 : i64 to index
                %c1_49 = arith.constant 1 : index
                %c0_50 = arith.constant 0 : index
                %c0_51 = arith.constant 0 : index
                %dim_52 = memref.dim %31, %c0_51 : memref<?xf64>
                %37 = arith.subi %dim_52, %36 : index
                %subview_53 = memref.subview %31[%36] [%37] [%c1_49] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_54 = memref.reinterpret_cast %subview_53 to offset: [0], sizes: [%37], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_55 = arith.constant 0 : index
                %38 = memref.load %alloca_4[%c0_55] : memref<1xi32>
                %c1_i32_56 = arith.constant 1 : i32
                %39 = arith.addi %38, %c1_i32_56 : i32
                %40 = arith.index_cast %39 : i32 to index
                %c0_57 = arith.constant 0 : index
                %dim_58 = memref.dim %reinterpret_cast_54, %c0_57 : memref<?xf64>
                %41 = arith.subi %dim_58, %40 : index
                %c1_59 = arith.constant 1 : index
                %subview_60 = memref.subview %reinterpret_cast_54[%40] [%41] [%c1_59] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_61 = arith.constant 0 : index
                %42 = memref.load %subview_60[%c0_61] : memref<?xf64, strided<[?], offset: ?>>
                %43 = arith.addf %30, %42 : f64
                %c0_62 = arith.constant 0 : index
                %44 = memref.load %alloca_1[%c0_62] : memref<1xmemref<?xf64>>
                %c0_63 = arith.constant 0 : index
                %45 = memref.load %alloca_3[%c0_63] : memref<1xi32>
                %46 = arith.extsi %45 : i32 to i64
                %47 = arith.muli %46, %2 : i64
                %48 = arith.index_cast %47 : i64 to index
                %c1_64 = arith.constant 1 : index
                %c0_65 = arith.constant 0 : index
                %c0_66 = arith.constant 0 : index
                %dim_67 = memref.dim %44, %c0_66 : memref<?xf64>
                %49 = arith.subi %dim_67, %48 : index
                %subview_68 = memref.subview %44[%48] [%49] [%c1_64] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_69 = memref.reinterpret_cast %subview_68 to offset: [0], sizes: [%49], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_70 = arith.constant 0 : index
                %50 = memref.load %alloca_4[%c0_70] : memref<1xi32>
                %c1_i32_71 = arith.constant 1 : i32
                %51 = arith.subi %50, %c1_i32_71 : i32
                %52 = arith.index_cast %51 : i32 to index
                %c0_72 = arith.constant 0 : index
                %dim_73 = memref.dim %reinterpret_cast_69, %c0_72 : memref<?xf64>
                %53 = arith.subi %dim_73, %52 : index
                %c1_74 = arith.constant 1 : index
                %subview_75 = memref.subview %reinterpret_cast_69[%52] [%53] [%c1_74] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_76 = arith.constant 0 : index
                %54 = memref.load %subview_75[%c0_76] : memref<?xf64, strided<[?], offset: ?>>
                %55 = arith.addf %43, %54 : f64
                %c0_77 = arith.constant 0 : index
                %56 = memref.load %alloca_1[%c0_77] : memref<1xmemref<?xf64>>
                %c0_78 = arith.constant 0 : index
                %57 = memref.load %alloca_3[%c0_78] : memref<1xi32>
                %58 = arith.extsi %57 : i32 to i64
                %59 = arith.muli %58, %2 : i64
                %60 = arith.index_cast %59 : i64 to index
                %c1_79 = arith.constant 1 : index
                %c0_80 = arith.constant 0 : index
                %c0_81 = arith.constant 0 : index
                %dim_82 = memref.dim %56, %c0_81 : memref<?xf64>
                %61 = arith.subi %dim_82, %60 : index
                %subview_83 = memref.subview %56[%60] [%61] [%c1_79] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_84 = memref.reinterpret_cast %subview_83 to offset: [0], sizes: [%61], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_85 = arith.constant 0 : index
                %62 = memref.load %alloca_4[%c0_85] : memref<1xi32>
                %63 = arith.index_cast %62 : i32 to index
                %c0_86 = arith.constant 0 : index
                %dim_87 = memref.dim %reinterpret_cast_84, %c0_86 : memref<?xf64>
                %64 = arith.subi %dim_87, %63 : index
                %c1_88 = arith.constant 1 : index
                %subview_89 = memref.subview %reinterpret_cast_84[%63] [%64] [%c1_88] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_90 = arith.constant 0 : index
                %65 = memref.load %subview_89[%c0_90] : memref<?xf64, strided<[?], offset: ?>>
                %66 = arith.addf %55, %65 : f64
                %c0_91 = arith.constant 0 : index
                %67 = memref.load %alloca_1[%c0_91] : memref<1xmemref<?xf64>>
                %c0_92 = arith.constant 0 : index
                %68 = memref.load %alloca_3[%c0_92] : memref<1xi32>
                %69 = arith.extsi %68 : i32 to i64
                %70 = arith.muli %69, %2 : i64
                %71 = arith.index_cast %70 : i64 to index
                %c1_93 = arith.constant 1 : index
                %c0_94 = arith.constant 0 : index
                %c0_95 = arith.constant 0 : index
                %dim_96 = memref.dim %67, %c0_95 : memref<?xf64>
                %72 = arith.subi %dim_96, %71 : index
                %subview_97 = memref.subview %67[%71] [%72] [%c1_93] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_98 = memref.reinterpret_cast %subview_97 to offset: [0], sizes: [%72], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_99 = arith.constant 0 : index
                %73 = memref.load %alloca_4[%c0_99] : memref<1xi32>
                %c1_i32_100 = arith.constant 1 : i32
                %74 = arith.addi %73, %c1_i32_100 : i32
                %75 = arith.index_cast %74 : i32 to index
                %c0_101 = arith.constant 0 : index
                %dim_102 = memref.dim %reinterpret_cast_98, %c0_101 : memref<?xf64>
                %76 = arith.subi %dim_102, %75 : index
                %c1_103 = arith.constant 1 : index
                %subview_104 = memref.subview %reinterpret_cast_98[%75] [%76] [%c1_103] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_105 = arith.constant 0 : index
                %77 = memref.load %subview_104[%c0_105] : memref<?xf64, strided<[?], offset: ?>>
                %78 = arith.addf %66, %77 : f64
                %c0_106 = arith.constant 0 : index
                %79 = memref.load %alloca_1[%c0_106] : memref<1xmemref<?xf64>>
                %c0_107 = arith.constant 0 : index
                %80 = memref.load %alloca_3[%c0_107] : memref<1xi32>
                %c1_i32_108 = arith.constant 1 : i32
                %81 = arith.addi %80, %c1_i32_108 : i32
                %82 = arith.extsi %81 : i32 to i64
                %83 = arith.muli %82, %2 : i64
                %84 = arith.index_cast %83 : i64 to index
                %c1_109 = arith.constant 1 : index
                %c0_110 = arith.constant 0 : index
                %c0_111 = arith.constant 0 : index
                %dim_112 = memref.dim %79, %c0_111 : memref<?xf64>
                %85 = arith.subi %dim_112, %84 : index
                %subview_113 = memref.subview %79[%84] [%85] [%c1_109] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_114 = memref.reinterpret_cast %subview_113 to offset: [0], sizes: [%85], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_115 = arith.constant 0 : index
                %86 = memref.load %alloca_4[%c0_115] : memref<1xi32>
                %c1_i32_116 = arith.constant 1 : i32
                %87 = arith.subi %86, %c1_i32_116 : i32
                %88 = arith.index_cast %87 : i32 to index
                %c0_117 = arith.constant 0 : index
                %dim_118 = memref.dim %reinterpret_cast_114, %c0_117 : memref<?xf64>
                %89 = arith.subi %dim_118, %88 : index
                %c1_119 = arith.constant 1 : index
                %subview_120 = memref.subview %reinterpret_cast_114[%88] [%89] [%c1_119] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_121 = arith.constant 0 : index
                %90 = memref.load %subview_120[%c0_121] : memref<?xf64, strided<[?], offset: ?>>
                %91 = arith.addf %78, %90 : f64
                %c0_122 = arith.constant 0 : index
                %92 = memref.load %alloca_1[%c0_122] : memref<1xmemref<?xf64>>
                %c0_123 = arith.constant 0 : index
                %93 = memref.load %alloca_3[%c0_123] : memref<1xi32>
                %c1_i32_124 = arith.constant 1 : i32
                %94 = arith.addi %93, %c1_i32_124 : i32
                %95 = arith.extsi %94 : i32 to i64
                %96 = arith.muli %95, %2 : i64
                %97 = arith.index_cast %96 : i64 to index
                %c1_125 = arith.constant 1 : index
                %c0_126 = arith.constant 0 : index
                %c0_127 = arith.constant 0 : index
                %dim_128 = memref.dim %92, %c0_127 : memref<?xf64>
                %98 = arith.subi %dim_128, %97 : index
                %subview_129 = memref.subview %92[%97] [%98] [%c1_125] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_130 = memref.reinterpret_cast %subview_129 to offset: [0], sizes: [%98], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_131 = arith.constant 0 : index
                %99 = memref.load %alloca_4[%c0_131] : memref<1xi32>
                %100 = arith.index_cast %99 : i32 to index
                %c0_132 = arith.constant 0 : index
                %dim_133 = memref.dim %reinterpret_cast_130, %c0_132 : memref<?xf64>
                %101 = arith.subi %dim_133, %100 : index
                %c1_134 = arith.constant 1 : index
                %subview_135 = memref.subview %reinterpret_cast_130[%100] [%101] [%c1_134] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_136 = arith.constant 0 : index
                %102 = memref.load %subview_135[%c0_136] : memref<?xf64, strided<[?], offset: ?>>
                %103 = arith.addf %91, %102 : f64
                %c0_137 = arith.constant 0 : index
                %104 = memref.load %alloca_1[%c0_137] : memref<1xmemref<?xf64>>
                %c0_138 = arith.constant 0 : index
                %105 = memref.load %alloca_3[%c0_138] : memref<1xi32>
                %c1_i32_139 = arith.constant 1 : i32
                %106 = arith.addi %105, %c1_i32_139 : i32
                %107 = arith.extsi %106 : i32 to i64
                %108 = arith.muli %107, %2 : i64
                %109 = arith.index_cast %108 : i64 to index
                %c1_140 = arith.constant 1 : index
                %c0_141 = arith.constant 0 : index
                %c0_142 = arith.constant 0 : index
                %dim_143 = memref.dim %104, %c0_142 : memref<?xf64>
                %110 = arith.subi %dim_143, %109 : index
                %subview_144 = memref.subview %104[%109] [%110] [%c1_140] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_145 = memref.reinterpret_cast %subview_144 to offset: [0], sizes: [%110], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_146 = arith.constant 0 : index
                %111 = memref.load %alloca_4[%c0_146] : memref<1xi32>
                %c1_i32_147 = arith.constant 1 : i32
                %112 = arith.addi %111, %c1_i32_147 : i32
                %113 = arith.index_cast %112 : i32 to index
                %c0_148 = arith.constant 0 : index
                %dim_149 = memref.dim %reinterpret_cast_145, %c0_148 : memref<?xf64>
                %114 = arith.subi %dim_149, %113 : index
                %c1_150 = arith.constant 1 : index
                %subview_151 = memref.subview %reinterpret_cast_145[%113] [%114] [%c1_150] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_152 = arith.constant 0 : index
                %115 = memref.load %subview_151[%c0_152] : memref<?xf64, strided<[?], offset: ?>>
                %116 = arith.addf %103, %115 : f64
                %cst = arith.constant 9.000000e+00 : f64
                %117 = arith.divf %116, %cst : f64
                %c0_153 = arith.constant 0 : index
                %118 = memref.load %alloca_1[%c0_153] : memref<1xmemref<?xf64>>
                %c0_154 = arith.constant 0 : index
                %119 = memref.load %alloca_3[%c0_154] : memref<1xi32>
                %120 = arith.extsi %119 : i32 to i64
                %121 = arith.muli %120, %2 : i64
                %122 = arith.index_cast %121 : i64 to index
                %c1_155 = arith.constant 1 : index
                %c0_156 = arith.constant 0 : index
                %c0_157 = arith.constant 0 : index
                %dim_158 = memref.dim %118, %c0_157 : memref<?xf64>
                %123 = arith.subi %dim_158, %122 : index
                %subview_159 = memref.subview %118[%122] [%123] [%c1_155] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_160 = memref.reinterpret_cast %subview_159 to offset: [0], sizes: [%123], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_161 = arith.constant 0 : index
                %124 = memref.load %alloca_4[%c0_161] : memref<1xi32>
                %125 = arith.index_cast %124 : i32 to index
                %c0_162 = arith.constant 0 : index
                %dim_163 = memref.dim %reinterpret_cast_160, %c0_162 : memref<?xf64>
                %126 = arith.subi %dim_163, %125 : index
                %c1_164 = arith.constant 1 : index
                %subview_165 = memref.subview %reinterpret_cast_160[%125] [%126] [%c1_164] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_166 = arith.constant 0 : index
                memref.store %117, %subview_165[%c0_166] : memref<?xf64, strided<[?], offset: ?>>
                %c0_167 = arith.constant 0 : index
                %127 = memref.load %alloca_4[%c0_167] : memref<1xi32>
                %c1_i32_168 = arith.constant 1 : i32
                %128 = arith.addi %127, %c1_i32_168 : i32
                %c0_169 = arith.constant 0 : index
                memref.store %128, %alloca_4[%c0_169] : memref<1xi32>
                scf.yield
              }
            }
            %c0_14 = arith.constant 0 : index
            %5 = memref.load %alloca_3[%c0_14] : memref<1xi32>
            %c1_i32_15 = arith.constant 1 : i32
            %6 = arith.addi %5, %c1_i32_15 : i32
            %c0_16 = arith.constant 0 : index
            memref.store %6, %alloca_3[%c0_16] : memref<1xi32>
            scf.yield
          }
        }
        %c0_10 = arith.constant 0 : index
        %3 = memref.load %alloca_2[%c0_10] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_11 = arith.constant 0 : index
        memref.store %4, %alloca_2[%c0_11] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[65, 0]> {alignment = 1 : i64}
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
    %12 = memref.get_global @".str.2" : memref<2xi8>
    %c0_10 = arith.constant 0 : index
    %c1_11 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %subview_12 = memref.subview %12[%c0_10] [%c2] [%c1_11] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_13 = memref.reinterpret_cast %subview_12 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
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
                  %c2_66 = arith.constant 2 : index
                  %subview_67 = memref.subview %62[%c0_64] [%c2_66] [%c1_65] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
                  %reinterpret_cast_68 = memref.reinterpret_cast %subview_67 to offset: [0], sizes: [%c2_66], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                  %intptr_69 = memref.extract_aligned_pointer_as_index %reinterpret_cast_68 : memref<?xi8> -> index
                  %63 = arith.index_castui %intptr_69 : index to i64
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
    %21 = memref.get_global @".str.2" : memref<2xi8>
    %c0_20 = arith.constant 0 : index
    %c1_21 = arith.constant 1 : index
    %c2_22 = arith.constant 2 : index
    %subview_23 = memref.subview %21[%c0_20] [%c2_22] [%c1_21] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_24 = memref.reinterpret_cast %subview_23 to offset: [0], sizes: [%c2_22], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
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
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_5 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_5] : memref<1xmemref<?xmemref<?xi8>>>
    %c2000_i32 = arith.constant 2000 : i32
    %c0_6 = arith.constant 0 : index
    memref.store %c2000_i32, %alloca_2[%c0_6] : memref<1xi32>
    %c500_i32 = arith.constant 500 : i32
    %c0_7 = arith.constant 0 : index
    memref.store %c500_i32, %alloca_3[%c0_7] : memref<1xi32>
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
    memref.store %8, %alloca_4[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_12] : memref<1xi32>
    %c0_13 = arith.constant 0 : index
    %10 = memref.load %alloca_4[%c0_13] : memref<1xmemref<?xf64>>
    call @init_array(%9, %10) : (i32, memref<?xf64>) -> ()
    %11 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %11() : !llvm.ptr, () -> ()
    %c0_14 = arith.constant 0 : index
    %12 = memref.load %alloca_3[%c0_14] : memref<1xi32>
    %c0_15 = arith.constant 0 : index
    %13 = memref.load %alloca_2[%c0_15] : memref<1xi32>
    %c0_16 = arith.constant 0 : index
    %14 = memref.load %alloca_4[%c0_16] : memref<1xmemref<?xf64>>
    call @kernel_seidel_2d(%12, %13, %14) : (i32, i32, memref<?xf64>) -> ()
    %15 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %15() : !llvm.ptr, () -> ()
    %16 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %16() : !llvm.ptr, () -> ()
    %c0_17 = arith.constant 0 : index
    %17 = memref.load %alloca_2[%c0_17] : memref<1xi32>
    %c0_18 = arith.constant 0 : index
    %18 = memref.load %alloca_4[%c0_18] : memref<1xmemref<?xf64>>
    call @print_array(%17, %18) : (i32, memref<?xf64>) -> ()
    %c0_19 = arith.constant 0 : index
    %19 = memref.load %alloca_4[%c0_19] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %19 : memref<?xf64> -> index
    %20 = arith.index_castui %intptr : index to i64
    %21 = llvm.inttoptr %20 : i64 to !llvm.ptr
    call @free(%21) : (!llvm.ptr) -> ()
    %c0_i32_20 = arith.constant 0 : i32
    %c0_21 = arith.constant 0 : index
    memref.store %c0_i32_20, %alloca_1[%c0_21] : memref<1xi32>
    %c0_22 = arith.constant 0 : index
    %22 = memref.load %alloca_1[%c0_22] : memref<1xi32>
    return %22 : i32
  }
}

