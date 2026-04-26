module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/blas/gemver/gemver.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_8 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_9 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_10 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_11 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_12 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_13 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_14 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_14] : memref<1xmemref<?xf64>>
    %c0_15 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_15] : memref<1xmemref<?xf64>>
    %c0_16 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_16] : memref<1xmemref<?xf64>>
    %c0_17 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_17] : memref<1xmemref<?xf64>>
    %c0_18 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_18] : memref<1xmemref<?xf64>>
    %c0_19 = arith.constant 0 : index
    memref.store %arg6, %alloca_5[%c0_19] : memref<1xmemref<?xf64>>
    %c0_20 = arith.constant 0 : index
    memref.store %arg7, %alloca_6[%c0_20] : memref<1xmemref<?xf64>>
    %c0_21 = arith.constant 0 : index
    memref.store %arg8, %alloca_7[%c0_21] : memref<1xmemref<?xf64>>
    %c0_22 = arith.constant 0 : index
    memref.store %arg9, %alloca_8[%c0_22] : memref<1xmemref<?xf64>>
    %c0_23 = arith.constant 0 : index
    memref.store %arg10, %alloca_9[%c0_23] : memref<1xmemref<?xf64>>
    %c0_24 = arith.constant 0 : index
    memref.store %arg11, %alloca_10[%c0_24] : memref<1xmemref<?xf64>>
    %c0_25 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_25] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %cst = arith.constant 1.500000e+00 : f64
    %c0_26 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_26] : memref<1xmemref<?xf64>>
    %c0_27 = arith.constant 0 : index
    memref.store %cst, %3[%c0_27] : memref<?xf64>
    %cst_28 = arith.constant 1.200000e+00 : f64
    %c0_29 = arith.constant 0 : index
    %4 = memref.load %alloca_1[%c0_29] : memref<1xmemref<?xf64>>
    %c0_30 = arith.constant 0 : index
    memref.store %cst_28, %4[%c0_30] : memref<?xf64>
    %c0_31 = arith.constant 0 : index
    %5 = memref.load %alloca[%c0_31] : memref<1xi32>
    %6 = arith.sitofp %5 : i32 to f64
    %c0_32 = arith.constant 0 : index
    memref.store %6, %alloca_13[%c0_32] : memref<1xf64>
    memref.alloca_scope  {
      %c0_i32_33 = arith.constant 0 : i32
      %c0_34 = arith.constant 0 : index
      memref.store %c0_i32_33, %alloca_11[%c0_34] : memref<1xi32>
      scf.while : () -> () {
        %c0_35 = arith.constant 0 : index
        %7 = memref.load %alloca_11[%c0_35] : memref<1xi32>
        %c0_36 = arith.constant 0 : index
        %8 = memref.load %alloca[%c0_36] : memref<1xi32>
        %9 = arith.cmpi slt, %7, %8 : i32
        scf.condition(%9)
      } do {
        memref.alloca_scope  {
          %c0_37 = arith.constant 0 : index
          %9 = memref.load %alloca_11[%c0_37] : memref<1xi32>
          %10 = arith.sitofp %9 : i32 to f64
          %c0_38 = arith.constant 0 : index
          %11 = memref.load %alloca_3[%c0_38] : memref<1xmemref<?xf64>>
          %c0_39 = arith.constant 0 : index
          %12 = memref.load %alloca_11[%c0_39] : memref<1xi32>
          %13 = arith.index_cast %12 : i32 to index
          %c0_40 = arith.constant 0 : index
          %dim = memref.dim %11, %c0_40 : memref<?xf64>
          %14 = arith.subi %dim, %13 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %11[%13] [%14] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_41 = arith.constant 0 : index
          memref.store %10, %subview[%c0_41] : memref<?xf64, strided<[?], offset: ?>>
          %c0_42 = arith.constant 0 : index
          %15 = memref.load %alloca_11[%c0_42] : memref<1xi32>
          %c1_i32_43 = arith.constant 1 : i32
          %16 = arith.addi %15, %c1_i32_43 : i32
          %17 = arith.sitofp %16 : i32 to f64
          %c0_44 = arith.constant 0 : index
          %18 = memref.load %alloca_13[%c0_44] : memref<1xf64>
          %19 = arith.divf %17, %18 : f64
          %cst_45 = arith.constant 2.000000e+00 : f64
          %20 = arith.divf %19, %cst_45 : f64
          %c0_46 = arith.constant 0 : index
          %21 = memref.load %alloca_5[%c0_46] : memref<1xmemref<?xf64>>
          %c0_47 = arith.constant 0 : index
          %22 = memref.load %alloca_11[%c0_47] : memref<1xi32>
          %23 = arith.index_cast %22 : i32 to index
          %c0_48 = arith.constant 0 : index
          %dim_49 = memref.dim %21, %c0_48 : memref<?xf64>
          %24 = arith.subi %dim_49, %23 : index
          %c1_50 = arith.constant 1 : index
          %subview_51 = memref.subview %21[%23] [%24] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_52 = arith.constant 0 : index
          memref.store %20, %subview_51[%c0_52] : memref<?xf64, strided<[?], offset: ?>>
          %c0_53 = arith.constant 0 : index
          %25 = memref.load %alloca_11[%c0_53] : memref<1xi32>
          %c1_i32_54 = arith.constant 1 : i32
          %26 = arith.addi %25, %c1_i32_54 : i32
          %27 = arith.sitofp %26 : i32 to f64
          %c0_55 = arith.constant 0 : index
          %28 = memref.load %alloca_13[%c0_55] : memref<1xf64>
          %29 = arith.divf %27, %28 : f64
          %cst_56 = arith.constant 4.000000e+00 : f64
          %30 = arith.divf %29, %cst_56 : f64
          %c0_57 = arith.constant 0 : index
          %31 = memref.load %alloca_4[%c0_57] : memref<1xmemref<?xf64>>
          %c0_58 = arith.constant 0 : index
          %32 = memref.load %alloca_11[%c0_58] : memref<1xi32>
          %33 = arith.index_cast %32 : i32 to index
          %c0_59 = arith.constant 0 : index
          %dim_60 = memref.dim %31, %c0_59 : memref<?xf64>
          %34 = arith.subi %dim_60, %33 : index
          %c1_61 = arith.constant 1 : index
          %subview_62 = memref.subview %31[%33] [%34] [%c1_61] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_63 = arith.constant 0 : index
          memref.store %30, %subview_62[%c0_63] : memref<?xf64, strided<[?], offset: ?>>
          %c0_64 = arith.constant 0 : index
          %35 = memref.load %alloca_11[%c0_64] : memref<1xi32>
          %c1_i32_65 = arith.constant 1 : i32
          %36 = arith.addi %35, %c1_i32_65 : i32
          %37 = arith.sitofp %36 : i32 to f64
          %c0_66 = arith.constant 0 : index
          %38 = memref.load %alloca_13[%c0_66] : memref<1xf64>
          %39 = arith.divf %37, %38 : f64
          %cst_67 = arith.constant 6.000000e+00 : f64
          %40 = arith.divf %39, %cst_67 : f64
          %c0_68 = arith.constant 0 : index
          %41 = memref.load %alloca_6[%c0_68] : memref<1xmemref<?xf64>>
          %c0_69 = arith.constant 0 : index
          %42 = memref.load %alloca_11[%c0_69] : memref<1xi32>
          %43 = arith.index_cast %42 : i32 to index
          %c0_70 = arith.constant 0 : index
          %dim_71 = memref.dim %41, %c0_70 : memref<?xf64>
          %44 = arith.subi %dim_71, %43 : index
          %c1_72 = arith.constant 1 : index
          %subview_73 = memref.subview %41[%43] [%44] [%c1_72] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_74 = arith.constant 0 : index
          memref.store %40, %subview_73[%c0_74] : memref<?xf64, strided<[?], offset: ?>>
          %c0_75 = arith.constant 0 : index
          %45 = memref.load %alloca_11[%c0_75] : memref<1xi32>
          %c1_i32_76 = arith.constant 1 : i32
          %46 = arith.addi %45, %c1_i32_76 : i32
          %47 = arith.sitofp %46 : i32 to f64
          %c0_77 = arith.constant 0 : index
          %48 = memref.load %alloca_13[%c0_77] : memref<1xf64>
          %49 = arith.divf %47, %48 : f64
          %cst_78 = arith.constant 8.000000e+00 : f64
          %50 = arith.divf %49, %cst_78 : f64
          %c0_79 = arith.constant 0 : index
          %51 = memref.load %alloca_9[%c0_79] : memref<1xmemref<?xf64>>
          %c0_80 = arith.constant 0 : index
          %52 = memref.load %alloca_11[%c0_80] : memref<1xi32>
          %53 = arith.index_cast %52 : i32 to index
          %c0_81 = arith.constant 0 : index
          %dim_82 = memref.dim %51, %c0_81 : memref<?xf64>
          %54 = arith.subi %dim_82, %53 : index
          %c1_83 = arith.constant 1 : index
          %subview_84 = memref.subview %51[%53] [%54] [%c1_83] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_85 = arith.constant 0 : index
          memref.store %50, %subview_84[%c0_85] : memref<?xf64, strided<[?], offset: ?>>
          %c0_86 = arith.constant 0 : index
          %55 = memref.load %alloca_11[%c0_86] : memref<1xi32>
          %c1_i32_87 = arith.constant 1 : i32
          %56 = arith.addi %55, %c1_i32_87 : i32
          %57 = arith.sitofp %56 : i32 to f64
          %c0_88 = arith.constant 0 : index
          %58 = memref.load %alloca_13[%c0_88] : memref<1xf64>
          %59 = arith.divf %57, %58 : f64
          %cst_89 = arith.constant 9.000000e+00 : f64
          %60 = arith.divf %59, %cst_89 : f64
          %c0_90 = arith.constant 0 : index
          %61 = memref.load %alloca_10[%c0_90] : memref<1xmemref<?xf64>>
          %c0_91 = arith.constant 0 : index
          %62 = memref.load %alloca_11[%c0_91] : memref<1xi32>
          %63 = arith.index_cast %62 : i32 to index
          %c0_92 = arith.constant 0 : index
          %dim_93 = memref.dim %61, %c0_92 : memref<?xf64>
          %64 = arith.subi %dim_93, %63 : index
          %c1_94 = arith.constant 1 : index
          %subview_95 = memref.subview %61[%63] [%64] [%c1_94] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_96 = arith.constant 0 : index
          memref.store %60, %subview_95[%c0_96] : memref<?xf64, strided<[?], offset: ?>>
          %cst_97 = arith.constant 0.000000e+00 : f64
          %c0_98 = arith.constant 0 : index
          %65 = memref.load %alloca_8[%c0_98] : memref<1xmemref<?xf64>>
          %c0_99 = arith.constant 0 : index
          %66 = memref.load %alloca_11[%c0_99] : memref<1xi32>
          %67 = arith.index_cast %66 : i32 to index
          %c0_100 = arith.constant 0 : index
          %dim_101 = memref.dim %65, %c0_100 : memref<?xf64>
          %68 = arith.subi %dim_101, %67 : index
          %c1_102 = arith.constant 1 : index
          %subview_103 = memref.subview %65[%67] [%68] [%c1_102] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_104 = arith.constant 0 : index
          memref.store %cst_97, %subview_103[%c0_104] : memref<?xf64, strided<[?], offset: ?>>
          %cst_105 = arith.constant 0.000000e+00 : f64
          %c0_106 = arith.constant 0 : index
          %69 = memref.load %alloca_7[%c0_106] : memref<1xmemref<?xf64>>
          %c0_107 = arith.constant 0 : index
          %70 = memref.load %alloca_11[%c0_107] : memref<1xi32>
          %71 = arith.index_cast %70 : i32 to index
          %c0_108 = arith.constant 0 : index
          %dim_109 = memref.dim %69, %c0_108 : memref<?xf64>
          %72 = arith.subi %dim_109, %71 : index
          %c1_110 = arith.constant 1 : index
          %subview_111 = memref.subview %69[%71] [%72] [%c1_110] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_112 = arith.constant 0 : index
          memref.store %cst_105, %subview_111[%c0_112] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_i32_113 = arith.constant 0 : i32
            %c0_114 = arith.constant 0 : index
            memref.store %c0_i32_113, %alloca_12[%c0_114] : memref<1xi32>
            scf.while : () -> () {
              %c0_115 = arith.constant 0 : index
              %73 = memref.load %alloca_12[%c0_115] : memref<1xi32>
              %c0_116 = arith.constant 0 : index
              %74 = memref.load %alloca[%c0_116] : memref<1xi32>
              %75 = arith.cmpi slt, %73, %74 : i32
              scf.condition(%75)
            } do {
              %c0_115 = arith.constant 0 : index
              %73 = memref.load %alloca_11[%c0_115] : memref<1xi32>
              %c0_116 = arith.constant 0 : index
              %74 = memref.load %alloca_12[%c0_116] : memref<1xi32>
              %75 = arith.muli %73, %74 : i32
              %c0_117 = arith.constant 0 : index
              %76 = memref.load %alloca[%c0_117] : memref<1xi32>
              %77 = arith.remsi %75, %76 : i32
              %78 = arith.sitofp %77 : i32 to f64
              %c0_118 = arith.constant 0 : index
              %79 = memref.load %alloca[%c0_118] : memref<1xi32>
              %80 = arith.sitofp %79 : i32 to f64
              %81 = arith.divf %78, %80 : f64
              %c0_119 = arith.constant 0 : index
              %82 = memref.load %alloca_2[%c0_119] : memref<1xmemref<?xf64>>
              %c0_120 = arith.constant 0 : index
              %83 = memref.load %alloca_11[%c0_120] : memref<1xi32>
              %84 = arith.extsi %83 : i32 to i64
              %85 = arith.muli %84, %2 : i64
              %86 = arith.index_cast %85 : i64 to index
              %c1_121 = arith.constant 1 : index
              %c0_122 = arith.constant 0 : index
              %c0_123 = arith.constant 0 : index
              %dim_124 = memref.dim %82, %c0_123 : memref<?xf64>
              %87 = arith.subi %dim_124, %86 : index
              %subview_125 = memref.subview %82[%86] [%87] [%c1_121] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview_125 to offset: [0], sizes: [%87], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_126 = arith.constant 0 : index
              %88 = memref.load %alloca_12[%c0_126] : memref<1xi32>
              %89 = arith.index_cast %88 : i32 to index
              %c0_127 = arith.constant 0 : index
              %dim_128 = memref.dim %reinterpret_cast, %c0_127 : memref<?xf64>
              %90 = arith.subi %dim_128, %89 : index
              %c1_129 = arith.constant 1 : index
              %subview_130 = memref.subview %reinterpret_cast[%89] [%90] [%c1_129] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_131 = arith.constant 0 : index
              memref.store %81, %subview_130[%c0_131] : memref<?xf64, strided<[?], offset: ?>>
              %c0_132 = arith.constant 0 : index
              %91 = memref.load %alloca_12[%c0_132] : memref<1xi32>
              %c1_i32_133 = arith.constant 1 : i32
              %92 = arith.addi %91, %c1_i32_133 : i32
              %c0_134 = arith.constant 0 : index
              memref.store %92, %alloca_12[%c0_134] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_35 = arith.constant 0 : index
        %7 = memref.load %alloca_11[%c0_35] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %8 = arith.addi %7, %c1_i32 : i32
        %c0_36 = arith.constant 0 : index
        memref.store %8, %alloca_11[%c0_36] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_8 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_9 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_10 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_11 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_12 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_13 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_13] : memref<1xf64>
    %c0_14 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_14] : memref<1xf64>
    %c0_15 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_15] : memref<1xmemref<?xf64>>
    %c0_16 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_16] : memref<1xmemref<?xf64>>
    %c0_17 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_17] : memref<1xmemref<?xf64>>
    %c0_18 = arith.constant 0 : index
    memref.store %arg6, %alloca_5[%c0_18] : memref<1xmemref<?xf64>>
    %c0_19 = arith.constant 0 : index
    memref.store %arg7, %alloca_6[%c0_19] : memref<1xmemref<?xf64>>
    %c0_20 = arith.constant 0 : index
    memref.store %arg8, %alloca_7[%c0_20] : memref<1xmemref<?xf64>>
    %c0_21 = arith.constant 0 : index
    memref.store %arg9, %alloca_8[%c0_21] : memref<1xmemref<?xf64>>
    %c0_22 = arith.constant 0 : index
    memref.store %arg10, %alloca_9[%c0_22] : memref<1xmemref<?xf64>>
    %c0_23 = arith.constant 0 : index
    memref.store %arg11, %alloca_10[%c0_23] : memref<1xmemref<?xf64>>
    %c0_24 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_24] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_25 = arith.constant 0 : i32
      %c0_26 = arith.constant 0 : index
      memref.store %c0_i32_25, %alloca_11[%c0_26] : memref<1xi32>
      scf.while : () -> () {
        %c0_27 = arith.constant 0 : index
        %3 = memref.load %alloca_11[%c0_27] : memref<1xi32>
        %c0_28 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_28] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %c0_i32_29 = arith.constant 0 : i32
          %c0_30 = arith.constant 0 : index
          memref.store %c0_i32_29, %alloca_12[%c0_30] : memref<1xi32>
          scf.while : () -> () {
            %c0_31 = arith.constant 0 : index
            %5 = memref.load %alloca_12[%c0_31] : memref<1xi32>
            %c0_32 = arith.constant 0 : index
            %6 = memref.load %alloca[%c0_32] : memref<1xi32>
            %7 = arith.cmpi slt, %5, %6 : i32
            scf.condition(%7)
          } do {
            %c0_31 = arith.constant 0 : index
            %5 = memref.load %alloca_2[%c0_31] : memref<1xmemref<?xf64>>
            %c0_32 = arith.constant 0 : index
            %6 = memref.load %alloca_11[%c0_32] : memref<1xi32>
            %7 = arith.extsi %6 : i32 to i64
            %8 = arith.muli %7, %2 : i64
            %9 = arith.index_cast %8 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_33 = arith.constant 0 : index
            %c0_34 = arith.constant 0 : index
            %dim = memref.dim %5, %c0_34 : memref<?xf64>
            %10 = arith.subi %dim, %9 : index
            %subview = memref.subview %5[%9] [%10] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%10], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_35 = arith.constant 0 : index
            %11 = memref.load %alloca_12[%c0_35] : memref<1xi32>
            %12 = arith.index_cast %11 : i32 to index
            %c0_36 = arith.constant 0 : index
            %dim_37 = memref.dim %reinterpret_cast, %c0_36 : memref<?xf64>
            %13 = arith.subi %dim_37, %12 : index
            %c1_38 = arith.constant 1 : index
            %subview_39 = memref.subview %reinterpret_cast[%12] [%13] [%c1_38] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_40 = arith.constant 0 : index
            %14 = memref.load %subview_39[%c0_40] : memref<?xf64, strided<[?], offset: ?>>
            %c0_41 = arith.constant 0 : index
            %15 = memref.load %alloca_3[%c0_41] : memref<1xmemref<?xf64>>
            %c0_42 = arith.constant 0 : index
            %16 = memref.load %alloca_11[%c0_42] : memref<1xi32>
            %17 = arith.index_cast %16 : i32 to index
            %c0_43 = arith.constant 0 : index
            %dim_44 = memref.dim %15, %c0_43 : memref<?xf64>
            %18 = arith.subi %dim_44, %17 : index
            %c1_45 = arith.constant 1 : index
            %subview_46 = memref.subview %15[%17] [%18] [%c1_45] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_47 = arith.constant 0 : index
            %19 = memref.load %subview_46[%c0_47] : memref<?xf64, strided<[?], offset: ?>>
            %c0_48 = arith.constant 0 : index
            %20 = memref.load %alloca_4[%c0_48] : memref<1xmemref<?xf64>>
            %c0_49 = arith.constant 0 : index
            %21 = memref.load %alloca_12[%c0_49] : memref<1xi32>
            %22 = arith.index_cast %21 : i32 to index
            %c0_50 = arith.constant 0 : index
            %dim_51 = memref.dim %20, %c0_50 : memref<?xf64>
            %23 = arith.subi %dim_51, %22 : index
            %c1_52 = arith.constant 1 : index
            %subview_53 = memref.subview %20[%22] [%23] [%c1_52] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_54 = arith.constant 0 : index
            %24 = memref.load %subview_53[%c0_54] : memref<?xf64, strided<[?], offset: ?>>
            %25 = arith.mulf %19, %24 : f64
            %26 = arith.addf %14, %25 : f64
            %c0_55 = arith.constant 0 : index
            %27 = memref.load %alloca_5[%c0_55] : memref<1xmemref<?xf64>>
            %c0_56 = arith.constant 0 : index
            %28 = memref.load %alloca_11[%c0_56] : memref<1xi32>
            %29 = arith.index_cast %28 : i32 to index
            %c0_57 = arith.constant 0 : index
            %dim_58 = memref.dim %27, %c0_57 : memref<?xf64>
            %30 = arith.subi %dim_58, %29 : index
            %c1_59 = arith.constant 1 : index
            %subview_60 = memref.subview %27[%29] [%30] [%c1_59] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_61 = arith.constant 0 : index
            %31 = memref.load %subview_60[%c0_61] : memref<?xf64, strided<[?], offset: ?>>
            %c0_62 = arith.constant 0 : index
            %32 = memref.load %alloca_6[%c0_62] : memref<1xmemref<?xf64>>
            %c0_63 = arith.constant 0 : index
            %33 = memref.load %alloca_12[%c0_63] : memref<1xi32>
            %34 = arith.index_cast %33 : i32 to index
            %c0_64 = arith.constant 0 : index
            %dim_65 = memref.dim %32, %c0_64 : memref<?xf64>
            %35 = arith.subi %dim_65, %34 : index
            %c1_66 = arith.constant 1 : index
            %subview_67 = memref.subview %32[%34] [%35] [%c1_66] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_68 = arith.constant 0 : index
            %36 = memref.load %subview_67[%c0_68] : memref<?xf64, strided<[?], offset: ?>>
            %37 = arith.mulf %31, %36 : f64
            %38 = arith.addf %26, %37 : f64
            %c0_69 = arith.constant 0 : index
            %39 = memref.load %alloca_2[%c0_69] : memref<1xmemref<?xf64>>
            %c0_70 = arith.constant 0 : index
            %40 = memref.load %alloca_11[%c0_70] : memref<1xi32>
            %41 = arith.extsi %40 : i32 to i64
            %42 = arith.muli %41, %2 : i64
            %43 = arith.index_cast %42 : i64 to index
            %c1_71 = arith.constant 1 : index
            %c0_72 = arith.constant 0 : index
            %c0_73 = arith.constant 0 : index
            %dim_74 = memref.dim %39, %c0_73 : memref<?xf64>
            %44 = arith.subi %dim_74, %43 : index
            %subview_75 = memref.subview %39[%43] [%44] [%c1_71] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast_76 = memref.reinterpret_cast %subview_75 to offset: [0], sizes: [%44], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_77 = arith.constant 0 : index
            %45 = memref.load %alloca_12[%c0_77] : memref<1xi32>
            %46 = arith.index_cast %45 : i32 to index
            %c0_78 = arith.constant 0 : index
            %dim_79 = memref.dim %reinterpret_cast_76, %c0_78 : memref<?xf64>
            %47 = arith.subi %dim_79, %46 : index
            %c1_80 = arith.constant 1 : index
            %subview_81 = memref.subview %reinterpret_cast_76[%46] [%47] [%c1_80] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_82 = arith.constant 0 : index
            memref.store %38, %subview_81[%c0_82] : memref<?xf64, strided<[?], offset: ?>>
            %c0_83 = arith.constant 0 : index
            %48 = memref.load %alloca_12[%c0_83] : memref<1xi32>
            %c1_i32_84 = arith.constant 1 : i32
            %49 = arith.addi %48, %c1_i32_84 : i32
            %c0_85 = arith.constant 0 : index
            memref.store %49, %alloca_12[%c0_85] : memref<1xi32>
            scf.yield
          }
        }
        %c0_27 = arith.constant 0 : index
        %3 = memref.load %alloca_11[%c0_27] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_28 = arith.constant 0 : index
        memref.store %4, %alloca_11[%c0_28] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_25 = arith.constant 0 : i32
      %c0_26 = arith.constant 0 : index
      memref.store %c0_i32_25, %alloca_11[%c0_26] : memref<1xi32>
      scf.while : () -> () {
        %c0_27 = arith.constant 0 : index
        %3 = memref.load %alloca_11[%c0_27] : memref<1xi32>
        %c0_28 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_28] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %c0_i32_29 = arith.constant 0 : i32
          %c0_30 = arith.constant 0 : index
          memref.store %c0_i32_29, %alloca_12[%c0_30] : memref<1xi32>
          scf.while : () -> () {
            %c0_31 = arith.constant 0 : index
            %5 = memref.load %alloca_12[%c0_31] : memref<1xi32>
            %c0_32 = arith.constant 0 : index
            %6 = memref.load %alloca[%c0_32] : memref<1xi32>
            %7 = arith.cmpi slt, %5, %6 : i32
            scf.condition(%7)
          } do {
            %c0_31 = arith.constant 0 : index
            %5 = memref.load %alloca_8[%c0_31] : memref<1xmemref<?xf64>>
            %c0_32 = arith.constant 0 : index
            %6 = memref.load %alloca_11[%c0_32] : memref<1xi32>
            %7 = arith.index_cast %6 : i32 to index
            %c0_33 = arith.constant 0 : index
            %dim = memref.dim %5, %c0_33 : memref<?xf64>
            %8 = arith.subi %dim, %7 : index
            %c1 = arith.constant 1 : index
            %subview = memref.subview %5[%7] [%8] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_34 = arith.constant 0 : index
            %9 = memref.load %subview[%c0_34] : memref<?xf64, strided<[?], offset: ?>>
            %c0_35 = arith.constant 0 : index
            %10 = memref.load %alloca_1[%c0_35] : memref<1xf64>
            %c0_36 = arith.constant 0 : index
            %11 = memref.load %alloca_2[%c0_36] : memref<1xmemref<?xf64>>
            %c0_37 = arith.constant 0 : index
            %12 = memref.load %alloca_12[%c0_37] : memref<1xi32>
            %13 = arith.extsi %12 : i32 to i64
            %14 = arith.muli %13, %2 : i64
            %15 = arith.index_cast %14 : i64 to index
            %c1_38 = arith.constant 1 : index
            %c0_39 = arith.constant 0 : index
            %c0_40 = arith.constant 0 : index
            %dim_41 = memref.dim %11, %c0_40 : memref<?xf64>
            %16 = arith.subi %dim_41, %15 : index
            %subview_42 = memref.subview %11[%15] [%16] [%c1_38] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview_42 to offset: [0], sizes: [%16], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_43 = arith.constant 0 : index
            %17 = memref.load %alloca_11[%c0_43] : memref<1xi32>
            %18 = arith.index_cast %17 : i32 to index
            %c0_44 = arith.constant 0 : index
            %dim_45 = memref.dim %reinterpret_cast, %c0_44 : memref<?xf64>
            %19 = arith.subi %dim_45, %18 : index
            %c1_46 = arith.constant 1 : index
            %subview_47 = memref.subview %reinterpret_cast[%18] [%19] [%c1_46] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_48 = arith.constant 0 : index
            %20 = memref.load %subview_47[%c0_48] : memref<?xf64, strided<[?], offset: ?>>
            %21 = arith.mulf %10, %20 : f64
            %c0_49 = arith.constant 0 : index
            %22 = memref.load %alloca_9[%c0_49] : memref<1xmemref<?xf64>>
            %c0_50 = arith.constant 0 : index
            %23 = memref.load %alloca_12[%c0_50] : memref<1xi32>
            %24 = arith.index_cast %23 : i32 to index
            %c0_51 = arith.constant 0 : index
            %dim_52 = memref.dim %22, %c0_51 : memref<?xf64>
            %25 = arith.subi %dim_52, %24 : index
            %c1_53 = arith.constant 1 : index
            %subview_54 = memref.subview %22[%24] [%25] [%c1_53] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_55 = arith.constant 0 : index
            %26 = memref.load %subview_54[%c0_55] : memref<?xf64, strided<[?], offset: ?>>
            %27 = arith.mulf %21, %26 : f64
            %28 = arith.addf %9, %27 : f64
            %c0_56 = arith.constant 0 : index
            %29 = memref.load %alloca_8[%c0_56] : memref<1xmemref<?xf64>>
            %c0_57 = arith.constant 0 : index
            %30 = memref.load %alloca_11[%c0_57] : memref<1xi32>
            %31 = arith.index_cast %30 : i32 to index
            %c0_58 = arith.constant 0 : index
            %dim_59 = memref.dim %29, %c0_58 : memref<?xf64>
            %32 = arith.subi %dim_59, %31 : index
            %c1_60 = arith.constant 1 : index
            %subview_61 = memref.subview %29[%31] [%32] [%c1_60] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_62 = arith.constant 0 : index
            memref.store %28, %subview_61[%c0_62] : memref<?xf64, strided<[?], offset: ?>>
            %c0_63 = arith.constant 0 : index
            %33 = memref.load %alloca_12[%c0_63] : memref<1xi32>
            %c1_i32_64 = arith.constant 1 : i32
            %34 = arith.addi %33, %c1_i32_64 : i32
            %c0_65 = arith.constant 0 : index
            memref.store %34, %alloca_12[%c0_65] : memref<1xi32>
            scf.yield
          }
        }
        %c0_27 = arith.constant 0 : index
        %3 = memref.load %alloca_11[%c0_27] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_28 = arith.constant 0 : index
        memref.store %4, %alloca_11[%c0_28] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_25 = arith.constant 0 : i32
      %c0_26 = arith.constant 0 : index
      memref.store %c0_i32_25, %alloca_11[%c0_26] : memref<1xi32>
      scf.while : () -> () {
        %c0_27 = arith.constant 0 : index
        %3 = memref.load %alloca_11[%c0_27] : memref<1xi32>
        %c0_28 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_28] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        %c0_27 = arith.constant 0 : index
        %3 = memref.load %alloca_8[%c0_27] : memref<1xmemref<?xf64>>
        %c0_28 = arith.constant 0 : index
        %4 = memref.load %alloca_11[%c0_28] : memref<1xi32>
        %5 = arith.index_cast %4 : i32 to index
        %c0_29 = arith.constant 0 : index
        %dim = memref.dim %3, %c0_29 : memref<?xf64>
        %6 = arith.subi %dim, %5 : index
        %c1 = arith.constant 1 : index
        %subview = memref.subview %3[%5] [%6] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
        %c0_30 = arith.constant 0 : index
        %7 = memref.load %subview[%c0_30] : memref<?xf64, strided<[?], offset: ?>>
        %c0_31 = arith.constant 0 : index
        %8 = memref.load %alloca_10[%c0_31] : memref<1xmemref<?xf64>>
        %c0_32 = arith.constant 0 : index
        %9 = memref.load %alloca_11[%c0_32] : memref<1xi32>
        %10 = arith.index_cast %9 : i32 to index
        %c0_33 = arith.constant 0 : index
        %dim_34 = memref.dim %8, %c0_33 : memref<?xf64>
        %11 = arith.subi %dim_34, %10 : index
        %c1_35 = arith.constant 1 : index
        %subview_36 = memref.subview %8[%10] [%11] [%c1_35] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
        %c0_37 = arith.constant 0 : index
        %12 = memref.load %subview_36[%c0_37] : memref<?xf64, strided<[?], offset: ?>>
        %13 = arith.addf %7, %12 : f64
        %c0_38 = arith.constant 0 : index
        %14 = memref.load %alloca_8[%c0_38] : memref<1xmemref<?xf64>>
        %c0_39 = arith.constant 0 : index
        %15 = memref.load %alloca_11[%c0_39] : memref<1xi32>
        %16 = arith.index_cast %15 : i32 to index
        %c0_40 = arith.constant 0 : index
        %dim_41 = memref.dim %14, %c0_40 : memref<?xf64>
        %17 = arith.subi %dim_41, %16 : index
        %c1_42 = arith.constant 1 : index
        %subview_43 = memref.subview %14[%16] [%17] [%c1_42] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
        %c0_44 = arith.constant 0 : index
        memref.store %13, %subview_43[%c0_44] : memref<?xf64, strided<[?], offset: ?>>
        %c0_45 = arith.constant 0 : index
        %18 = memref.load %alloca_11[%c0_45] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %19 = arith.addi %18, %c1_i32 : i32
        %c0_46 = arith.constant 0 : index
        memref.store %19, %alloca_11[%c0_46] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_25 = arith.constant 0 : i32
      %c0_26 = arith.constant 0 : index
      memref.store %c0_i32_25, %alloca_11[%c0_26] : memref<1xi32>
      scf.while : () -> () {
        %c0_27 = arith.constant 0 : index
        %3 = memref.load %alloca_11[%c0_27] : memref<1xi32>
        %c0_28 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_28] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %c0_i32_29 = arith.constant 0 : i32
          %c0_30 = arith.constant 0 : index
          memref.store %c0_i32_29, %alloca_12[%c0_30] : memref<1xi32>
          scf.while : () -> () {
            %c0_31 = arith.constant 0 : index
            %5 = memref.load %alloca_12[%c0_31] : memref<1xi32>
            %c0_32 = arith.constant 0 : index
            %6 = memref.load %alloca[%c0_32] : memref<1xi32>
            %7 = arith.cmpi slt, %5, %6 : i32
            scf.condition(%7)
          } do {
            %c0_31 = arith.constant 0 : index
            %5 = memref.load %alloca_7[%c0_31] : memref<1xmemref<?xf64>>
            %c0_32 = arith.constant 0 : index
            %6 = memref.load %alloca_11[%c0_32] : memref<1xi32>
            %7 = arith.index_cast %6 : i32 to index
            %c0_33 = arith.constant 0 : index
            %dim = memref.dim %5, %c0_33 : memref<?xf64>
            %8 = arith.subi %dim, %7 : index
            %c1 = arith.constant 1 : index
            %subview = memref.subview %5[%7] [%8] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_34 = arith.constant 0 : index
            %9 = memref.load %subview[%c0_34] : memref<?xf64, strided<[?], offset: ?>>
            %c0_35 = arith.constant 0 : index
            %10 = memref.load %alloca_0[%c0_35] : memref<1xf64>
            %c0_36 = arith.constant 0 : index
            %11 = memref.load %alloca_2[%c0_36] : memref<1xmemref<?xf64>>
            %c0_37 = arith.constant 0 : index
            %12 = memref.load %alloca_11[%c0_37] : memref<1xi32>
            %13 = arith.extsi %12 : i32 to i64
            %14 = arith.muli %13, %2 : i64
            %15 = arith.index_cast %14 : i64 to index
            %c1_38 = arith.constant 1 : index
            %c0_39 = arith.constant 0 : index
            %c0_40 = arith.constant 0 : index
            %dim_41 = memref.dim %11, %c0_40 : memref<?xf64>
            %16 = arith.subi %dim_41, %15 : index
            %subview_42 = memref.subview %11[%15] [%16] [%c1_38] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview_42 to offset: [0], sizes: [%16], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_43 = arith.constant 0 : index
            %17 = memref.load %alloca_12[%c0_43] : memref<1xi32>
            %18 = arith.index_cast %17 : i32 to index
            %c0_44 = arith.constant 0 : index
            %dim_45 = memref.dim %reinterpret_cast, %c0_44 : memref<?xf64>
            %19 = arith.subi %dim_45, %18 : index
            %c1_46 = arith.constant 1 : index
            %subview_47 = memref.subview %reinterpret_cast[%18] [%19] [%c1_46] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_48 = arith.constant 0 : index
            %20 = memref.load %subview_47[%c0_48] : memref<?xf64, strided<[?], offset: ?>>
            %21 = arith.mulf %10, %20 : f64
            %c0_49 = arith.constant 0 : index
            %22 = memref.load %alloca_8[%c0_49] : memref<1xmemref<?xf64>>
            %c0_50 = arith.constant 0 : index
            %23 = memref.load %alloca_12[%c0_50] : memref<1xi32>
            %24 = arith.index_cast %23 : i32 to index
            %c0_51 = arith.constant 0 : index
            %dim_52 = memref.dim %22, %c0_51 : memref<?xf64>
            %25 = arith.subi %dim_52, %24 : index
            %c1_53 = arith.constant 1 : index
            %subview_54 = memref.subview %22[%24] [%25] [%c1_53] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_55 = arith.constant 0 : index
            %26 = memref.load %subview_54[%c0_55] : memref<?xf64, strided<[?], offset: ?>>
            %27 = arith.mulf %21, %26 : f64
            %28 = arith.addf %9, %27 : f64
            %c0_56 = arith.constant 0 : index
            %29 = memref.load %alloca_7[%c0_56] : memref<1xmemref<?xf64>>
            %c0_57 = arith.constant 0 : index
            %30 = memref.load %alloca_11[%c0_57] : memref<1xi32>
            %31 = arith.index_cast %30 : i32 to index
            %c0_58 = arith.constant 0 : index
            %dim_59 = memref.dim %29, %c0_58 : memref<?xf64>
            %32 = arith.subi %dim_59, %31 : index
            %c1_60 = arith.constant 1 : index
            %subview_61 = memref.subview %29[%31] [%32] [%c1_60] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_62 = arith.constant 0 : index
            memref.store %28, %subview_61[%c0_62] : memref<?xf64, strided<[?], offset: ?>>
            %c0_63 = arith.constant 0 : index
            %33 = memref.load %alloca_12[%c0_63] : memref<1xi32>
            %c1_i32_64 = arith.constant 1 : i32
            %34 = arith.addi %33, %c1_i32_64 : i32
            %c0_65 = arith.constant 0 : index
            memref.store %34, %alloca_12[%c0_65] : memref<1xi32>
            scf.yield
          }
        }
        %c0_27 = arith.constant 0 : index
        %3 = memref.load %alloca_11[%c0_27] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_28 = arith.constant 0 : index
        memref.store %4, %alloca_11[%c0_28] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[119, 0]> {alignment = 1 : i64}
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
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %cast = memref.cast %alloca_3 : memref<1xf64> to memref<?xf64>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %cast_5 = memref.cast %alloca_4 : memref<1xf64> to memref<?xf64>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_8 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_9 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_10 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_11 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_12 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_13 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_14 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_15 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_15] : memref<1xmemref<?xmemref<?xi8>>>
    %c2000_i32 = arith.constant 2000 : i32
    %c0_16 = arith.constant 0 : index
    memref.store %c2000_i32, %alloca_2[%c0_16] : memref<1xi32>
    %c0_17 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_17] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_18 = arith.constant 0 : index
    %2 = memref.load %alloca_2[%c0_18] : memref<1xi32>
    %c0_i32_19 = arith.constant 0 : i32
    %3 = arith.addi %2, %c0_i32_19 : i32
    %4 = arith.muli %1, %3 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %6 = arith.trunci %c8_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xf64>
    %c0_20 = arith.constant 0 : index
    memref.store %8, %alloca_6[%c0_20] : memref<1xmemref<?xf64>>
    %c0_21 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_21] : memref<1xi32>
    %c0_i32_22 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_22 : i32
    %11 = arith.extsi %10 : i32 to i64
    %c8_i64_23 = arith.constant 8 : i64
    %12 = arith.trunci %c8_i64_23 : i64 to i32
    %13 = call @polybench_alloc_data(%11, %12) : (i64, i32) -> !llvm.ptr
    %14 = builtin.unrealized_conversion_cast %13 : !llvm.ptr to memref<?xf64>
    %c0_24 = arith.constant 0 : index
    memref.store %14, %alloca_7[%c0_24] : memref<1xmemref<?xf64>>
    %c0_25 = arith.constant 0 : index
    %15 = memref.load %alloca_2[%c0_25] : memref<1xi32>
    %c0_i32_26 = arith.constant 0 : i32
    %16 = arith.addi %15, %c0_i32_26 : i32
    %17 = arith.extsi %16 : i32 to i64
    %c8_i64_27 = arith.constant 8 : i64
    %18 = arith.trunci %c8_i64_27 : i64 to i32
    %19 = call @polybench_alloc_data(%17, %18) : (i64, i32) -> !llvm.ptr
    %20 = builtin.unrealized_conversion_cast %19 : !llvm.ptr to memref<?xf64>
    %c0_28 = arith.constant 0 : index
    memref.store %20, %alloca_8[%c0_28] : memref<1xmemref<?xf64>>
    %c0_29 = arith.constant 0 : index
    %21 = memref.load %alloca_2[%c0_29] : memref<1xi32>
    %c0_i32_30 = arith.constant 0 : i32
    %22 = arith.addi %21, %c0_i32_30 : i32
    %23 = arith.extsi %22 : i32 to i64
    %c8_i64_31 = arith.constant 8 : i64
    %24 = arith.trunci %c8_i64_31 : i64 to i32
    %25 = call @polybench_alloc_data(%23, %24) : (i64, i32) -> !llvm.ptr
    %26 = builtin.unrealized_conversion_cast %25 : !llvm.ptr to memref<?xf64>
    %c0_32 = arith.constant 0 : index
    memref.store %26, %alloca_9[%c0_32] : memref<1xmemref<?xf64>>
    %c0_33 = arith.constant 0 : index
    %27 = memref.load %alloca_2[%c0_33] : memref<1xi32>
    %c0_i32_34 = arith.constant 0 : i32
    %28 = arith.addi %27, %c0_i32_34 : i32
    %29 = arith.extsi %28 : i32 to i64
    %c8_i64_35 = arith.constant 8 : i64
    %30 = arith.trunci %c8_i64_35 : i64 to i32
    %31 = call @polybench_alloc_data(%29, %30) : (i64, i32) -> !llvm.ptr
    %32 = builtin.unrealized_conversion_cast %31 : !llvm.ptr to memref<?xf64>
    %c0_36 = arith.constant 0 : index
    memref.store %32, %alloca_10[%c0_36] : memref<1xmemref<?xf64>>
    %c0_37 = arith.constant 0 : index
    %33 = memref.load %alloca_2[%c0_37] : memref<1xi32>
    %c0_i32_38 = arith.constant 0 : i32
    %34 = arith.addi %33, %c0_i32_38 : i32
    %35 = arith.extsi %34 : i32 to i64
    %c8_i64_39 = arith.constant 8 : i64
    %36 = arith.trunci %c8_i64_39 : i64 to i32
    %37 = call @polybench_alloc_data(%35, %36) : (i64, i32) -> !llvm.ptr
    %38 = builtin.unrealized_conversion_cast %37 : !llvm.ptr to memref<?xf64>
    %c0_40 = arith.constant 0 : index
    memref.store %38, %alloca_11[%c0_40] : memref<1xmemref<?xf64>>
    %c0_41 = arith.constant 0 : index
    %39 = memref.load %alloca_2[%c0_41] : memref<1xi32>
    %c0_i32_42 = arith.constant 0 : i32
    %40 = arith.addi %39, %c0_i32_42 : i32
    %41 = arith.extsi %40 : i32 to i64
    %c8_i64_43 = arith.constant 8 : i64
    %42 = arith.trunci %c8_i64_43 : i64 to i32
    %43 = call @polybench_alloc_data(%41, %42) : (i64, i32) -> !llvm.ptr
    %44 = builtin.unrealized_conversion_cast %43 : !llvm.ptr to memref<?xf64>
    %c0_44 = arith.constant 0 : index
    memref.store %44, %alloca_12[%c0_44] : memref<1xmemref<?xf64>>
    %c0_45 = arith.constant 0 : index
    %45 = memref.load %alloca_2[%c0_45] : memref<1xi32>
    %c0_i32_46 = arith.constant 0 : i32
    %46 = arith.addi %45, %c0_i32_46 : i32
    %47 = arith.extsi %46 : i32 to i64
    %c8_i64_47 = arith.constant 8 : i64
    %48 = arith.trunci %c8_i64_47 : i64 to i32
    %49 = call @polybench_alloc_data(%47, %48) : (i64, i32) -> !llvm.ptr
    %50 = builtin.unrealized_conversion_cast %49 : !llvm.ptr to memref<?xf64>
    %c0_48 = arith.constant 0 : index
    memref.store %50, %alloca_13[%c0_48] : memref<1xmemref<?xf64>>
    %c0_49 = arith.constant 0 : index
    %51 = memref.load %alloca_2[%c0_49] : memref<1xi32>
    %c0_i32_50 = arith.constant 0 : i32
    %52 = arith.addi %51, %c0_i32_50 : i32
    %53 = arith.extsi %52 : i32 to i64
    %c8_i64_51 = arith.constant 8 : i64
    %54 = arith.trunci %c8_i64_51 : i64 to i32
    %55 = call @polybench_alloc_data(%53, %54) : (i64, i32) -> !llvm.ptr
    %56 = builtin.unrealized_conversion_cast %55 : !llvm.ptr to memref<?xf64>
    %c0_52 = arith.constant 0 : index
    memref.store %56, %alloca_14[%c0_52] : memref<1xmemref<?xf64>>
    %c0_53 = arith.constant 0 : index
    %57 = memref.load %alloca_2[%c0_53] : memref<1xi32>
    %c0_54 = arith.constant 0 : index
    %58 = memref.load %alloca_6[%c0_54] : memref<1xmemref<?xf64>>
    %c0_55 = arith.constant 0 : index
    %59 = memref.load %alloca_7[%c0_55] : memref<1xmemref<?xf64>>
    %c0_56 = arith.constant 0 : index
    %60 = memref.load %alloca_8[%c0_56] : memref<1xmemref<?xf64>>
    %c0_57 = arith.constant 0 : index
    %61 = memref.load %alloca_9[%c0_57] : memref<1xmemref<?xf64>>
    %c0_58 = arith.constant 0 : index
    %62 = memref.load %alloca_10[%c0_58] : memref<1xmemref<?xf64>>
    %c0_59 = arith.constant 0 : index
    %63 = memref.load %alloca_11[%c0_59] : memref<1xmemref<?xf64>>
    %c0_60 = arith.constant 0 : index
    %64 = memref.load %alloca_12[%c0_60] : memref<1xmemref<?xf64>>
    %c0_61 = arith.constant 0 : index
    %65 = memref.load %alloca_13[%c0_61] : memref<1xmemref<?xf64>>
    %c0_62 = arith.constant 0 : index
    %66 = memref.load %alloca_14[%c0_62] : memref<1xmemref<?xf64>>
    call @init_array(%57, %cast, %cast_5, %58, %59, %60, %61, %62, %63, %64, %65, %66) : (i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %67 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %67() : !llvm.ptr, () -> ()
    %c0_63 = arith.constant 0 : index
    %68 = memref.load %alloca_2[%c0_63] : memref<1xi32>
    %c0_64 = arith.constant 0 : index
    %69 = memref.load %alloca_3[%c0_64] : memref<1xf64>
    %c0_65 = arith.constant 0 : index
    %70 = memref.load %alloca_4[%c0_65] : memref<1xf64>
    %c0_66 = arith.constant 0 : index
    %71 = memref.load %alloca_6[%c0_66] : memref<1xmemref<?xf64>>
    %c0_67 = arith.constant 0 : index
    %72 = memref.load %alloca_7[%c0_67] : memref<1xmemref<?xf64>>
    %c0_68 = arith.constant 0 : index
    %73 = memref.load %alloca_8[%c0_68] : memref<1xmemref<?xf64>>
    %c0_69 = arith.constant 0 : index
    %74 = memref.load %alloca_9[%c0_69] : memref<1xmemref<?xf64>>
    %c0_70 = arith.constant 0 : index
    %75 = memref.load %alloca_10[%c0_70] : memref<1xmemref<?xf64>>
    %c0_71 = arith.constant 0 : index
    %76 = memref.load %alloca_11[%c0_71] : memref<1xmemref<?xf64>>
    %c0_72 = arith.constant 0 : index
    %77 = memref.load %alloca_12[%c0_72] : memref<1xmemref<?xf64>>
    %c0_73 = arith.constant 0 : index
    %78 = memref.load %alloca_13[%c0_73] : memref<1xmemref<?xf64>>
    %c0_74 = arith.constant 0 : index
    %79 = memref.load %alloca_14[%c0_74] : memref<1xmemref<?xf64>>
    call @kernel_gemver(%68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79) : (i32, f64, f64, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %80 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %80() : !llvm.ptr, () -> ()
    %81 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %81() : !llvm.ptr, () -> ()
    %c0_75 = arith.constant 0 : index
    %82 = memref.load %alloca_2[%c0_75] : memref<1xi32>
    %c0_76 = arith.constant 0 : index
    %83 = memref.load %alloca_11[%c0_76] : memref<1xmemref<?xf64>>
    call @print_array(%82, %83) : (i32, memref<?xf64>) -> ()
    %c0_77 = arith.constant 0 : index
    %84 = memref.load %alloca_6[%c0_77] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %84 : memref<?xf64> -> index
    %85 = arith.index_castui %intptr : index to i64
    %86 = llvm.inttoptr %85 : i64 to !llvm.ptr
    call @free(%86) : (!llvm.ptr) -> ()
    %c0_78 = arith.constant 0 : index
    %87 = memref.load %alloca_7[%c0_78] : memref<1xmemref<?xf64>>
    %intptr_79 = memref.extract_aligned_pointer_as_index %87 : memref<?xf64> -> index
    %88 = arith.index_castui %intptr_79 : index to i64
    %89 = llvm.inttoptr %88 : i64 to !llvm.ptr
    call @free(%89) : (!llvm.ptr) -> ()
    %c0_80 = arith.constant 0 : index
    %90 = memref.load %alloca_8[%c0_80] : memref<1xmemref<?xf64>>
    %intptr_81 = memref.extract_aligned_pointer_as_index %90 : memref<?xf64> -> index
    %91 = arith.index_castui %intptr_81 : index to i64
    %92 = llvm.inttoptr %91 : i64 to !llvm.ptr
    call @free(%92) : (!llvm.ptr) -> ()
    %c0_82 = arith.constant 0 : index
    %93 = memref.load %alloca_9[%c0_82] : memref<1xmemref<?xf64>>
    %intptr_83 = memref.extract_aligned_pointer_as_index %93 : memref<?xf64> -> index
    %94 = arith.index_castui %intptr_83 : index to i64
    %95 = llvm.inttoptr %94 : i64 to !llvm.ptr
    call @free(%95) : (!llvm.ptr) -> ()
    %c0_84 = arith.constant 0 : index
    %96 = memref.load %alloca_10[%c0_84] : memref<1xmemref<?xf64>>
    %intptr_85 = memref.extract_aligned_pointer_as_index %96 : memref<?xf64> -> index
    %97 = arith.index_castui %intptr_85 : index to i64
    %98 = llvm.inttoptr %97 : i64 to !llvm.ptr
    call @free(%98) : (!llvm.ptr) -> ()
    %c0_86 = arith.constant 0 : index
    %99 = memref.load %alloca_11[%c0_86] : memref<1xmemref<?xf64>>
    %intptr_87 = memref.extract_aligned_pointer_as_index %99 : memref<?xf64> -> index
    %100 = arith.index_castui %intptr_87 : index to i64
    %101 = llvm.inttoptr %100 : i64 to !llvm.ptr
    call @free(%101) : (!llvm.ptr) -> ()
    %c0_88 = arith.constant 0 : index
    %102 = memref.load %alloca_12[%c0_88] : memref<1xmemref<?xf64>>
    %intptr_89 = memref.extract_aligned_pointer_as_index %102 : memref<?xf64> -> index
    %103 = arith.index_castui %intptr_89 : index to i64
    %104 = llvm.inttoptr %103 : i64 to !llvm.ptr
    call @free(%104) : (!llvm.ptr) -> ()
    %c0_90 = arith.constant 0 : index
    %105 = memref.load %alloca_13[%c0_90] : memref<1xmemref<?xf64>>
    %intptr_91 = memref.extract_aligned_pointer_as_index %105 : memref<?xf64> -> index
    %106 = arith.index_castui %intptr_91 : index to i64
    %107 = llvm.inttoptr %106 : i64 to !llvm.ptr
    call @free(%107) : (!llvm.ptr) -> ()
    %c0_92 = arith.constant 0 : index
    %108 = memref.load %alloca_14[%c0_92] : memref<1xmemref<?xf64>>
    %intptr_93 = memref.extract_aligned_pointer_as_index %108 : memref<?xf64> -> index
    %109 = arith.index_castui %intptr_93 : index to i64
    %110 = llvm.inttoptr %109 : i64 to !llvm.ptr
    call @free(%110) : (!llvm.ptr) -> ()
    %c0_i32_94 = arith.constant 0 : i32
    %c0_95 = arith.constant 0 : index
    memref.store %c0_i32_94, %alloca_1[%c0_95] : memref<1xi32>
    %c0_96 = arith.constant 0 : index
    %111 = memref.load %alloca_1[%c0_96] : memref<1xi32>
    return %111 : i32
  }
}

