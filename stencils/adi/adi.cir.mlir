module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/stencils/adi/adi.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
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
            memref.alloca_scope  {
              %c0_14 = arith.constant 0 : index
              %7 = memref.load %alloca_1[%c0_14] : memref<1xi32>
              %c0_15 = arith.constant 0 : index
              %8 = memref.load %alloca[%c0_15] : memref<1xi32>
              %9 = arith.addi %7, %8 : i32
              %c0_16 = arith.constant 0 : index
              %10 = memref.load %alloca_2[%c0_16] : memref<1xi32>
              %11 = arith.subi %9, %10 : i32
              %12 = arith.sitofp %11 : i32 to f64
              %c0_17 = arith.constant 0 : index
              %13 = memref.load %alloca[%c0_17] : memref<1xi32>
              %14 = arith.sitofp %13 : i32 to f64
              %15 = arith.divf %12, %14 : f64
              %c0_18 = arith.constant 0 : index
              %16 = memref.load %alloca_0[%c0_18] : memref<1xmemref<?xf64>>
              %c0_19 = arith.constant 0 : index
              %17 = memref.load %alloca_1[%c0_19] : memref<1xi32>
              %18 = arith.extsi %17 : i32 to i64
              %19 = arith.muli %18, %2 : i64
              %20 = arith.index_cast %19 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_20 = arith.constant 0 : index
              %c0_21 = arith.constant 0 : index
              %dim = memref.dim %16, %c0_21 : memref<?xf64>
              %21 = arith.subi %dim, %20 : index
              %subview = memref.subview %16[%20] [%21] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%21], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_22 = arith.constant 0 : index
              %22 = memref.load %alloca_2[%c0_22] : memref<1xi32>
              %23 = arith.index_cast %22 : i32 to index
              %c0_23 = arith.constant 0 : index
              %dim_24 = memref.dim %reinterpret_cast, %c0_23 : memref<?xf64>
              %24 = arith.subi %dim_24, %23 : index
              %c1_25 = arith.constant 1 : index
              %subview_26 = memref.subview %reinterpret_cast[%23] [%24] [%c1_25] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_27 = arith.constant 0 : index
              memref.store %15, %subview_26[%c0_27] : memref<?xf64, strided<[?], offset: ?>>
            }
            %c0_11 = arith.constant 0 : index
            %5 = memref.load %alloca_2[%c0_11] : memref<1xi32>
            %c1_i32_12 = arith.constant 1 : i32
            %6 = arith.addi %5, %c1_i32_12 : i32
            %c0_13 = arith.constant 0 : index
            memref.store %6, %alloca_2[%c0_13] : memref<1xi32>
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
  func.func private @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_7 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_8 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_9 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_10 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_11 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_12 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_13 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_14 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_15 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_16 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_17 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_18 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_19 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_20 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_21 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_21] : memref<1xi32>
    %c0_22 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_22] : memref<1xmemref<?xf64>>
    %c0_23 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_23] : memref<1xmemref<?xf64>>
    %c0_24 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_24] : memref<1xmemref<?xf64>>
    %c0_25 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_25] : memref<1xmemref<?xf64>>
    %c0_26 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_26] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_27 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_27] : memref<1xi32>
    %c0_i32_28 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_28 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_29 = arith.constant 0 : index
    %6 = memref.load %alloca_0[%c0_29] : memref<1xi32>
    %c0_i32_30 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_30 : i32
    %8 = arith.extsi %7 : i32 to i64
    %c0_31 = arith.constant 0 : index
    %9 = memref.load %alloca_0[%c0_31] : memref<1xi32>
    %c0_i32_32 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_32 : i32
    %11 = arith.extsi %10 : i32 to i64
    %cst = arith.constant 1.000000e+00 : f64
    %c0_33 = arith.constant 0 : index
    %12 = memref.load %alloca_0[%c0_33] : memref<1xi32>
    %13 = arith.sitofp %12 : i32 to f64
    %14 = arith.divf %cst, %13 : f64
    %c0_34 = arith.constant 0 : index
    memref.store %14, %alloca_8[%c0_34] : memref<1xf64>
    %cst_35 = arith.constant 1.000000e+00 : f64
    %c0_36 = arith.constant 0 : index
    %15 = memref.load %alloca_0[%c0_36] : memref<1xi32>
    %16 = arith.sitofp %15 : i32 to f64
    %17 = arith.divf %cst_35, %16 : f64
    %c0_37 = arith.constant 0 : index
    memref.store %17, %alloca_9[%c0_37] : memref<1xf64>
    %cst_38 = arith.constant 1.000000e+00 : f64
    %c0_39 = arith.constant 0 : index
    %18 = memref.load %alloca[%c0_39] : memref<1xi32>
    %19 = arith.sitofp %18 : i32 to f64
    %20 = arith.divf %cst_38, %19 : f64
    %c0_40 = arith.constant 0 : index
    memref.store %20, %alloca_10[%c0_40] : memref<1xf64>
    %cst_41 = arith.constant 2.000000e+00 : f64
    %c0_42 = arith.constant 0 : index
    memref.store %cst_41, %alloca_11[%c0_42] : memref<1xf64>
    %cst_43 = arith.constant 1.000000e+00 : f64
    %c0_44 = arith.constant 0 : index
    memref.store %cst_43, %alloca_12[%c0_44] : memref<1xf64>
    %c0_45 = arith.constant 0 : index
    %21 = memref.load %alloca_11[%c0_45] : memref<1xf64>
    %c0_46 = arith.constant 0 : index
    %22 = memref.load %alloca_10[%c0_46] : memref<1xf64>
    %23 = arith.mulf %21, %22 : f64
    %c0_47 = arith.constant 0 : index
    %24 = memref.load %alloca_8[%c0_47] : memref<1xf64>
    %c0_48 = arith.constant 0 : index
    %25 = memref.load %alloca_8[%c0_48] : memref<1xf64>
    %26 = arith.mulf %24, %25 : f64
    %27 = arith.divf %23, %26 : f64
    %c0_49 = arith.constant 0 : index
    memref.store %27, %alloca_13[%c0_49] : memref<1xf64>
    %c0_50 = arith.constant 0 : index
    %28 = memref.load %alloca_12[%c0_50] : memref<1xf64>
    %c0_51 = arith.constant 0 : index
    %29 = memref.load %alloca_10[%c0_51] : memref<1xf64>
    %30 = arith.mulf %28, %29 : f64
    %c0_52 = arith.constant 0 : index
    %31 = memref.load %alloca_9[%c0_52] : memref<1xf64>
    %c0_53 = arith.constant 0 : index
    %32 = memref.load %alloca_9[%c0_53] : memref<1xf64>
    %33 = arith.mulf %31, %32 : f64
    %34 = arith.divf %30, %33 : f64
    %c0_54 = arith.constant 0 : index
    memref.store %34, %alloca_14[%c0_54] : memref<1xf64>
    %c0_55 = arith.constant 0 : index
    %35 = memref.load %alloca_13[%c0_55] : memref<1xf64>
    %cst_56 = arith.constant 0.000000e+00 : f64
    %36 = arith.subf %cst_56, %35 : f64
    %cst_57 = arith.constant 2.000000e+00 : f64
    %37 = arith.divf %36, %cst_57 : f64
    %c0_58 = arith.constant 0 : index
    memref.store %37, %alloca_15[%c0_58] : memref<1xf64>
    %cst_59 = arith.constant 1.000000e+00 : f64
    %c0_60 = arith.constant 0 : index
    %38 = memref.load %alloca_13[%c0_60] : memref<1xf64>
    %39 = arith.addf %cst_59, %38 : f64
    %c0_61 = arith.constant 0 : index
    memref.store %39, %alloca_16[%c0_61] : memref<1xf64>
    %c0_62 = arith.constant 0 : index
    %40 = memref.load %alloca_15[%c0_62] : memref<1xf64>
    %c0_63 = arith.constant 0 : index
    memref.store %40, %alloca_17[%c0_63] : memref<1xf64>
    %c0_64 = arith.constant 0 : index
    %41 = memref.load %alloca_14[%c0_64] : memref<1xf64>
    %cst_65 = arith.constant 0.000000e+00 : f64
    %42 = arith.subf %cst_65, %41 : f64
    %cst_66 = arith.constant 2.000000e+00 : f64
    %43 = arith.divf %42, %cst_66 : f64
    %c0_67 = arith.constant 0 : index
    memref.store %43, %alloca_18[%c0_67] : memref<1xf64>
    %cst_68 = arith.constant 1.000000e+00 : f64
    %c0_69 = arith.constant 0 : index
    %44 = memref.load %alloca_14[%c0_69] : memref<1xf64>
    %45 = arith.addf %cst_68, %44 : f64
    %c0_70 = arith.constant 0 : index
    memref.store %45, %alloca_19[%c0_70] : memref<1xf64>
    %c0_71 = arith.constant 0 : index
    %46 = memref.load %alloca_18[%c0_71] : memref<1xf64>
    %c0_72 = arith.constant 0 : index
    memref.store %46, %alloca_20[%c0_72] : memref<1xf64>
    memref.alloca_scope  {
      %c1_i32 = arith.constant 1 : i32
      %c0_73 = arith.constant 0 : index
      memref.store %c1_i32, %alloca_5[%c0_73] : memref<1xi32>
      scf.while : () -> () {
        %c0_74 = arith.constant 0 : index
        %47 = memref.load %alloca_5[%c0_74] : memref<1xi32>
        %c0_75 = arith.constant 0 : index
        %48 = memref.load %alloca[%c0_75] : memref<1xi32>
        %49 = arith.cmpi sle, %47, %48 : i32
        scf.condition(%49)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c1_i32_77 = arith.constant 1 : i32
            %c0_78 = arith.constant 0 : index
            memref.store %c1_i32_77, %alloca_6[%c0_78] : memref<1xi32>
            scf.while : () -> () {
              %c0_79 = arith.constant 0 : index
              %49 = memref.load %alloca_6[%c0_79] : memref<1xi32>
              %c0_80 = arith.constant 0 : index
              %50 = memref.load %alloca_0[%c0_80] : memref<1xi32>
              %c1_i32_81 = arith.constant 1 : i32
              %51 = arith.subi %50, %c1_i32_81 : i32
              %52 = arith.cmpi slt, %49, %51 : i32
              scf.condition(%52)
            } do {
              memref.alloca_scope  {
                %cst_82 = arith.constant 1.000000e+00 : f64
                %c0_83 = arith.constant 0 : index
                %51 = memref.load %alloca_2[%c0_83] : memref<1xmemref<?xf64>>
                %c0_i32_84 = arith.constant 0 : i32
                %52 = arith.extsi %c0_i32_84 : i32 to i64
                %53 = arith.muli %52, %5 : i64
                %54 = arith.index_cast %53 : i64 to index
                %c1 = arith.constant 1 : index
                %c0_85 = arith.constant 0 : index
                %c0_86 = arith.constant 0 : index
                %dim = memref.dim %51, %c0_86 : memref<?xf64>
                %55 = arith.subi %dim, %54 : index
                %subview = memref.subview %51[%54] [%55] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%55], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_87 = arith.constant 0 : index
                %56 = memref.load %alloca_6[%c0_87] : memref<1xi32>
                %57 = arith.index_cast %56 : i32 to index
                %c0_88 = arith.constant 0 : index
                %dim_89 = memref.dim %reinterpret_cast, %c0_88 : memref<?xf64>
                %58 = arith.subi %dim_89, %57 : index
                %c1_90 = arith.constant 1 : index
                %subview_91 = memref.subview %reinterpret_cast[%57] [%58] [%c1_90] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_92 = arith.constant 0 : index
                memref.store %cst_82, %subview_91[%c0_92] : memref<?xf64, strided<[?], offset: ?>>
                %cst_93 = arith.constant 0.000000e+00 : f64
                %c0_94 = arith.constant 0 : index
                %59 = memref.load %alloca_3[%c0_94] : memref<1xmemref<?xf64>>
                %c0_95 = arith.constant 0 : index
                %60 = memref.load %alloca_6[%c0_95] : memref<1xi32>
                %61 = arith.extsi %60 : i32 to i64
                %62 = arith.muli %61, %8 : i64
                %63 = arith.index_cast %62 : i64 to index
                %c1_96 = arith.constant 1 : index
                %c0_97 = arith.constant 0 : index
                %c0_98 = arith.constant 0 : index
                %dim_99 = memref.dim %59, %c0_98 : memref<?xf64>
                %64 = arith.subi %dim_99, %63 : index
                %subview_100 = memref.subview %59[%63] [%64] [%c1_96] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_101 = memref.reinterpret_cast %subview_100 to offset: [0], sizes: [%64], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_i32_102 = arith.constant 0 : i32
                %65 = arith.index_cast %c0_i32_102 : i32 to index
                %c0_103 = arith.constant 0 : index
                %dim_104 = memref.dim %reinterpret_cast_101, %c0_103 : memref<?xf64>
                %66 = arith.subi %dim_104, %65 : index
                %c1_105 = arith.constant 1 : index
                %subview_106 = memref.subview %reinterpret_cast_101[%65] [%66] [%c1_105] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_107 = arith.constant 0 : index
                memref.store %cst_93, %subview_106[%c0_107] : memref<?xf64, strided<[?], offset: ?>>
                %c0_108 = arith.constant 0 : index
                %67 = memref.load %alloca_2[%c0_108] : memref<1xmemref<?xf64>>
                %c0_i32_109 = arith.constant 0 : i32
                %68 = arith.extsi %c0_i32_109 : i32 to i64
                %69 = arith.muli %68, %5 : i64
                %70 = arith.index_cast %69 : i64 to index
                %c1_110 = arith.constant 1 : index
                %c0_111 = arith.constant 0 : index
                %c0_112 = arith.constant 0 : index
                %dim_113 = memref.dim %67, %c0_112 : memref<?xf64>
                %71 = arith.subi %dim_113, %70 : index
                %subview_114 = memref.subview %67[%70] [%71] [%c1_110] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_115 = memref.reinterpret_cast %subview_114 to offset: [0], sizes: [%71], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_116 = arith.constant 0 : index
                %72 = memref.load %alloca_6[%c0_116] : memref<1xi32>
                %73 = arith.index_cast %72 : i32 to index
                %c0_117 = arith.constant 0 : index
                %dim_118 = memref.dim %reinterpret_cast_115, %c0_117 : memref<?xf64>
                %74 = arith.subi %dim_118, %73 : index
                %c1_119 = arith.constant 1 : index
                %subview_120 = memref.subview %reinterpret_cast_115[%73] [%74] [%c1_119] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_121 = arith.constant 0 : index
                %75 = memref.load %subview_120[%c0_121] : memref<?xf64, strided<[?], offset: ?>>
                %c0_122 = arith.constant 0 : index
                %76 = memref.load %alloca_4[%c0_122] : memref<1xmemref<?xf64>>
                %c0_123 = arith.constant 0 : index
                %77 = memref.load %alloca_6[%c0_123] : memref<1xi32>
                %78 = arith.extsi %77 : i32 to i64
                %79 = arith.muli %78, %11 : i64
                %80 = arith.index_cast %79 : i64 to index
                %c1_124 = arith.constant 1 : index
                %c0_125 = arith.constant 0 : index
                %c0_126 = arith.constant 0 : index
                %dim_127 = memref.dim %76, %c0_126 : memref<?xf64>
                %81 = arith.subi %dim_127, %80 : index
                %subview_128 = memref.subview %76[%80] [%81] [%c1_124] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_129 = memref.reinterpret_cast %subview_128 to offset: [0], sizes: [%81], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_i32_130 = arith.constant 0 : i32
                %82 = arith.index_cast %c0_i32_130 : i32 to index
                %c0_131 = arith.constant 0 : index
                %dim_132 = memref.dim %reinterpret_cast_129, %c0_131 : memref<?xf64>
                %83 = arith.subi %dim_132, %82 : index
                %c1_133 = arith.constant 1 : index
                %subview_134 = memref.subview %reinterpret_cast_129[%82] [%83] [%c1_133] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_135 = arith.constant 0 : index
                memref.store %75, %subview_134[%c0_135] : memref<?xf64, strided<[?], offset: ?>>
                memref.alloca_scope  {
                  %c1_i32_152 = arith.constant 1 : i32
                  %c0_153 = arith.constant 0 : index
                  memref.store %c1_i32_152, %alloca_7[%c0_153] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_154 = arith.constant 0 : index
                    %94 = memref.load %alloca_7[%c0_154] : memref<1xi32>
                    %c0_155 = arith.constant 0 : index
                    %95 = memref.load %alloca_0[%c0_155] : memref<1xi32>
                    %c1_i32_156 = arith.constant 1 : i32
                    %96 = arith.subi %95, %c1_i32_156 : i32
                    %97 = arith.cmpi slt, %94, %96 : i32
                    scf.condition(%97)
                  } do {
                    memref.alloca_scope  {
                      %c0_157 = arith.constant 0 : index
                      %96 = memref.load %alloca_17[%c0_157] : memref<1xf64>
                      %cst_158 = arith.constant 0.000000e+00 : f64
                      %97 = arith.subf %cst_158, %96 : f64
                      %c0_159 = arith.constant 0 : index
                      %98 = memref.load %alloca_15[%c0_159] : memref<1xf64>
                      %c0_160 = arith.constant 0 : index
                      %99 = memref.load %alloca_3[%c0_160] : memref<1xmemref<?xf64>>
                      %c0_161 = arith.constant 0 : index
                      %100 = memref.load %alloca_6[%c0_161] : memref<1xi32>
                      %101 = arith.extsi %100 : i32 to i64
                      %102 = arith.muli %101, %8 : i64
                      %103 = arith.index_cast %102 : i64 to index
                      %c1_162 = arith.constant 1 : index
                      %c0_163 = arith.constant 0 : index
                      %c0_164 = arith.constant 0 : index
                      %dim_165 = memref.dim %99, %c0_164 : memref<?xf64>
                      %104 = arith.subi %dim_165, %103 : index
                      %subview_166 = memref.subview %99[%103] [%104] [%c1_162] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_167 = memref.reinterpret_cast %subview_166 to offset: [0], sizes: [%104], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_168 = arith.constant 0 : index
                      %105 = memref.load %alloca_7[%c0_168] : memref<1xi32>
                      %c1_i32_169 = arith.constant 1 : i32
                      %106 = arith.subi %105, %c1_i32_169 : i32
                      %107 = arith.index_cast %106 : i32 to index
                      %c0_170 = arith.constant 0 : index
                      %dim_171 = memref.dim %reinterpret_cast_167, %c0_170 : memref<?xf64>
                      %108 = arith.subi %dim_171, %107 : index
                      %c1_172 = arith.constant 1 : index
                      %subview_173 = memref.subview %reinterpret_cast_167[%107] [%108] [%c1_172] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_174 = arith.constant 0 : index
                      %109 = memref.load %subview_173[%c0_174] : memref<?xf64, strided<[?], offset: ?>>
                      %110 = arith.mulf %98, %109 : f64
                      %c0_175 = arith.constant 0 : index
                      %111 = memref.load %alloca_16[%c0_175] : memref<1xf64>
                      %112 = arith.addf %110, %111 : f64
                      %113 = arith.divf %97, %112 : f64
                      %c0_176 = arith.constant 0 : index
                      %114 = memref.load %alloca_3[%c0_176] : memref<1xmemref<?xf64>>
                      %c0_177 = arith.constant 0 : index
                      %115 = memref.load %alloca_6[%c0_177] : memref<1xi32>
                      %116 = arith.extsi %115 : i32 to i64
                      %117 = arith.muli %116, %8 : i64
                      %118 = arith.index_cast %117 : i64 to index
                      %c1_178 = arith.constant 1 : index
                      %c0_179 = arith.constant 0 : index
                      %c0_180 = arith.constant 0 : index
                      %dim_181 = memref.dim %114, %c0_180 : memref<?xf64>
                      %119 = arith.subi %dim_181, %118 : index
                      %subview_182 = memref.subview %114[%118] [%119] [%c1_178] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_183 = memref.reinterpret_cast %subview_182 to offset: [0], sizes: [%119], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_184 = arith.constant 0 : index
                      %120 = memref.load %alloca_7[%c0_184] : memref<1xi32>
                      %121 = arith.index_cast %120 : i32 to index
                      %c0_185 = arith.constant 0 : index
                      %dim_186 = memref.dim %reinterpret_cast_183, %c0_185 : memref<?xf64>
                      %122 = arith.subi %dim_186, %121 : index
                      %c1_187 = arith.constant 1 : index
                      %subview_188 = memref.subview %reinterpret_cast_183[%121] [%122] [%c1_187] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_189 = arith.constant 0 : index
                      memref.store %113, %subview_188[%c0_189] : memref<?xf64, strided<[?], offset: ?>>
                      %c0_190 = arith.constant 0 : index
                      %123 = memref.load %alloca_18[%c0_190] : memref<1xf64>
                      %cst_191 = arith.constant 0.000000e+00 : f64
                      %124 = arith.subf %cst_191, %123 : f64
                      %c0_192 = arith.constant 0 : index
                      %125 = memref.load %alloca_1[%c0_192] : memref<1xmemref<?xf64>>
                      %c0_193 = arith.constant 0 : index
                      %126 = memref.load %alloca_7[%c0_193] : memref<1xi32>
                      %127 = arith.extsi %126 : i32 to i64
                      %128 = arith.muli %127, %2 : i64
                      %129 = arith.index_cast %128 : i64 to index
                      %c1_194 = arith.constant 1 : index
                      %c0_195 = arith.constant 0 : index
                      %c0_196 = arith.constant 0 : index
                      %dim_197 = memref.dim %125, %c0_196 : memref<?xf64>
                      %130 = arith.subi %dim_197, %129 : index
                      %subview_198 = memref.subview %125[%129] [%130] [%c1_194] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_199 = memref.reinterpret_cast %subview_198 to offset: [0], sizes: [%130], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_200 = arith.constant 0 : index
                      %131 = memref.load %alloca_6[%c0_200] : memref<1xi32>
                      %c1_i32_201 = arith.constant 1 : i32
                      %132 = arith.subi %131, %c1_i32_201 : i32
                      %133 = arith.index_cast %132 : i32 to index
                      %c0_202 = arith.constant 0 : index
                      %dim_203 = memref.dim %reinterpret_cast_199, %c0_202 : memref<?xf64>
                      %134 = arith.subi %dim_203, %133 : index
                      %c1_204 = arith.constant 1 : index
                      %subview_205 = memref.subview %reinterpret_cast_199[%133] [%134] [%c1_204] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_206 = arith.constant 0 : index
                      %135 = memref.load %subview_205[%c0_206] : memref<?xf64, strided<[?], offset: ?>>
                      %136 = arith.mulf %124, %135 : f64
                      %cst_207 = arith.constant 1.000000e+00 : f64
                      %cst_208 = arith.constant 2.000000e+00 : f64
                      %c0_209 = arith.constant 0 : index
                      %137 = memref.load %alloca_18[%c0_209] : memref<1xf64>
                      %138 = arith.mulf %cst_208, %137 : f64
                      %139 = arith.addf %cst_207, %138 : f64
                      %c0_210 = arith.constant 0 : index
                      %140 = memref.load %alloca_1[%c0_210] : memref<1xmemref<?xf64>>
                      %c0_211 = arith.constant 0 : index
                      %141 = memref.load %alloca_7[%c0_211] : memref<1xi32>
                      %142 = arith.extsi %141 : i32 to i64
                      %143 = arith.muli %142, %2 : i64
                      %144 = arith.index_cast %143 : i64 to index
                      %c1_212 = arith.constant 1 : index
                      %c0_213 = arith.constant 0 : index
                      %c0_214 = arith.constant 0 : index
                      %dim_215 = memref.dim %140, %c0_214 : memref<?xf64>
                      %145 = arith.subi %dim_215, %144 : index
                      %subview_216 = memref.subview %140[%144] [%145] [%c1_212] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_217 = memref.reinterpret_cast %subview_216 to offset: [0], sizes: [%145], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_218 = arith.constant 0 : index
                      %146 = memref.load %alloca_6[%c0_218] : memref<1xi32>
                      %147 = arith.index_cast %146 : i32 to index
                      %c0_219 = arith.constant 0 : index
                      %dim_220 = memref.dim %reinterpret_cast_217, %c0_219 : memref<?xf64>
                      %148 = arith.subi %dim_220, %147 : index
                      %c1_221 = arith.constant 1 : index
                      %subview_222 = memref.subview %reinterpret_cast_217[%147] [%148] [%c1_221] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_223 = arith.constant 0 : index
                      %149 = memref.load %subview_222[%c0_223] : memref<?xf64, strided<[?], offset: ?>>
                      %150 = arith.mulf %139, %149 : f64
                      %151 = arith.addf %136, %150 : f64
                      %c0_224 = arith.constant 0 : index
                      %152 = memref.load %alloca_20[%c0_224] : memref<1xf64>
                      %c0_225 = arith.constant 0 : index
                      %153 = memref.load %alloca_1[%c0_225] : memref<1xmemref<?xf64>>
                      %c0_226 = arith.constant 0 : index
                      %154 = memref.load %alloca_7[%c0_226] : memref<1xi32>
                      %155 = arith.extsi %154 : i32 to i64
                      %156 = arith.muli %155, %2 : i64
                      %157 = arith.index_cast %156 : i64 to index
                      %c1_227 = arith.constant 1 : index
                      %c0_228 = arith.constant 0 : index
                      %c0_229 = arith.constant 0 : index
                      %dim_230 = memref.dim %153, %c0_229 : memref<?xf64>
                      %158 = arith.subi %dim_230, %157 : index
                      %subview_231 = memref.subview %153[%157] [%158] [%c1_227] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_232 = memref.reinterpret_cast %subview_231 to offset: [0], sizes: [%158], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_233 = arith.constant 0 : index
                      %159 = memref.load %alloca_6[%c0_233] : memref<1xi32>
                      %c1_i32_234 = arith.constant 1 : i32
                      %160 = arith.addi %159, %c1_i32_234 : i32
                      %161 = arith.index_cast %160 : i32 to index
                      %c0_235 = arith.constant 0 : index
                      %dim_236 = memref.dim %reinterpret_cast_232, %c0_235 : memref<?xf64>
                      %162 = arith.subi %dim_236, %161 : index
                      %c1_237 = arith.constant 1 : index
                      %subview_238 = memref.subview %reinterpret_cast_232[%161] [%162] [%c1_237] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_239 = arith.constant 0 : index
                      %163 = memref.load %subview_238[%c0_239] : memref<?xf64, strided<[?], offset: ?>>
                      %164 = arith.mulf %152, %163 : f64
                      %165 = arith.subf %151, %164 : f64
                      %c0_240 = arith.constant 0 : index
                      %166 = memref.load %alloca_15[%c0_240] : memref<1xf64>
                      %c0_241 = arith.constant 0 : index
                      %167 = memref.load %alloca_4[%c0_241] : memref<1xmemref<?xf64>>
                      %c0_242 = arith.constant 0 : index
                      %168 = memref.load %alloca_6[%c0_242] : memref<1xi32>
                      %169 = arith.extsi %168 : i32 to i64
                      %170 = arith.muli %169, %11 : i64
                      %171 = arith.index_cast %170 : i64 to index
                      %c1_243 = arith.constant 1 : index
                      %c0_244 = arith.constant 0 : index
                      %c0_245 = arith.constant 0 : index
                      %dim_246 = memref.dim %167, %c0_245 : memref<?xf64>
                      %172 = arith.subi %dim_246, %171 : index
                      %subview_247 = memref.subview %167[%171] [%172] [%c1_243] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_248 = memref.reinterpret_cast %subview_247 to offset: [0], sizes: [%172], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_249 = arith.constant 0 : index
                      %173 = memref.load %alloca_7[%c0_249] : memref<1xi32>
                      %c1_i32_250 = arith.constant 1 : i32
                      %174 = arith.subi %173, %c1_i32_250 : i32
                      %175 = arith.index_cast %174 : i32 to index
                      %c0_251 = arith.constant 0 : index
                      %dim_252 = memref.dim %reinterpret_cast_248, %c0_251 : memref<?xf64>
                      %176 = arith.subi %dim_252, %175 : index
                      %c1_253 = arith.constant 1 : index
                      %subview_254 = memref.subview %reinterpret_cast_248[%175] [%176] [%c1_253] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_255 = arith.constant 0 : index
                      %177 = memref.load %subview_254[%c0_255] : memref<?xf64, strided<[?], offset: ?>>
                      %178 = arith.mulf %166, %177 : f64
                      %179 = arith.subf %165, %178 : f64
                      %c0_256 = arith.constant 0 : index
                      %180 = memref.load %alloca_15[%c0_256] : memref<1xf64>
                      %c0_257 = arith.constant 0 : index
                      %181 = memref.load %alloca_3[%c0_257] : memref<1xmemref<?xf64>>
                      %c0_258 = arith.constant 0 : index
                      %182 = memref.load %alloca_6[%c0_258] : memref<1xi32>
                      %183 = arith.extsi %182 : i32 to i64
                      %184 = arith.muli %183, %8 : i64
                      %185 = arith.index_cast %184 : i64 to index
                      %c1_259 = arith.constant 1 : index
                      %c0_260 = arith.constant 0 : index
                      %c0_261 = arith.constant 0 : index
                      %dim_262 = memref.dim %181, %c0_261 : memref<?xf64>
                      %186 = arith.subi %dim_262, %185 : index
                      %subview_263 = memref.subview %181[%185] [%186] [%c1_259] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_264 = memref.reinterpret_cast %subview_263 to offset: [0], sizes: [%186], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_265 = arith.constant 0 : index
                      %187 = memref.load %alloca_7[%c0_265] : memref<1xi32>
                      %c1_i32_266 = arith.constant 1 : i32
                      %188 = arith.subi %187, %c1_i32_266 : i32
                      %189 = arith.index_cast %188 : i32 to index
                      %c0_267 = arith.constant 0 : index
                      %dim_268 = memref.dim %reinterpret_cast_264, %c0_267 : memref<?xf64>
                      %190 = arith.subi %dim_268, %189 : index
                      %c1_269 = arith.constant 1 : index
                      %subview_270 = memref.subview %reinterpret_cast_264[%189] [%190] [%c1_269] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_271 = arith.constant 0 : index
                      %191 = memref.load %subview_270[%c0_271] : memref<?xf64, strided<[?], offset: ?>>
                      %192 = arith.mulf %180, %191 : f64
                      %c0_272 = arith.constant 0 : index
                      %193 = memref.load %alloca_16[%c0_272] : memref<1xf64>
                      %194 = arith.addf %192, %193 : f64
                      %195 = arith.divf %179, %194 : f64
                      %c0_273 = arith.constant 0 : index
                      %196 = memref.load %alloca_4[%c0_273] : memref<1xmemref<?xf64>>
                      %c0_274 = arith.constant 0 : index
                      %197 = memref.load %alloca_6[%c0_274] : memref<1xi32>
                      %198 = arith.extsi %197 : i32 to i64
                      %199 = arith.muli %198, %11 : i64
                      %200 = arith.index_cast %199 : i64 to index
                      %c1_275 = arith.constant 1 : index
                      %c0_276 = arith.constant 0 : index
                      %c0_277 = arith.constant 0 : index
                      %dim_278 = memref.dim %196, %c0_277 : memref<?xf64>
                      %201 = arith.subi %dim_278, %200 : index
                      %subview_279 = memref.subview %196[%200] [%201] [%c1_275] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_280 = memref.reinterpret_cast %subview_279 to offset: [0], sizes: [%201], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_281 = arith.constant 0 : index
                      %202 = memref.load %alloca_7[%c0_281] : memref<1xi32>
                      %203 = arith.index_cast %202 : i32 to index
                      %c0_282 = arith.constant 0 : index
                      %dim_283 = memref.dim %reinterpret_cast_280, %c0_282 : memref<?xf64>
                      %204 = arith.subi %dim_283, %203 : index
                      %c1_284 = arith.constant 1 : index
                      %subview_285 = memref.subview %reinterpret_cast_280[%203] [%204] [%c1_284] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_286 = arith.constant 0 : index
                      memref.store %195, %subview_285[%c0_286] : memref<?xf64, strided<[?], offset: ?>>
                    }
                    %c0_154 = arith.constant 0 : index
                    %94 = memref.load %alloca_7[%c0_154] : memref<1xi32>
                    %c1_i32_155 = arith.constant 1 : i32
                    %95 = arith.addi %94, %c1_i32_155 : i32
                    %c0_156 = arith.constant 0 : index
                    memref.store %95, %alloca_7[%c0_156] : memref<1xi32>
                    scf.yield
                  }
                }
                %cst_136 = arith.constant 1.000000e+00 : f64
                %c0_137 = arith.constant 0 : index
                %84 = memref.load %alloca_2[%c0_137] : memref<1xmemref<?xf64>>
                %c0_138 = arith.constant 0 : index
                %85 = memref.load %alloca_0[%c0_138] : memref<1xi32>
                %c1_i32_139 = arith.constant 1 : i32
                %86 = arith.subi %85, %c1_i32_139 : i32
                %87 = arith.extsi %86 : i32 to i64
                %88 = arith.muli %87, %5 : i64
                %89 = arith.index_cast %88 : i64 to index
                %c1_140 = arith.constant 1 : index
                %c0_141 = arith.constant 0 : index
                %c0_142 = arith.constant 0 : index
                %dim_143 = memref.dim %84, %c0_142 : memref<?xf64>
                %90 = arith.subi %dim_143, %89 : index
                %subview_144 = memref.subview %84[%89] [%90] [%c1_140] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_145 = memref.reinterpret_cast %subview_144 to offset: [0], sizes: [%90], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_146 = arith.constant 0 : index
                %91 = memref.load %alloca_6[%c0_146] : memref<1xi32>
                %92 = arith.index_cast %91 : i32 to index
                %c0_147 = arith.constant 0 : index
                %dim_148 = memref.dim %reinterpret_cast_145, %c0_147 : memref<?xf64>
                %93 = arith.subi %dim_148, %92 : index
                %c1_149 = arith.constant 1 : index
                %subview_150 = memref.subview %reinterpret_cast_145[%92] [%93] [%c1_149] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_151 = arith.constant 0 : index
                memref.store %cst_136, %subview_150[%c0_151] : memref<?xf64, strided<[?], offset: ?>>
                memref.alloca_scope  {
                  %c0_152 = arith.constant 0 : index
                  %94 = memref.load %alloca_0[%c0_152] : memref<1xi32>
                  %c2_i32 = arith.constant 2 : i32
                  %95 = arith.subi %94, %c2_i32 : i32
                  %c0_153 = arith.constant 0 : index
                  memref.store %95, %alloca_7[%c0_153] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_154 = arith.constant 0 : index
                    %96 = memref.load %alloca_7[%c0_154] : memref<1xi32>
                    %c1_i32_155 = arith.constant 1 : i32
                    %97 = arith.cmpi sge, %96, %c1_i32_155 : i32
                    scf.condition(%97)
                  } do {
                    memref.alloca_scope  {
                      %c0_156 = arith.constant 0 : index
                      %98 = memref.load %alloca_3[%c0_156] : memref<1xmemref<?xf64>>
                      %c0_157 = arith.constant 0 : index
                      %99 = memref.load %alloca_6[%c0_157] : memref<1xi32>
                      %100 = arith.extsi %99 : i32 to i64
                      %101 = arith.muli %100, %8 : i64
                      %102 = arith.index_cast %101 : i64 to index
                      %c1_158 = arith.constant 1 : index
                      %c0_159 = arith.constant 0 : index
                      %c0_160 = arith.constant 0 : index
                      %dim_161 = memref.dim %98, %c0_160 : memref<?xf64>
                      %103 = arith.subi %dim_161, %102 : index
                      %subview_162 = memref.subview %98[%102] [%103] [%c1_158] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_163 = memref.reinterpret_cast %subview_162 to offset: [0], sizes: [%103], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_164 = arith.constant 0 : index
                      %104 = memref.load %alloca_7[%c0_164] : memref<1xi32>
                      %105 = arith.index_cast %104 : i32 to index
                      %c0_165 = arith.constant 0 : index
                      %dim_166 = memref.dim %reinterpret_cast_163, %c0_165 : memref<?xf64>
                      %106 = arith.subi %dim_166, %105 : index
                      %c1_167 = arith.constant 1 : index
                      %subview_168 = memref.subview %reinterpret_cast_163[%105] [%106] [%c1_167] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_169 = arith.constant 0 : index
                      %107 = memref.load %subview_168[%c0_169] : memref<?xf64, strided<[?], offset: ?>>
                      %c0_170 = arith.constant 0 : index
                      %108 = memref.load %alloca_2[%c0_170] : memref<1xmemref<?xf64>>
                      %c0_171 = arith.constant 0 : index
                      %109 = memref.load %alloca_7[%c0_171] : memref<1xi32>
                      %c1_i32_172 = arith.constant 1 : i32
                      %110 = arith.addi %109, %c1_i32_172 : i32
                      %111 = arith.extsi %110 : i32 to i64
                      %112 = arith.muli %111, %5 : i64
                      %113 = arith.index_cast %112 : i64 to index
                      %c1_173 = arith.constant 1 : index
                      %c0_174 = arith.constant 0 : index
                      %c0_175 = arith.constant 0 : index
                      %dim_176 = memref.dim %108, %c0_175 : memref<?xf64>
                      %114 = arith.subi %dim_176, %113 : index
                      %subview_177 = memref.subview %108[%113] [%114] [%c1_173] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_178 = memref.reinterpret_cast %subview_177 to offset: [0], sizes: [%114], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_179 = arith.constant 0 : index
                      %115 = memref.load %alloca_6[%c0_179] : memref<1xi32>
                      %116 = arith.index_cast %115 : i32 to index
                      %c0_180 = arith.constant 0 : index
                      %dim_181 = memref.dim %reinterpret_cast_178, %c0_180 : memref<?xf64>
                      %117 = arith.subi %dim_181, %116 : index
                      %c1_182 = arith.constant 1 : index
                      %subview_183 = memref.subview %reinterpret_cast_178[%116] [%117] [%c1_182] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_184 = arith.constant 0 : index
                      %118 = memref.load %subview_183[%c0_184] : memref<?xf64, strided<[?], offset: ?>>
                      %119 = arith.mulf %107, %118 : f64
                      %c0_185 = arith.constant 0 : index
                      %120 = memref.load %alloca_4[%c0_185] : memref<1xmemref<?xf64>>
                      %c0_186 = arith.constant 0 : index
                      %121 = memref.load %alloca_6[%c0_186] : memref<1xi32>
                      %122 = arith.extsi %121 : i32 to i64
                      %123 = arith.muli %122, %11 : i64
                      %124 = arith.index_cast %123 : i64 to index
                      %c1_187 = arith.constant 1 : index
                      %c0_188 = arith.constant 0 : index
                      %c0_189 = arith.constant 0 : index
                      %dim_190 = memref.dim %120, %c0_189 : memref<?xf64>
                      %125 = arith.subi %dim_190, %124 : index
                      %subview_191 = memref.subview %120[%124] [%125] [%c1_187] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_192 = memref.reinterpret_cast %subview_191 to offset: [0], sizes: [%125], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_193 = arith.constant 0 : index
                      %126 = memref.load %alloca_7[%c0_193] : memref<1xi32>
                      %127 = arith.index_cast %126 : i32 to index
                      %c0_194 = arith.constant 0 : index
                      %dim_195 = memref.dim %reinterpret_cast_192, %c0_194 : memref<?xf64>
                      %128 = arith.subi %dim_195, %127 : index
                      %c1_196 = arith.constant 1 : index
                      %subview_197 = memref.subview %reinterpret_cast_192[%127] [%128] [%c1_196] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_198 = arith.constant 0 : index
                      %129 = memref.load %subview_197[%c0_198] : memref<?xf64, strided<[?], offset: ?>>
                      %130 = arith.addf %119, %129 : f64
                      %c0_199 = arith.constant 0 : index
                      %131 = memref.load %alloca_2[%c0_199] : memref<1xmemref<?xf64>>
                      %c0_200 = arith.constant 0 : index
                      %132 = memref.load %alloca_7[%c0_200] : memref<1xi32>
                      %133 = arith.extsi %132 : i32 to i64
                      %134 = arith.muli %133, %5 : i64
                      %135 = arith.index_cast %134 : i64 to index
                      %c1_201 = arith.constant 1 : index
                      %c0_202 = arith.constant 0 : index
                      %c0_203 = arith.constant 0 : index
                      %dim_204 = memref.dim %131, %c0_203 : memref<?xf64>
                      %136 = arith.subi %dim_204, %135 : index
                      %subview_205 = memref.subview %131[%135] [%136] [%c1_201] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_206 = memref.reinterpret_cast %subview_205 to offset: [0], sizes: [%136], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_207 = arith.constant 0 : index
                      %137 = memref.load %alloca_6[%c0_207] : memref<1xi32>
                      %138 = arith.index_cast %137 : i32 to index
                      %c0_208 = arith.constant 0 : index
                      %dim_209 = memref.dim %reinterpret_cast_206, %c0_208 : memref<?xf64>
                      %139 = arith.subi %dim_209, %138 : index
                      %c1_210 = arith.constant 1 : index
                      %subview_211 = memref.subview %reinterpret_cast_206[%138] [%139] [%c1_210] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_212 = arith.constant 0 : index
                      memref.store %130, %subview_211[%c0_212] : memref<?xf64, strided<[?], offset: ?>>
                    }
                    %c0_154 = arith.constant 0 : index
                    %96 = memref.load %alloca_7[%c0_154] : memref<1xi32>
                    %c-1_i32 = arith.constant -1 : i32
                    %97 = arith.addi %96, %c-1_i32 : i32
                    %c0_155 = arith.constant 0 : index
                    memref.store %97, %alloca_7[%c0_155] : memref<1xi32>
                    scf.yield
                  }
                }
              }
              %c0_79 = arith.constant 0 : index
              %49 = memref.load %alloca_6[%c0_79] : memref<1xi32>
              %c1_i32_80 = arith.constant 1 : i32
              %50 = arith.addi %49, %c1_i32_80 : i32
              %c0_81 = arith.constant 0 : index
              memref.store %50, %alloca_6[%c0_81] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c1_i32_77 = arith.constant 1 : i32
            %c0_78 = arith.constant 0 : index
            memref.store %c1_i32_77, %alloca_6[%c0_78] : memref<1xi32>
            scf.while : () -> () {
              %c0_79 = arith.constant 0 : index
              %49 = memref.load %alloca_6[%c0_79] : memref<1xi32>
              %c0_80 = arith.constant 0 : index
              %50 = memref.load %alloca_0[%c0_80] : memref<1xi32>
              %c1_i32_81 = arith.constant 1 : i32
              %51 = arith.subi %50, %c1_i32_81 : i32
              %52 = arith.cmpi slt, %49, %51 : i32
              scf.condition(%52)
            } do {
              memref.alloca_scope  {
                %cst_82 = arith.constant 1.000000e+00 : f64
                %c0_83 = arith.constant 0 : index
                %51 = memref.load %alloca_1[%c0_83] : memref<1xmemref<?xf64>>
                %c0_84 = arith.constant 0 : index
                %52 = memref.load %alloca_6[%c0_84] : memref<1xi32>
                %53 = arith.extsi %52 : i32 to i64
                %54 = arith.muli %53, %2 : i64
                %55 = arith.index_cast %54 : i64 to index
                %c1 = arith.constant 1 : index
                %c0_85 = arith.constant 0 : index
                %c0_86 = arith.constant 0 : index
                %dim = memref.dim %51, %c0_86 : memref<?xf64>
                %56 = arith.subi %dim, %55 : index
                %subview = memref.subview %51[%55] [%56] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%56], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_i32_87 = arith.constant 0 : i32
                %57 = arith.index_cast %c0_i32_87 : i32 to index
                %c0_88 = arith.constant 0 : index
                %dim_89 = memref.dim %reinterpret_cast, %c0_88 : memref<?xf64>
                %58 = arith.subi %dim_89, %57 : index
                %c1_90 = arith.constant 1 : index
                %subview_91 = memref.subview %reinterpret_cast[%57] [%58] [%c1_90] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_92 = arith.constant 0 : index
                memref.store %cst_82, %subview_91[%c0_92] : memref<?xf64, strided<[?], offset: ?>>
                %cst_93 = arith.constant 0.000000e+00 : f64
                %c0_94 = arith.constant 0 : index
                %59 = memref.load %alloca_3[%c0_94] : memref<1xmemref<?xf64>>
                %c0_95 = arith.constant 0 : index
                %60 = memref.load %alloca_6[%c0_95] : memref<1xi32>
                %61 = arith.extsi %60 : i32 to i64
                %62 = arith.muli %61, %8 : i64
                %63 = arith.index_cast %62 : i64 to index
                %c1_96 = arith.constant 1 : index
                %c0_97 = arith.constant 0 : index
                %c0_98 = arith.constant 0 : index
                %dim_99 = memref.dim %59, %c0_98 : memref<?xf64>
                %64 = arith.subi %dim_99, %63 : index
                %subview_100 = memref.subview %59[%63] [%64] [%c1_96] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_101 = memref.reinterpret_cast %subview_100 to offset: [0], sizes: [%64], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_i32_102 = arith.constant 0 : i32
                %65 = arith.index_cast %c0_i32_102 : i32 to index
                %c0_103 = arith.constant 0 : index
                %dim_104 = memref.dim %reinterpret_cast_101, %c0_103 : memref<?xf64>
                %66 = arith.subi %dim_104, %65 : index
                %c1_105 = arith.constant 1 : index
                %subview_106 = memref.subview %reinterpret_cast_101[%65] [%66] [%c1_105] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_107 = arith.constant 0 : index
                memref.store %cst_93, %subview_106[%c0_107] : memref<?xf64, strided<[?], offset: ?>>
                %c0_108 = arith.constant 0 : index
                %67 = memref.load %alloca_1[%c0_108] : memref<1xmemref<?xf64>>
                %c0_109 = arith.constant 0 : index
                %68 = memref.load %alloca_6[%c0_109] : memref<1xi32>
                %69 = arith.extsi %68 : i32 to i64
                %70 = arith.muli %69, %2 : i64
                %71 = arith.index_cast %70 : i64 to index
                %c1_110 = arith.constant 1 : index
                %c0_111 = arith.constant 0 : index
                %c0_112 = arith.constant 0 : index
                %dim_113 = memref.dim %67, %c0_112 : memref<?xf64>
                %72 = arith.subi %dim_113, %71 : index
                %subview_114 = memref.subview %67[%71] [%72] [%c1_110] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_115 = memref.reinterpret_cast %subview_114 to offset: [0], sizes: [%72], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_i32_116 = arith.constant 0 : i32
                %73 = arith.index_cast %c0_i32_116 : i32 to index
                %c0_117 = arith.constant 0 : index
                %dim_118 = memref.dim %reinterpret_cast_115, %c0_117 : memref<?xf64>
                %74 = arith.subi %dim_118, %73 : index
                %c1_119 = arith.constant 1 : index
                %subview_120 = memref.subview %reinterpret_cast_115[%73] [%74] [%c1_119] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_121 = arith.constant 0 : index
                %75 = memref.load %subview_120[%c0_121] : memref<?xf64, strided<[?], offset: ?>>
                %c0_122 = arith.constant 0 : index
                %76 = memref.load %alloca_4[%c0_122] : memref<1xmemref<?xf64>>
                %c0_123 = arith.constant 0 : index
                %77 = memref.load %alloca_6[%c0_123] : memref<1xi32>
                %78 = arith.extsi %77 : i32 to i64
                %79 = arith.muli %78, %11 : i64
                %80 = arith.index_cast %79 : i64 to index
                %c1_124 = arith.constant 1 : index
                %c0_125 = arith.constant 0 : index
                %c0_126 = arith.constant 0 : index
                %dim_127 = memref.dim %76, %c0_126 : memref<?xf64>
                %81 = arith.subi %dim_127, %80 : index
                %subview_128 = memref.subview %76[%80] [%81] [%c1_124] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_129 = memref.reinterpret_cast %subview_128 to offset: [0], sizes: [%81], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_i32_130 = arith.constant 0 : i32
                %82 = arith.index_cast %c0_i32_130 : i32 to index
                %c0_131 = arith.constant 0 : index
                %dim_132 = memref.dim %reinterpret_cast_129, %c0_131 : memref<?xf64>
                %83 = arith.subi %dim_132, %82 : index
                %c1_133 = arith.constant 1 : index
                %subview_134 = memref.subview %reinterpret_cast_129[%82] [%83] [%c1_133] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_135 = arith.constant 0 : index
                memref.store %75, %subview_134[%c0_135] : memref<?xf64, strided<[?], offset: ?>>
                memref.alloca_scope  {
                  %c1_i32_152 = arith.constant 1 : i32
                  %c0_153 = arith.constant 0 : index
                  memref.store %c1_i32_152, %alloca_7[%c0_153] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_154 = arith.constant 0 : index
                    %94 = memref.load %alloca_7[%c0_154] : memref<1xi32>
                    %c0_155 = arith.constant 0 : index
                    %95 = memref.load %alloca_0[%c0_155] : memref<1xi32>
                    %c1_i32_156 = arith.constant 1 : i32
                    %96 = arith.subi %95, %c1_i32_156 : i32
                    %97 = arith.cmpi slt, %94, %96 : i32
                    scf.condition(%97)
                  } do {
                    memref.alloca_scope  {
                      %c0_157 = arith.constant 0 : index
                      %96 = memref.load %alloca_20[%c0_157] : memref<1xf64>
                      %cst_158 = arith.constant 0.000000e+00 : f64
                      %97 = arith.subf %cst_158, %96 : f64
                      %c0_159 = arith.constant 0 : index
                      %98 = memref.load %alloca_18[%c0_159] : memref<1xf64>
                      %c0_160 = arith.constant 0 : index
                      %99 = memref.load %alloca_3[%c0_160] : memref<1xmemref<?xf64>>
                      %c0_161 = arith.constant 0 : index
                      %100 = memref.load %alloca_6[%c0_161] : memref<1xi32>
                      %101 = arith.extsi %100 : i32 to i64
                      %102 = arith.muli %101, %8 : i64
                      %103 = arith.index_cast %102 : i64 to index
                      %c1_162 = arith.constant 1 : index
                      %c0_163 = arith.constant 0 : index
                      %c0_164 = arith.constant 0 : index
                      %dim_165 = memref.dim %99, %c0_164 : memref<?xf64>
                      %104 = arith.subi %dim_165, %103 : index
                      %subview_166 = memref.subview %99[%103] [%104] [%c1_162] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_167 = memref.reinterpret_cast %subview_166 to offset: [0], sizes: [%104], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_168 = arith.constant 0 : index
                      %105 = memref.load %alloca_7[%c0_168] : memref<1xi32>
                      %c1_i32_169 = arith.constant 1 : i32
                      %106 = arith.subi %105, %c1_i32_169 : i32
                      %107 = arith.index_cast %106 : i32 to index
                      %c0_170 = arith.constant 0 : index
                      %dim_171 = memref.dim %reinterpret_cast_167, %c0_170 : memref<?xf64>
                      %108 = arith.subi %dim_171, %107 : index
                      %c1_172 = arith.constant 1 : index
                      %subview_173 = memref.subview %reinterpret_cast_167[%107] [%108] [%c1_172] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_174 = arith.constant 0 : index
                      %109 = memref.load %subview_173[%c0_174] : memref<?xf64, strided<[?], offset: ?>>
                      %110 = arith.mulf %98, %109 : f64
                      %c0_175 = arith.constant 0 : index
                      %111 = memref.load %alloca_19[%c0_175] : memref<1xf64>
                      %112 = arith.addf %110, %111 : f64
                      %113 = arith.divf %97, %112 : f64
                      %c0_176 = arith.constant 0 : index
                      %114 = memref.load %alloca_3[%c0_176] : memref<1xmemref<?xf64>>
                      %c0_177 = arith.constant 0 : index
                      %115 = memref.load %alloca_6[%c0_177] : memref<1xi32>
                      %116 = arith.extsi %115 : i32 to i64
                      %117 = arith.muli %116, %8 : i64
                      %118 = arith.index_cast %117 : i64 to index
                      %c1_178 = arith.constant 1 : index
                      %c0_179 = arith.constant 0 : index
                      %c0_180 = arith.constant 0 : index
                      %dim_181 = memref.dim %114, %c0_180 : memref<?xf64>
                      %119 = arith.subi %dim_181, %118 : index
                      %subview_182 = memref.subview %114[%118] [%119] [%c1_178] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_183 = memref.reinterpret_cast %subview_182 to offset: [0], sizes: [%119], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_184 = arith.constant 0 : index
                      %120 = memref.load %alloca_7[%c0_184] : memref<1xi32>
                      %121 = arith.index_cast %120 : i32 to index
                      %c0_185 = arith.constant 0 : index
                      %dim_186 = memref.dim %reinterpret_cast_183, %c0_185 : memref<?xf64>
                      %122 = arith.subi %dim_186, %121 : index
                      %c1_187 = arith.constant 1 : index
                      %subview_188 = memref.subview %reinterpret_cast_183[%121] [%122] [%c1_187] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_189 = arith.constant 0 : index
                      memref.store %113, %subview_188[%c0_189] : memref<?xf64, strided<[?], offset: ?>>
                      %c0_190 = arith.constant 0 : index
                      %123 = memref.load %alloca_15[%c0_190] : memref<1xf64>
                      %cst_191 = arith.constant 0.000000e+00 : f64
                      %124 = arith.subf %cst_191, %123 : f64
                      %c0_192 = arith.constant 0 : index
                      %125 = memref.load %alloca_2[%c0_192] : memref<1xmemref<?xf64>>
                      %c0_193 = arith.constant 0 : index
                      %126 = memref.load %alloca_6[%c0_193] : memref<1xi32>
                      %c1_i32_194 = arith.constant 1 : i32
                      %127 = arith.subi %126, %c1_i32_194 : i32
                      %128 = arith.extsi %127 : i32 to i64
                      %129 = arith.muli %128, %5 : i64
                      %130 = arith.index_cast %129 : i64 to index
                      %c1_195 = arith.constant 1 : index
                      %c0_196 = arith.constant 0 : index
                      %c0_197 = arith.constant 0 : index
                      %dim_198 = memref.dim %125, %c0_197 : memref<?xf64>
                      %131 = arith.subi %dim_198, %130 : index
                      %subview_199 = memref.subview %125[%130] [%131] [%c1_195] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_200 = memref.reinterpret_cast %subview_199 to offset: [0], sizes: [%131], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_201 = arith.constant 0 : index
                      %132 = memref.load %alloca_7[%c0_201] : memref<1xi32>
                      %133 = arith.index_cast %132 : i32 to index
                      %c0_202 = arith.constant 0 : index
                      %dim_203 = memref.dim %reinterpret_cast_200, %c0_202 : memref<?xf64>
                      %134 = arith.subi %dim_203, %133 : index
                      %c1_204 = arith.constant 1 : index
                      %subview_205 = memref.subview %reinterpret_cast_200[%133] [%134] [%c1_204] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_206 = arith.constant 0 : index
                      %135 = memref.load %subview_205[%c0_206] : memref<?xf64, strided<[?], offset: ?>>
                      %136 = arith.mulf %124, %135 : f64
                      %cst_207 = arith.constant 1.000000e+00 : f64
                      %cst_208 = arith.constant 2.000000e+00 : f64
                      %c0_209 = arith.constant 0 : index
                      %137 = memref.load %alloca_15[%c0_209] : memref<1xf64>
                      %138 = arith.mulf %cst_208, %137 : f64
                      %139 = arith.addf %cst_207, %138 : f64
                      %c0_210 = arith.constant 0 : index
                      %140 = memref.load %alloca_2[%c0_210] : memref<1xmemref<?xf64>>
                      %c0_211 = arith.constant 0 : index
                      %141 = memref.load %alloca_6[%c0_211] : memref<1xi32>
                      %142 = arith.extsi %141 : i32 to i64
                      %143 = arith.muli %142, %5 : i64
                      %144 = arith.index_cast %143 : i64 to index
                      %c1_212 = arith.constant 1 : index
                      %c0_213 = arith.constant 0 : index
                      %c0_214 = arith.constant 0 : index
                      %dim_215 = memref.dim %140, %c0_214 : memref<?xf64>
                      %145 = arith.subi %dim_215, %144 : index
                      %subview_216 = memref.subview %140[%144] [%145] [%c1_212] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_217 = memref.reinterpret_cast %subview_216 to offset: [0], sizes: [%145], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_218 = arith.constant 0 : index
                      %146 = memref.load %alloca_7[%c0_218] : memref<1xi32>
                      %147 = arith.index_cast %146 : i32 to index
                      %c0_219 = arith.constant 0 : index
                      %dim_220 = memref.dim %reinterpret_cast_217, %c0_219 : memref<?xf64>
                      %148 = arith.subi %dim_220, %147 : index
                      %c1_221 = arith.constant 1 : index
                      %subview_222 = memref.subview %reinterpret_cast_217[%147] [%148] [%c1_221] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_223 = arith.constant 0 : index
                      %149 = memref.load %subview_222[%c0_223] : memref<?xf64, strided<[?], offset: ?>>
                      %150 = arith.mulf %139, %149 : f64
                      %151 = arith.addf %136, %150 : f64
                      %c0_224 = arith.constant 0 : index
                      %152 = memref.load %alloca_17[%c0_224] : memref<1xf64>
                      %c0_225 = arith.constant 0 : index
                      %153 = memref.load %alloca_2[%c0_225] : memref<1xmemref<?xf64>>
                      %c0_226 = arith.constant 0 : index
                      %154 = memref.load %alloca_6[%c0_226] : memref<1xi32>
                      %c1_i32_227 = arith.constant 1 : i32
                      %155 = arith.addi %154, %c1_i32_227 : i32
                      %156 = arith.extsi %155 : i32 to i64
                      %157 = arith.muli %156, %5 : i64
                      %158 = arith.index_cast %157 : i64 to index
                      %c1_228 = arith.constant 1 : index
                      %c0_229 = arith.constant 0 : index
                      %c0_230 = arith.constant 0 : index
                      %dim_231 = memref.dim %153, %c0_230 : memref<?xf64>
                      %159 = arith.subi %dim_231, %158 : index
                      %subview_232 = memref.subview %153[%158] [%159] [%c1_228] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_233 = memref.reinterpret_cast %subview_232 to offset: [0], sizes: [%159], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_234 = arith.constant 0 : index
                      %160 = memref.load %alloca_7[%c0_234] : memref<1xi32>
                      %161 = arith.index_cast %160 : i32 to index
                      %c0_235 = arith.constant 0 : index
                      %dim_236 = memref.dim %reinterpret_cast_233, %c0_235 : memref<?xf64>
                      %162 = arith.subi %dim_236, %161 : index
                      %c1_237 = arith.constant 1 : index
                      %subview_238 = memref.subview %reinterpret_cast_233[%161] [%162] [%c1_237] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_239 = arith.constant 0 : index
                      %163 = memref.load %subview_238[%c0_239] : memref<?xf64, strided<[?], offset: ?>>
                      %164 = arith.mulf %152, %163 : f64
                      %165 = arith.subf %151, %164 : f64
                      %c0_240 = arith.constant 0 : index
                      %166 = memref.load %alloca_18[%c0_240] : memref<1xf64>
                      %c0_241 = arith.constant 0 : index
                      %167 = memref.load %alloca_4[%c0_241] : memref<1xmemref<?xf64>>
                      %c0_242 = arith.constant 0 : index
                      %168 = memref.load %alloca_6[%c0_242] : memref<1xi32>
                      %169 = arith.extsi %168 : i32 to i64
                      %170 = arith.muli %169, %11 : i64
                      %171 = arith.index_cast %170 : i64 to index
                      %c1_243 = arith.constant 1 : index
                      %c0_244 = arith.constant 0 : index
                      %c0_245 = arith.constant 0 : index
                      %dim_246 = memref.dim %167, %c0_245 : memref<?xf64>
                      %172 = arith.subi %dim_246, %171 : index
                      %subview_247 = memref.subview %167[%171] [%172] [%c1_243] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_248 = memref.reinterpret_cast %subview_247 to offset: [0], sizes: [%172], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_249 = arith.constant 0 : index
                      %173 = memref.load %alloca_7[%c0_249] : memref<1xi32>
                      %c1_i32_250 = arith.constant 1 : i32
                      %174 = arith.subi %173, %c1_i32_250 : i32
                      %175 = arith.index_cast %174 : i32 to index
                      %c0_251 = arith.constant 0 : index
                      %dim_252 = memref.dim %reinterpret_cast_248, %c0_251 : memref<?xf64>
                      %176 = arith.subi %dim_252, %175 : index
                      %c1_253 = arith.constant 1 : index
                      %subview_254 = memref.subview %reinterpret_cast_248[%175] [%176] [%c1_253] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_255 = arith.constant 0 : index
                      %177 = memref.load %subview_254[%c0_255] : memref<?xf64, strided<[?], offset: ?>>
                      %178 = arith.mulf %166, %177 : f64
                      %179 = arith.subf %165, %178 : f64
                      %c0_256 = arith.constant 0 : index
                      %180 = memref.load %alloca_18[%c0_256] : memref<1xf64>
                      %c0_257 = arith.constant 0 : index
                      %181 = memref.load %alloca_3[%c0_257] : memref<1xmemref<?xf64>>
                      %c0_258 = arith.constant 0 : index
                      %182 = memref.load %alloca_6[%c0_258] : memref<1xi32>
                      %183 = arith.extsi %182 : i32 to i64
                      %184 = arith.muli %183, %8 : i64
                      %185 = arith.index_cast %184 : i64 to index
                      %c1_259 = arith.constant 1 : index
                      %c0_260 = arith.constant 0 : index
                      %c0_261 = arith.constant 0 : index
                      %dim_262 = memref.dim %181, %c0_261 : memref<?xf64>
                      %186 = arith.subi %dim_262, %185 : index
                      %subview_263 = memref.subview %181[%185] [%186] [%c1_259] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_264 = memref.reinterpret_cast %subview_263 to offset: [0], sizes: [%186], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_265 = arith.constant 0 : index
                      %187 = memref.load %alloca_7[%c0_265] : memref<1xi32>
                      %c1_i32_266 = arith.constant 1 : i32
                      %188 = arith.subi %187, %c1_i32_266 : i32
                      %189 = arith.index_cast %188 : i32 to index
                      %c0_267 = arith.constant 0 : index
                      %dim_268 = memref.dim %reinterpret_cast_264, %c0_267 : memref<?xf64>
                      %190 = arith.subi %dim_268, %189 : index
                      %c1_269 = arith.constant 1 : index
                      %subview_270 = memref.subview %reinterpret_cast_264[%189] [%190] [%c1_269] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_271 = arith.constant 0 : index
                      %191 = memref.load %subview_270[%c0_271] : memref<?xf64, strided<[?], offset: ?>>
                      %192 = arith.mulf %180, %191 : f64
                      %c0_272 = arith.constant 0 : index
                      %193 = memref.load %alloca_19[%c0_272] : memref<1xf64>
                      %194 = arith.addf %192, %193 : f64
                      %195 = arith.divf %179, %194 : f64
                      %c0_273 = arith.constant 0 : index
                      %196 = memref.load %alloca_4[%c0_273] : memref<1xmemref<?xf64>>
                      %c0_274 = arith.constant 0 : index
                      %197 = memref.load %alloca_6[%c0_274] : memref<1xi32>
                      %198 = arith.extsi %197 : i32 to i64
                      %199 = arith.muli %198, %11 : i64
                      %200 = arith.index_cast %199 : i64 to index
                      %c1_275 = arith.constant 1 : index
                      %c0_276 = arith.constant 0 : index
                      %c0_277 = arith.constant 0 : index
                      %dim_278 = memref.dim %196, %c0_277 : memref<?xf64>
                      %201 = arith.subi %dim_278, %200 : index
                      %subview_279 = memref.subview %196[%200] [%201] [%c1_275] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_280 = memref.reinterpret_cast %subview_279 to offset: [0], sizes: [%201], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_281 = arith.constant 0 : index
                      %202 = memref.load %alloca_7[%c0_281] : memref<1xi32>
                      %203 = arith.index_cast %202 : i32 to index
                      %c0_282 = arith.constant 0 : index
                      %dim_283 = memref.dim %reinterpret_cast_280, %c0_282 : memref<?xf64>
                      %204 = arith.subi %dim_283, %203 : index
                      %c1_284 = arith.constant 1 : index
                      %subview_285 = memref.subview %reinterpret_cast_280[%203] [%204] [%c1_284] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_286 = arith.constant 0 : index
                      memref.store %195, %subview_285[%c0_286] : memref<?xf64, strided<[?], offset: ?>>
                    }
                    %c0_154 = arith.constant 0 : index
                    %94 = memref.load %alloca_7[%c0_154] : memref<1xi32>
                    %c1_i32_155 = arith.constant 1 : i32
                    %95 = arith.addi %94, %c1_i32_155 : i32
                    %c0_156 = arith.constant 0 : index
                    memref.store %95, %alloca_7[%c0_156] : memref<1xi32>
                    scf.yield
                  }
                }
                %cst_136 = arith.constant 1.000000e+00 : f64
                %c0_137 = arith.constant 0 : index
                %84 = memref.load %alloca_1[%c0_137] : memref<1xmemref<?xf64>>
                %c0_138 = arith.constant 0 : index
                %85 = memref.load %alloca_6[%c0_138] : memref<1xi32>
                %86 = arith.extsi %85 : i32 to i64
                %87 = arith.muli %86, %2 : i64
                %88 = arith.index_cast %87 : i64 to index
                %c1_139 = arith.constant 1 : index
                %c0_140 = arith.constant 0 : index
                %c0_141 = arith.constant 0 : index
                %dim_142 = memref.dim %84, %c0_141 : memref<?xf64>
                %89 = arith.subi %dim_142, %88 : index
                %subview_143 = memref.subview %84[%88] [%89] [%c1_139] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_144 = memref.reinterpret_cast %subview_143 to offset: [0], sizes: [%89], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_145 = arith.constant 0 : index
                %90 = memref.load %alloca_0[%c0_145] : memref<1xi32>
                %c1_i32_146 = arith.constant 1 : i32
                %91 = arith.subi %90, %c1_i32_146 : i32
                %92 = arith.index_cast %91 : i32 to index
                %c0_147 = arith.constant 0 : index
                %dim_148 = memref.dim %reinterpret_cast_144, %c0_147 : memref<?xf64>
                %93 = arith.subi %dim_148, %92 : index
                %c1_149 = arith.constant 1 : index
                %subview_150 = memref.subview %reinterpret_cast_144[%92] [%93] [%c1_149] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_151 = arith.constant 0 : index
                memref.store %cst_136, %subview_150[%c0_151] : memref<?xf64, strided<[?], offset: ?>>
                memref.alloca_scope  {
                  %c0_152 = arith.constant 0 : index
                  %94 = memref.load %alloca_0[%c0_152] : memref<1xi32>
                  %c2_i32 = arith.constant 2 : i32
                  %95 = arith.subi %94, %c2_i32 : i32
                  %c0_153 = arith.constant 0 : index
                  memref.store %95, %alloca_7[%c0_153] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_154 = arith.constant 0 : index
                    %96 = memref.load %alloca_7[%c0_154] : memref<1xi32>
                    %c1_i32_155 = arith.constant 1 : i32
                    %97 = arith.cmpi sge, %96, %c1_i32_155 : i32
                    scf.condition(%97)
                  } do {
                    memref.alloca_scope  {
                      %c0_156 = arith.constant 0 : index
                      %98 = memref.load %alloca_3[%c0_156] : memref<1xmemref<?xf64>>
                      %c0_157 = arith.constant 0 : index
                      %99 = memref.load %alloca_6[%c0_157] : memref<1xi32>
                      %100 = arith.extsi %99 : i32 to i64
                      %101 = arith.muli %100, %8 : i64
                      %102 = arith.index_cast %101 : i64 to index
                      %c1_158 = arith.constant 1 : index
                      %c0_159 = arith.constant 0 : index
                      %c0_160 = arith.constant 0 : index
                      %dim_161 = memref.dim %98, %c0_160 : memref<?xf64>
                      %103 = arith.subi %dim_161, %102 : index
                      %subview_162 = memref.subview %98[%102] [%103] [%c1_158] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_163 = memref.reinterpret_cast %subview_162 to offset: [0], sizes: [%103], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_164 = arith.constant 0 : index
                      %104 = memref.load %alloca_7[%c0_164] : memref<1xi32>
                      %105 = arith.index_cast %104 : i32 to index
                      %c0_165 = arith.constant 0 : index
                      %dim_166 = memref.dim %reinterpret_cast_163, %c0_165 : memref<?xf64>
                      %106 = arith.subi %dim_166, %105 : index
                      %c1_167 = arith.constant 1 : index
                      %subview_168 = memref.subview %reinterpret_cast_163[%105] [%106] [%c1_167] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_169 = arith.constant 0 : index
                      %107 = memref.load %subview_168[%c0_169] : memref<?xf64, strided<[?], offset: ?>>
                      %c0_170 = arith.constant 0 : index
                      %108 = memref.load %alloca_1[%c0_170] : memref<1xmemref<?xf64>>
                      %c0_171 = arith.constant 0 : index
                      %109 = memref.load %alloca_6[%c0_171] : memref<1xi32>
                      %110 = arith.extsi %109 : i32 to i64
                      %111 = arith.muli %110, %2 : i64
                      %112 = arith.index_cast %111 : i64 to index
                      %c1_172 = arith.constant 1 : index
                      %c0_173 = arith.constant 0 : index
                      %c0_174 = arith.constant 0 : index
                      %dim_175 = memref.dim %108, %c0_174 : memref<?xf64>
                      %113 = arith.subi %dim_175, %112 : index
                      %subview_176 = memref.subview %108[%112] [%113] [%c1_172] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_177 = memref.reinterpret_cast %subview_176 to offset: [0], sizes: [%113], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_178 = arith.constant 0 : index
                      %114 = memref.load %alloca_7[%c0_178] : memref<1xi32>
                      %c1_i32_179 = arith.constant 1 : i32
                      %115 = arith.addi %114, %c1_i32_179 : i32
                      %116 = arith.index_cast %115 : i32 to index
                      %c0_180 = arith.constant 0 : index
                      %dim_181 = memref.dim %reinterpret_cast_177, %c0_180 : memref<?xf64>
                      %117 = arith.subi %dim_181, %116 : index
                      %c1_182 = arith.constant 1 : index
                      %subview_183 = memref.subview %reinterpret_cast_177[%116] [%117] [%c1_182] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_184 = arith.constant 0 : index
                      %118 = memref.load %subview_183[%c0_184] : memref<?xf64, strided<[?], offset: ?>>
                      %119 = arith.mulf %107, %118 : f64
                      %c0_185 = arith.constant 0 : index
                      %120 = memref.load %alloca_4[%c0_185] : memref<1xmemref<?xf64>>
                      %c0_186 = arith.constant 0 : index
                      %121 = memref.load %alloca_6[%c0_186] : memref<1xi32>
                      %122 = arith.extsi %121 : i32 to i64
                      %123 = arith.muli %122, %11 : i64
                      %124 = arith.index_cast %123 : i64 to index
                      %c1_187 = arith.constant 1 : index
                      %c0_188 = arith.constant 0 : index
                      %c0_189 = arith.constant 0 : index
                      %dim_190 = memref.dim %120, %c0_189 : memref<?xf64>
                      %125 = arith.subi %dim_190, %124 : index
                      %subview_191 = memref.subview %120[%124] [%125] [%c1_187] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_192 = memref.reinterpret_cast %subview_191 to offset: [0], sizes: [%125], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_193 = arith.constant 0 : index
                      %126 = memref.load %alloca_7[%c0_193] : memref<1xi32>
                      %127 = arith.index_cast %126 : i32 to index
                      %c0_194 = arith.constant 0 : index
                      %dim_195 = memref.dim %reinterpret_cast_192, %c0_194 : memref<?xf64>
                      %128 = arith.subi %dim_195, %127 : index
                      %c1_196 = arith.constant 1 : index
                      %subview_197 = memref.subview %reinterpret_cast_192[%127] [%128] [%c1_196] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_198 = arith.constant 0 : index
                      %129 = memref.load %subview_197[%c0_198] : memref<?xf64, strided<[?], offset: ?>>
                      %130 = arith.addf %119, %129 : f64
                      %c0_199 = arith.constant 0 : index
                      %131 = memref.load %alloca_1[%c0_199] : memref<1xmemref<?xf64>>
                      %c0_200 = arith.constant 0 : index
                      %132 = memref.load %alloca_6[%c0_200] : memref<1xi32>
                      %133 = arith.extsi %132 : i32 to i64
                      %134 = arith.muli %133, %2 : i64
                      %135 = arith.index_cast %134 : i64 to index
                      %c1_201 = arith.constant 1 : index
                      %c0_202 = arith.constant 0 : index
                      %c0_203 = arith.constant 0 : index
                      %dim_204 = memref.dim %131, %c0_203 : memref<?xf64>
                      %136 = arith.subi %dim_204, %135 : index
                      %subview_205 = memref.subview %131[%135] [%136] [%c1_201] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_206 = memref.reinterpret_cast %subview_205 to offset: [0], sizes: [%136], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_207 = arith.constant 0 : index
                      %137 = memref.load %alloca_7[%c0_207] : memref<1xi32>
                      %138 = arith.index_cast %137 : i32 to index
                      %c0_208 = arith.constant 0 : index
                      %dim_209 = memref.dim %reinterpret_cast_206, %c0_208 : memref<?xf64>
                      %139 = arith.subi %dim_209, %138 : index
                      %c1_210 = arith.constant 1 : index
                      %subview_211 = memref.subview %reinterpret_cast_206[%138] [%139] [%c1_210] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_212 = arith.constant 0 : index
                      memref.store %130, %subview_211[%c0_212] : memref<?xf64, strided<[?], offset: ?>>
                    }
                    %c0_154 = arith.constant 0 : index
                    %96 = memref.load %alloca_7[%c0_154] : memref<1xi32>
                    %c-1_i32 = arith.constant -1 : i32
                    %97 = arith.addi %96, %c-1_i32 : i32
                    %c0_155 = arith.constant 0 : index
                    memref.store %97, %alloca_7[%c0_155] : memref<1xi32>
                    scf.yield
                  }
                }
              }
              %c0_79 = arith.constant 0 : index
              %49 = memref.load %alloca_6[%c0_79] : memref<1xi32>
              %c1_i32_80 = arith.constant 1 : i32
              %50 = arith.addi %49, %c1_i32_80 : i32
              %c0_81 = arith.constant 0 : index
              memref.store %50, %alloca_6[%c0_81] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_74 = arith.constant 0 : index
        %47 = memref.load %alloca_5[%c0_74] : memref<1xi32>
        %c1_i32_75 = arith.constant 1 : i32
        %48 = arith.addi %47, %c1_i32_75 : i32
        %c0_76 = arith.constant 0 : index
        memref.store %48, %alloca_5[%c0_76] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[117, 0]> {alignment = 1 : i64}
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
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_8] : memref<1xmemref<?xmemref<?xi8>>>
    %c1000_i32 = arith.constant 1000 : i32
    %c0_9 = arith.constant 0 : index
    memref.store %c1000_i32, %alloca_2[%c0_9] : memref<1xi32>
    %c500_i32 = arith.constant 500 : i32
    %c0_10 = arith.constant 0 : index
    memref.store %c500_i32, %alloca_3[%c0_10] : memref<1xi32>
    %c0_11 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_11] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_12 = arith.constant 0 : index
    %2 = memref.load %alloca_2[%c0_12] : memref<1xi32>
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
    %9 = memref.load %alloca_2[%c0_15] : memref<1xi32>
    %c0_i32_16 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_16 : i32
    %c0_17 = arith.constant 0 : index
    %11 = memref.load %alloca_2[%c0_17] : memref<1xi32>
    %c0_i32_18 = arith.constant 0 : i32
    %12 = arith.addi %11, %c0_i32_18 : i32
    %13 = arith.muli %10, %12 : i32
    %14 = arith.extsi %13 : i32 to i64
    %c8_i64_19 = arith.constant 8 : i64
    %15 = arith.trunci %c8_i64_19 : i64 to i32
    %16 = call @polybench_alloc_data(%14, %15) : (i64, i32) -> !llvm.ptr
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.ptr to memref<?xf64>
    %c0_20 = arith.constant 0 : index
    memref.store %17, %alloca_5[%c0_20] : memref<1xmemref<?xf64>>
    %c0_21 = arith.constant 0 : index
    %18 = memref.load %alloca_2[%c0_21] : memref<1xi32>
    %c0_i32_22 = arith.constant 0 : i32
    %19 = arith.addi %18, %c0_i32_22 : i32
    %c0_23 = arith.constant 0 : index
    %20 = memref.load %alloca_2[%c0_23] : memref<1xi32>
    %c0_i32_24 = arith.constant 0 : i32
    %21 = arith.addi %20, %c0_i32_24 : i32
    %22 = arith.muli %19, %21 : i32
    %23 = arith.extsi %22 : i32 to i64
    %c8_i64_25 = arith.constant 8 : i64
    %24 = arith.trunci %c8_i64_25 : i64 to i32
    %25 = call @polybench_alloc_data(%23, %24) : (i64, i32) -> !llvm.ptr
    %26 = builtin.unrealized_conversion_cast %25 : !llvm.ptr to memref<?xf64>
    %c0_26 = arith.constant 0 : index
    memref.store %26, %alloca_6[%c0_26] : memref<1xmemref<?xf64>>
    %c0_27 = arith.constant 0 : index
    %27 = memref.load %alloca_2[%c0_27] : memref<1xi32>
    %c0_i32_28 = arith.constant 0 : i32
    %28 = arith.addi %27, %c0_i32_28 : i32
    %c0_29 = arith.constant 0 : index
    %29 = memref.load %alloca_2[%c0_29] : memref<1xi32>
    %c0_i32_30 = arith.constant 0 : i32
    %30 = arith.addi %29, %c0_i32_30 : i32
    %31 = arith.muli %28, %30 : i32
    %32 = arith.extsi %31 : i32 to i64
    %c8_i64_31 = arith.constant 8 : i64
    %33 = arith.trunci %c8_i64_31 : i64 to i32
    %34 = call @polybench_alloc_data(%32, %33) : (i64, i32) -> !llvm.ptr
    %35 = builtin.unrealized_conversion_cast %34 : !llvm.ptr to memref<?xf64>
    %c0_32 = arith.constant 0 : index
    memref.store %35, %alloca_7[%c0_32] : memref<1xmemref<?xf64>>
    %c0_33 = arith.constant 0 : index
    %36 = memref.load %alloca_2[%c0_33] : memref<1xi32>
    %c0_34 = arith.constant 0 : index
    %37 = memref.load %alloca_4[%c0_34] : memref<1xmemref<?xf64>>
    call @init_array(%36, %37) : (i32, memref<?xf64>) -> ()
    %38 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %38() : !llvm.ptr, () -> ()
    %c0_35 = arith.constant 0 : index
    %39 = memref.load %alloca_3[%c0_35] : memref<1xi32>
    %c0_36 = arith.constant 0 : index
    %40 = memref.load %alloca_2[%c0_36] : memref<1xi32>
    %c0_37 = arith.constant 0 : index
    %41 = memref.load %alloca_4[%c0_37] : memref<1xmemref<?xf64>>
    %c0_38 = arith.constant 0 : index
    %42 = memref.load %alloca_5[%c0_38] : memref<1xmemref<?xf64>>
    %c0_39 = arith.constant 0 : index
    %43 = memref.load %alloca_6[%c0_39] : memref<1xmemref<?xf64>>
    %c0_40 = arith.constant 0 : index
    %44 = memref.load %alloca_7[%c0_40] : memref<1xmemref<?xf64>>
    call @kernel_adi(%39, %40, %41, %42, %43, %44) : (i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %45 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %45() : !llvm.ptr, () -> ()
    %46 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %46() : !llvm.ptr, () -> ()
    %c0_41 = arith.constant 0 : index
    %47 = memref.load %alloca_2[%c0_41] : memref<1xi32>
    %c0_42 = arith.constant 0 : index
    %48 = memref.load %alloca_4[%c0_42] : memref<1xmemref<?xf64>>
    call @print_array(%47, %48) : (i32, memref<?xf64>) -> ()
    %c0_43 = arith.constant 0 : index
    %49 = memref.load %alloca_4[%c0_43] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %49 : memref<?xf64> -> index
    %50 = arith.index_castui %intptr : index to i64
    %51 = llvm.inttoptr %50 : i64 to !llvm.ptr
    call @free(%51) : (!llvm.ptr) -> ()
    %c0_44 = arith.constant 0 : index
    %52 = memref.load %alloca_5[%c0_44] : memref<1xmemref<?xf64>>
    %intptr_45 = memref.extract_aligned_pointer_as_index %52 : memref<?xf64> -> index
    %53 = arith.index_castui %intptr_45 : index to i64
    %54 = llvm.inttoptr %53 : i64 to !llvm.ptr
    call @free(%54) : (!llvm.ptr) -> ()
    %c0_46 = arith.constant 0 : index
    %55 = memref.load %alloca_6[%c0_46] : memref<1xmemref<?xf64>>
    %intptr_47 = memref.extract_aligned_pointer_as_index %55 : memref<?xf64> -> index
    %56 = arith.index_castui %intptr_47 : index to i64
    %57 = llvm.inttoptr %56 : i64 to !llvm.ptr
    call @free(%57) : (!llvm.ptr) -> ()
    %c0_48 = arith.constant 0 : index
    %58 = memref.load %alloca_7[%c0_48] : memref<1xmemref<?xf64>>
    %intptr_49 = memref.extract_aligned_pointer_as_index %58 : memref<?xf64> -> index
    %59 = arith.index_castui %intptr_49 : index to i64
    %60 = llvm.inttoptr %59 : i64 to !llvm.ptr
    call @free(%60) : (!llvm.ptr) -> ()
    %c0_i32_50 = arith.constant 0 : i32
    %c0_51 = arith.constant 0 : index
    memref.store %c0_i32_50, %alloca_1[%c0_51] : memref<1xi32>
    %c0_52 = arith.constant 0 : index
    %61 = memref.load %alloca_1[%c0_52] : memref<1xi32>
    return %61 : i32
  }
}

