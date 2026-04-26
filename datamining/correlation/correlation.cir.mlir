module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/datamining/correlation/correlation.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
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
    %c1400_i32 = arith.constant 1400 : i32
    %3 = arith.sitofp %c1400_i32 : i32 to f64
    %c0_9 = arith.constant 0 : index
    %4 = memref.load %alloca_1[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    memref.store %3, %4[%c0_10] : memref<?xf64>
    memref.alloca_scope  {
      %c0_i32_11 = arith.constant 0 : i32
      %c0_12 = arith.constant 0 : index
      memref.store %c0_i32_11, %alloca_3[%c0_12] : memref<1xi32>
      scf.while : () -> () {
        %c0_13 = arith.constant 0 : index
        %5 = memref.load %alloca_3[%c0_13] : memref<1xi32>
        %c1400_i32_14 = arith.constant 1400 : i32
        %6 = arith.cmpi slt, %5, %c1400_i32_14 : i32
        scf.condition(%6)
      } do {
        memref.alloca_scope  {
          %c0_i32_15 = arith.constant 0 : i32
          %c0_16 = arith.constant 0 : index
          memref.store %c0_i32_15, %alloca_4[%c0_16] : memref<1xi32>
          scf.while : () -> () {
            %c0_17 = arith.constant 0 : index
            %7 = memref.load %alloca_4[%c0_17] : memref<1xi32>
            %c1200_i32 = arith.constant 1200 : i32
            %8 = arith.cmpi slt, %7, %c1200_i32 : i32
            scf.condition(%8)
          } do {
            %c0_17 = arith.constant 0 : index
            %7 = memref.load %alloca_3[%c0_17] : memref<1xi32>
            %c0_18 = arith.constant 0 : index
            %8 = memref.load %alloca_4[%c0_18] : memref<1xi32>
            %9 = arith.muli %7, %8 : i32
            %10 = arith.sitofp %9 : i32 to f64
            %c1200_i32 = arith.constant 1200 : i32
            %11 = arith.sitofp %c1200_i32 : i32 to f64
            %12 = arith.divf %10, %11 : f64
            %c0_19 = arith.constant 0 : index
            %13 = memref.load %alloca_3[%c0_19] : memref<1xi32>
            %14 = arith.sitofp %13 : i32 to f64
            %15 = arith.addf %12, %14 : f64
            %c0_20 = arith.constant 0 : index
            %16 = memref.load %alloca_2[%c0_20] : memref<1xmemref<?xf64>>
            %c0_21 = arith.constant 0 : index
            %17 = memref.load %alloca_3[%c0_21] : memref<1xi32>
            %18 = arith.extsi %17 : i32 to i64
            %19 = arith.muli %18, %2 : i64
            %20 = arith.index_cast %19 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_22 = arith.constant 0 : index
            %c0_23 = arith.constant 0 : index
            %dim = memref.dim %16, %c0_23 : memref<?xf64>
            %21 = arith.subi %dim, %20 : index
            %subview = memref.subview %16[%20] [%21] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%21], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_24 = arith.constant 0 : index
            %22 = memref.load %alloca_4[%c0_24] : memref<1xi32>
            %23 = arith.index_cast %22 : i32 to index
            %c0_25 = arith.constant 0 : index
            %dim_26 = memref.dim %reinterpret_cast, %c0_25 : memref<?xf64>
            %24 = arith.subi %dim_26, %23 : index
            %c1_27 = arith.constant 1 : index
            %subview_28 = memref.subview %reinterpret_cast[%23] [%24] [%c1_27] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_29 = arith.constant 0 : index
            memref.store %15, %subview_28[%c0_29] : memref<?xf64, strided<[?], offset: ?>>
            %c0_30 = arith.constant 0 : index
            %25 = memref.load %alloca_4[%c0_30] : memref<1xi32>
            %c1_i32_31 = arith.constant 1 : i32
            %26 = arith.addi %25, %c1_i32_31 : i32
            %c0_32 = arith.constant 0 : index
            memref.store %26, %alloca_4[%c0_32] : memref<1xi32>
            scf.yield
          }
        }
        %c0_13 = arith.constant 0 : index
        %5 = memref.load %alloca_3[%c0_13] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %6 = arith.addi %5, %c1_i32 : i32
        %c0_14 = arith.constant 0 : index
        memref.store %6, %alloca_3[%c0_14] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @sqrt(f64) -> f64
  func.func private @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_7 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_8 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_9 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_10 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_10] : memref<1xi32>
    %c0_11 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_11] : memref<1xf64>
    %c0_12 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_12] : memref<1xmemref<?xf64>>
    %c0_13 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_13] : memref<1xmemref<?xf64>>
    %c0_14 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_14] : memref<1xmemref<?xf64>>
    %c0_15 = arith.constant 0 : index
    memref.store %arg6, %alloca_5[%c0_15] : memref<1xmemref<?xf64>>
    %c0_16 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_16] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_17 = arith.constant 0 : index
    %3 = memref.load %alloca[%c0_17] : memref<1xi32>
    %c0_i32_18 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_18 : i32
    %5 = arith.extsi %4 : i32 to i64
    %cst = arith.constant 1.000000e-01 : f64
    %c0_19 = arith.constant 0 : index
    memref.store %cst, %alloca_9[%c0_19] : memref<1xf64>
    memref.alloca_scope  {
      %c0_i32_32 = arith.constant 0 : i32
      %c0_33 = arith.constant 0 : index
      memref.store %c0_i32_32, %alloca_7[%c0_33] : memref<1xi32>
      scf.while : () -> () {
        %c0_34 = arith.constant 0 : index
        %17 = memref.load %alloca_7[%c0_34] : memref<1xi32>
        %c0_35 = arith.constant 0 : index
        %18 = memref.load %alloca[%c0_35] : memref<1xi32>
        %19 = arith.cmpi slt, %17, %18 : i32
        scf.condition(%19)
      } do {
        memref.alloca_scope  {
          %cst_37 = arith.constant 0.000000e+00 : f64
          %c0_38 = arith.constant 0 : index
          %19 = memref.load %alloca_4[%c0_38] : memref<1xmemref<?xf64>>
          %c0_39 = arith.constant 0 : index
          %20 = memref.load %alloca_7[%c0_39] : memref<1xi32>
          %21 = arith.index_cast %20 : i32 to index
          %c0_40 = arith.constant 0 : index
          %dim_41 = memref.dim %19, %c0_40 : memref<?xf64>
          %22 = arith.subi %dim_41, %21 : index
          %c1_42 = arith.constant 1 : index
          %subview_43 = memref.subview %19[%21] [%22] [%c1_42] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_44 = arith.constant 0 : index
          memref.store %cst_37, %subview_43[%c0_44] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_i32_54 = arith.constant 0 : i32
            %c0_55 = arith.constant 0 : index
            memref.store %c0_i32_54, %alloca_6[%c0_55] : memref<1xi32>
            scf.while : () -> () {
              %c0_56 = arith.constant 0 : index
              %30 = memref.load %alloca_6[%c0_56] : memref<1xi32>
              %c0_57 = arith.constant 0 : index
              %31 = memref.load %alloca_0[%c0_57] : memref<1xi32>
              %32 = arith.cmpi slt, %30, %31 : i32
              scf.condition(%32)
            } do {
              %c0_56 = arith.constant 0 : index
              %30 = memref.load %alloca_2[%c0_56] : memref<1xmemref<?xf64>>
              %c0_57 = arith.constant 0 : index
              %31 = memref.load %alloca_6[%c0_57] : memref<1xi32>
              %32 = arith.extsi %31 : i32 to i64
              %33 = arith.muli %32, %2 : i64
              %34 = arith.index_cast %33 : i64 to index
              %c1_58 = arith.constant 1 : index
              %c0_59 = arith.constant 0 : index
              %c0_60 = arith.constant 0 : index
              %dim_61 = memref.dim %30, %c0_60 : memref<?xf64>
              %35 = arith.subi %dim_61, %34 : index
              %subview_62 = memref.subview %30[%34] [%35] [%c1_58] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_63 = memref.reinterpret_cast %subview_62 to offset: [0], sizes: [%35], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_64 = arith.constant 0 : index
              %36 = memref.load %alloca_7[%c0_64] : memref<1xi32>
              %37 = arith.index_cast %36 : i32 to index
              %c0_65 = arith.constant 0 : index
              %dim_66 = memref.dim %reinterpret_cast_63, %c0_65 : memref<?xf64>
              %38 = arith.subi %dim_66, %37 : index
              %c1_67 = arith.constant 1 : index
              %subview_68 = memref.subview %reinterpret_cast_63[%37] [%38] [%c1_67] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_69 = arith.constant 0 : index
              %39 = memref.load %subview_68[%c0_69] : memref<?xf64, strided<[?], offset: ?>>
              %c0_70 = arith.constant 0 : index
              %40 = memref.load %alloca_4[%c0_70] : memref<1xmemref<?xf64>>
              %c0_71 = arith.constant 0 : index
              %41 = memref.load %alloca_7[%c0_71] : memref<1xi32>
              %42 = arith.index_cast %41 : i32 to index
              %c0_72 = arith.constant 0 : index
              %dim_73 = memref.dim %40, %c0_72 : memref<?xf64>
              %43 = arith.subi %dim_73, %42 : index
              %c1_74 = arith.constant 1 : index
              %subview_75 = memref.subview %40[%42] [%43] [%c1_74] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_76 = arith.constant 0 : index
              %44 = memref.load %subview_75[%c0_76] : memref<?xf64, strided<[?], offset: ?>>
              %45 = arith.addf %44, %39 : f64
              %c0_77 = arith.constant 0 : index
              memref.store %45, %subview_75[%c0_77] : memref<?xf64, strided<[?], offset: ?>>
              %c0_78 = arith.constant 0 : index
              %46 = memref.load %alloca_6[%c0_78] : memref<1xi32>
              %c1_i32_79 = arith.constant 1 : i32
              %47 = arith.addi %46, %c1_i32_79 : i32
              %c0_80 = arith.constant 0 : index
              memref.store %47, %alloca_6[%c0_80] : memref<1xi32>
              scf.yield
            }
          }
          %c0_45 = arith.constant 0 : index
          %23 = memref.load %alloca_1[%c0_45] : memref<1xf64>
          %c0_46 = arith.constant 0 : index
          %24 = memref.load %alloca_4[%c0_46] : memref<1xmemref<?xf64>>
          %c0_47 = arith.constant 0 : index
          %25 = memref.load %alloca_7[%c0_47] : memref<1xi32>
          %26 = arith.index_cast %25 : i32 to index
          %c0_48 = arith.constant 0 : index
          %dim_49 = memref.dim %24, %c0_48 : memref<?xf64>
          %27 = arith.subi %dim_49, %26 : index
          %c1_50 = arith.constant 1 : index
          %subview_51 = memref.subview %24[%26] [%27] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_52 = arith.constant 0 : index
          %28 = memref.load %subview_51[%c0_52] : memref<?xf64, strided<[?], offset: ?>>
          %29 = arith.divf %28, %23 : f64
          %c0_53 = arith.constant 0 : index
          memref.store %29, %subview_51[%c0_53] : memref<?xf64, strided<[?], offset: ?>>
        }
        %c0_34 = arith.constant 0 : index
        %17 = memref.load %alloca_7[%c0_34] : memref<1xi32>
        %c1_i32_35 = arith.constant 1 : i32
        %18 = arith.addi %17, %c1_i32_35 : i32
        %c0_36 = arith.constant 0 : index
        memref.store %18, %alloca_7[%c0_36] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_32 = arith.constant 0 : i32
      %c0_33 = arith.constant 0 : index
      memref.store %c0_i32_32, %alloca_7[%c0_33] : memref<1xi32>
      scf.while : () -> () {
        %c0_34 = arith.constant 0 : index
        %17 = memref.load %alloca_7[%c0_34] : memref<1xi32>
        %c0_35 = arith.constant 0 : index
        %18 = memref.load %alloca[%c0_35] : memref<1xi32>
        %19 = arith.cmpi slt, %17, %18 : i32
        scf.condition(%19)
      } do {
        memref.alloca_scope  {
          %cst_37 = arith.constant 0.000000e+00 : f64
          %c0_38 = arith.constant 0 : index
          %19 = memref.load %alloca_5[%c0_38] : memref<1xmemref<?xf64>>
          %c0_39 = arith.constant 0 : index
          %20 = memref.load %alloca_7[%c0_39] : memref<1xi32>
          %21 = arith.index_cast %20 : i32 to index
          %c0_40 = arith.constant 0 : index
          %dim_41 = memref.dim %19, %c0_40 : memref<?xf64>
          %22 = arith.subi %dim_41, %21 : index
          %c1_42 = arith.constant 1 : index
          %subview_43 = memref.subview %19[%21] [%22] [%c1_42] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_44 = arith.constant 0 : index
          memref.store %cst_37, %subview_43[%c0_44] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_i32_83 = arith.constant 0 : i32
            %c0_84 = arith.constant 0 : index
            memref.store %c0_i32_83, %alloca_6[%c0_84] : memref<1xi32>
            scf.while : () -> () {
              %c0_85 = arith.constant 0 : index
              %52 = memref.load %alloca_6[%c0_85] : memref<1xi32>
              %c0_86 = arith.constant 0 : index
              %53 = memref.load %alloca_0[%c0_86] : memref<1xi32>
              %54 = arith.cmpi slt, %52, %53 : i32
              scf.condition(%54)
            } do {
              %c0_85 = arith.constant 0 : index
              %52 = memref.load %alloca_2[%c0_85] : memref<1xmemref<?xf64>>
              %c0_86 = arith.constant 0 : index
              %53 = memref.load %alloca_6[%c0_86] : memref<1xi32>
              %54 = arith.extsi %53 : i32 to i64
              %55 = arith.muli %54, %2 : i64
              %56 = arith.index_cast %55 : i64 to index
              %c1_87 = arith.constant 1 : index
              %c0_88 = arith.constant 0 : index
              %c0_89 = arith.constant 0 : index
              %dim_90 = memref.dim %52, %c0_89 : memref<?xf64>
              %57 = arith.subi %dim_90, %56 : index
              %subview_91 = memref.subview %52[%56] [%57] [%c1_87] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_92 = memref.reinterpret_cast %subview_91 to offset: [0], sizes: [%57], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_93 = arith.constant 0 : index
              %58 = memref.load %alloca_7[%c0_93] : memref<1xi32>
              %59 = arith.index_cast %58 : i32 to index
              %c0_94 = arith.constant 0 : index
              %dim_95 = memref.dim %reinterpret_cast_92, %c0_94 : memref<?xf64>
              %60 = arith.subi %dim_95, %59 : index
              %c1_96 = arith.constant 1 : index
              %subview_97 = memref.subview %reinterpret_cast_92[%59] [%60] [%c1_96] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_98 = arith.constant 0 : index
              %61 = memref.load %subview_97[%c0_98] : memref<?xf64, strided<[?], offset: ?>>
              %c0_99 = arith.constant 0 : index
              %62 = memref.load %alloca_4[%c0_99] : memref<1xmemref<?xf64>>
              %c0_100 = arith.constant 0 : index
              %63 = memref.load %alloca_7[%c0_100] : memref<1xi32>
              %64 = arith.index_cast %63 : i32 to index
              %c0_101 = arith.constant 0 : index
              %dim_102 = memref.dim %62, %c0_101 : memref<?xf64>
              %65 = arith.subi %dim_102, %64 : index
              %c1_103 = arith.constant 1 : index
              %subview_104 = memref.subview %62[%64] [%65] [%c1_103] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_105 = arith.constant 0 : index
              %66 = memref.load %subview_104[%c0_105] : memref<?xf64, strided<[?], offset: ?>>
              %67 = arith.subf %61, %66 : f64
              %c0_106 = arith.constant 0 : index
              %68 = memref.load %alloca_2[%c0_106] : memref<1xmemref<?xf64>>
              %c0_107 = arith.constant 0 : index
              %69 = memref.load %alloca_6[%c0_107] : memref<1xi32>
              %70 = arith.extsi %69 : i32 to i64
              %71 = arith.muli %70, %2 : i64
              %72 = arith.index_cast %71 : i64 to index
              %c1_108 = arith.constant 1 : index
              %c0_109 = arith.constant 0 : index
              %c0_110 = arith.constant 0 : index
              %dim_111 = memref.dim %68, %c0_110 : memref<?xf64>
              %73 = arith.subi %dim_111, %72 : index
              %subview_112 = memref.subview %68[%72] [%73] [%c1_108] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_113 = memref.reinterpret_cast %subview_112 to offset: [0], sizes: [%73], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_114 = arith.constant 0 : index
              %74 = memref.load %alloca_7[%c0_114] : memref<1xi32>
              %75 = arith.index_cast %74 : i32 to index
              %c0_115 = arith.constant 0 : index
              %dim_116 = memref.dim %reinterpret_cast_113, %c0_115 : memref<?xf64>
              %76 = arith.subi %dim_116, %75 : index
              %c1_117 = arith.constant 1 : index
              %subview_118 = memref.subview %reinterpret_cast_113[%75] [%76] [%c1_117] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_119 = arith.constant 0 : index
              %77 = memref.load %subview_118[%c0_119] : memref<?xf64, strided<[?], offset: ?>>
              %c0_120 = arith.constant 0 : index
              %78 = memref.load %alloca_4[%c0_120] : memref<1xmemref<?xf64>>
              %c0_121 = arith.constant 0 : index
              %79 = memref.load %alloca_7[%c0_121] : memref<1xi32>
              %80 = arith.index_cast %79 : i32 to index
              %c0_122 = arith.constant 0 : index
              %dim_123 = memref.dim %78, %c0_122 : memref<?xf64>
              %81 = arith.subi %dim_123, %80 : index
              %c1_124 = arith.constant 1 : index
              %subview_125 = memref.subview %78[%80] [%81] [%c1_124] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_126 = arith.constant 0 : index
              %82 = memref.load %subview_125[%c0_126] : memref<?xf64, strided<[?], offset: ?>>
              %83 = arith.subf %77, %82 : f64
              %84 = arith.mulf %67, %83 : f64
              %c0_127 = arith.constant 0 : index
              %85 = memref.load %alloca_5[%c0_127] : memref<1xmemref<?xf64>>
              %c0_128 = arith.constant 0 : index
              %86 = memref.load %alloca_7[%c0_128] : memref<1xi32>
              %87 = arith.index_cast %86 : i32 to index
              %c0_129 = arith.constant 0 : index
              %dim_130 = memref.dim %85, %c0_129 : memref<?xf64>
              %88 = arith.subi %dim_130, %87 : index
              %c1_131 = arith.constant 1 : index
              %subview_132 = memref.subview %85[%87] [%88] [%c1_131] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_133 = arith.constant 0 : index
              %89 = memref.load %subview_132[%c0_133] : memref<?xf64, strided<[?], offset: ?>>
              %90 = arith.addf %89, %84 : f64
              %c0_134 = arith.constant 0 : index
              memref.store %90, %subview_132[%c0_134] : memref<?xf64, strided<[?], offset: ?>>
              %c0_135 = arith.constant 0 : index
              %91 = memref.load %alloca_6[%c0_135] : memref<1xi32>
              %c1_i32_136 = arith.constant 1 : i32
              %92 = arith.addi %91, %c1_i32_136 : i32
              %c0_137 = arith.constant 0 : index
              memref.store %92, %alloca_6[%c0_137] : memref<1xi32>
              scf.yield
            }
          }
          %c0_45 = arith.constant 0 : index
          %23 = memref.load %alloca_1[%c0_45] : memref<1xf64>
          %c0_46 = arith.constant 0 : index
          %24 = memref.load %alloca_5[%c0_46] : memref<1xmemref<?xf64>>
          %c0_47 = arith.constant 0 : index
          %25 = memref.load %alloca_7[%c0_47] : memref<1xi32>
          %26 = arith.index_cast %25 : i32 to index
          %c0_48 = arith.constant 0 : index
          %dim_49 = memref.dim %24, %c0_48 : memref<?xf64>
          %27 = arith.subi %dim_49, %26 : index
          %c1_50 = arith.constant 1 : index
          %subview_51 = memref.subview %24[%26] [%27] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_52 = arith.constant 0 : index
          %28 = memref.load %subview_51[%c0_52] : memref<?xf64, strided<[?], offset: ?>>
          %29 = arith.divf %28, %23 : f64
          %c0_53 = arith.constant 0 : index
          memref.store %29, %subview_51[%c0_53] : memref<?xf64, strided<[?], offset: ?>>
          %c0_54 = arith.constant 0 : index
          %30 = memref.load %alloca_5[%c0_54] : memref<1xmemref<?xf64>>
          %c0_55 = arith.constant 0 : index
          %31 = memref.load %alloca_7[%c0_55] : memref<1xi32>
          %32 = arith.index_cast %31 : i32 to index
          %c0_56 = arith.constant 0 : index
          %dim_57 = memref.dim %30, %c0_56 : memref<?xf64>
          %33 = arith.subi %dim_57, %32 : index
          %c1_58 = arith.constant 1 : index
          %subview_59 = memref.subview %30[%32] [%33] [%c1_58] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_60 = arith.constant 0 : index
          %34 = memref.load %subview_59[%c0_60] : memref<?xf64, strided<[?], offset: ?>>
          %35 = func.call @sqrt(%34) : (f64) -> f64
          %c0_61 = arith.constant 0 : index
          %36 = memref.load %alloca_5[%c0_61] : memref<1xmemref<?xf64>>
          %c0_62 = arith.constant 0 : index
          %37 = memref.load %alloca_7[%c0_62] : memref<1xi32>
          %38 = arith.index_cast %37 : i32 to index
          %c0_63 = arith.constant 0 : index
          %dim_64 = memref.dim %36, %c0_63 : memref<?xf64>
          %39 = arith.subi %dim_64, %38 : index
          %c1_65 = arith.constant 1 : index
          %subview_66 = memref.subview %36[%38] [%39] [%c1_65] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_67 = arith.constant 0 : index
          memref.store %35, %subview_66[%c0_67] : memref<?xf64, strided<[?], offset: ?>>
          %c0_68 = arith.constant 0 : index
          %40 = memref.load %alloca_5[%c0_68] : memref<1xmemref<?xf64>>
          %c0_69 = arith.constant 0 : index
          %41 = memref.load %alloca_7[%c0_69] : memref<1xi32>
          %42 = arith.index_cast %41 : i32 to index
          %c0_70 = arith.constant 0 : index
          %dim_71 = memref.dim %40, %c0_70 : memref<?xf64>
          %43 = arith.subi %dim_71, %42 : index
          %c1_72 = arith.constant 1 : index
          %subview_73 = memref.subview %40[%42] [%43] [%c1_72] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_74 = arith.constant 0 : index
          %44 = memref.load %subview_73[%c0_74] : memref<?xf64, strided<[?], offset: ?>>
          %c0_75 = arith.constant 0 : index
          %45 = memref.load %alloca_9[%c0_75] : memref<1xf64>
          %46 = arith.cmpf ole, %44, %45 : f64
          %47 = scf.if %46 -> (f64) {
            %cst_83 = arith.constant 1.000000e+00 : f64
            scf.yield %cst_83 : f64
          } else {
            %c0_83 = arith.constant 0 : index
            %52 = memref.load %alloca_5[%c0_83] : memref<1xmemref<?xf64>>
            %c0_84 = arith.constant 0 : index
            %53 = memref.load %alloca_7[%c0_84] : memref<1xi32>
            %54 = arith.index_cast %53 : i32 to index
            %c0_85 = arith.constant 0 : index
            %dim_86 = memref.dim %52, %c0_85 : memref<?xf64>
            %55 = arith.subi %dim_86, %54 : index
            %c1_87 = arith.constant 1 : index
            %subview_88 = memref.subview %52[%54] [%55] [%c1_87] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_89 = arith.constant 0 : index
            %56 = memref.load %subview_88[%c0_89] : memref<?xf64, strided<[?], offset: ?>>
            scf.yield %56 : f64
          }
          %c0_76 = arith.constant 0 : index
          %48 = memref.load %alloca_5[%c0_76] : memref<1xmemref<?xf64>>
          %c0_77 = arith.constant 0 : index
          %49 = memref.load %alloca_7[%c0_77] : memref<1xi32>
          %50 = arith.index_cast %49 : i32 to index
          %c0_78 = arith.constant 0 : index
          %dim_79 = memref.dim %48, %c0_78 : memref<?xf64>
          %51 = arith.subi %dim_79, %50 : index
          %c1_80 = arith.constant 1 : index
          %subview_81 = memref.subview %48[%50] [%51] [%c1_80] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_82 = arith.constant 0 : index
          memref.store %47, %subview_81[%c0_82] : memref<?xf64, strided<[?], offset: ?>>
        }
        %c0_34 = arith.constant 0 : index
        %17 = memref.load %alloca_7[%c0_34] : memref<1xi32>
        %c1_i32_35 = arith.constant 1 : i32
        %18 = arith.addi %17, %c1_i32_35 : i32
        %c0_36 = arith.constant 0 : index
        memref.store %18, %alloca_7[%c0_36] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_32 = arith.constant 0 : i32
      %c0_33 = arith.constant 0 : index
      memref.store %c0_i32_32, %alloca_6[%c0_33] : memref<1xi32>
      scf.while : () -> () {
        %c0_34 = arith.constant 0 : index
        %17 = memref.load %alloca_6[%c0_34] : memref<1xi32>
        %c0_35 = arith.constant 0 : index
        %18 = memref.load %alloca_0[%c0_35] : memref<1xi32>
        %19 = arith.cmpi slt, %17, %18 : i32
        scf.condition(%19)
      } do {
        memref.alloca_scope  {
          %c0_i32_37 = arith.constant 0 : i32
          %c0_38 = arith.constant 0 : index
          memref.store %c0_i32_37, %alloca_7[%c0_38] : memref<1xi32>
          scf.while : () -> () {
            %c0_39 = arith.constant 0 : index
            %19 = memref.load %alloca_7[%c0_39] : memref<1xi32>
            %c0_40 = arith.constant 0 : index
            %20 = memref.load %alloca[%c0_40] : memref<1xi32>
            %21 = arith.cmpi slt, %19, %20 : i32
            scf.condition(%21)
          } do {
            memref.alloca_scope  {
              %c0_42 = arith.constant 0 : index
              %21 = memref.load %alloca_4[%c0_42] : memref<1xmemref<?xf64>>
              %c0_43 = arith.constant 0 : index
              %22 = memref.load %alloca_7[%c0_43] : memref<1xi32>
              %23 = arith.index_cast %22 : i32 to index
              %c0_44 = arith.constant 0 : index
              %dim_45 = memref.dim %21, %c0_44 : memref<?xf64>
              %24 = arith.subi %dim_45, %23 : index
              %c1_46 = arith.constant 1 : index
              %subview_47 = memref.subview %21[%23] [%24] [%c1_46] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_48 = arith.constant 0 : index
              %25 = memref.load %subview_47[%c0_48] : memref<?xf64, strided<[?], offset: ?>>
              %c0_49 = arith.constant 0 : index
              %26 = memref.load %alloca_2[%c0_49] : memref<1xmemref<?xf64>>
              %c0_50 = arith.constant 0 : index
              %27 = memref.load %alloca_6[%c0_50] : memref<1xi32>
              %28 = arith.extsi %27 : i32 to i64
              %29 = arith.muli %28, %2 : i64
              %30 = arith.index_cast %29 : i64 to index
              %c1_51 = arith.constant 1 : index
              %c0_52 = arith.constant 0 : index
              %c0_53 = arith.constant 0 : index
              %dim_54 = memref.dim %26, %c0_53 : memref<?xf64>
              %31 = arith.subi %dim_54, %30 : index
              %subview_55 = memref.subview %26[%30] [%31] [%c1_51] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_56 = memref.reinterpret_cast %subview_55 to offset: [0], sizes: [%31], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_57 = arith.constant 0 : index
              %32 = memref.load %alloca_7[%c0_57] : memref<1xi32>
              %33 = arith.index_cast %32 : i32 to index
              %c0_58 = arith.constant 0 : index
              %dim_59 = memref.dim %reinterpret_cast_56, %c0_58 : memref<?xf64>
              %34 = arith.subi %dim_59, %33 : index
              %c1_60 = arith.constant 1 : index
              %subview_61 = memref.subview %reinterpret_cast_56[%33] [%34] [%c1_60] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_62 = arith.constant 0 : index
              %35 = memref.load %subview_61[%c0_62] : memref<?xf64, strided<[?], offset: ?>>
              %36 = arith.subf %35, %25 : f64
              %c0_63 = arith.constant 0 : index
              memref.store %36, %subview_61[%c0_63] : memref<?xf64, strided<[?], offset: ?>>
              %c0_64 = arith.constant 0 : index
              %37 = memref.load %alloca_1[%c0_64] : memref<1xf64>
              %38 = func.call @sqrt(%37) : (f64) -> f64
              %c0_65 = arith.constant 0 : index
              %39 = memref.load %alloca_5[%c0_65] : memref<1xmemref<?xf64>>
              %c0_66 = arith.constant 0 : index
              %40 = memref.load %alloca_7[%c0_66] : memref<1xi32>
              %41 = arith.index_cast %40 : i32 to index
              %c0_67 = arith.constant 0 : index
              %dim_68 = memref.dim %39, %c0_67 : memref<?xf64>
              %42 = arith.subi %dim_68, %41 : index
              %c1_69 = arith.constant 1 : index
              %subview_70 = memref.subview %39[%41] [%42] [%c1_69] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_71 = arith.constant 0 : index
              %43 = memref.load %subview_70[%c0_71] : memref<?xf64, strided<[?], offset: ?>>
              %44 = arith.mulf %38, %43 : f64
              %c0_72 = arith.constant 0 : index
              %45 = memref.load %alloca_2[%c0_72] : memref<1xmemref<?xf64>>
              %c0_73 = arith.constant 0 : index
              %46 = memref.load %alloca_6[%c0_73] : memref<1xi32>
              %47 = arith.extsi %46 : i32 to i64
              %48 = arith.muli %47, %2 : i64
              %49 = arith.index_cast %48 : i64 to index
              %c1_74 = arith.constant 1 : index
              %c0_75 = arith.constant 0 : index
              %c0_76 = arith.constant 0 : index
              %dim_77 = memref.dim %45, %c0_76 : memref<?xf64>
              %50 = arith.subi %dim_77, %49 : index
              %subview_78 = memref.subview %45[%49] [%50] [%c1_74] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_79 = memref.reinterpret_cast %subview_78 to offset: [0], sizes: [%50], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_80 = arith.constant 0 : index
              %51 = memref.load %alloca_7[%c0_80] : memref<1xi32>
              %52 = arith.index_cast %51 : i32 to index
              %c0_81 = arith.constant 0 : index
              %dim_82 = memref.dim %reinterpret_cast_79, %c0_81 : memref<?xf64>
              %53 = arith.subi %dim_82, %52 : index
              %c1_83 = arith.constant 1 : index
              %subview_84 = memref.subview %reinterpret_cast_79[%52] [%53] [%c1_83] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_85 = arith.constant 0 : index
              %54 = memref.load %subview_84[%c0_85] : memref<?xf64, strided<[?], offset: ?>>
              %55 = arith.divf %54, %44 : f64
              %c0_86 = arith.constant 0 : index
              memref.store %55, %subview_84[%c0_86] : memref<?xf64, strided<[?], offset: ?>>
            }
            %c0_39 = arith.constant 0 : index
            %19 = memref.load %alloca_7[%c0_39] : memref<1xi32>
            %c1_i32_40 = arith.constant 1 : i32
            %20 = arith.addi %19, %c1_i32_40 : i32
            %c0_41 = arith.constant 0 : index
            memref.store %20, %alloca_7[%c0_41] : memref<1xi32>
            scf.yield
          }
        }
        %c0_34 = arith.constant 0 : index
        %17 = memref.load %alloca_6[%c0_34] : memref<1xi32>
        %c1_i32_35 = arith.constant 1 : i32
        %18 = arith.addi %17, %c1_i32_35 : i32
        %c0_36 = arith.constant 0 : index
        memref.store %18, %alloca_6[%c0_36] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_32 = arith.constant 0 : i32
      %c0_33 = arith.constant 0 : index
      memref.store %c0_i32_32, %alloca_6[%c0_33] : memref<1xi32>
      scf.while : () -> () {
        %c0_34 = arith.constant 0 : index
        %17 = memref.load %alloca_6[%c0_34] : memref<1xi32>
        %c0_35 = arith.constant 0 : index
        %18 = memref.load %alloca[%c0_35] : memref<1xi32>
        %c1_i32_36 = arith.constant 1 : i32
        %19 = arith.subi %18, %c1_i32_36 : i32
        %20 = arith.cmpi slt, %17, %19 : i32
        scf.condition(%20)
      } do {
        memref.alloca_scope  {
          %cst_37 = arith.constant 1.000000e+00 : f64
          %c0_38 = arith.constant 0 : index
          %19 = memref.load %alloca_3[%c0_38] : memref<1xmemref<?xf64>>
          %c0_39 = arith.constant 0 : index
          %20 = memref.load %alloca_6[%c0_39] : memref<1xi32>
          %21 = arith.extsi %20 : i32 to i64
          %22 = arith.muli %21, %5 : i64
          %23 = arith.index_cast %22 : i64 to index
          %c1_40 = arith.constant 1 : index
          %c0_41 = arith.constant 0 : index
          %c0_42 = arith.constant 0 : index
          %dim_43 = memref.dim %19, %c0_42 : memref<?xf64>
          %24 = arith.subi %dim_43, %23 : index
          %subview_44 = memref.subview %19[%23] [%24] [%c1_40] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %reinterpret_cast_45 = memref.reinterpret_cast %subview_44 to offset: [0], sizes: [%24], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
          %c0_46 = arith.constant 0 : index
          %25 = memref.load %alloca_6[%c0_46] : memref<1xi32>
          %26 = arith.index_cast %25 : i32 to index
          %c0_47 = arith.constant 0 : index
          %dim_48 = memref.dim %reinterpret_cast_45, %c0_47 : memref<?xf64>
          %27 = arith.subi %dim_48, %26 : index
          %c1_49 = arith.constant 1 : index
          %subview_50 = memref.subview %reinterpret_cast_45[%26] [%27] [%c1_49] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_51 = arith.constant 0 : index
          memref.store %cst_37, %subview_50[%c0_51] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_52 = arith.constant 0 : index
            %28 = memref.load %alloca_6[%c0_52] : memref<1xi32>
            %c1_i32_53 = arith.constant 1 : i32
            %29 = arith.addi %28, %c1_i32_53 : i32
            %c0_54 = arith.constant 0 : index
            memref.store %29, %alloca_7[%c0_54] : memref<1xi32>
            scf.while : () -> () {
              %c0_55 = arith.constant 0 : index
              %30 = memref.load %alloca_7[%c0_55] : memref<1xi32>
              %c0_56 = arith.constant 0 : index
              %31 = memref.load %alloca[%c0_56] : memref<1xi32>
              %32 = arith.cmpi slt, %30, %31 : i32
              scf.condition(%32)
            } do {
              memref.alloca_scope  {
                %cst_58 = arith.constant 0.000000e+00 : f64
                %c0_59 = arith.constant 0 : index
                %32 = memref.load %alloca_3[%c0_59] : memref<1xmemref<?xf64>>
                %c0_60 = arith.constant 0 : index
                %33 = memref.load %alloca_6[%c0_60] : memref<1xi32>
                %34 = arith.extsi %33 : i32 to i64
                %35 = arith.muli %34, %5 : i64
                %36 = arith.index_cast %35 : i64 to index
                %c1_61 = arith.constant 1 : index
                %c0_62 = arith.constant 0 : index
                %c0_63 = arith.constant 0 : index
                %dim_64 = memref.dim %32, %c0_63 : memref<?xf64>
                %37 = arith.subi %dim_64, %36 : index
                %subview_65 = memref.subview %32[%36] [%37] [%c1_61] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_66 = memref.reinterpret_cast %subview_65 to offset: [0], sizes: [%37], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_67 = arith.constant 0 : index
                %38 = memref.load %alloca_7[%c0_67] : memref<1xi32>
                %39 = arith.index_cast %38 : i32 to index
                %c0_68 = arith.constant 0 : index
                %dim_69 = memref.dim %reinterpret_cast_66, %c0_68 : memref<?xf64>
                %40 = arith.subi %dim_69, %39 : index
                %c1_70 = arith.constant 1 : index
                %subview_71 = memref.subview %reinterpret_cast_66[%39] [%40] [%c1_70] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_72 = arith.constant 0 : index
                memref.store %cst_58, %subview_71[%c0_72] : memref<?xf64, strided<[?], offset: ?>>
                memref.alloca_scope  {
                  %c0_i32_101 = arith.constant 0 : i32
                  %c0_102 = arith.constant 0 : index
                  memref.store %c0_i32_101, %alloca_8[%c0_102] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_103 = arith.constant 0 : index
                    %60 = memref.load %alloca_8[%c0_103] : memref<1xi32>
                    %c0_104 = arith.constant 0 : index
                    %61 = memref.load %alloca_0[%c0_104] : memref<1xi32>
                    %62 = arith.cmpi slt, %60, %61 : i32
                    scf.condition(%62)
                  } do {
                    %c0_103 = arith.constant 0 : index
                    %60 = memref.load %alloca_2[%c0_103] : memref<1xmemref<?xf64>>
                    %c0_104 = arith.constant 0 : index
                    %61 = memref.load %alloca_8[%c0_104] : memref<1xi32>
                    %62 = arith.extsi %61 : i32 to i64
                    %63 = arith.muli %62, %2 : i64
                    %64 = arith.index_cast %63 : i64 to index
                    %c1_105 = arith.constant 1 : index
                    %c0_106 = arith.constant 0 : index
                    %c0_107 = arith.constant 0 : index
                    %dim_108 = memref.dim %60, %c0_107 : memref<?xf64>
                    %65 = arith.subi %dim_108, %64 : index
                    %subview_109 = memref.subview %60[%64] [%65] [%c1_105] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_110 = memref.reinterpret_cast %subview_109 to offset: [0], sizes: [%65], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_111 = arith.constant 0 : index
                    %66 = memref.load %alloca_6[%c0_111] : memref<1xi32>
                    %67 = arith.index_cast %66 : i32 to index
                    %c0_112 = arith.constant 0 : index
                    %dim_113 = memref.dim %reinterpret_cast_110, %c0_112 : memref<?xf64>
                    %68 = arith.subi %dim_113, %67 : index
                    %c1_114 = arith.constant 1 : index
                    %subview_115 = memref.subview %reinterpret_cast_110[%67] [%68] [%c1_114] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_116 = arith.constant 0 : index
                    %69 = memref.load %subview_115[%c0_116] : memref<?xf64, strided<[?], offset: ?>>
                    %c0_117 = arith.constant 0 : index
                    %70 = memref.load %alloca_2[%c0_117] : memref<1xmemref<?xf64>>
                    %c0_118 = arith.constant 0 : index
                    %71 = memref.load %alloca_8[%c0_118] : memref<1xi32>
                    %72 = arith.extsi %71 : i32 to i64
                    %73 = arith.muli %72, %2 : i64
                    %74 = arith.index_cast %73 : i64 to index
                    %c1_119 = arith.constant 1 : index
                    %c0_120 = arith.constant 0 : index
                    %c0_121 = arith.constant 0 : index
                    %dim_122 = memref.dim %70, %c0_121 : memref<?xf64>
                    %75 = arith.subi %dim_122, %74 : index
                    %subview_123 = memref.subview %70[%74] [%75] [%c1_119] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_124 = memref.reinterpret_cast %subview_123 to offset: [0], sizes: [%75], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_125 = arith.constant 0 : index
                    %76 = memref.load %alloca_7[%c0_125] : memref<1xi32>
                    %77 = arith.index_cast %76 : i32 to index
                    %c0_126 = arith.constant 0 : index
                    %dim_127 = memref.dim %reinterpret_cast_124, %c0_126 : memref<?xf64>
                    %78 = arith.subi %dim_127, %77 : index
                    %c1_128 = arith.constant 1 : index
                    %subview_129 = memref.subview %reinterpret_cast_124[%77] [%78] [%c1_128] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_130 = arith.constant 0 : index
                    %79 = memref.load %subview_129[%c0_130] : memref<?xf64, strided<[?], offset: ?>>
                    %80 = arith.mulf %69, %79 : f64
                    %c0_131 = arith.constant 0 : index
                    %81 = memref.load %alloca_3[%c0_131] : memref<1xmemref<?xf64>>
                    %c0_132 = arith.constant 0 : index
                    %82 = memref.load %alloca_6[%c0_132] : memref<1xi32>
                    %83 = arith.extsi %82 : i32 to i64
                    %84 = arith.muli %83, %5 : i64
                    %85 = arith.index_cast %84 : i64 to index
                    %c1_133 = arith.constant 1 : index
                    %c0_134 = arith.constant 0 : index
                    %c0_135 = arith.constant 0 : index
                    %dim_136 = memref.dim %81, %c0_135 : memref<?xf64>
                    %86 = arith.subi %dim_136, %85 : index
                    %subview_137 = memref.subview %81[%85] [%86] [%c1_133] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_138 = memref.reinterpret_cast %subview_137 to offset: [0], sizes: [%86], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_139 = arith.constant 0 : index
                    %87 = memref.load %alloca_7[%c0_139] : memref<1xi32>
                    %88 = arith.index_cast %87 : i32 to index
                    %c0_140 = arith.constant 0 : index
                    %dim_141 = memref.dim %reinterpret_cast_138, %c0_140 : memref<?xf64>
                    %89 = arith.subi %dim_141, %88 : index
                    %c1_142 = arith.constant 1 : index
                    %subview_143 = memref.subview %reinterpret_cast_138[%88] [%89] [%c1_142] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_144 = arith.constant 0 : index
                    %90 = memref.load %subview_143[%c0_144] : memref<?xf64, strided<[?], offset: ?>>
                    %91 = arith.addf %90, %80 : f64
                    %c0_145 = arith.constant 0 : index
                    memref.store %91, %subview_143[%c0_145] : memref<?xf64, strided<[?], offset: ?>>
                    %c0_146 = arith.constant 0 : index
                    %92 = memref.load %alloca_8[%c0_146] : memref<1xi32>
                    %c1_i32_147 = arith.constant 1 : i32
                    %93 = arith.addi %92, %c1_i32_147 : i32
                    %c0_148 = arith.constant 0 : index
                    memref.store %93, %alloca_8[%c0_148] : memref<1xi32>
                    scf.yield
                  }
                }
                %c0_73 = arith.constant 0 : index
                %41 = memref.load %alloca_3[%c0_73] : memref<1xmemref<?xf64>>
                %c0_74 = arith.constant 0 : index
                %42 = memref.load %alloca_6[%c0_74] : memref<1xi32>
                %43 = arith.extsi %42 : i32 to i64
                %44 = arith.muli %43, %5 : i64
                %45 = arith.index_cast %44 : i64 to index
                %c1_75 = arith.constant 1 : index
                %c0_76 = arith.constant 0 : index
                %c0_77 = arith.constant 0 : index
                %dim_78 = memref.dim %41, %c0_77 : memref<?xf64>
                %46 = arith.subi %dim_78, %45 : index
                %subview_79 = memref.subview %41[%45] [%46] [%c1_75] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_80 = memref.reinterpret_cast %subview_79 to offset: [0], sizes: [%46], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_81 = arith.constant 0 : index
                %47 = memref.load %alloca_7[%c0_81] : memref<1xi32>
                %48 = arith.index_cast %47 : i32 to index
                %c0_82 = arith.constant 0 : index
                %dim_83 = memref.dim %reinterpret_cast_80, %c0_82 : memref<?xf64>
                %49 = arith.subi %dim_83, %48 : index
                %c1_84 = arith.constant 1 : index
                %subview_85 = memref.subview %reinterpret_cast_80[%48] [%49] [%c1_84] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_86 = arith.constant 0 : index
                %50 = memref.load %subview_85[%c0_86] : memref<?xf64, strided<[?], offset: ?>>
                %c0_87 = arith.constant 0 : index
                %51 = memref.load %alloca_3[%c0_87] : memref<1xmemref<?xf64>>
                %c0_88 = arith.constant 0 : index
                %52 = memref.load %alloca_7[%c0_88] : memref<1xi32>
                %53 = arith.extsi %52 : i32 to i64
                %54 = arith.muli %53, %5 : i64
                %55 = arith.index_cast %54 : i64 to index
                %c1_89 = arith.constant 1 : index
                %c0_90 = arith.constant 0 : index
                %c0_91 = arith.constant 0 : index
                %dim_92 = memref.dim %51, %c0_91 : memref<?xf64>
                %56 = arith.subi %dim_92, %55 : index
                %subview_93 = memref.subview %51[%55] [%56] [%c1_89] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_94 = memref.reinterpret_cast %subview_93 to offset: [0], sizes: [%56], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_95 = arith.constant 0 : index
                %57 = memref.load %alloca_6[%c0_95] : memref<1xi32>
                %58 = arith.index_cast %57 : i32 to index
                %c0_96 = arith.constant 0 : index
                %dim_97 = memref.dim %reinterpret_cast_94, %c0_96 : memref<?xf64>
                %59 = arith.subi %dim_97, %58 : index
                %c1_98 = arith.constant 1 : index
                %subview_99 = memref.subview %reinterpret_cast_94[%58] [%59] [%c1_98] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_100 = arith.constant 0 : index
                memref.store %50, %subview_99[%c0_100] : memref<?xf64, strided<[?], offset: ?>>
              }
              %c0_55 = arith.constant 0 : index
              %30 = memref.load %alloca_7[%c0_55] : memref<1xi32>
              %c1_i32_56 = arith.constant 1 : i32
              %31 = arith.addi %30, %c1_i32_56 : i32
              %c0_57 = arith.constant 0 : index
              memref.store %31, %alloca_7[%c0_57] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_34 = arith.constant 0 : index
        %17 = memref.load %alloca_6[%c0_34] : memref<1xi32>
        %c1_i32_35 = arith.constant 1 : i32
        %18 = arith.addi %17, %c1_i32_35 : i32
        %c0_36 = arith.constant 0 : index
        memref.store %18, %alloca_6[%c0_36] : memref<1xi32>
        scf.yield
      }
    }
    %cst_20 = arith.constant 1.000000e+00 : f64
    %c0_21 = arith.constant 0 : index
    %6 = memref.load %alloca_3[%c0_21] : memref<1xmemref<?xf64>>
    %c0_22 = arith.constant 0 : index
    %7 = memref.load %alloca[%c0_22] : memref<1xi32>
    %c1_i32 = arith.constant 1 : i32
    %8 = arith.subi %7, %c1_i32 : i32
    %9 = arith.extsi %8 : i32 to i64
    %10 = arith.muli %9, %5 : i64
    %11 = arith.index_cast %10 : i64 to index
    %c1 = arith.constant 1 : index
    %c0_23 = arith.constant 0 : index
    %c0_24 = arith.constant 0 : index
    %dim = memref.dim %6, %c0_24 : memref<?xf64>
    %12 = arith.subi %dim, %11 : index
    %subview = memref.subview %6[%11] [%12] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%12], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
    %c0_25 = arith.constant 0 : index
    %13 = memref.load %alloca[%c0_25] : memref<1xi32>
    %c1_i32_26 = arith.constant 1 : i32
    %14 = arith.subi %13, %c1_i32_26 : i32
    %15 = arith.index_cast %14 : i32 to index
    %c0_27 = arith.constant 0 : index
    %dim_28 = memref.dim %reinterpret_cast, %c0_27 : memref<?xf64>
    %16 = arith.subi %dim_28, %15 : index
    %c1_29 = arith.constant 1 : index
    %subview_30 = memref.subview %reinterpret_cast[%15] [%16] [%c1_29] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
    %c0_31 = arith.constant 0 : index
    memref.store %cst_20, %subview_30[%c0_31] : memref<?xf64, strided<[?], offset: ?>>
    return
  }
  llvm.func @polybench_timer_stop(...)
  llvm.func @polybench_timer_print(...)
  func.func private @strcmp(memref<?xi8>, memref<?xi8>) -> i32
  memref.global "private" constant @".str" : memref<1xi8> = dense<0> {alignment = 1 : i64}
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global external @stderr() {addr_space = 0 : i32, alignment = 8 : i64} : !llvm.ptr
  memref.global "private" constant @".str.1" : memref<23xi8> = dense<[61, 61, 66, 69, 71, 73, 78, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.2" : memref<15xi8> = dense<[98, 101, 103, 105, 110, 32, 100, 117, 109, 112, 58, 32, 37, 115, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.3" : memref<5xi8> = dense<[99, 111, 114, 114, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.4" : memref<2xi8> = dense<[10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.5" : memref<8xi8> = dense<[37, 48, 46, 50, 108, 102, 32, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.6" : memref<17xi8> = dense<[10, 101, 110, 100, 32, 32, 32, 100, 117, 109, 112, 58, 32, 37, 115, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.7" : memref<23xi8> = dense<[61, 61, 69, 78, 68, 32, 32, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
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
    %5 = memref.get_global @".str.1" : memref<23xi8>
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
    %11 = memref.get_global @".str.2" : memref<15xi8>
    %c0_6 = arith.constant 0 : index
    %c1_7 = arith.constant 1 : index
    %c15 = arith.constant 15 : index
    %subview_8 = memref.subview %11[%c0_6] [%c15] [%c1_7] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_9 = memref.reinterpret_cast %subview_8 to offset: [0], sizes: [%c15], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %12 = memref.get_global @".str.3" : memref<5xi8>
    %c0_10 = arith.constant 0 : index
    %c1_11 = arith.constant 1 : index
    %c5 = arith.constant 5 : index
    %subview_12 = memref.subview %12[%c0_10] [%c5] [%c1_11] : memref<5xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_13 = memref.reinterpret_cast %subview_12 to offset: [0], sizes: [%c5], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
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
                  %62 = memref.get_global @".str.4" : memref<2xi8>
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
              %39 = memref.get_global @".str.5" : memref<8xi8>
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
    %20 = memref.get_global @".str.6" : memref<17xi8>
    %c0_16 = arith.constant 0 : index
    %c1_17 = arith.constant 1 : index
    %c17 = arith.constant 17 : index
    %subview_18 = memref.subview %20[%c0_16] [%c17] [%c1_17] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_19 = memref.reinterpret_cast %subview_18 to offset: [0], sizes: [%c17], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %21 = memref.get_global @".str.3" : memref<5xi8>
    %c0_20 = arith.constant 0 : index
    %c1_21 = arith.constant 1 : index
    %c5_22 = arith.constant 5 : index
    %subview_23 = memref.subview %21[%c0_20] [%c5_22] [%c1_21] : memref<5xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_24 = memref.reinterpret_cast %subview_23 to offset: [0], sizes: [%c5_22], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_25 = memref.extract_aligned_pointer_as_index %reinterpret_cast_19 : memref<?xi8> -> index
    %22 = arith.index_castui %intptr_25 : index to i64
    %23 = llvm.inttoptr %22 : i64 to !llvm.ptr
    %intptr_26 = memref.extract_aligned_pointer_as_index %reinterpret_cast_24 : memref<?xi8> -> index
    %24 = arith.index_castui %intptr_26 : index to i64
    %25 = llvm.inttoptr %24 : i64 to !llvm.ptr
    %26 = llvm.call @fprintf(%19, %23, %25) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %27 = llvm.mlir.addressof @stderr : !llvm.ptr
    %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
    %29 = memref.get_global @".str.7" : memref<23xi8>
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
    %alloca_8 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_9 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_9] : memref<1xmemref<?xmemref<?xi8>>>
    %c1400_i32 = arith.constant 1400 : i32
    %c0_10 = arith.constant 0 : index
    memref.store %c1400_i32, %alloca_2[%c0_10] : memref<1xi32>
    %c1200_i32 = arith.constant 1200 : i32
    %c0_11 = arith.constant 0 : index
    memref.store %c1200_i32, %alloca_3[%c0_11] : memref<1xi32>
    %c0_12 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_12] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_13 = arith.constant 0 : index
    %2 = memref.load %alloca_3[%c0_13] : memref<1xi32>
    %c0_i32_14 = arith.constant 0 : i32
    %3 = arith.addi %2, %c0_i32_14 : i32
    %4 = arith.muli %1, %3 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %6 = arith.trunci %c8_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xf64>
    %c0_15 = arith.constant 0 : index
    memref.store %8, %alloca_5[%c0_15] : memref<1xmemref<?xf64>>
    %c0_16 = arith.constant 0 : index
    %9 = memref.load %alloca_3[%c0_16] : memref<1xi32>
    %c0_i32_17 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_17 : i32
    %c0_18 = arith.constant 0 : index
    %11 = memref.load %alloca_3[%c0_18] : memref<1xi32>
    %c0_i32_19 = arith.constant 0 : i32
    %12 = arith.addi %11, %c0_i32_19 : i32
    %13 = arith.muli %10, %12 : i32
    %14 = arith.extsi %13 : i32 to i64
    %c8_i64_20 = arith.constant 8 : i64
    %15 = arith.trunci %c8_i64_20 : i64 to i32
    %16 = call @polybench_alloc_data(%14, %15) : (i64, i32) -> !llvm.ptr
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.ptr to memref<?xf64>
    %c0_21 = arith.constant 0 : index
    memref.store %17, %alloca_6[%c0_21] : memref<1xmemref<?xf64>>
    %c0_22 = arith.constant 0 : index
    %18 = memref.load %alloca_3[%c0_22] : memref<1xi32>
    %c0_i32_23 = arith.constant 0 : i32
    %19 = arith.addi %18, %c0_i32_23 : i32
    %20 = arith.extsi %19 : i32 to i64
    %c8_i64_24 = arith.constant 8 : i64
    %21 = arith.trunci %c8_i64_24 : i64 to i32
    %22 = call @polybench_alloc_data(%20, %21) : (i64, i32) -> !llvm.ptr
    %23 = builtin.unrealized_conversion_cast %22 : !llvm.ptr to memref<?xf64>
    %c0_25 = arith.constant 0 : index
    memref.store %23, %alloca_7[%c0_25] : memref<1xmemref<?xf64>>
    %c0_26 = arith.constant 0 : index
    %24 = memref.load %alloca_3[%c0_26] : memref<1xi32>
    %c0_i32_27 = arith.constant 0 : i32
    %25 = arith.addi %24, %c0_i32_27 : i32
    %26 = arith.extsi %25 : i32 to i64
    %c8_i64_28 = arith.constant 8 : i64
    %27 = arith.trunci %c8_i64_28 : i64 to i32
    %28 = call @polybench_alloc_data(%26, %27) : (i64, i32) -> !llvm.ptr
    %29 = builtin.unrealized_conversion_cast %28 : !llvm.ptr to memref<?xf64>
    %c0_29 = arith.constant 0 : index
    memref.store %29, %alloca_8[%c0_29] : memref<1xmemref<?xf64>>
    %c0_30 = arith.constant 0 : index
    %30 = memref.load %alloca_3[%c0_30] : memref<1xi32>
    %c0_31 = arith.constant 0 : index
    %31 = memref.load %alloca_2[%c0_31] : memref<1xi32>
    %c0_32 = arith.constant 0 : index
    %32 = memref.load %alloca_5[%c0_32] : memref<1xmemref<?xf64>>
    call @init_array(%30, %31, %cast, %32) : (i32, i32, memref<?xf64>, memref<?xf64>) -> ()
    %33 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %33() : !llvm.ptr, () -> ()
    %c0_33 = arith.constant 0 : index
    %34 = memref.load %alloca_3[%c0_33] : memref<1xi32>
    %c0_34 = arith.constant 0 : index
    %35 = memref.load %alloca_2[%c0_34] : memref<1xi32>
    %c0_35 = arith.constant 0 : index
    %36 = memref.load %alloca_4[%c0_35] : memref<1xf64>
    %c0_36 = arith.constant 0 : index
    %37 = memref.load %alloca_5[%c0_36] : memref<1xmemref<?xf64>>
    %c0_37 = arith.constant 0 : index
    %38 = memref.load %alloca_6[%c0_37] : memref<1xmemref<?xf64>>
    %c0_38 = arith.constant 0 : index
    %39 = memref.load %alloca_7[%c0_38] : memref<1xmemref<?xf64>>
    %c0_39 = arith.constant 0 : index
    %40 = memref.load %alloca_8[%c0_39] : memref<1xmemref<?xf64>>
    call @kernel_correlation(%34, %35, %36, %37, %38, %39, %40) : (i32, i32, f64, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %41 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %41() : !llvm.ptr, () -> ()
    %42 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %42() : !llvm.ptr, () -> ()
    memref.alloca_scope  {
      %c0_50 = arith.constant 0 : index
      %56 = memref.load %alloca[%c0_50] : memref<1xi32>
      %c42_i32 = arith.constant 42 : i32
      %57 = arith.cmpi sgt, %56, %c42_i32 : i32
      %58 = scf.if %57 -> (i1) {
        %c0_51 = arith.constant 0 : index
        %59 = memref.load %alloca_0[%c0_51] : memref<1xmemref<?xmemref<?xi8>>>
        %c0_i32_52 = arith.constant 0 : i32
        %60 = arith.index_cast %c0_i32_52 : i32 to index
        %c0_53 = arith.constant 0 : index
        %dim = memref.dim %59, %c0_53 : memref<?xmemref<?xi8>>
        %61 = arith.subi %dim, %60 : index
        %c1 = arith.constant 1 : index
        %subview = memref.subview %59[%60] [%61] [%c1] : memref<?xmemref<?xi8>> to memref<?xmemref<?xi8>, strided<[?], offset: ?>>
        %c0_54 = arith.constant 0 : index
        %62 = memref.load %subview[%c0_54] : memref<?xmemref<?xi8>, strided<[?], offset: ?>>
        %63 = memref.get_global @".str" : memref<1xi8>
        %c0_55 = arith.constant 0 : index
        %c1_56 = arith.constant 1 : index
        %c1_57 = arith.constant 1 : index
        %subview_58 = memref.subview %63[%c0_55] [%c1_57] [%c1_56] : memref<1xi8> to memref<?xi8, strided<[?], offset: ?>>
        %reinterpret_cast = memref.reinterpret_cast %subview_58 to offset: [0], sizes: [%c1_57], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
        %64 = func.call @strcmp(%62, %reinterpret_cast) : (memref<?xi8>, memref<?xi8>) -> i32
        %c0_i32_59 = arith.constant 0 : i32
        %65 = arith.cmpi ne, %64, %c0_i32_59 : i32
        %true = arith.constant true
        %66 = arith.xori %true, %65 : i1
        scf.yield %66 : i1
      } else {
        %false = arith.constant false
        scf.yield %false : i1
      }
      scf.if %58 {
        %c0_51 = arith.constant 0 : index
        %59 = memref.load %alloca_3[%c0_51] : memref<1xi32>
        %c0_52 = arith.constant 0 : index
        %60 = memref.load %alloca_6[%c0_52] : memref<1xmemref<?xf64>>
        func.call @print_array(%59, %60) : (i32, memref<?xf64>) -> ()
      }
    }
    %c0_40 = arith.constant 0 : index
    %43 = memref.load %alloca_5[%c0_40] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %43 : memref<?xf64> -> index
    %44 = arith.index_castui %intptr : index to i64
    %45 = llvm.inttoptr %44 : i64 to !llvm.ptr
    call @free(%45) : (!llvm.ptr) -> ()
    %c0_41 = arith.constant 0 : index
    %46 = memref.load %alloca_6[%c0_41] : memref<1xmemref<?xf64>>
    %intptr_42 = memref.extract_aligned_pointer_as_index %46 : memref<?xf64> -> index
    %47 = arith.index_castui %intptr_42 : index to i64
    %48 = llvm.inttoptr %47 : i64 to !llvm.ptr
    call @free(%48) : (!llvm.ptr) -> ()
    %c0_43 = arith.constant 0 : index
    %49 = memref.load %alloca_7[%c0_43] : memref<1xmemref<?xf64>>
    %intptr_44 = memref.extract_aligned_pointer_as_index %49 : memref<?xf64> -> index
    %50 = arith.index_castui %intptr_44 : index to i64
    %51 = llvm.inttoptr %50 : i64 to !llvm.ptr
    call @free(%51) : (!llvm.ptr) -> ()
    %c0_45 = arith.constant 0 : index
    %52 = memref.load %alloca_8[%c0_45] : memref<1xmemref<?xf64>>
    %intptr_46 = memref.extract_aligned_pointer_as_index %52 : memref<?xf64> -> index
    %53 = arith.index_castui %intptr_46 : index to i64
    %54 = llvm.inttoptr %53 : i64 to !llvm.ptr
    call @free(%54) : (!llvm.ptr) -> ()
    %c0_i32_47 = arith.constant 0 : i32
    %c0_48 = arith.constant 0 : index
    memref.store %c0_i32_47, %alloca_1[%c0_48] : memref<1xi32>
    %c0_49 = arith.constant 0 : index
    %55 = memref.load %alloca_1[%c0_49] : memref<1xi32>
    return %55 : i32
  }
}

