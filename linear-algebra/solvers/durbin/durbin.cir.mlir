module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/solvers/durbin/durbin.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %cast = memref.cast %alloca_2 : memref<1xi32> to memref<?xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_3 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_3] : memref<1xmemref<?xf64>>
    memref.alloca_scope  {
      %c0_i32 = arith.constant 0 : i32
      %c0_4 = arith.constant 0 : index
      memref.store %c0_i32, %alloca_1[%c0_4] : memref<1xi32>
      scf.while : () -> () {
        %c0_5 = arith.constant 0 : index
        %0 = memref.load %alloca_1[%c0_5] : memref<1xi32>
        %c0_6 = arith.constant 0 : index
        %1 = memref.load %alloca[%c0_6] : memref<1xi32>
        %2 = arith.cmpi slt, %0, %1 : i32
        scf.condition(%2)
      } do {
        memref.alloca_scope  {
          %c0_7 = arith.constant 0 : index
          %2 = memref.load %alloca[%c0_7] : memref<1xi32>
          %c1_i32_8 = arith.constant 1 : i32
          %3 = arith.addi %2, %c1_i32_8 : i32
          %c0_9 = arith.constant 0 : index
          %4 = memref.load %alloca_1[%c0_9] : memref<1xi32>
          %5 = arith.subi %3, %4 : i32
          %6 = arith.sitofp %5 : i32 to f64
          %c0_10 = arith.constant 0 : index
          %7 = memref.load %alloca_0[%c0_10] : memref<1xmemref<?xf64>>
          %c0_11 = arith.constant 0 : index
          %8 = memref.load %alloca_1[%c0_11] : memref<1xi32>
          %9 = arith.index_cast %8 : i32 to index
          %c0_12 = arith.constant 0 : index
          %dim = memref.dim %7, %c0_12 : memref<?xf64>
          %10 = arith.subi %dim, %9 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %7[%9] [%10] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_13 = arith.constant 0 : index
          memref.store %6, %subview[%c0_13] : memref<?xf64, strided<[?], offset: ?>>
        }
        %c0_5 = arith.constant 0 : index
        %0 = memref.load %alloca_1[%c0_5] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %1 = arith.addi %0, %c1_i32 : i32
        %c0_6 = arith.constant 0 : index
        memref.store %1, %alloca_1[%c0_6] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 16 : i64} : memref<2000xf64>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_7 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_8] : memref<1xmemref<?xf64>>
    %c0_9 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_10] : memref<1xmemref<?xf64>>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.index_cast %c0_i32 : i32 to index
    %c0_11 = arith.constant 0 : index
    %dim = memref.dim %0, %c0_11 : memref<?xf64>
    %2 = arith.subi %dim, %1 : index
    %c1 = arith.constant 1 : index
    %subview = memref.subview %0[%1] [%2] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
    %c0_12 = arith.constant 0 : index
    %3 = memref.load %subview[%c0_12] : memref<?xf64, strided<[?], offset: ?>>
    %cst = arith.constant 0.000000e+00 : f64
    %4 = arith.subf %cst, %3 : f64
    %c0_13 = arith.constant 0 : index
    %5 = memref.load %alloca_1[%c0_13] : memref<1xmemref<?xf64>>
    %c0_i32_14 = arith.constant 0 : i32
    %6 = arith.index_cast %c0_i32_14 : i32 to index
    %c0_15 = arith.constant 0 : index
    %dim_16 = memref.dim %5, %c0_15 : memref<?xf64>
    %7 = arith.subi %dim_16, %6 : index
    %c1_17 = arith.constant 1 : index
    %subview_18 = memref.subview %5[%6] [%7] [%c1_17] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
    %c0_19 = arith.constant 0 : index
    memref.store %4, %subview_18[%c0_19] : memref<?xf64, strided<[?], offset: ?>>
    %cst_20 = arith.constant 1.000000e+00 : f64
    %c0_21 = arith.constant 0 : index
    memref.store %cst_20, %alloca_4[%c0_21] : memref<1xf64>
    %c0_22 = arith.constant 0 : index
    %8 = memref.load %alloca_0[%c0_22] : memref<1xmemref<?xf64>>
    %c0_i32_23 = arith.constant 0 : i32
    %9 = arith.index_cast %c0_i32_23 : i32 to index
    %c0_24 = arith.constant 0 : index
    %dim_25 = memref.dim %8, %c0_24 : memref<?xf64>
    %10 = arith.subi %dim_25, %9 : index
    %c1_26 = arith.constant 1 : index
    %subview_27 = memref.subview %8[%9] [%10] [%c1_26] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
    %c0_28 = arith.constant 0 : index
    %11 = memref.load %subview_27[%c0_28] : memref<?xf64, strided<[?], offset: ?>>
    %cst_29 = arith.constant 0.000000e+00 : f64
    %12 = arith.subf %cst_29, %11 : f64
    %c0_30 = arith.constant 0 : index
    memref.store %12, %alloca_3[%c0_30] : memref<1xf64>
    memref.alloca_scope  {
      %c1_i32 = arith.constant 1 : i32
      %c0_31 = arith.constant 0 : index
      memref.store %c1_i32, %alloca_7[%c0_31] : memref<1xi32>
      scf.while : () -> () {
        %c0_32 = arith.constant 0 : index
        %13 = memref.load %alloca_7[%c0_32] : memref<1xi32>
        %c0_33 = arith.constant 0 : index
        %14 = memref.load %alloca[%c0_33] : memref<1xi32>
        %15 = arith.cmpi slt, %13, %14 : i32
        scf.condition(%15)
      } do {
        memref.alloca_scope  {
          %c1_i32_35 = arith.constant 1 : i32
          %15 = arith.sitofp %c1_i32_35 : i32 to f64
          %c0_36 = arith.constant 0 : index
          %16 = memref.load %alloca_3[%c0_36] : memref<1xf64>
          %c0_37 = arith.constant 0 : index
          %17 = memref.load %alloca_3[%c0_37] : memref<1xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = arith.subf %15, %18 : f64
          %c0_38 = arith.constant 0 : index
          %20 = memref.load %alloca_4[%c0_38] : memref<1xf64>
          %21 = arith.mulf %19, %20 : f64
          %c0_39 = arith.constant 0 : index
          memref.store %21, %alloca_4[%c0_39] : memref<1xf64>
          %cst_40 = arith.constant 0.000000e+00 : f64
          %c0_41 = arith.constant 0 : index
          memref.store %cst_40, %alloca_5[%c0_41] : memref<1xf64>
          memref.alloca_scope  {
            %c0_i32_61 = arith.constant 0 : i32
            %c0_62 = arith.constant 0 : index
            memref.store %c0_i32_61, %alloca_6[%c0_62] : memref<1xi32>
            scf.while : () -> () {
              %c0_63 = arith.constant 0 : index
              %37 = memref.load %alloca_6[%c0_63] : memref<1xi32>
              %c0_64 = arith.constant 0 : index
              %38 = memref.load %alloca_7[%c0_64] : memref<1xi32>
              %39 = arith.cmpi slt, %37, %38 : i32
              scf.condition(%39)
            } do {
              memref.alloca_scope  {
                %c0_66 = arith.constant 0 : index
                %39 = memref.load %alloca_0[%c0_66] : memref<1xmemref<?xf64>>
                %c0_67 = arith.constant 0 : index
                %40 = memref.load %alloca_7[%c0_67] : memref<1xi32>
                %c0_68 = arith.constant 0 : index
                %41 = memref.load %alloca_6[%c0_68] : memref<1xi32>
                %42 = arith.subi %40, %41 : i32
                %c1_i32_69 = arith.constant 1 : i32
                %43 = arith.subi %42, %c1_i32_69 : i32
                %44 = arith.index_cast %43 : i32 to index
                %c0_70 = arith.constant 0 : index
                %dim_71 = memref.dim %39, %c0_70 : memref<?xf64>
                %45 = arith.subi %dim_71, %44 : index
                %c1_72 = arith.constant 1 : index
                %subview_73 = memref.subview %39[%44] [%45] [%c1_72] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_74 = arith.constant 0 : index
                %46 = memref.load %subview_73[%c0_74] : memref<?xf64, strided<[?], offset: ?>>
                %c0_75 = arith.constant 0 : index
                %47 = memref.load %alloca_1[%c0_75] : memref<1xmemref<?xf64>>
                %c0_76 = arith.constant 0 : index
                %48 = memref.load %alloca_6[%c0_76] : memref<1xi32>
                %49 = arith.index_cast %48 : i32 to index
                %c0_77 = arith.constant 0 : index
                %dim_78 = memref.dim %47, %c0_77 : memref<?xf64>
                %50 = arith.subi %dim_78, %49 : index
                %c1_79 = arith.constant 1 : index
                %subview_80 = memref.subview %47[%49] [%50] [%c1_79] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_81 = arith.constant 0 : index
                %51 = memref.load %subview_80[%c0_81] : memref<?xf64, strided<[?], offset: ?>>
                %52 = arith.mulf %46, %51 : f64
                %c0_82 = arith.constant 0 : index
                %53 = memref.load %alloca_5[%c0_82] : memref<1xf64>
                %54 = arith.addf %53, %52 : f64
                %c0_83 = arith.constant 0 : index
                memref.store %54, %alloca_5[%c0_83] : memref<1xf64>
              }
              %c0_63 = arith.constant 0 : index
              %37 = memref.load %alloca_6[%c0_63] : memref<1xi32>
              %c1_i32_64 = arith.constant 1 : i32
              %38 = arith.addi %37, %c1_i32_64 : i32
              %c0_65 = arith.constant 0 : index
              memref.store %38, %alloca_6[%c0_65] : memref<1xi32>
              scf.yield
            }
          }
          %c0_42 = arith.constant 0 : index
          %22 = memref.load %alloca_0[%c0_42] : memref<1xmemref<?xf64>>
          %c0_43 = arith.constant 0 : index
          %23 = memref.load %alloca_7[%c0_43] : memref<1xi32>
          %24 = arith.index_cast %23 : i32 to index
          %c0_44 = arith.constant 0 : index
          %dim_45 = memref.dim %22, %c0_44 : memref<?xf64>
          %25 = arith.subi %dim_45, %24 : index
          %c1_46 = arith.constant 1 : index
          %subview_47 = memref.subview %22[%24] [%25] [%c1_46] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_48 = arith.constant 0 : index
          %26 = memref.load %subview_47[%c0_48] : memref<?xf64, strided<[?], offset: ?>>
          %c0_49 = arith.constant 0 : index
          %27 = memref.load %alloca_5[%c0_49] : memref<1xf64>
          %28 = arith.addf %26, %27 : f64
          %cst_50 = arith.constant 0.000000e+00 : f64
          %29 = arith.subf %cst_50, %28 : f64
          %c0_51 = arith.constant 0 : index
          %30 = memref.load %alloca_4[%c0_51] : memref<1xf64>
          %31 = arith.divf %29, %30 : f64
          %c0_52 = arith.constant 0 : index
          memref.store %31, %alloca_3[%c0_52] : memref<1xf64>
          memref.alloca_scope  {
            %c0_i32_61 = arith.constant 0 : i32
            %c0_62 = arith.constant 0 : index
            memref.store %c0_i32_61, %alloca_6[%c0_62] : memref<1xi32>
            scf.while : () -> () {
              %c0_63 = arith.constant 0 : index
              %37 = memref.load %alloca_6[%c0_63] : memref<1xi32>
              %c0_64 = arith.constant 0 : index
              %38 = memref.load %alloca_7[%c0_64] : memref<1xi32>
              %39 = arith.cmpi slt, %37, %38 : i32
              scf.condition(%39)
            } do {
              memref.alloca_scope  {
                %c0_66 = arith.constant 0 : index
                %39 = memref.load %alloca_1[%c0_66] : memref<1xmemref<?xf64>>
                %c0_67 = arith.constant 0 : index
                %40 = memref.load %alloca_6[%c0_67] : memref<1xi32>
                %41 = arith.index_cast %40 : i32 to index
                %c0_68 = arith.constant 0 : index
                %dim_69 = memref.dim %39, %c0_68 : memref<?xf64>
                %42 = arith.subi %dim_69, %41 : index
                %c1_70 = arith.constant 1 : index
                %subview_71 = memref.subview %39[%41] [%42] [%c1_70] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_72 = arith.constant 0 : index
                %43 = memref.load %subview_71[%c0_72] : memref<?xf64, strided<[?], offset: ?>>
                %c0_73 = arith.constant 0 : index
                %44 = memref.load %alloca_3[%c0_73] : memref<1xf64>
                %c0_74 = arith.constant 0 : index
                %45 = memref.load %alloca_1[%c0_74] : memref<1xmemref<?xf64>>
                %c0_75 = arith.constant 0 : index
                %46 = memref.load %alloca_7[%c0_75] : memref<1xi32>
                %c0_76 = arith.constant 0 : index
                %47 = memref.load %alloca_6[%c0_76] : memref<1xi32>
                %48 = arith.subi %46, %47 : i32
                %c1_i32_77 = arith.constant 1 : i32
                %49 = arith.subi %48, %c1_i32_77 : i32
                %50 = arith.index_cast %49 : i32 to index
                %c0_78 = arith.constant 0 : index
                %dim_79 = memref.dim %45, %c0_78 : memref<?xf64>
                %51 = arith.subi %dim_79, %50 : index
                %c1_80 = arith.constant 1 : index
                %subview_81 = memref.subview %45[%50] [%51] [%c1_80] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_82 = arith.constant 0 : index
                %52 = memref.load %subview_81[%c0_82] : memref<?xf64, strided<[?], offset: ?>>
                %53 = arith.mulf %44, %52 : f64
                %54 = arith.addf %43, %53 : f64
                %c0_83 = arith.constant 0 : index
                %55 = memref.load %alloca_6[%c0_83] : memref<1xi32>
                %56 = arith.index_cast %55 : i32 to index
                %c1_84 = arith.constant 1 : index
                %c0_85 = arith.constant 0 : index
                %subview_86 = memref.subview %alloca_2[%56] [%c1_84] [%c1_84] : memref<2000xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_87 = arith.constant 0 : index
                memref.store %54, %subview_86[%c0_87] : memref<?xf64, strided<[?], offset: ?>>
              }
              %c0_63 = arith.constant 0 : index
              %37 = memref.load %alloca_6[%c0_63] : memref<1xi32>
              %c1_i32_64 = arith.constant 1 : i32
              %38 = arith.addi %37, %c1_i32_64 : i32
              %c0_65 = arith.constant 0 : index
              memref.store %38, %alloca_6[%c0_65] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c0_i32_61 = arith.constant 0 : i32
            %c0_62 = arith.constant 0 : index
            memref.store %c0_i32_61, %alloca_6[%c0_62] : memref<1xi32>
            scf.while : () -> () {
              %c0_63 = arith.constant 0 : index
              %37 = memref.load %alloca_6[%c0_63] : memref<1xi32>
              %c0_64 = arith.constant 0 : index
              %38 = memref.load %alloca_7[%c0_64] : memref<1xi32>
              %39 = arith.cmpi slt, %37, %38 : i32
              scf.condition(%39)
            } do {
              memref.alloca_scope  {
                %c0_66 = arith.constant 0 : index
                %39 = memref.load %alloca_6[%c0_66] : memref<1xi32>
                %40 = arith.index_cast %39 : i32 to index
                %c1_67 = arith.constant 1 : index
                %c0_68 = arith.constant 0 : index
                %subview_69 = memref.subview %alloca_2[%40] [%c1_67] [%c1_67] : memref<2000xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_70 = arith.constant 0 : index
                %41 = memref.load %subview_69[%c0_70] : memref<?xf64, strided<[?], offset: ?>>
                %c0_71 = arith.constant 0 : index
                %42 = memref.load %alloca_1[%c0_71] : memref<1xmemref<?xf64>>
                %c0_72 = arith.constant 0 : index
                %43 = memref.load %alloca_6[%c0_72] : memref<1xi32>
                %44 = arith.index_cast %43 : i32 to index
                %c0_73 = arith.constant 0 : index
                %dim_74 = memref.dim %42, %c0_73 : memref<?xf64>
                %45 = arith.subi %dim_74, %44 : index
                %c1_75 = arith.constant 1 : index
                %subview_76 = memref.subview %42[%44] [%45] [%c1_75] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_77 = arith.constant 0 : index
                memref.store %41, %subview_76[%c0_77] : memref<?xf64, strided<[?], offset: ?>>
              }
              %c0_63 = arith.constant 0 : index
              %37 = memref.load %alloca_6[%c0_63] : memref<1xi32>
              %c1_i32_64 = arith.constant 1 : i32
              %38 = arith.addi %37, %c1_i32_64 : i32
              %c0_65 = arith.constant 0 : index
              memref.store %38, %alloca_6[%c0_65] : memref<1xi32>
              scf.yield
            }
          }
          %c0_53 = arith.constant 0 : index
          %32 = memref.load %alloca_3[%c0_53] : memref<1xf64>
          %c0_54 = arith.constant 0 : index
          %33 = memref.load %alloca_1[%c0_54] : memref<1xmemref<?xf64>>
          %c0_55 = arith.constant 0 : index
          %34 = memref.load %alloca_7[%c0_55] : memref<1xi32>
          %35 = arith.index_cast %34 : i32 to index
          %c0_56 = arith.constant 0 : index
          %dim_57 = memref.dim %33, %c0_56 : memref<?xf64>
          %36 = arith.subi %dim_57, %35 : index
          %c1_58 = arith.constant 1 : index
          %subview_59 = memref.subview %33[%35] [%36] [%c1_58] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_60 = arith.constant 0 : index
          memref.store %32, %subview_59[%c0_60] : memref<?xf64, strided<[?], offset: ?>>
        }
        %c0_32 = arith.constant 0 : index
        %13 = memref.load %alloca_7[%c0_32] : memref<1xi32>
        %c1_i32_33 = arith.constant 1 : i32
        %14 = arith.addi %13, %c1_i32_33 : i32
        %c0_34 = arith.constant 0 : index
        memref.store %14, %alloca_7[%c0_34] : memref<1xi32>
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
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_5 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_5] : memref<1xmemref<?xmemref<?xi8>>>
    %c2000_i32 = arith.constant 2000 : i32
    %c0_6 = arith.constant 0 : index
    memref.store %c2000_i32, %alloca_2[%c0_6] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_7] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %3 = arith.trunci %c8_i64 : i64 to i32
    %4 = call @polybench_alloc_data(%2, %3) : (i64, i32) -> !llvm.ptr
    %5 = builtin.unrealized_conversion_cast %4 : !llvm.ptr to memref<?xf64>
    %c0_8 = arith.constant 0 : index
    memref.store %5, %alloca_3[%c0_8] : memref<1xmemref<?xf64>>
    %c0_9 = arith.constant 0 : index
    %6 = memref.load %alloca_2[%c0_9] : memref<1xi32>
    %c0_i32_10 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_10 : i32
    %8 = arith.extsi %7 : i32 to i64
    %c8_i64_11 = arith.constant 8 : i64
    %9 = arith.trunci %c8_i64_11 : i64 to i32
    %10 = call @polybench_alloc_data(%8, %9) : (i64, i32) -> !llvm.ptr
    %11 = builtin.unrealized_conversion_cast %10 : !llvm.ptr to memref<?xf64>
    %c0_12 = arith.constant 0 : index
    memref.store %11, %alloca_4[%c0_12] : memref<1xmemref<?xf64>>
    %c0_13 = arith.constant 0 : index
    %12 = memref.load %alloca_2[%c0_13] : memref<1xi32>
    %c0_14 = arith.constant 0 : index
    %13 = memref.load %alloca_3[%c0_14] : memref<1xmemref<?xf64>>
    call @init_array(%12, %13) : (i32, memref<?xf64>) -> ()
    %14 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %14() : !llvm.ptr, () -> ()
    %c0_15 = arith.constant 0 : index
    %15 = memref.load %alloca_2[%c0_15] : memref<1xi32>
    %c0_16 = arith.constant 0 : index
    %16 = memref.load %alloca_3[%c0_16] : memref<1xmemref<?xf64>>
    %c0_17 = arith.constant 0 : index
    %17 = memref.load %alloca_4[%c0_17] : memref<1xmemref<?xf64>>
    call @kernel_durbin(%15, %16, %17) : (i32, memref<?xf64>, memref<?xf64>) -> ()
    %18 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %18() : !llvm.ptr, () -> ()
    %19 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %19() : !llvm.ptr, () -> ()
    %c0_18 = arith.constant 0 : index
    %20 = memref.load %alloca_2[%c0_18] : memref<1xi32>
    %c0_19 = arith.constant 0 : index
    %21 = memref.load %alloca_4[%c0_19] : memref<1xmemref<?xf64>>
    call @print_array(%20, %21) : (i32, memref<?xf64>) -> ()
    %c0_20 = arith.constant 0 : index
    %22 = memref.load %alloca_3[%c0_20] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %22 : memref<?xf64> -> index
    %23 = arith.index_castui %intptr : index to i64
    %24 = llvm.inttoptr %23 : i64 to !llvm.ptr
    call @free(%24) : (!llvm.ptr) -> ()
    %c0_21 = arith.constant 0 : index
    %25 = memref.load %alloca_4[%c0_21] : memref<1xmemref<?xf64>>
    %intptr_22 = memref.extract_aligned_pointer_as_index %25 : memref<?xf64> -> index
    %26 = arith.index_castui %intptr_22 : index to i64
    %27 = llvm.inttoptr %26 : i64 to !llvm.ptr
    call @free(%27) : (!llvm.ptr) -> ()
    %c0_i32_23 = arith.constant 0 : i32
    %c0_24 = arith.constant 0 : index
    memref.store %c0_i32_23, %alloca_1[%c0_24] : memref<1xi32>
    %c0_25 = arith.constant 0 : index
    %28 = memref.load %alloca_1[%c0_25] : memref<1xi32>
    return %28 : i32
  }
}

