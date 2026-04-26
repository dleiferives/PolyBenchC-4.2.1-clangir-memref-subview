module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/blas/gesummv/gesummv.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_7] : memref<1xmemref<?xf64>>
    %c0_8 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_8] : memref<1xmemref<?xf64>>
    %c0_9 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_10] : memref<1xmemref<?xf64>>
    %c0_11 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_12] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_13 = arith.constant 0 : index
    %3 = memref.load %alloca[%c0_13] : memref<1xi32>
    %c0_i32_14 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_14 : i32
    %5 = arith.extsi %4 : i32 to i64
    %cst = arith.constant 1.500000e+00 : f64
    %c0_15 = arith.constant 0 : index
    %6 = memref.load %alloca_0[%c0_15] : memref<1xmemref<?xf64>>
    %c0_16 = arith.constant 0 : index
    memref.store %cst, %6[%c0_16] : memref<?xf64>
    %cst_17 = arith.constant 1.200000e+00 : f64
    %c0_18 = arith.constant 0 : index
    %7 = memref.load %alloca_1[%c0_18] : memref<1xmemref<?xf64>>
    %c0_19 = arith.constant 0 : index
    memref.store %cst_17, %7[%c0_19] : memref<?xf64>
    memref.alloca_scope  {
      %c0_i32_20 = arith.constant 0 : i32
      %c0_21 = arith.constant 0 : index
      memref.store %c0_i32_20, %alloca_5[%c0_21] : memref<1xi32>
      scf.while : () -> () {
        %c0_22 = arith.constant 0 : index
        %8 = memref.load %alloca_5[%c0_22] : memref<1xi32>
        %c0_23 = arith.constant 0 : index
        %9 = memref.load %alloca[%c0_23] : memref<1xi32>
        %10 = arith.cmpi slt, %8, %9 : i32
        scf.condition(%10)
      } do {
        memref.alloca_scope  {
          %c0_24 = arith.constant 0 : index
          %10 = memref.load %alloca_5[%c0_24] : memref<1xi32>
          %c0_25 = arith.constant 0 : index
          %11 = memref.load %alloca[%c0_25] : memref<1xi32>
          %12 = arith.remsi %10, %11 : i32
          %13 = arith.sitofp %12 : i32 to f64
          %c0_26 = arith.constant 0 : index
          %14 = memref.load %alloca[%c0_26] : memref<1xi32>
          %15 = arith.sitofp %14 : i32 to f64
          %16 = arith.divf %13, %15 : f64
          %c0_27 = arith.constant 0 : index
          %17 = memref.load %alloca_4[%c0_27] : memref<1xmemref<?xf64>>
          %c0_28 = arith.constant 0 : index
          %18 = memref.load %alloca_5[%c0_28] : memref<1xi32>
          %19 = arith.index_cast %18 : i32 to index
          %c0_29 = arith.constant 0 : index
          %dim = memref.dim %17, %c0_29 : memref<?xf64>
          %20 = arith.subi %dim, %19 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %17[%19] [%20] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_30 = arith.constant 0 : index
          memref.store %16, %subview[%c0_30] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_i32_31 = arith.constant 0 : i32
            %c0_32 = arith.constant 0 : index
            memref.store %c0_i32_31, %alloca_6[%c0_32] : memref<1xi32>
            scf.while : () -> () {
              %c0_33 = arith.constant 0 : index
              %21 = memref.load %alloca_6[%c0_33] : memref<1xi32>
              %c0_34 = arith.constant 0 : index
              %22 = memref.load %alloca[%c0_34] : memref<1xi32>
              %23 = arith.cmpi slt, %21, %22 : i32
              scf.condition(%23)
            } do {
              memref.alloca_scope  {
                %c0_36 = arith.constant 0 : index
                %23 = memref.load %alloca_5[%c0_36] : memref<1xi32>
                %c0_37 = arith.constant 0 : index
                %24 = memref.load %alloca_6[%c0_37] : memref<1xi32>
                %25 = arith.muli %23, %24 : i32
                %c1_i32_38 = arith.constant 1 : i32
                %26 = arith.addi %25, %c1_i32_38 : i32
                %c0_39 = arith.constant 0 : index
                %27 = memref.load %alloca[%c0_39] : memref<1xi32>
                %28 = arith.remsi %26, %27 : i32
                %29 = arith.sitofp %28 : i32 to f64
                %c0_40 = arith.constant 0 : index
                %30 = memref.load %alloca[%c0_40] : memref<1xi32>
                %31 = arith.sitofp %30 : i32 to f64
                %32 = arith.divf %29, %31 : f64
                %c0_41 = arith.constant 0 : index
                %33 = memref.load %alloca_2[%c0_41] : memref<1xmemref<?xf64>>
                %c0_42 = arith.constant 0 : index
                %34 = memref.load %alloca_5[%c0_42] : memref<1xi32>
                %35 = arith.extsi %34 : i32 to i64
                %36 = arith.muli %35, %2 : i64
                %37 = arith.index_cast %36 : i64 to index
                %c1_43 = arith.constant 1 : index
                %c0_44 = arith.constant 0 : index
                %c0_45 = arith.constant 0 : index
                %dim_46 = memref.dim %33, %c0_45 : memref<?xf64>
                %38 = arith.subi %dim_46, %37 : index
                %subview_47 = memref.subview %33[%37] [%38] [%c1_43] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview_47 to offset: [0], sizes: [%38], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_48 = arith.constant 0 : index
                %39 = memref.load %alloca_6[%c0_48] : memref<1xi32>
                %40 = arith.index_cast %39 : i32 to index
                %c0_49 = arith.constant 0 : index
                %dim_50 = memref.dim %reinterpret_cast, %c0_49 : memref<?xf64>
                %41 = arith.subi %dim_50, %40 : index
                %c1_51 = arith.constant 1 : index
                %subview_52 = memref.subview %reinterpret_cast[%40] [%41] [%c1_51] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_53 = arith.constant 0 : index
                memref.store %32, %subview_52[%c0_53] : memref<?xf64, strided<[?], offset: ?>>
                %c0_54 = arith.constant 0 : index
                %42 = memref.load %alloca_5[%c0_54] : memref<1xi32>
                %c0_55 = arith.constant 0 : index
                %43 = memref.load %alloca_6[%c0_55] : memref<1xi32>
                %44 = arith.muli %42, %43 : i32
                %c2_i32 = arith.constant 2 : i32
                %45 = arith.addi %44, %c2_i32 : i32
                %c0_56 = arith.constant 0 : index
                %46 = memref.load %alloca[%c0_56] : memref<1xi32>
                %47 = arith.remsi %45, %46 : i32
                %48 = arith.sitofp %47 : i32 to f64
                %c0_57 = arith.constant 0 : index
                %49 = memref.load %alloca[%c0_57] : memref<1xi32>
                %50 = arith.sitofp %49 : i32 to f64
                %51 = arith.divf %48, %50 : f64
                %c0_58 = arith.constant 0 : index
                %52 = memref.load %alloca_3[%c0_58] : memref<1xmemref<?xf64>>
                %c0_59 = arith.constant 0 : index
                %53 = memref.load %alloca_5[%c0_59] : memref<1xi32>
                %54 = arith.extsi %53 : i32 to i64
                %55 = arith.muli %54, %5 : i64
                %56 = arith.index_cast %55 : i64 to index
                %c1_60 = arith.constant 1 : index
                %c0_61 = arith.constant 0 : index
                %c0_62 = arith.constant 0 : index
                %dim_63 = memref.dim %52, %c0_62 : memref<?xf64>
                %57 = arith.subi %dim_63, %56 : index
                %subview_64 = memref.subview %52[%56] [%57] [%c1_60] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_65 = memref.reinterpret_cast %subview_64 to offset: [0], sizes: [%57], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_66 = arith.constant 0 : index
                %58 = memref.load %alloca_6[%c0_66] : memref<1xi32>
                %59 = arith.index_cast %58 : i32 to index
                %c0_67 = arith.constant 0 : index
                %dim_68 = memref.dim %reinterpret_cast_65, %c0_67 : memref<?xf64>
                %60 = arith.subi %dim_68, %59 : index
                %c1_69 = arith.constant 1 : index
                %subview_70 = memref.subview %reinterpret_cast_65[%59] [%60] [%c1_69] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_71 = arith.constant 0 : index
                memref.store %51, %subview_70[%c0_71] : memref<?xf64, strided<[?], offset: ?>>
              }
              %c0_33 = arith.constant 0 : index
              %21 = memref.load %alloca_6[%c0_33] : memref<1xi32>
              %c1_i32_34 = arith.constant 1 : i32
              %22 = arith.addi %21, %c1_i32_34 : i32
              %c0_35 = arith.constant 0 : index
              memref.store %22, %alloca_6[%c0_35] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_22 = arith.constant 0 : index
        %8 = memref.load %alloca_5[%c0_22] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %9 = arith.addi %8, %c1_i32 : i32
        %c0_23 = arith.constant 0 : index
        memref.store %9, %alloca_5[%c0_23] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_7 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_8 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_9 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_9] : memref<1xf64>
    %c0_10 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_10] : memref<1xf64>
    %c0_11 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_12] : memref<1xmemref<?xf64>>
    %c0_13 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_13] : memref<1xmemref<?xf64>>
    %c0_14 = arith.constant 0 : index
    memref.store %arg6, %alloca_5[%c0_14] : memref<1xmemref<?xf64>>
    %c0_15 = arith.constant 0 : index
    memref.store %arg7, %alloca_6[%c0_15] : memref<1xmemref<?xf64>>
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
    memref.alloca_scope  {
      %c0_i32_19 = arith.constant 0 : i32
      %c0_20 = arith.constant 0 : index
      memref.store %c0_i32_19, %alloca_7[%c0_20] : memref<1xi32>
      scf.while : () -> () {
        %c0_21 = arith.constant 0 : index
        %6 = memref.load %alloca_7[%c0_21] : memref<1xi32>
        %c0_22 = arith.constant 0 : index
        %7 = memref.load %alloca[%c0_22] : memref<1xi32>
        %8 = arith.cmpi slt, %6, %7 : i32
        scf.condition(%8)
      } do {
        memref.alloca_scope  {
          %cst = arith.constant 0.000000e+00 : f64
          %c0_23 = arith.constant 0 : index
          %8 = memref.load %alloca_4[%c0_23] : memref<1xmemref<?xf64>>
          %c0_24 = arith.constant 0 : index
          %9 = memref.load %alloca_7[%c0_24] : memref<1xi32>
          %10 = arith.index_cast %9 : i32 to index
          %c0_25 = arith.constant 0 : index
          %dim = memref.dim %8, %c0_25 : memref<?xf64>
          %11 = arith.subi %dim, %10 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %8[%10] [%11] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_26 = arith.constant 0 : index
          memref.store %cst, %subview[%c0_26] : memref<?xf64, strided<[?], offset: ?>>
          %cst_27 = arith.constant 0.000000e+00 : f64
          %c0_28 = arith.constant 0 : index
          %12 = memref.load %alloca_6[%c0_28] : memref<1xmemref<?xf64>>
          %c0_29 = arith.constant 0 : index
          %13 = memref.load %alloca_7[%c0_29] : memref<1xi32>
          %14 = arith.index_cast %13 : i32 to index
          %c0_30 = arith.constant 0 : index
          %dim_31 = memref.dim %12, %c0_30 : memref<?xf64>
          %15 = arith.subi %dim_31, %14 : index
          %c1_32 = arith.constant 1 : index
          %subview_33 = memref.subview %12[%14] [%15] [%c1_32] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_34 = arith.constant 0 : index
          memref.store %cst_27, %subview_33[%c0_34] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_i32_58 = arith.constant 0 : i32
            %c0_59 = arith.constant 0 : index
            memref.store %c0_i32_58, %alloca_8[%c0_59] : memref<1xi32>
            scf.while : () -> () {
              %c0_60 = arith.constant 0 : index
              %35 = memref.load %alloca_8[%c0_60] : memref<1xi32>
              %c0_61 = arith.constant 0 : index
              %36 = memref.load %alloca[%c0_61] : memref<1xi32>
              %37 = arith.cmpi slt, %35, %36 : i32
              scf.condition(%37)
            } do {
              memref.alloca_scope  {
                %c0_63 = arith.constant 0 : index
                %37 = memref.load %alloca_2[%c0_63] : memref<1xmemref<?xf64>>
                %c0_64 = arith.constant 0 : index
                %38 = memref.load %alloca_7[%c0_64] : memref<1xi32>
                %39 = arith.extsi %38 : i32 to i64
                %40 = arith.muli %39, %2 : i64
                %41 = arith.index_cast %40 : i64 to index
                %c1_65 = arith.constant 1 : index
                %c0_66 = arith.constant 0 : index
                %c0_67 = arith.constant 0 : index
                %dim_68 = memref.dim %37, %c0_67 : memref<?xf64>
                %42 = arith.subi %dim_68, %41 : index
                %subview_69 = memref.subview %37[%41] [%42] [%c1_65] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview_69 to offset: [0], sizes: [%42], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_70 = arith.constant 0 : index
                %43 = memref.load %alloca_8[%c0_70] : memref<1xi32>
                %44 = arith.index_cast %43 : i32 to index
                %c0_71 = arith.constant 0 : index
                %dim_72 = memref.dim %reinterpret_cast, %c0_71 : memref<?xf64>
                %45 = arith.subi %dim_72, %44 : index
                %c1_73 = arith.constant 1 : index
                %subview_74 = memref.subview %reinterpret_cast[%44] [%45] [%c1_73] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_75 = arith.constant 0 : index
                %46 = memref.load %subview_74[%c0_75] : memref<?xf64, strided<[?], offset: ?>>
                %c0_76 = arith.constant 0 : index
                %47 = memref.load %alloca_5[%c0_76] : memref<1xmemref<?xf64>>
                %c0_77 = arith.constant 0 : index
                %48 = memref.load %alloca_8[%c0_77] : memref<1xi32>
                %49 = arith.index_cast %48 : i32 to index
                %c0_78 = arith.constant 0 : index
                %dim_79 = memref.dim %47, %c0_78 : memref<?xf64>
                %50 = arith.subi %dim_79, %49 : index
                %c1_80 = arith.constant 1 : index
                %subview_81 = memref.subview %47[%49] [%50] [%c1_80] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_82 = arith.constant 0 : index
                %51 = memref.load %subview_81[%c0_82] : memref<?xf64, strided<[?], offset: ?>>
                %52 = arith.mulf %46, %51 : f64
                %c0_83 = arith.constant 0 : index
                %53 = memref.load %alloca_4[%c0_83] : memref<1xmemref<?xf64>>
                %c0_84 = arith.constant 0 : index
                %54 = memref.load %alloca_7[%c0_84] : memref<1xi32>
                %55 = arith.index_cast %54 : i32 to index
                %c0_85 = arith.constant 0 : index
                %dim_86 = memref.dim %53, %c0_85 : memref<?xf64>
                %56 = arith.subi %dim_86, %55 : index
                %c1_87 = arith.constant 1 : index
                %subview_88 = memref.subview %53[%55] [%56] [%c1_87] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_89 = arith.constant 0 : index
                %57 = memref.load %subview_88[%c0_89] : memref<?xf64, strided<[?], offset: ?>>
                %58 = arith.addf %52, %57 : f64
                %c0_90 = arith.constant 0 : index
                %59 = memref.load %alloca_4[%c0_90] : memref<1xmemref<?xf64>>
                %c0_91 = arith.constant 0 : index
                %60 = memref.load %alloca_7[%c0_91] : memref<1xi32>
                %61 = arith.index_cast %60 : i32 to index
                %c0_92 = arith.constant 0 : index
                %dim_93 = memref.dim %59, %c0_92 : memref<?xf64>
                %62 = arith.subi %dim_93, %61 : index
                %c1_94 = arith.constant 1 : index
                %subview_95 = memref.subview %59[%61] [%62] [%c1_94] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_96 = arith.constant 0 : index
                memref.store %58, %subview_95[%c0_96] : memref<?xf64, strided<[?], offset: ?>>
                %c0_97 = arith.constant 0 : index
                %63 = memref.load %alloca_3[%c0_97] : memref<1xmemref<?xf64>>
                %c0_98 = arith.constant 0 : index
                %64 = memref.load %alloca_7[%c0_98] : memref<1xi32>
                %65 = arith.extsi %64 : i32 to i64
                %66 = arith.muli %65, %5 : i64
                %67 = arith.index_cast %66 : i64 to index
                %c1_99 = arith.constant 1 : index
                %c0_100 = arith.constant 0 : index
                %c0_101 = arith.constant 0 : index
                %dim_102 = memref.dim %63, %c0_101 : memref<?xf64>
                %68 = arith.subi %dim_102, %67 : index
                %subview_103 = memref.subview %63[%67] [%68] [%c1_99] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_104 = memref.reinterpret_cast %subview_103 to offset: [0], sizes: [%68], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_105 = arith.constant 0 : index
                %69 = memref.load %alloca_8[%c0_105] : memref<1xi32>
                %70 = arith.index_cast %69 : i32 to index
                %c0_106 = arith.constant 0 : index
                %dim_107 = memref.dim %reinterpret_cast_104, %c0_106 : memref<?xf64>
                %71 = arith.subi %dim_107, %70 : index
                %c1_108 = arith.constant 1 : index
                %subview_109 = memref.subview %reinterpret_cast_104[%70] [%71] [%c1_108] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_110 = arith.constant 0 : index
                %72 = memref.load %subview_109[%c0_110] : memref<?xf64, strided<[?], offset: ?>>
                %c0_111 = arith.constant 0 : index
                %73 = memref.load %alloca_5[%c0_111] : memref<1xmemref<?xf64>>
                %c0_112 = arith.constant 0 : index
                %74 = memref.load %alloca_8[%c0_112] : memref<1xi32>
                %75 = arith.index_cast %74 : i32 to index
                %c0_113 = arith.constant 0 : index
                %dim_114 = memref.dim %73, %c0_113 : memref<?xf64>
                %76 = arith.subi %dim_114, %75 : index
                %c1_115 = arith.constant 1 : index
                %subview_116 = memref.subview %73[%75] [%76] [%c1_115] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_117 = arith.constant 0 : index
                %77 = memref.load %subview_116[%c0_117] : memref<?xf64, strided<[?], offset: ?>>
                %78 = arith.mulf %72, %77 : f64
                %c0_118 = arith.constant 0 : index
                %79 = memref.load %alloca_6[%c0_118] : memref<1xmemref<?xf64>>
                %c0_119 = arith.constant 0 : index
                %80 = memref.load %alloca_7[%c0_119] : memref<1xi32>
                %81 = arith.index_cast %80 : i32 to index
                %c0_120 = arith.constant 0 : index
                %dim_121 = memref.dim %79, %c0_120 : memref<?xf64>
                %82 = arith.subi %dim_121, %81 : index
                %c1_122 = arith.constant 1 : index
                %subview_123 = memref.subview %79[%81] [%82] [%c1_122] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_124 = arith.constant 0 : index
                %83 = memref.load %subview_123[%c0_124] : memref<?xf64, strided<[?], offset: ?>>
                %84 = arith.addf %78, %83 : f64
                %c0_125 = arith.constant 0 : index
                %85 = memref.load %alloca_6[%c0_125] : memref<1xmemref<?xf64>>
                %c0_126 = arith.constant 0 : index
                %86 = memref.load %alloca_7[%c0_126] : memref<1xi32>
                %87 = arith.index_cast %86 : i32 to index
                %c0_127 = arith.constant 0 : index
                %dim_128 = memref.dim %85, %c0_127 : memref<?xf64>
                %88 = arith.subi %dim_128, %87 : index
                %c1_129 = arith.constant 1 : index
                %subview_130 = memref.subview %85[%87] [%88] [%c1_129] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_131 = arith.constant 0 : index
                memref.store %84, %subview_130[%c0_131] : memref<?xf64, strided<[?], offset: ?>>
              }
              %c0_60 = arith.constant 0 : index
              %35 = memref.load %alloca_8[%c0_60] : memref<1xi32>
              %c1_i32_61 = arith.constant 1 : i32
              %36 = arith.addi %35, %c1_i32_61 : i32
              %c0_62 = arith.constant 0 : index
              memref.store %36, %alloca_8[%c0_62] : memref<1xi32>
              scf.yield
            }
          }
          %c0_35 = arith.constant 0 : index
          %16 = memref.load %alloca_0[%c0_35] : memref<1xf64>
          %c0_36 = arith.constant 0 : index
          %17 = memref.load %alloca_4[%c0_36] : memref<1xmemref<?xf64>>
          %c0_37 = arith.constant 0 : index
          %18 = memref.load %alloca_7[%c0_37] : memref<1xi32>
          %19 = arith.index_cast %18 : i32 to index
          %c0_38 = arith.constant 0 : index
          %dim_39 = memref.dim %17, %c0_38 : memref<?xf64>
          %20 = arith.subi %dim_39, %19 : index
          %c1_40 = arith.constant 1 : index
          %subview_41 = memref.subview %17[%19] [%20] [%c1_40] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_42 = arith.constant 0 : index
          %21 = memref.load %subview_41[%c0_42] : memref<?xf64, strided<[?], offset: ?>>
          %22 = arith.mulf %16, %21 : f64
          %c0_43 = arith.constant 0 : index
          %23 = memref.load %alloca_1[%c0_43] : memref<1xf64>
          %c0_44 = arith.constant 0 : index
          %24 = memref.load %alloca_6[%c0_44] : memref<1xmemref<?xf64>>
          %c0_45 = arith.constant 0 : index
          %25 = memref.load %alloca_7[%c0_45] : memref<1xi32>
          %26 = arith.index_cast %25 : i32 to index
          %c0_46 = arith.constant 0 : index
          %dim_47 = memref.dim %24, %c0_46 : memref<?xf64>
          %27 = arith.subi %dim_47, %26 : index
          %c1_48 = arith.constant 1 : index
          %subview_49 = memref.subview %24[%26] [%27] [%c1_48] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_50 = arith.constant 0 : index
          %28 = memref.load %subview_49[%c0_50] : memref<?xf64, strided<[?], offset: ?>>
          %29 = arith.mulf %23, %28 : f64
          %30 = arith.addf %22, %29 : f64
          %c0_51 = arith.constant 0 : index
          %31 = memref.load %alloca_6[%c0_51] : memref<1xmemref<?xf64>>
          %c0_52 = arith.constant 0 : index
          %32 = memref.load %alloca_7[%c0_52] : memref<1xi32>
          %33 = arith.index_cast %32 : i32 to index
          %c0_53 = arith.constant 0 : index
          %dim_54 = memref.dim %31, %c0_53 : memref<?xf64>
          %34 = arith.subi %dim_54, %33 : index
          %c1_55 = arith.constant 1 : index
          %subview_56 = memref.subview %31[%33] [%34] [%c1_55] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_57 = arith.constant 0 : index
          memref.store %30, %subview_56[%c0_57] : memref<?xf64, strided<[?], offset: ?>>
        }
        %c0_21 = arith.constant 0 : index
        %6 = memref.load %alloca_7[%c0_21] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %7 = arith.addi %6, %c1_i32 : i32
        %c0_22 = arith.constant 0 : index
        memref.store %7, %alloca_7[%c0_22] : memref<1xi32>
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
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %cast = memref.cast %alloca_3 : memref<1xf64> to memref<?xf64>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %cast_5 = memref.cast %alloca_4 : memref<1xf64> to memref<?xf64>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_8 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_9 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_10 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_11 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_11] : memref<1xmemref<?xmemref<?xi8>>>
    %c1300_i32 = arith.constant 1300 : i32
    %c0_12 = arith.constant 0 : index
    memref.store %c1300_i32, %alloca_2[%c0_12] : memref<1xi32>
    %c0_13 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_13] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_14 = arith.constant 0 : index
    %2 = memref.load %alloca_2[%c0_14] : memref<1xi32>
    %c0_i32_15 = arith.constant 0 : i32
    %3 = arith.addi %2, %c0_i32_15 : i32
    %4 = arith.muli %1, %3 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %6 = arith.trunci %c8_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xf64>
    %c0_16 = arith.constant 0 : index
    memref.store %8, %alloca_6[%c0_16] : memref<1xmemref<?xf64>>
    %c0_17 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_17] : memref<1xi32>
    %c0_i32_18 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_18 : i32
    %c0_19 = arith.constant 0 : index
    %11 = memref.load %alloca_2[%c0_19] : memref<1xi32>
    %c0_i32_20 = arith.constant 0 : i32
    %12 = arith.addi %11, %c0_i32_20 : i32
    %13 = arith.muli %10, %12 : i32
    %14 = arith.extsi %13 : i32 to i64
    %c8_i64_21 = arith.constant 8 : i64
    %15 = arith.trunci %c8_i64_21 : i64 to i32
    %16 = call @polybench_alloc_data(%14, %15) : (i64, i32) -> !llvm.ptr
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.ptr to memref<?xf64>
    %c0_22 = arith.constant 0 : index
    memref.store %17, %alloca_7[%c0_22] : memref<1xmemref<?xf64>>
    %c0_23 = arith.constant 0 : index
    %18 = memref.load %alloca_2[%c0_23] : memref<1xi32>
    %c0_i32_24 = arith.constant 0 : i32
    %19 = arith.addi %18, %c0_i32_24 : i32
    %20 = arith.extsi %19 : i32 to i64
    %c8_i64_25 = arith.constant 8 : i64
    %21 = arith.trunci %c8_i64_25 : i64 to i32
    %22 = call @polybench_alloc_data(%20, %21) : (i64, i32) -> !llvm.ptr
    %23 = builtin.unrealized_conversion_cast %22 : !llvm.ptr to memref<?xf64>
    %c0_26 = arith.constant 0 : index
    memref.store %23, %alloca_8[%c0_26] : memref<1xmemref<?xf64>>
    %c0_27 = arith.constant 0 : index
    %24 = memref.load %alloca_2[%c0_27] : memref<1xi32>
    %c0_i32_28 = arith.constant 0 : i32
    %25 = arith.addi %24, %c0_i32_28 : i32
    %26 = arith.extsi %25 : i32 to i64
    %c8_i64_29 = arith.constant 8 : i64
    %27 = arith.trunci %c8_i64_29 : i64 to i32
    %28 = call @polybench_alloc_data(%26, %27) : (i64, i32) -> !llvm.ptr
    %29 = builtin.unrealized_conversion_cast %28 : !llvm.ptr to memref<?xf64>
    %c0_30 = arith.constant 0 : index
    memref.store %29, %alloca_9[%c0_30] : memref<1xmemref<?xf64>>
    %c0_31 = arith.constant 0 : index
    %30 = memref.load %alloca_2[%c0_31] : memref<1xi32>
    %c0_i32_32 = arith.constant 0 : i32
    %31 = arith.addi %30, %c0_i32_32 : i32
    %32 = arith.extsi %31 : i32 to i64
    %c8_i64_33 = arith.constant 8 : i64
    %33 = arith.trunci %c8_i64_33 : i64 to i32
    %34 = call @polybench_alloc_data(%32, %33) : (i64, i32) -> !llvm.ptr
    %35 = builtin.unrealized_conversion_cast %34 : !llvm.ptr to memref<?xf64>
    %c0_34 = arith.constant 0 : index
    memref.store %35, %alloca_10[%c0_34] : memref<1xmemref<?xf64>>
    %c0_35 = arith.constant 0 : index
    %36 = memref.load %alloca_2[%c0_35] : memref<1xi32>
    %c0_36 = arith.constant 0 : index
    %37 = memref.load %alloca_6[%c0_36] : memref<1xmemref<?xf64>>
    %c0_37 = arith.constant 0 : index
    %38 = memref.load %alloca_7[%c0_37] : memref<1xmemref<?xf64>>
    %c0_38 = arith.constant 0 : index
    %39 = memref.load %alloca_9[%c0_38] : memref<1xmemref<?xf64>>
    call @init_array(%36, %cast, %cast_5, %37, %38, %39) : (i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %40 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %40() : !llvm.ptr, () -> ()
    %c0_39 = arith.constant 0 : index
    %41 = memref.load %alloca_2[%c0_39] : memref<1xi32>
    %c0_40 = arith.constant 0 : index
    %42 = memref.load %alloca_3[%c0_40] : memref<1xf64>
    %c0_41 = arith.constant 0 : index
    %43 = memref.load %alloca_4[%c0_41] : memref<1xf64>
    %c0_42 = arith.constant 0 : index
    %44 = memref.load %alloca_6[%c0_42] : memref<1xmemref<?xf64>>
    %c0_43 = arith.constant 0 : index
    %45 = memref.load %alloca_7[%c0_43] : memref<1xmemref<?xf64>>
    %c0_44 = arith.constant 0 : index
    %46 = memref.load %alloca_8[%c0_44] : memref<1xmemref<?xf64>>
    %c0_45 = arith.constant 0 : index
    %47 = memref.load %alloca_9[%c0_45] : memref<1xmemref<?xf64>>
    %c0_46 = arith.constant 0 : index
    %48 = memref.load %alloca_10[%c0_46] : memref<1xmemref<?xf64>>
    call @kernel_gesummv(%41, %42, %43, %44, %45, %46, %47, %48) : (i32, f64, f64, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %49 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %49() : !llvm.ptr, () -> ()
    %50 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %50() : !llvm.ptr, () -> ()
    %c0_47 = arith.constant 0 : index
    %51 = memref.load %alloca_2[%c0_47] : memref<1xi32>
    %c0_48 = arith.constant 0 : index
    %52 = memref.load %alloca_10[%c0_48] : memref<1xmemref<?xf64>>
    call @print_array(%51, %52) : (i32, memref<?xf64>) -> ()
    %c0_49 = arith.constant 0 : index
    %53 = memref.load %alloca_6[%c0_49] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %53 : memref<?xf64> -> index
    %54 = arith.index_castui %intptr : index to i64
    %55 = llvm.inttoptr %54 : i64 to !llvm.ptr
    call @free(%55) : (!llvm.ptr) -> ()
    %c0_50 = arith.constant 0 : index
    %56 = memref.load %alloca_7[%c0_50] : memref<1xmemref<?xf64>>
    %intptr_51 = memref.extract_aligned_pointer_as_index %56 : memref<?xf64> -> index
    %57 = arith.index_castui %intptr_51 : index to i64
    %58 = llvm.inttoptr %57 : i64 to !llvm.ptr
    call @free(%58) : (!llvm.ptr) -> ()
    %c0_52 = arith.constant 0 : index
    %59 = memref.load %alloca_8[%c0_52] : memref<1xmemref<?xf64>>
    %intptr_53 = memref.extract_aligned_pointer_as_index %59 : memref<?xf64> -> index
    %60 = arith.index_castui %intptr_53 : index to i64
    %61 = llvm.inttoptr %60 : i64 to !llvm.ptr
    call @free(%61) : (!llvm.ptr) -> ()
    %c0_54 = arith.constant 0 : index
    %62 = memref.load %alloca_9[%c0_54] : memref<1xmemref<?xf64>>
    %intptr_55 = memref.extract_aligned_pointer_as_index %62 : memref<?xf64> -> index
    %63 = arith.index_castui %intptr_55 : index to i64
    %64 = llvm.inttoptr %63 : i64 to !llvm.ptr
    call @free(%64) : (!llvm.ptr) -> ()
    %c0_56 = arith.constant 0 : index
    %65 = memref.load %alloca_10[%c0_56] : memref<1xmemref<?xf64>>
    %intptr_57 = memref.extract_aligned_pointer_as_index %65 : memref<?xf64> -> index
    %66 = arith.index_castui %intptr_57 : index to i64
    %67 = llvm.inttoptr %66 : i64 to !llvm.ptr
    call @free(%67) : (!llvm.ptr) -> ()
    %c0_i32_58 = arith.constant 0 : i32
    %c0_59 = arith.constant 0 : index
    memref.store %c0_i32_58, %alloca_1[%c0_59] : memref<1xi32>
    %c0_60 = arith.constant 0 : index
    %68 = memref.load %alloca_1[%c0_60] : memref<1xi32>
    return %68 : i32
  }
}

