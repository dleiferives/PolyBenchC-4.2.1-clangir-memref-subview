module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/medley/deriche/deriche.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf32>, %arg3: memref<?xf32>, %arg4: memref<?xf32>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf32>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf32>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf32>>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_6 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_6] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_7] : memref<1xmemref<?xf32>>
    %c0_8 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_8] : memref<1xmemref<?xf32>>
    %c0_9 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_9] : memref<1xmemref<?xf32>>
    %c0_10 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_10] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %cst = arith.constant 2.500000e-01 : f64
    %3 = arith.truncf %cst : f64 to f32
    %c0_11 = arith.constant 0 : index
    %4 = memref.load %alloca_1[%c0_11] : memref<1xmemref<?xf32>>
    %c0_12 = arith.constant 0 : index
    memref.store %3, %4[%c0_12] : memref<?xf32>
    memref.alloca_scope  {
      %c0_i32_13 = arith.constant 0 : i32
      %c0_14 = arith.constant 0 : index
      memref.store %c0_i32_13, %alloca_4[%c0_14] : memref<1xi32>
      scf.while : () -> () {
        %c0_15 = arith.constant 0 : index
        %5 = memref.load %alloca_4[%c0_15] : memref<1xi32>
        %c0_16 = arith.constant 0 : index
        %6 = memref.load %alloca[%c0_16] : memref<1xi32>
        %7 = arith.cmpi slt, %5, %6 : i32
        scf.condition(%7)
      } do {
        memref.alloca_scope  {
          %c0_i32_17 = arith.constant 0 : i32
          %c0_18 = arith.constant 0 : index
          memref.store %c0_i32_17, %alloca_5[%c0_18] : memref<1xi32>
          scf.while : () -> () {
            %c0_19 = arith.constant 0 : index
            %7 = memref.load %alloca_5[%c0_19] : memref<1xi32>
            %c0_20 = arith.constant 0 : index
            %8 = memref.load %alloca_0[%c0_20] : memref<1xi32>
            %9 = arith.cmpi slt, %7, %8 : i32
            scf.condition(%9)
          } do {
            %c313_i32 = arith.constant 313 : i32
            %c0_19 = arith.constant 0 : index
            %7 = memref.load %alloca_4[%c0_19] : memref<1xi32>
            %8 = arith.muli %c313_i32, %7 : i32
            %c991_i32 = arith.constant 991 : i32
            %c0_20 = arith.constant 0 : index
            %9 = memref.load %alloca_5[%c0_20] : memref<1xi32>
            %10 = arith.muli %c991_i32, %9 : i32
            %11 = arith.addi %8, %10 : i32
            %c65536_i32 = arith.constant 65536 : i32
            %12 = arith.remsi %11, %c65536_i32 : i32
            %13 = arith.sitofp %12 : i32 to f32
            %cst_21 = arith.constant 6.553500e+04 : f32
            %14 = arith.divf %13, %cst_21 : f32
            %c0_22 = arith.constant 0 : index
            %15 = memref.load %alloca_2[%c0_22] : memref<1xmemref<?xf32>>
            %c0_23 = arith.constant 0 : index
            %16 = memref.load %alloca_4[%c0_23] : memref<1xi32>
            %17 = arith.extsi %16 : i32 to i64
            %18 = arith.muli %17, %2 : i64
            %19 = arith.index_cast %18 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_24 = arith.constant 0 : index
            %c0_25 = arith.constant 0 : index
            %dim = memref.dim %15, %c0_25 : memref<?xf32>
            %20 = arith.subi %dim, %19 : index
            %subview = memref.subview %15[%19] [%20] [%c1] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%20], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
            %c0_26 = arith.constant 0 : index
            %21 = memref.load %alloca_5[%c0_26] : memref<1xi32>
            %22 = arith.index_cast %21 : i32 to index
            %c0_27 = arith.constant 0 : index
            %dim_28 = memref.dim %reinterpret_cast, %c0_27 : memref<?xf32>
            %23 = arith.subi %dim_28, %22 : index
            %c1_29 = arith.constant 1 : index
            %subview_30 = memref.subview %reinterpret_cast[%22] [%23] [%c1_29] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
            %c0_31 = arith.constant 0 : index
            memref.store %14, %subview_30[%c0_31] : memref<?xf32, strided<[?], offset: ?>>
            %c0_32 = arith.constant 0 : index
            %24 = memref.load %alloca_5[%c0_32] : memref<1xi32>
            %c1_i32_33 = arith.constant 1 : i32
            %25 = arith.addi %24, %c1_i32_33 : i32
            %c0_34 = arith.constant 0 : index
            memref.store %25, %alloca_5[%c0_34] : memref<1xi32>
            scf.yield
          }
        }
        %c0_15 = arith.constant 0 : index
        %5 = memref.load %alloca_4[%c0_15] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %6 = arith.addi %5, %c1_i32 : i32
        %c0_16 = arith.constant 0 : index
        memref.store %6, %alloca_4[%c0_16] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @expf(f32) -> f32
  func.func private @powf(f32, f32) -> f32
  func.func private @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?xf32>, %arg4: memref<?xf32>, %arg5: memref<?xf32>, %arg6: memref<?xf32>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf32>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf32>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf32>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf32>>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_7 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_8 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_9 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_10 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_11 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_12 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_13 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_14 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_15 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_16 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_17 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_18 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_19 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_20 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_21 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_22 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_23 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_24 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_25 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_26 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_27 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_28 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_29 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %alloca_30 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_31 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_31] : memref<1xi32>
    %c0_32 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_32] : memref<1xf32>
    %c0_33 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_33] : memref<1xmemref<?xf32>>
    %c0_34 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_34] : memref<1xmemref<?xf32>>
    %c0_35 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_35] : memref<1xmemref<?xf32>>
    %c0_36 = arith.constant 0 : index
    memref.store %arg6, %alloca_5[%c0_36] : memref<1xmemref<?xf32>>
    %c0_37 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_37] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_38 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_38] : memref<1xi32>
    %c0_i32_39 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_39 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_40 = arith.constant 0 : index
    %6 = memref.load %alloca_0[%c0_40] : memref<1xi32>
    %c0_i32_41 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_41 : i32
    %8 = arith.extsi %7 : i32 to i64
    %c0_42 = arith.constant 0 : index
    %9 = memref.load %alloca_0[%c0_42] : memref<1xi32>
    %c0_i32_43 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_43 : i32
    %11 = arith.extsi %10 : i32 to i64
    %cst = arith.constant 1.000000e+00 : f32
    %c0_44 = arith.constant 0 : index
    %12 = memref.load %alloca_1[%c0_44] : memref<1xf32>
    %cst_45 = arith.constant 0.000000e+00 : f32
    %13 = arith.subf %cst_45, %12 : f32
    %14 = call @expf(%13) : (f32) -> f32
    %15 = arith.subf %cst, %14 : f32
    %cst_46 = arith.constant 1.000000e+00 : f32
    %c0_47 = arith.constant 0 : index
    %16 = memref.load %alloca_1[%c0_47] : memref<1xf32>
    %cst_48 = arith.constant 0.000000e+00 : f32
    %17 = arith.subf %cst_48, %16 : f32
    %18 = call @expf(%17) : (f32) -> f32
    %19 = arith.subf %cst_46, %18 : f32
    %20 = arith.mulf %15, %19 : f32
    %cst_49 = arith.constant 1.000000e+00 : f32
    %cst_50 = arith.constant 2.000000e+00 : f32
    %c0_51 = arith.constant 0 : index
    %21 = memref.load %alloca_1[%c0_51] : memref<1xf32>
    %22 = arith.mulf %cst_50, %21 : f32
    %c0_52 = arith.constant 0 : index
    %23 = memref.load %alloca_1[%c0_52] : memref<1xf32>
    %cst_53 = arith.constant 0.000000e+00 : f32
    %24 = arith.subf %cst_53, %23 : f32
    %25 = call @expf(%24) : (f32) -> f32
    %26 = arith.mulf %22, %25 : f32
    %27 = arith.addf %cst_49, %26 : f32
    %cst_54 = arith.constant 2.000000e+00 : f32
    %c0_55 = arith.constant 0 : index
    %28 = memref.load %alloca_1[%c0_55] : memref<1xf32>
    %29 = arith.mulf %cst_54, %28 : f32
    %30 = call @expf(%29) : (f32) -> f32
    %31 = arith.subf %27, %30 : f32
    %32 = arith.divf %20, %31 : f32
    %c0_56 = arith.constant 0 : index
    memref.store %32, %alloca_18[%c0_56] : memref<1xf32>
    %c0_57 = arith.constant 0 : index
    %33 = memref.load %alloca_18[%c0_57] : memref<1xf32>
    %c0_58 = arith.constant 0 : index
    memref.store %33, %alloca_23[%c0_58] : memref<1xf32>
    %c0_59 = arith.constant 0 : index
    memref.store %33, %alloca_19[%c0_59] : memref<1xf32>
    %c0_60 = arith.constant 0 : index
    %34 = memref.load %alloca_18[%c0_60] : memref<1xf32>
    %c0_61 = arith.constant 0 : index
    %35 = memref.load %alloca_1[%c0_61] : memref<1xf32>
    %cst_62 = arith.constant 0.000000e+00 : f32
    %36 = arith.subf %cst_62, %35 : f32
    %37 = call @expf(%36) : (f32) -> f32
    %38 = arith.mulf %34, %37 : f32
    %c0_63 = arith.constant 0 : index
    %39 = memref.load %alloca_1[%c0_63] : memref<1xf32>
    %cst_64 = arith.constant 1.000000e+00 : f32
    %40 = arith.subf %39, %cst_64 : f32
    %41 = arith.mulf %38, %40 : f32
    %c0_65 = arith.constant 0 : index
    memref.store %41, %alloca_24[%c0_65] : memref<1xf32>
    %c0_66 = arith.constant 0 : index
    memref.store %41, %alloca_20[%c0_66] : memref<1xf32>
    %c0_67 = arith.constant 0 : index
    %42 = memref.load %alloca_18[%c0_67] : memref<1xf32>
    %c0_68 = arith.constant 0 : index
    %43 = memref.load %alloca_1[%c0_68] : memref<1xf32>
    %cst_69 = arith.constant 0.000000e+00 : f32
    %44 = arith.subf %cst_69, %43 : f32
    %45 = call @expf(%44) : (f32) -> f32
    %46 = arith.mulf %42, %45 : f32
    %c0_70 = arith.constant 0 : index
    %47 = memref.load %alloca_1[%c0_70] : memref<1xf32>
    %cst_71 = arith.constant 1.000000e+00 : f32
    %48 = arith.addf %47, %cst_71 : f32
    %49 = arith.mulf %46, %48 : f32
    %c0_72 = arith.constant 0 : index
    memref.store %49, %alloca_25[%c0_72] : memref<1xf32>
    %c0_73 = arith.constant 0 : index
    memref.store %49, %alloca_21[%c0_73] : memref<1xf32>
    %c0_74 = arith.constant 0 : index
    %50 = memref.load %alloca_18[%c0_74] : memref<1xf32>
    %cst_75 = arith.constant 0.000000e+00 : f32
    %51 = arith.subf %cst_75, %50 : f32
    %cst_76 = arith.constant 2.000000e+00 : f32
    %cst_77 = arith.constant 0.000000e+00 : f32
    %52 = arith.subf %cst_77, %cst_76 : f32
    %c0_78 = arith.constant 0 : index
    %53 = memref.load %alloca_1[%c0_78] : memref<1xf32>
    %54 = arith.mulf %52, %53 : f32
    %55 = call @expf(%54) : (f32) -> f32
    %56 = arith.mulf %51, %55 : f32
    %c0_79 = arith.constant 0 : index
    memref.store %56, %alloca_26[%c0_79] : memref<1xf32>
    %c0_80 = arith.constant 0 : index
    memref.store %56, %alloca_22[%c0_80] : memref<1xf32>
    %cst_81 = arith.constant 2.000000e+00 : f32
    %c0_82 = arith.constant 0 : index
    %57 = memref.load %alloca_1[%c0_82] : memref<1xf32>
    %cst_83 = arith.constant 0.000000e+00 : f32
    %58 = arith.subf %cst_83, %57 : f32
    %59 = call @powf(%cst_81, %58) : (f32, f32) -> f32
    %c0_84 = arith.constant 0 : index
    memref.store %59, %alloca_27[%c0_84] : memref<1xf32>
    %cst_85 = arith.constant 2.000000e+00 : f32
    %cst_86 = arith.constant 0.000000e+00 : f32
    %60 = arith.subf %cst_86, %cst_85 : f32
    %c0_87 = arith.constant 0 : index
    %61 = memref.load %alloca_1[%c0_87] : memref<1xf32>
    %62 = arith.mulf %60, %61 : f32
    %63 = call @expf(%62) : (f32) -> f32
    %cst_88 = arith.constant 0.000000e+00 : f32
    %64 = arith.subf %cst_88, %63 : f32
    %c0_89 = arith.constant 0 : index
    memref.store %64, %alloca_28[%c0_89] : memref<1xf32>
    %c1_i32 = arith.constant 1 : i32
    %65 = arith.sitofp %c1_i32 : i32 to f32
    %c0_90 = arith.constant 0 : index
    memref.store %65, %alloca_30[%c0_90] : memref<1xf32>
    %c0_91 = arith.constant 0 : index
    memref.store %65, %alloca_29[%c0_91] : memref<1xf32>
    memref.alloca_scope  {
      %c0_i32_92 = arith.constant 0 : i32
      %c0_93 = arith.constant 0 : index
      memref.store %c0_i32_92, %alloca_6[%c0_93] : memref<1xi32>
      scf.while : () -> () {
        %c0_94 = arith.constant 0 : index
        %66 = memref.load %alloca_6[%c0_94] : memref<1xi32>
        %c0_95 = arith.constant 0 : index
        %67 = memref.load %alloca[%c0_95] : memref<1xi32>
        %68 = arith.cmpi slt, %66, %67 : i32
        scf.condition(%68)
      } do {
        memref.alloca_scope  {
          %cst_97 = arith.constant 0.000000e+00 : f32
          %c0_98 = arith.constant 0 : index
          memref.store %cst_97, %alloca_10[%c0_98] : memref<1xf32>
          %cst_99 = arith.constant 0.000000e+00 : f32
          %c0_100 = arith.constant 0 : index
          memref.store %cst_99, %alloca_11[%c0_100] : memref<1xf32>
          %cst_101 = arith.constant 0.000000e+00 : f32
          %c0_102 = arith.constant 0 : index
          memref.store %cst_101, %alloca_8[%c0_102] : memref<1xf32>
          memref.alloca_scope  {
            %c0_i32_103 = arith.constant 0 : i32
            %c0_104 = arith.constant 0 : index
            memref.store %c0_i32_103, %alloca_7[%c0_104] : memref<1xi32>
            scf.while : () -> () {
              %c0_105 = arith.constant 0 : index
              %68 = memref.load %alloca_7[%c0_105] : memref<1xi32>
              %c0_106 = arith.constant 0 : index
              %69 = memref.load %alloca_0[%c0_106] : memref<1xi32>
              %70 = arith.cmpi slt, %68, %69 : i32
              scf.condition(%70)
            } do {
              memref.alloca_scope  {
                %c0_108 = arith.constant 0 : index
                %70 = memref.load %alloca_19[%c0_108] : memref<1xf32>
                %c0_109 = arith.constant 0 : index
                %71 = memref.load %alloca_2[%c0_109] : memref<1xmemref<?xf32>>
                %c0_110 = arith.constant 0 : index
                %72 = memref.load %alloca_6[%c0_110] : memref<1xi32>
                %73 = arith.extsi %72 : i32 to i64
                %74 = arith.muli %73, %2 : i64
                %75 = arith.index_cast %74 : i64 to index
                %c1 = arith.constant 1 : index
                %c0_111 = arith.constant 0 : index
                %c0_112 = arith.constant 0 : index
                %dim = memref.dim %71, %c0_112 : memref<?xf32>
                %76 = arith.subi %dim, %75 : index
                %subview = memref.subview %71[%75] [%76] [%c1] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%76], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
                %c0_113 = arith.constant 0 : index
                %77 = memref.load %alloca_7[%c0_113] : memref<1xi32>
                %78 = arith.index_cast %77 : i32 to index
                %c0_114 = arith.constant 0 : index
                %dim_115 = memref.dim %reinterpret_cast, %c0_114 : memref<?xf32>
                %79 = arith.subi %dim_115, %78 : index
                %c1_116 = arith.constant 1 : index
                %subview_117 = memref.subview %reinterpret_cast[%78] [%79] [%c1_116] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %c0_118 = arith.constant 0 : index
                %80 = memref.load %subview_117[%c0_118] : memref<?xf32, strided<[?], offset: ?>>
                %81 = arith.mulf %70, %80 : f32
                %c0_119 = arith.constant 0 : index
                %82 = memref.load %alloca_20[%c0_119] : memref<1xf32>
                %c0_120 = arith.constant 0 : index
                %83 = memref.load %alloca_8[%c0_120] : memref<1xf32>
                %84 = arith.mulf %82, %83 : f32
                %85 = arith.addf %81, %84 : f32
                %c0_121 = arith.constant 0 : index
                %86 = memref.load %alloca_27[%c0_121] : memref<1xf32>
                %c0_122 = arith.constant 0 : index
                %87 = memref.load %alloca_10[%c0_122] : memref<1xf32>
                %88 = arith.mulf %86, %87 : f32
                %89 = arith.addf %85, %88 : f32
                %c0_123 = arith.constant 0 : index
                %90 = memref.load %alloca_28[%c0_123] : memref<1xf32>
                %c0_124 = arith.constant 0 : index
                %91 = memref.load %alloca_11[%c0_124] : memref<1xf32>
                %92 = arith.mulf %90, %91 : f32
                %93 = arith.addf %89, %92 : f32
                %c0_125 = arith.constant 0 : index
                %94 = memref.load %alloca_4[%c0_125] : memref<1xmemref<?xf32>>
                %c0_126 = arith.constant 0 : index
                %95 = memref.load %alloca_6[%c0_126] : memref<1xi32>
                %96 = arith.extsi %95 : i32 to i64
                %97 = arith.muli %96, %8 : i64
                %98 = arith.index_cast %97 : i64 to index
                %c1_127 = arith.constant 1 : index
                %c0_128 = arith.constant 0 : index
                %c0_129 = arith.constant 0 : index
                %dim_130 = memref.dim %94, %c0_129 : memref<?xf32>
                %99 = arith.subi %dim_130, %98 : index
                %subview_131 = memref.subview %94[%98] [%99] [%c1_127] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %reinterpret_cast_132 = memref.reinterpret_cast %subview_131 to offset: [0], sizes: [%99], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
                %c0_133 = arith.constant 0 : index
                %100 = memref.load %alloca_7[%c0_133] : memref<1xi32>
                %101 = arith.index_cast %100 : i32 to index
                %c0_134 = arith.constant 0 : index
                %dim_135 = memref.dim %reinterpret_cast_132, %c0_134 : memref<?xf32>
                %102 = arith.subi %dim_135, %101 : index
                %c1_136 = arith.constant 1 : index
                %subview_137 = memref.subview %reinterpret_cast_132[%101] [%102] [%c1_136] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %c0_138 = arith.constant 0 : index
                memref.store %93, %subview_137[%c0_138] : memref<?xf32, strided<[?], offset: ?>>
                %c0_139 = arith.constant 0 : index
                %103 = memref.load %alloca_2[%c0_139] : memref<1xmemref<?xf32>>
                %c0_140 = arith.constant 0 : index
                %104 = memref.load %alloca_6[%c0_140] : memref<1xi32>
                %105 = arith.extsi %104 : i32 to i64
                %106 = arith.muli %105, %2 : i64
                %107 = arith.index_cast %106 : i64 to index
                %c1_141 = arith.constant 1 : index
                %c0_142 = arith.constant 0 : index
                %c0_143 = arith.constant 0 : index
                %dim_144 = memref.dim %103, %c0_143 : memref<?xf32>
                %108 = arith.subi %dim_144, %107 : index
                %subview_145 = memref.subview %103[%107] [%108] [%c1_141] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %reinterpret_cast_146 = memref.reinterpret_cast %subview_145 to offset: [0], sizes: [%108], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
                %c0_147 = arith.constant 0 : index
                %109 = memref.load %alloca_7[%c0_147] : memref<1xi32>
                %110 = arith.index_cast %109 : i32 to index
                %c0_148 = arith.constant 0 : index
                %dim_149 = memref.dim %reinterpret_cast_146, %c0_148 : memref<?xf32>
                %111 = arith.subi %dim_149, %110 : index
                %c1_150 = arith.constant 1 : index
                %subview_151 = memref.subview %reinterpret_cast_146[%110] [%111] [%c1_150] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %c0_152 = arith.constant 0 : index
                %112 = memref.load %subview_151[%c0_152] : memref<?xf32, strided<[?], offset: ?>>
                %c0_153 = arith.constant 0 : index
                memref.store %112, %alloca_8[%c0_153] : memref<1xf32>
                %c0_154 = arith.constant 0 : index
                %113 = memref.load %alloca_10[%c0_154] : memref<1xf32>
                %c0_155 = arith.constant 0 : index
                memref.store %113, %alloca_11[%c0_155] : memref<1xf32>
                %c0_156 = arith.constant 0 : index
                %114 = memref.load %alloca_4[%c0_156] : memref<1xmemref<?xf32>>
                %c0_157 = arith.constant 0 : index
                %115 = memref.load %alloca_6[%c0_157] : memref<1xi32>
                %116 = arith.extsi %115 : i32 to i64
                %117 = arith.muli %116, %8 : i64
                %118 = arith.index_cast %117 : i64 to index
                %c1_158 = arith.constant 1 : index
                %c0_159 = arith.constant 0 : index
                %c0_160 = arith.constant 0 : index
                %dim_161 = memref.dim %114, %c0_160 : memref<?xf32>
                %119 = arith.subi %dim_161, %118 : index
                %subview_162 = memref.subview %114[%118] [%119] [%c1_158] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %reinterpret_cast_163 = memref.reinterpret_cast %subview_162 to offset: [0], sizes: [%119], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
                %c0_164 = arith.constant 0 : index
                %120 = memref.load %alloca_7[%c0_164] : memref<1xi32>
                %121 = arith.index_cast %120 : i32 to index
                %c0_165 = arith.constant 0 : index
                %dim_166 = memref.dim %reinterpret_cast_163, %c0_165 : memref<?xf32>
                %122 = arith.subi %dim_166, %121 : index
                %c1_167 = arith.constant 1 : index
                %subview_168 = memref.subview %reinterpret_cast_163[%121] [%122] [%c1_167] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %c0_169 = arith.constant 0 : index
                %123 = memref.load %subview_168[%c0_169] : memref<?xf32, strided<[?], offset: ?>>
                %c0_170 = arith.constant 0 : index
                memref.store %123, %alloca_10[%c0_170] : memref<1xf32>
              }
              %c0_105 = arith.constant 0 : index
              %68 = memref.load %alloca_7[%c0_105] : memref<1xi32>
              %c1_i32_106 = arith.constant 1 : i32
              %69 = arith.addi %68, %c1_i32_106 : i32
              %c0_107 = arith.constant 0 : index
              memref.store %69, %alloca_7[%c0_107] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_94 = arith.constant 0 : index
        %66 = memref.load %alloca_6[%c0_94] : memref<1xi32>
        %c1_i32_95 = arith.constant 1 : i32
        %67 = arith.addi %66, %c1_i32_95 : i32
        %c0_96 = arith.constant 0 : index
        memref.store %67, %alloca_6[%c0_96] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_92 = arith.constant 0 : i32
      %c0_93 = arith.constant 0 : index
      memref.store %c0_i32_92, %alloca_6[%c0_93] : memref<1xi32>
      scf.while : () -> () {
        %c0_94 = arith.constant 0 : index
        %66 = memref.load %alloca_6[%c0_94] : memref<1xi32>
        %c0_95 = arith.constant 0 : index
        %67 = memref.load %alloca[%c0_95] : memref<1xi32>
        %68 = arith.cmpi slt, %66, %67 : i32
        scf.condition(%68)
      } do {
        memref.alloca_scope  {
          %cst_97 = arith.constant 0.000000e+00 : f32
          %c0_98 = arith.constant 0 : index
          memref.store %cst_97, %alloca_16[%c0_98] : memref<1xf32>
          %cst_99 = arith.constant 0.000000e+00 : f32
          %c0_100 = arith.constant 0 : index
          memref.store %cst_99, %alloca_17[%c0_100] : memref<1xf32>
          %cst_101 = arith.constant 0.000000e+00 : f32
          %c0_102 = arith.constant 0 : index
          memref.store %cst_101, %alloca_12[%c0_102] : memref<1xf32>
          %cst_103 = arith.constant 0.000000e+00 : f32
          %c0_104 = arith.constant 0 : index
          memref.store %cst_103, %alloca_13[%c0_104] : memref<1xf32>
          memref.alloca_scope  {
            %c0_105 = arith.constant 0 : index
            %68 = memref.load %alloca_0[%c0_105] : memref<1xi32>
            %c1_i32_106 = arith.constant 1 : i32
            %69 = arith.subi %68, %c1_i32_106 : i32
            %c0_107 = arith.constant 0 : index
            memref.store %69, %alloca_7[%c0_107] : memref<1xi32>
            scf.while : () -> () {
              %c0_108 = arith.constant 0 : index
              %70 = memref.load %alloca_7[%c0_108] : memref<1xi32>
              %c0_i32_109 = arith.constant 0 : i32
              %71 = arith.cmpi sge, %70, %c0_i32_109 : i32
              scf.condition(%71)
            } do {
              memref.alloca_scope  {
                %c0_110 = arith.constant 0 : index
                %72 = memref.load %alloca_21[%c0_110] : memref<1xf32>
                %c0_111 = arith.constant 0 : index
                %73 = memref.load %alloca_12[%c0_111] : memref<1xf32>
                %74 = arith.mulf %72, %73 : f32
                %c0_112 = arith.constant 0 : index
                %75 = memref.load %alloca_22[%c0_112] : memref<1xf32>
                %c0_113 = arith.constant 0 : index
                %76 = memref.load %alloca_13[%c0_113] : memref<1xf32>
                %77 = arith.mulf %75, %76 : f32
                %78 = arith.addf %74, %77 : f32
                %c0_114 = arith.constant 0 : index
                %79 = memref.load %alloca_27[%c0_114] : memref<1xf32>
                %c0_115 = arith.constant 0 : index
                %80 = memref.load %alloca_16[%c0_115] : memref<1xf32>
                %81 = arith.mulf %79, %80 : f32
                %82 = arith.addf %78, %81 : f32
                %c0_116 = arith.constant 0 : index
                %83 = memref.load %alloca_28[%c0_116] : memref<1xf32>
                %c0_117 = arith.constant 0 : index
                %84 = memref.load %alloca_17[%c0_117] : memref<1xf32>
                %85 = arith.mulf %83, %84 : f32
                %86 = arith.addf %82, %85 : f32
                %c0_118 = arith.constant 0 : index
                %87 = memref.load %alloca_5[%c0_118] : memref<1xmemref<?xf32>>
                %c0_119 = arith.constant 0 : index
                %88 = memref.load %alloca_6[%c0_119] : memref<1xi32>
                %89 = arith.extsi %88 : i32 to i64
                %90 = arith.muli %89, %11 : i64
                %91 = arith.index_cast %90 : i64 to index
                %c1 = arith.constant 1 : index
                %c0_120 = arith.constant 0 : index
                %c0_121 = arith.constant 0 : index
                %dim = memref.dim %87, %c0_121 : memref<?xf32>
                %92 = arith.subi %dim, %91 : index
                %subview = memref.subview %87[%91] [%92] [%c1] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%92], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
                %c0_122 = arith.constant 0 : index
                %93 = memref.load %alloca_7[%c0_122] : memref<1xi32>
                %94 = arith.index_cast %93 : i32 to index
                %c0_123 = arith.constant 0 : index
                %dim_124 = memref.dim %reinterpret_cast, %c0_123 : memref<?xf32>
                %95 = arith.subi %dim_124, %94 : index
                %c1_125 = arith.constant 1 : index
                %subview_126 = memref.subview %reinterpret_cast[%94] [%95] [%c1_125] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %c0_127 = arith.constant 0 : index
                memref.store %86, %subview_126[%c0_127] : memref<?xf32, strided<[?], offset: ?>>
                %c0_128 = arith.constant 0 : index
                %96 = memref.load %alloca_12[%c0_128] : memref<1xf32>
                %c0_129 = arith.constant 0 : index
                memref.store %96, %alloca_13[%c0_129] : memref<1xf32>
                %c0_130 = arith.constant 0 : index
                %97 = memref.load %alloca_2[%c0_130] : memref<1xmemref<?xf32>>
                %c0_131 = arith.constant 0 : index
                %98 = memref.load %alloca_6[%c0_131] : memref<1xi32>
                %99 = arith.extsi %98 : i32 to i64
                %100 = arith.muli %99, %2 : i64
                %101 = arith.index_cast %100 : i64 to index
                %c1_132 = arith.constant 1 : index
                %c0_133 = arith.constant 0 : index
                %c0_134 = arith.constant 0 : index
                %dim_135 = memref.dim %97, %c0_134 : memref<?xf32>
                %102 = arith.subi %dim_135, %101 : index
                %subview_136 = memref.subview %97[%101] [%102] [%c1_132] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %reinterpret_cast_137 = memref.reinterpret_cast %subview_136 to offset: [0], sizes: [%102], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
                %c0_138 = arith.constant 0 : index
                %103 = memref.load %alloca_7[%c0_138] : memref<1xi32>
                %104 = arith.index_cast %103 : i32 to index
                %c0_139 = arith.constant 0 : index
                %dim_140 = memref.dim %reinterpret_cast_137, %c0_139 : memref<?xf32>
                %105 = arith.subi %dim_140, %104 : index
                %c1_141 = arith.constant 1 : index
                %subview_142 = memref.subview %reinterpret_cast_137[%104] [%105] [%c1_141] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %c0_143 = arith.constant 0 : index
                %106 = memref.load %subview_142[%c0_143] : memref<?xf32, strided<[?], offset: ?>>
                %c0_144 = arith.constant 0 : index
                memref.store %106, %alloca_12[%c0_144] : memref<1xf32>
                %c0_145 = arith.constant 0 : index
                %107 = memref.load %alloca_16[%c0_145] : memref<1xf32>
                %c0_146 = arith.constant 0 : index
                memref.store %107, %alloca_17[%c0_146] : memref<1xf32>
                %c0_147 = arith.constant 0 : index
                %108 = memref.load %alloca_5[%c0_147] : memref<1xmemref<?xf32>>
                %c0_148 = arith.constant 0 : index
                %109 = memref.load %alloca_6[%c0_148] : memref<1xi32>
                %110 = arith.extsi %109 : i32 to i64
                %111 = arith.muli %110, %11 : i64
                %112 = arith.index_cast %111 : i64 to index
                %c1_149 = arith.constant 1 : index
                %c0_150 = arith.constant 0 : index
                %c0_151 = arith.constant 0 : index
                %dim_152 = memref.dim %108, %c0_151 : memref<?xf32>
                %113 = arith.subi %dim_152, %112 : index
                %subview_153 = memref.subview %108[%112] [%113] [%c1_149] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %reinterpret_cast_154 = memref.reinterpret_cast %subview_153 to offset: [0], sizes: [%113], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
                %c0_155 = arith.constant 0 : index
                %114 = memref.load %alloca_7[%c0_155] : memref<1xi32>
                %115 = arith.index_cast %114 : i32 to index
                %c0_156 = arith.constant 0 : index
                %dim_157 = memref.dim %reinterpret_cast_154, %c0_156 : memref<?xf32>
                %116 = arith.subi %dim_157, %115 : index
                %c1_158 = arith.constant 1 : index
                %subview_159 = memref.subview %reinterpret_cast_154[%115] [%116] [%c1_158] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %c0_160 = arith.constant 0 : index
                %117 = memref.load %subview_159[%c0_160] : memref<?xf32, strided<[?], offset: ?>>
                %c0_161 = arith.constant 0 : index
                memref.store %117, %alloca_16[%c0_161] : memref<1xf32>
              }
              %c0_108 = arith.constant 0 : index
              %70 = memref.load %alloca_7[%c0_108] : memref<1xi32>
              %c-1_i32 = arith.constant -1 : i32
              %71 = arith.addi %70, %c-1_i32 : i32
              %c0_109 = arith.constant 0 : index
              memref.store %71, %alloca_7[%c0_109] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_94 = arith.constant 0 : index
        %66 = memref.load %alloca_6[%c0_94] : memref<1xi32>
        %c1_i32_95 = arith.constant 1 : i32
        %67 = arith.addi %66, %c1_i32_95 : i32
        %c0_96 = arith.constant 0 : index
        memref.store %67, %alloca_6[%c0_96] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_92 = arith.constant 0 : i32
      %c0_93 = arith.constant 0 : index
      memref.store %c0_i32_92, %alloca_6[%c0_93] : memref<1xi32>
      scf.while : () -> () {
        %c0_94 = arith.constant 0 : index
        %66 = memref.load %alloca_6[%c0_94] : memref<1xi32>
        %c0_95 = arith.constant 0 : index
        %67 = memref.load %alloca[%c0_95] : memref<1xi32>
        %68 = arith.cmpi slt, %66, %67 : i32
        scf.condition(%68)
      } do {
        memref.alloca_scope  {
          %c0_i32_97 = arith.constant 0 : i32
          %c0_98 = arith.constant 0 : index
          memref.store %c0_i32_97, %alloca_7[%c0_98] : memref<1xi32>
          scf.while : () -> () {
            %c0_99 = arith.constant 0 : index
            %68 = memref.load %alloca_7[%c0_99] : memref<1xi32>
            %c0_100 = arith.constant 0 : index
            %69 = memref.load %alloca_0[%c0_100] : memref<1xi32>
            %70 = arith.cmpi slt, %68, %69 : i32
            scf.condition(%70)
          } do {
            memref.alloca_scope  {
              %c0_102 = arith.constant 0 : index
              %70 = memref.load %alloca_29[%c0_102] : memref<1xf32>
              %c0_103 = arith.constant 0 : index
              %71 = memref.load %alloca_4[%c0_103] : memref<1xmemref<?xf32>>
              %c0_104 = arith.constant 0 : index
              %72 = memref.load %alloca_6[%c0_104] : memref<1xi32>
              %73 = arith.extsi %72 : i32 to i64
              %74 = arith.muli %73, %8 : i64
              %75 = arith.index_cast %74 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_105 = arith.constant 0 : index
              %c0_106 = arith.constant 0 : index
              %dim = memref.dim %71, %c0_106 : memref<?xf32>
              %76 = arith.subi %dim, %75 : index
              %subview = memref.subview %71[%75] [%76] [%c1] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%76], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
              %c0_107 = arith.constant 0 : index
              %77 = memref.load %alloca_7[%c0_107] : memref<1xi32>
              %78 = arith.index_cast %77 : i32 to index
              %c0_108 = arith.constant 0 : index
              %dim_109 = memref.dim %reinterpret_cast, %c0_108 : memref<?xf32>
              %79 = arith.subi %dim_109, %78 : index
              %c1_110 = arith.constant 1 : index
              %subview_111 = memref.subview %reinterpret_cast[%78] [%79] [%c1_110] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
              %c0_112 = arith.constant 0 : index
              %80 = memref.load %subview_111[%c0_112] : memref<?xf32, strided<[?], offset: ?>>
              %c0_113 = arith.constant 0 : index
              %81 = memref.load %alloca_5[%c0_113] : memref<1xmemref<?xf32>>
              %c0_114 = arith.constant 0 : index
              %82 = memref.load %alloca_6[%c0_114] : memref<1xi32>
              %83 = arith.extsi %82 : i32 to i64
              %84 = arith.muli %83, %11 : i64
              %85 = arith.index_cast %84 : i64 to index
              %c1_115 = arith.constant 1 : index
              %c0_116 = arith.constant 0 : index
              %c0_117 = arith.constant 0 : index
              %dim_118 = memref.dim %81, %c0_117 : memref<?xf32>
              %86 = arith.subi %dim_118, %85 : index
              %subview_119 = memref.subview %81[%85] [%86] [%c1_115] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
              %reinterpret_cast_120 = memref.reinterpret_cast %subview_119 to offset: [0], sizes: [%86], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
              %c0_121 = arith.constant 0 : index
              %87 = memref.load %alloca_7[%c0_121] : memref<1xi32>
              %88 = arith.index_cast %87 : i32 to index
              %c0_122 = arith.constant 0 : index
              %dim_123 = memref.dim %reinterpret_cast_120, %c0_122 : memref<?xf32>
              %89 = arith.subi %dim_123, %88 : index
              %c1_124 = arith.constant 1 : index
              %subview_125 = memref.subview %reinterpret_cast_120[%88] [%89] [%c1_124] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
              %c0_126 = arith.constant 0 : index
              %90 = memref.load %subview_125[%c0_126] : memref<?xf32, strided<[?], offset: ?>>
              %91 = arith.addf %80, %90 : f32
              %92 = arith.mulf %70, %91 : f32
              %c0_127 = arith.constant 0 : index
              %93 = memref.load %alloca_3[%c0_127] : memref<1xmemref<?xf32>>
              %c0_128 = arith.constant 0 : index
              %94 = memref.load %alloca_6[%c0_128] : memref<1xi32>
              %95 = arith.extsi %94 : i32 to i64
              %96 = arith.muli %95, %5 : i64
              %97 = arith.index_cast %96 : i64 to index
              %c1_129 = arith.constant 1 : index
              %c0_130 = arith.constant 0 : index
              %c0_131 = arith.constant 0 : index
              %dim_132 = memref.dim %93, %c0_131 : memref<?xf32>
              %98 = arith.subi %dim_132, %97 : index
              %subview_133 = memref.subview %93[%97] [%98] [%c1_129] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
              %reinterpret_cast_134 = memref.reinterpret_cast %subview_133 to offset: [0], sizes: [%98], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
              %c0_135 = arith.constant 0 : index
              %99 = memref.load %alloca_7[%c0_135] : memref<1xi32>
              %100 = arith.index_cast %99 : i32 to index
              %c0_136 = arith.constant 0 : index
              %dim_137 = memref.dim %reinterpret_cast_134, %c0_136 : memref<?xf32>
              %101 = arith.subi %dim_137, %100 : index
              %c1_138 = arith.constant 1 : index
              %subview_139 = memref.subview %reinterpret_cast_134[%100] [%101] [%c1_138] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
              %c0_140 = arith.constant 0 : index
              memref.store %92, %subview_139[%c0_140] : memref<?xf32, strided<[?], offset: ?>>
            }
            %c0_99 = arith.constant 0 : index
            %68 = memref.load %alloca_7[%c0_99] : memref<1xi32>
            %c1_i32_100 = arith.constant 1 : i32
            %69 = arith.addi %68, %c1_i32_100 : i32
            %c0_101 = arith.constant 0 : index
            memref.store %69, %alloca_7[%c0_101] : memref<1xi32>
            scf.yield
          }
        }
        %c0_94 = arith.constant 0 : index
        %66 = memref.load %alloca_6[%c0_94] : memref<1xi32>
        %c1_i32_95 = arith.constant 1 : i32
        %67 = arith.addi %66, %c1_i32_95 : i32
        %c0_96 = arith.constant 0 : index
        memref.store %67, %alloca_6[%c0_96] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_92 = arith.constant 0 : i32
      %c0_93 = arith.constant 0 : index
      memref.store %c0_i32_92, %alloca_7[%c0_93] : memref<1xi32>
      scf.while : () -> () {
        %c0_94 = arith.constant 0 : index
        %66 = memref.load %alloca_7[%c0_94] : memref<1xi32>
        %c0_95 = arith.constant 0 : index
        %67 = memref.load %alloca_0[%c0_95] : memref<1xi32>
        %68 = arith.cmpi slt, %66, %67 : i32
        scf.condition(%68)
      } do {
        memref.alloca_scope  {
          %cst_97 = arith.constant 0.000000e+00 : f32
          %c0_98 = arith.constant 0 : index
          memref.store %cst_97, %alloca_9[%c0_98] : memref<1xf32>
          %cst_99 = arith.constant 0.000000e+00 : f32
          %c0_100 = arith.constant 0 : index
          memref.store %cst_99, %alloca_10[%c0_100] : memref<1xf32>
          %cst_101 = arith.constant 0.000000e+00 : f32
          %c0_102 = arith.constant 0 : index
          memref.store %cst_101, %alloca_11[%c0_102] : memref<1xf32>
          memref.alloca_scope  {
            %c0_i32_103 = arith.constant 0 : i32
            %c0_104 = arith.constant 0 : index
            memref.store %c0_i32_103, %alloca_6[%c0_104] : memref<1xi32>
            scf.while : () -> () {
              %c0_105 = arith.constant 0 : index
              %68 = memref.load %alloca_6[%c0_105] : memref<1xi32>
              %c0_106 = arith.constant 0 : index
              %69 = memref.load %alloca[%c0_106] : memref<1xi32>
              %70 = arith.cmpi slt, %68, %69 : i32
              scf.condition(%70)
            } do {
              memref.alloca_scope  {
                %c0_108 = arith.constant 0 : index
                %70 = memref.load %alloca_23[%c0_108] : memref<1xf32>
                %c0_109 = arith.constant 0 : index
                %71 = memref.load %alloca_3[%c0_109] : memref<1xmemref<?xf32>>
                %c0_110 = arith.constant 0 : index
                %72 = memref.load %alloca_6[%c0_110] : memref<1xi32>
                %73 = arith.extsi %72 : i32 to i64
                %74 = arith.muli %73, %5 : i64
                %75 = arith.index_cast %74 : i64 to index
                %c1 = arith.constant 1 : index
                %c0_111 = arith.constant 0 : index
                %c0_112 = arith.constant 0 : index
                %dim = memref.dim %71, %c0_112 : memref<?xf32>
                %76 = arith.subi %dim, %75 : index
                %subview = memref.subview %71[%75] [%76] [%c1] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%76], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
                %c0_113 = arith.constant 0 : index
                %77 = memref.load %alloca_7[%c0_113] : memref<1xi32>
                %78 = arith.index_cast %77 : i32 to index
                %c0_114 = arith.constant 0 : index
                %dim_115 = memref.dim %reinterpret_cast, %c0_114 : memref<?xf32>
                %79 = arith.subi %dim_115, %78 : index
                %c1_116 = arith.constant 1 : index
                %subview_117 = memref.subview %reinterpret_cast[%78] [%79] [%c1_116] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %c0_118 = arith.constant 0 : index
                %80 = memref.load %subview_117[%c0_118] : memref<?xf32, strided<[?], offset: ?>>
                %81 = arith.mulf %70, %80 : f32
                %c0_119 = arith.constant 0 : index
                %82 = memref.load %alloca_24[%c0_119] : memref<1xf32>
                %c0_120 = arith.constant 0 : index
                %83 = memref.load %alloca_9[%c0_120] : memref<1xf32>
                %84 = arith.mulf %82, %83 : f32
                %85 = arith.addf %81, %84 : f32
                %c0_121 = arith.constant 0 : index
                %86 = memref.load %alloca_27[%c0_121] : memref<1xf32>
                %c0_122 = arith.constant 0 : index
                %87 = memref.load %alloca_10[%c0_122] : memref<1xf32>
                %88 = arith.mulf %86, %87 : f32
                %89 = arith.addf %85, %88 : f32
                %c0_123 = arith.constant 0 : index
                %90 = memref.load %alloca_28[%c0_123] : memref<1xf32>
                %c0_124 = arith.constant 0 : index
                %91 = memref.load %alloca_11[%c0_124] : memref<1xf32>
                %92 = arith.mulf %90, %91 : f32
                %93 = arith.addf %89, %92 : f32
                %c0_125 = arith.constant 0 : index
                %94 = memref.load %alloca_4[%c0_125] : memref<1xmemref<?xf32>>
                %c0_126 = arith.constant 0 : index
                %95 = memref.load %alloca_6[%c0_126] : memref<1xi32>
                %96 = arith.extsi %95 : i32 to i64
                %97 = arith.muli %96, %8 : i64
                %98 = arith.index_cast %97 : i64 to index
                %c1_127 = arith.constant 1 : index
                %c0_128 = arith.constant 0 : index
                %c0_129 = arith.constant 0 : index
                %dim_130 = memref.dim %94, %c0_129 : memref<?xf32>
                %99 = arith.subi %dim_130, %98 : index
                %subview_131 = memref.subview %94[%98] [%99] [%c1_127] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %reinterpret_cast_132 = memref.reinterpret_cast %subview_131 to offset: [0], sizes: [%99], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
                %c0_133 = arith.constant 0 : index
                %100 = memref.load %alloca_7[%c0_133] : memref<1xi32>
                %101 = arith.index_cast %100 : i32 to index
                %c0_134 = arith.constant 0 : index
                %dim_135 = memref.dim %reinterpret_cast_132, %c0_134 : memref<?xf32>
                %102 = arith.subi %dim_135, %101 : index
                %c1_136 = arith.constant 1 : index
                %subview_137 = memref.subview %reinterpret_cast_132[%101] [%102] [%c1_136] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %c0_138 = arith.constant 0 : index
                memref.store %93, %subview_137[%c0_138] : memref<?xf32, strided<[?], offset: ?>>
                %c0_139 = arith.constant 0 : index
                %103 = memref.load %alloca_3[%c0_139] : memref<1xmemref<?xf32>>
                %c0_140 = arith.constant 0 : index
                %104 = memref.load %alloca_6[%c0_140] : memref<1xi32>
                %105 = arith.extsi %104 : i32 to i64
                %106 = arith.muli %105, %5 : i64
                %107 = arith.index_cast %106 : i64 to index
                %c1_141 = arith.constant 1 : index
                %c0_142 = arith.constant 0 : index
                %c0_143 = arith.constant 0 : index
                %dim_144 = memref.dim %103, %c0_143 : memref<?xf32>
                %108 = arith.subi %dim_144, %107 : index
                %subview_145 = memref.subview %103[%107] [%108] [%c1_141] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %reinterpret_cast_146 = memref.reinterpret_cast %subview_145 to offset: [0], sizes: [%108], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
                %c0_147 = arith.constant 0 : index
                %109 = memref.load %alloca_7[%c0_147] : memref<1xi32>
                %110 = arith.index_cast %109 : i32 to index
                %c0_148 = arith.constant 0 : index
                %dim_149 = memref.dim %reinterpret_cast_146, %c0_148 : memref<?xf32>
                %111 = arith.subi %dim_149, %110 : index
                %c1_150 = arith.constant 1 : index
                %subview_151 = memref.subview %reinterpret_cast_146[%110] [%111] [%c1_150] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %c0_152 = arith.constant 0 : index
                %112 = memref.load %subview_151[%c0_152] : memref<?xf32, strided<[?], offset: ?>>
                %c0_153 = arith.constant 0 : index
                memref.store %112, %alloca_9[%c0_153] : memref<1xf32>
                %c0_154 = arith.constant 0 : index
                %113 = memref.load %alloca_10[%c0_154] : memref<1xf32>
                %c0_155 = arith.constant 0 : index
                memref.store %113, %alloca_11[%c0_155] : memref<1xf32>
                %c0_156 = arith.constant 0 : index
                %114 = memref.load %alloca_4[%c0_156] : memref<1xmemref<?xf32>>
                %c0_157 = arith.constant 0 : index
                %115 = memref.load %alloca_6[%c0_157] : memref<1xi32>
                %116 = arith.extsi %115 : i32 to i64
                %117 = arith.muli %116, %8 : i64
                %118 = arith.index_cast %117 : i64 to index
                %c1_158 = arith.constant 1 : index
                %c0_159 = arith.constant 0 : index
                %c0_160 = arith.constant 0 : index
                %dim_161 = memref.dim %114, %c0_160 : memref<?xf32>
                %119 = arith.subi %dim_161, %118 : index
                %subview_162 = memref.subview %114[%118] [%119] [%c1_158] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %reinterpret_cast_163 = memref.reinterpret_cast %subview_162 to offset: [0], sizes: [%119], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
                %c0_164 = arith.constant 0 : index
                %120 = memref.load %alloca_7[%c0_164] : memref<1xi32>
                %121 = arith.index_cast %120 : i32 to index
                %c0_165 = arith.constant 0 : index
                %dim_166 = memref.dim %reinterpret_cast_163, %c0_165 : memref<?xf32>
                %122 = arith.subi %dim_166, %121 : index
                %c1_167 = arith.constant 1 : index
                %subview_168 = memref.subview %reinterpret_cast_163[%121] [%122] [%c1_167] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %c0_169 = arith.constant 0 : index
                %123 = memref.load %subview_168[%c0_169] : memref<?xf32, strided<[?], offset: ?>>
                %c0_170 = arith.constant 0 : index
                memref.store %123, %alloca_10[%c0_170] : memref<1xf32>
              }
              %c0_105 = arith.constant 0 : index
              %68 = memref.load %alloca_6[%c0_105] : memref<1xi32>
              %c1_i32_106 = arith.constant 1 : i32
              %69 = arith.addi %68, %c1_i32_106 : i32
              %c0_107 = arith.constant 0 : index
              memref.store %69, %alloca_6[%c0_107] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_94 = arith.constant 0 : index
        %66 = memref.load %alloca_7[%c0_94] : memref<1xi32>
        %c1_i32_95 = arith.constant 1 : i32
        %67 = arith.addi %66, %c1_i32_95 : i32
        %c0_96 = arith.constant 0 : index
        memref.store %67, %alloca_7[%c0_96] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_92 = arith.constant 0 : i32
      %c0_93 = arith.constant 0 : index
      memref.store %c0_i32_92, %alloca_7[%c0_93] : memref<1xi32>
      scf.while : () -> () {
        %c0_94 = arith.constant 0 : index
        %66 = memref.load %alloca_7[%c0_94] : memref<1xi32>
        %c0_95 = arith.constant 0 : index
        %67 = memref.load %alloca_0[%c0_95] : memref<1xi32>
        %68 = arith.cmpi slt, %66, %67 : i32
        scf.condition(%68)
      } do {
        memref.alloca_scope  {
          %cst_97 = arith.constant 0.000000e+00 : f32
          %c0_98 = arith.constant 0 : index
          memref.store %cst_97, %alloca_14[%c0_98] : memref<1xf32>
          %cst_99 = arith.constant 0.000000e+00 : f32
          %c0_100 = arith.constant 0 : index
          memref.store %cst_99, %alloca_15[%c0_100] : memref<1xf32>
          %cst_101 = arith.constant 0.000000e+00 : f32
          %c0_102 = arith.constant 0 : index
          memref.store %cst_101, %alloca_16[%c0_102] : memref<1xf32>
          %cst_103 = arith.constant 0.000000e+00 : f32
          %c0_104 = arith.constant 0 : index
          memref.store %cst_103, %alloca_17[%c0_104] : memref<1xf32>
          memref.alloca_scope  {
            %c0_105 = arith.constant 0 : index
            %68 = memref.load %alloca[%c0_105] : memref<1xi32>
            %c1_i32_106 = arith.constant 1 : i32
            %69 = arith.subi %68, %c1_i32_106 : i32
            %c0_107 = arith.constant 0 : index
            memref.store %69, %alloca_6[%c0_107] : memref<1xi32>
            scf.while : () -> () {
              %c0_108 = arith.constant 0 : index
              %70 = memref.load %alloca_6[%c0_108] : memref<1xi32>
              %c0_i32_109 = arith.constant 0 : i32
              %71 = arith.cmpi sge, %70, %c0_i32_109 : i32
              scf.condition(%71)
            } do {
              memref.alloca_scope  {
                %c0_110 = arith.constant 0 : index
                %72 = memref.load %alloca_25[%c0_110] : memref<1xf32>
                %c0_111 = arith.constant 0 : index
                %73 = memref.load %alloca_14[%c0_111] : memref<1xf32>
                %74 = arith.mulf %72, %73 : f32
                %c0_112 = arith.constant 0 : index
                %75 = memref.load %alloca_26[%c0_112] : memref<1xf32>
                %c0_113 = arith.constant 0 : index
                %76 = memref.load %alloca_15[%c0_113] : memref<1xf32>
                %77 = arith.mulf %75, %76 : f32
                %78 = arith.addf %74, %77 : f32
                %c0_114 = arith.constant 0 : index
                %79 = memref.load %alloca_27[%c0_114] : memref<1xf32>
                %c0_115 = arith.constant 0 : index
                %80 = memref.load %alloca_16[%c0_115] : memref<1xf32>
                %81 = arith.mulf %79, %80 : f32
                %82 = arith.addf %78, %81 : f32
                %c0_116 = arith.constant 0 : index
                %83 = memref.load %alloca_28[%c0_116] : memref<1xf32>
                %c0_117 = arith.constant 0 : index
                %84 = memref.load %alloca_17[%c0_117] : memref<1xf32>
                %85 = arith.mulf %83, %84 : f32
                %86 = arith.addf %82, %85 : f32
                %c0_118 = arith.constant 0 : index
                %87 = memref.load %alloca_5[%c0_118] : memref<1xmemref<?xf32>>
                %c0_119 = arith.constant 0 : index
                %88 = memref.load %alloca_6[%c0_119] : memref<1xi32>
                %89 = arith.extsi %88 : i32 to i64
                %90 = arith.muli %89, %11 : i64
                %91 = arith.index_cast %90 : i64 to index
                %c1 = arith.constant 1 : index
                %c0_120 = arith.constant 0 : index
                %c0_121 = arith.constant 0 : index
                %dim = memref.dim %87, %c0_121 : memref<?xf32>
                %92 = arith.subi %dim, %91 : index
                %subview = memref.subview %87[%91] [%92] [%c1] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%92], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
                %c0_122 = arith.constant 0 : index
                %93 = memref.load %alloca_7[%c0_122] : memref<1xi32>
                %94 = arith.index_cast %93 : i32 to index
                %c0_123 = arith.constant 0 : index
                %dim_124 = memref.dim %reinterpret_cast, %c0_123 : memref<?xf32>
                %95 = arith.subi %dim_124, %94 : index
                %c1_125 = arith.constant 1 : index
                %subview_126 = memref.subview %reinterpret_cast[%94] [%95] [%c1_125] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %c0_127 = arith.constant 0 : index
                memref.store %86, %subview_126[%c0_127] : memref<?xf32, strided<[?], offset: ?>>
                %c0_128 = arith.constant 0 : index
                %96 = memref.load %alloca_14[%c0_128] : memref<1xf32>
                %c0_129 = arith.constant 0 : index
                memref.store %96, %alloca_15[%c0_129] : memref<1xf32>
                %c0_130 = arith.constant 0 : index
                %97 = memref.load %alloca_3[%c0_130] : memref<1xmemref<?xf32>>
                %c0_131 = arith.constant 0 : index
                %98 = memref.load %alloca_6[%c0_131] : memref<1xi32>
                %99 = arith.extsi %98 : i32 to i64
                %100 = arith.muli %99, %5 : i64
                %101 = arith.index_cast %100 : i64 to index
                %c1_132 = arith.constant 1 : index
                %c0_133 = arith.constant 0 : index
                %c0_134 = arith.constant 0 : index
                %dim_135 = memref.dim %97, %c0_134 : memref<?xf32>
                %102 = arith.subi %dim_135, %101 : index
                %subview_136 = memref.subview %97[%101] [%102] [%c1_132] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %reinterpret_cast_137 = memref.reinterpret_cast %subview_136 to offset: [0], sizes: [%102], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
                %c0_138 = arith.constant 0 : index
                %103 = memref.load %alloca_7[%c0_138] : memref<1xi32>
                %104 = arith.index_cast %103 : i32 to index
                %c0_139 = arith.constant 0 : index
                %dim_140 = memref.dim %reinterpret_cast_137, %c0_139 : memref<?xf32>
                %105 = arith.subi %dim_140, %104 : index
                %c1_141 = arith.constant 1 : index
                %subview_142 = memref.subview %reinterpret_cast_137[%104] [%105] [%c1_141] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %c0_143 = arith.constant 0 : index
                %106 = memref.load %subview_142[%c0_143] : memref<?xf32, strided<[?], offset: ?>>
                %c0_144 = arith.constant 0 : index
                memref.store %106, %alloca_14[%c0_144] : memref<1xf32>
                %c0_145 = arith.constant 0 : index
                %107 = memref.load %alloca_16[%c0_145] : memref<1xf32>
                %c0_146 = arith.constant 0 : index
                memref.store %107, %alloca_17[%c0_146] : memref<1xf32>
                %c0_147 = arith.constant 0 : index
                %108 = memref.load %alloca_5[%c0_147] : memref<1xmemref<?xf32>>
                %c0_148 = arith.constant 0 : index
                %109 = memref.load %alloca_6[%c0_148] : memref<1xi32>
                %110 = arith.extsi %109 : i32 to i64
                %111 = arith.muli %110, %11 : i64
                %112 = arith.index_cast %111 : i64 to index
                %c1_149 = arith.constant 1 : index
                %c0_150 = arith.constant 0 : index
                %c0_151 = arith.constant 0 : index
                %dim_152 = memref.dim %108, %c0_151 : memref<?xf32>
                %113 = arith.subi %dim_152, %112 : index
                %subview_153 = memref.subview %108[%112] [%113] [%c1_149] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %reinterpret_cast_154 = memref.reinterpret_cast %subview_153 to offset: [0], sizes: [%113], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
                %c0_155 = arith.constant 0 : index
                %114 = memref.load %alloca_7[%c0_155] : memref<1xi32>
                %115 = arith.index_cast %114 : i32 to index
                %c0_156 = arith.constant 0 : index
                %dim_157 = memref.dim %reinterpret_cast_154, %c0_156 : memref<?xf32>
                %116 = arith.subi %dim_157, %115 : index
                %c1_158 = arith.constant 1 : index
                %subview_159 = memref.subview %reinterpret_cast_154[%115] [%116] [%c1_158] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
                %c0_160 = arith.constant 0 : index
                %117 = memref.load %subview_159[%c0_160] : memref<?xf32, strided<[?], offset: ?>>
                %c0_161 = arith.constant 0 : index
                memref.store %117, %alloca_16[%c0_161] : memref<1xf32>
              }
              %c0_108 = arith.constant 0 : index
              %70 = memref.load %alloca_6[%c0_108] : memref<1xi32>
              %c-1_i32 = arith.constant -1 : i32
              %71 = arith.addi %70, %c-1_i32 : i32
              %c0_109 = arith.constant 0 : index
              memref.store %71, %alloca_6[%c0_109] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_94 = arith.constant 0 : index
        %66 = memref.load %alloca_7[%c0_94] : memref<1xi32>
        %c1_i32_95 = arith.constant 1 : i32
        %67 = arith.addi %66, %c1_i32_95 : i32
        %c0_96 = arith.constant 0 : index
        memref.store %67, %alloca_7[%c0_96] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_92 = arith.constant 0 : i32
      %c0_93 = arith.constant 0 : index
      memref.store %c0_i32_92, %alloca_6[%c0_93] : memref<1xi32>
      scf.while : () -> () {
        %c0_94 = arith.constant 0 : index
        %66 = memref.load %alloca_6[%c0_94] : memref<1xi32>
        %c0_95 = arith.constant 0 : index
        %67 = memref.load %alloca[%c0_95] : memref<1xi32>
        %68 = arith.cmpi slt, %66, %67 : i32
        scf.condition(%68)
      } do {
        memref.alloca_scope  {
          %c0_i32_97 = arith.constant 0 : i32
          %c0_98 = arith.constant 0 : index
          memref.store %c0_i32_97, %alloca_7[%c0_98] : memref<1xi32>
          scf.while : () -> () {
            %c0_99 = arith.constant 0 : index
            %68 = memref.load %alloca_7[%c0_99] : memref<1xi32>
            %c0_100 = arith.constant 0 : index
            %69 = memref.load %alloca_0[%c0_100] : memref<1xi32>
            %70 = arith.cmpi slt, %68, %69 : i32
            scf.condition(%70)
          } do {
            %c0_99 = arith.constant 0 : index
            %68 = memref.load %alloca_30[%c0_99] : memref<1xf32>
            %c0_100 = arith.constant 0 : index
            %69 = memref.load %alloca_4[%c0_100] : memref<1xmemref<?xf32>>
            %c0_101 = arith.constant 0 : index
            %70 = memref.load %alloca_6[%c0_101] : memref<1xi32>
            %71 = arith.extsi %70 : i32 to i64
            %72 = arith.muli %71, %8 : i64
            %73 = arith.index_cast %72 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_102 = arith.constant 0 : index
            %c0_103 = arith.constant 0 : index
            %dim = memref.dim %69, %c0_103 : memref<?xf32>
            %74 = arith.subi %dim, %73 : index
            %subview = memref.subview %69[%73] [%74] [%c1] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%74], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
            %c0_104 = arith.constant 0 : index
            %75 = memref.load %alloca_7[%c0_104] : memref<1xi32>
            %76 = arith.index_cast %75 : i32 to index
            %c0_105 = arith.constant 0 : index
            %dim_106 = memref.dim %reinterpret_cast, %c0_105 : memref<?xf32>
            %77 = arith.subi %dim_106, %76 : index
            %c1_107 = arith.constant 1 : index
            %subview_108 = memref.subview %reinterpret_cast[%76] [%77] [%c1_107] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
            %c0_109 = arith.constant 0 : index
            %78 = memref.load %subview_108[%c0_109] : memref<?xf32, strided<[?], offset: ?>>
            %c0_110 = arith.constant 0 : index
            %79 = memref.load %alloca_5[%c0_110] : memref<1xmemref<?xf32>>
            %c0_111 = arith.constant 0 : index
            %80 = memref.load %alloca_6[%c0_111] : memref<1xi32>
            %81 = arith.extsi %80 : i32 to i64
            %82 = arith.muli %81, %11 : i64
            %83 = arith.index_cast %82 : i64 to index
            %c1_112 = arith.constant 1 : index
            %c0_113 = arith.constant 0 : index
            %c0_114 = arith.constant 0 : index
            %dim_115 = memref.dim %79, %c0_114 : memref<?xf32>
            %84 = arith.subi %dim_115, %83 : index
            %subview_116 = memref.subview %79[%83] [%84] [%c1_112] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
            %reinterpret_cast_117 = memref.reinterpret_cast %subview_116 to offset: [0], sizes: [%84], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
            %c0_118 = arith.constant 0 : index
            %85 = memref.load %alloca_7[%c0_118] : memref<1xi32>
            %86 = arith.index_cast %85 : i32 to index
            %c0_119 = arith.constant 0 : index
            %dim_120 = memref.dim %reinterpret_cast_117, %c0_119 : memref<?xf32>
            %87 = arith.subi %dim_120, %86 : index
            %c1_121 = arith.constant 1 : index
            %subview_122 = memref.subview %reinterpret_cast_117[%86] [%87] [%c1_121] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
            %c0_123 = arith.constant 0 : index
            %88 = memref.load %subview_122[%c0_123] : memref<?xf32, strided<[?], offset: ?>>
            %89 = arith.addf %78, %88 : f32
            %90 = arith.mulf %68, %89 : f32
            %c0_124 = arith.constant 0 : index
            %91 = memref.load %alloca_3[%c0_124] : memref<1xmemref<?xf32>>
            %c0_125 = arith.constant 0 : index
            %92 = memref.load %alloca_6[%c0_125] : memref<1xi32>
            %93 = arith.extsi %92 : i32 to i64
            %94 = arith.muli %93, %5 : i64
            %95 = arith.index_cast %94 : i64 to index
            %c1_126 = arith.constant 1 : index
            %c0_127 = arith.constant 0 : index
            %c0_128 = arith.constant 0 : index
            %dim_129 = memref.dim %91, %c0_128 : memref<?xf32>
            %96 = arith.subi %dim_129, %95 : index
            %subview_130 = memref.subview %91[%95] [%96] [%c1_126] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
            %reinterpret_cast_131 = memref.reinterpret_cast %subview_130 to offset: [0], sizes: [%96], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
            %c0_132 = arith.constant 0 : index
            %97 = memref.load %alloca_7[%c0_132] : memref<1xi32>
            %98 = arith.index_cast %97 : i32 to index
            %c0_133 = arith.constant 0 : index
            %dim_134 = memref.dim %reinterpret_cast_131, %c0_133 : memref<?xf32>
            %99 = arith.subi %dim_134, %98 : index
            %c1_135 = arith.constant 1 : index
            %subview_136 = memref.subview %reinterpret_cast_131[%98] [%99] [%c1_135] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
            %c0_137 = arith.constant 0 : index
            memref.store %90, %subview_136[%c0_137] : memref<?xf32, strided<[?], offset: ?>>
            %c0_138 = arith.constant 0 : index
            %100 = memref.load %alloca_7[%c0_138] : memref<1xi32>
            %c1_i32_139 = arith.constant 1 : i32
            %101 = arith.addi %100, %c1_i32_139 : i32
            %c0_140 = arith.constant 0 : index
            memref.store %101, %alloca_7[%c0_140] : memref<1xi32>
            scf.yield
          }
        }
        %c0_94 = arith.constant 0 : index
        %66 = memref.load %alloca_6[%c0_94] : memref<1xi32>
        %c1_i32_95 = arith.constant 1 : i32
        %67 = arith.addi %66, %c1_i32_95 : i32
        %c0_96 = arith.constant 0 : index
        memref.store %67, %alloca_6[%c0_96] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<7xi8> = dense<[105, 109, 103, 79, 117, 116, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.3" : memref<2xi8> = dense<[10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.4" : memref<7xi8> = dense<[37, 48, 46, 50, 102, 32, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.5" : memref<17xi8> = dense<[10, 101, 110, 100, 32, 32, 32, 100, 117, 109, 112, 58, 32, 37, 115, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.6" : memref<23xi8> = dense<[61, 61, 69, 78, 68, 32, 32, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  func.func private @print_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf32>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf32>>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_4 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_4] : memref<1xi32>
    %c0_5 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_5] : memref<1xmemref<?xf32>>
    %c0_6 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_6] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %3 = llvm.mlir.addressof @stderr : !llvm.ptr
    %4 = llvm.load %3 : !llvm.ptr -> !llvm.ptr
    %5 = memref.get_global @".str" : memref<23xi8>
    %c0_7 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c23 = arith.constant 23 : index
    %subview = memref.subview %5[%c0_7] [%c23] [%c1] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%c23], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr = memref.extract_aligned_pointer_as_index %reinterpret_cast : memref<?xi8> -> index
    %6 = arith.index_castui %intptr : index to i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %8 = llvm.call @fprintf(%4, %7) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %9 = llvm.mlir.addressof @stderr : !llvm.ptr
    %10 = llvm.load %9 : !llvm.ptr -> !llvm.ptr
    %11 = memref.get_global @".str.1" : memref<15xi8>
    %c0_8 = arith.constant 0 : index
    %c1_9 = arith.constant 1 : index
    %c15 = arith.constant 15 : index
    %subview_10 = memref.subview %11[%c0_8] [%c15] [%c1_9] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_11 = memref.reinterpret_cast %subview_10 to offset: [0], sizes: [%c15], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %12 = memref.get_global @".str.2" : memref<7xi8>
    %c0_12 = arith.constant 0 : index
    %c1_13 = arith.constant 1 : index
    %c7 = arith.constant 7 : index
    %subview_14 = memref.subview %12[%c0_12] [%c7] [%c1_13] : memref<7xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_15 = memref.reinterpret_cast %subview_14 to offset: [0], sizes: [%c7], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_16 = memref.extract_aligned_pointer_as_index %reinterpret_cast_11 : memref<?xi8> -> index
    %13 = arith.index_castui %intptr_16 : index to i64
    %14 = llvm.inttoptr %13 : i64 to !llvm.ptr
    %intptr_17 = memref.extract_aligned_pointer_as_index %reinterpret_cast_15 : memref<?xi8> -> index
    %15 = arith.index_castui %intptr_17 : index to i64
    %16 = llvm.inttoptr %15 : i64 to !llvm.ptr
    %17 = llvm.call @fprintf(%10, %14, %16) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32_35 = arith.constant 0 : i32
      %c0_36 = arith.constant 0 : index
      memref.store %c0_i32_35, %alloca_2[%c0_36] : memref<1xi32>
      scf.while : () -> () {
        %c0_37 = arith.constant 0 : index
        %33 = memref.load %alloca_2[%c0_37] : memref<1xi32>
        %c0_38 = arith.constant 0 : index
        %34 = memref.load %alloca[%c0_38] : memref<1xi32>
        %35 = arith.cmpi slt, %33, %34 : i32
        scf.condition(%35)
      } do {
        memref.alloca_scope  {
          %c0_i32_39 = arith.constant 0 : i32
          %c0_40 = arith.constant 0 : index
          memref.store %c0_i32_39, %alloca_3[%c0_40] : memref<1xi32>
          scf.while : () -> () {
            %c0_41 = arith.constant 0 : index
            %35 = memref.load %alloca_3[%c0_41] : memref<1xi32>
            %c0_42 = arith.constant 0 : index
            %36 = memref.load %alloca_0[%c0_42] : memref<1xi32>
            %37 = arith.cmpi slt, %35, %36 : i32
            scf.condition(%37)
          } do {
            memref.alloca_scope  {
              memref.alloca_scope  {
                %c0_63 = arith.constant 0 : index
                %54 = memref.load %alloca_2[%c0_63] : memref<1xi32>
                %c0_64 = arith.constant 0 : index
                %55 = memref.load %alloca_0[%c0_64] : memref<1xi32>
                %56 = arith.muli %54, %55 : i32
                %c0_65 = arith.constant 0 : index
                %57 = memref.load %alloca_3[%c0_65] : memref<1xi32>
                %58 = arith.addi %56, %57 : i32
                %c20_i32 = arith.constant 20 : i32
                %59 = arith.remsi %58, %c20_i32 : i32
                %c0_i32_66 = arith.constant 0 : i32
                %60 = arith.cmpi eq, %59, %c0_i32_66 : i32
                scf.if %60 {
                  %61 = llvm.mlir.addressof @stderr : !llvm.ptr
                  %62 = llvm.load %61 : !llvm.ptr -> !llvm.ptr
                  %63 = memref.get_global @".str.3" : memref<2xi8>
                  %c0_67 = arith.constant 0 : index
                  %c1_68 = arith.constant 1 : index
                  %c2 = arith.constant 2 : index
                  %subview_69 = memref.subview %63[%c0_67] [%c2] [%c1_68] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
                  %reinterpret_cast_70 = memref.reinterpret_cast %subview_69 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                  %intptr_71 = memref.extract_aligned_pointer_as_index %reinterpret_cast_70 : memref<?xi8> -> index
                  %64 = arith.index_castui %intptr_71 : index to i64
                  %65 = llvm.inttoptr %64 : i64 to !llvm.ptr
                  %66 = llvm.call @fprintf(%62, %65) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                }
              }
              %37 = llvm.mlir.addressof @stderr : !llvm.ptr
              %38 = llvm.load %37 : !llvm.ptr -> !llvm.ptr
              %39 = memref.get_global @".str.4" : memref<7xi8>
              %c0_44 = arith.constant 0 : index
              %c1_45 = arith.constant 1 : index
              %c7_46 = arith.constant 7 : index
              %subview_47 = memref.subview %39[%c0_44] [%c7_46] [%c1_45] : memref<7xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_48 = memref.reinterpret_cast %subview_47 to offset: [0], sizes: [%c7_46], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %c0_49 = arith.constant 0 : index
              %40 = memref.load %alloca_1[%c0_49] : memref<1xmemref<?xf32>>
              %c0_50 = arith.constant 0 : index
              %41 = memref.load %alloca_2[%c0_50] : memref<1xi32>
              %42 = arith.extsi %41 : i32 to i64
              %43 = arith.muli %42, %2 : i64
              %44 = arith.index_cast %43 : i64 to index
              %c1_51 = arith.constant 1 : index
              %c0_52 = arith.constant 0 : index
              %c0_53 = arith.constant 0 : index
              %dim = memref.dim %40, %c0_53 : memref<?xf32>
              %45 = arith.subi %dim, %44 : index
              %subview_54 = memref.subview %40[%44] [%45] [%c1_51] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
              %reinterpret_cast_55 = memref.reinterpret_cast %subview_54 to offset: [0], sizes: [%45], strides: [1] : memref<?xf32, strided<[?], offset: ?>> to memref<?xf32>
              %c0_56 = arith.constant 0 : index
              %46 = memref.load %alloca_3[%c0_56] : memref<1xi32>
              %47 = arith.index_cast %46 : i32 to index
              %c0_57 = arith.constant 0 : index
              %dim_58 = memref.dim %reinterpret_cast_55, %c0_57 : memref<?xf32>
              %48 = arith.subi %dim_58, %47 : index
              %c1_59 = arith.constant 1 : index
              %subview_60 = memref.subview %reinterpret_cast_55[%47] [%48] [%c1_59] : memref<?xf32> to memref<?xf32, strided<[?], offset: ?>>
              %c0_61 = arith.constant 0 : index
              %49 = memref.load %subview_60[%c0_61] : memref<?xf32, strided<[?], offset: ?>>
              %50 = arith.extf %49 : f32 to f64
              %intptr_62 = memref.extract_aligned_pointer_as_index %reinterpret_cast_48 : memref<?xi8> -> index
              %51 = arith.index_castui %intptr_62 : index to i64
              %52 = llvm.inttoptr %51 : i64 to !llvm.ptr
              %53 = llvm.call @fprintf(%38, %52, %50) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
            }
            %c0_41 = arith.constant 0 : index
            %35 = memref.load %alloca_3[%c0_41] : memref<1xi32>
            %c1_i32_42 = arith.constant 1 : i32
            %36 = arith.addi %35, %c1_i32_42 : i32
            %c0_43 = arith.constant 0 : index
            memref.store %36, %alloca_3[%c0_43] : memref<1xi32>
            scf.yield
          }
        }
        %c0_37 = arith.constant 0 : index
        %33 = memref.load %alloca_2[%c0_37] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %34 = arith.addi %33, %c1_i32 : i32
        %c0_38 = arith.constant 0 : index
        memref.store %34, %alloca_2[%c0_38] : memref<1xi32>
        scf.yield
      }
    }
    %18 = llvm.mlir.addressof @stderr : !llvm.ptr
    %19 = llvm.load %18 : !llvm.ptr -> !llvm.ptr
    %20 = memref.get_global @".str.5" : memref<17xi8>
    %c0_18 = arith.constant 0 : index
    %c1_19 = arith.constant 1 : index
    %c17 = arith.constant 17 : index
    %subview_20 = memref.subview %20[%c0_18] [%c17] [%c1_19] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_21 = memref.reinterpret_cast %subview_20 to offset: [0], sizes: [%c17], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %21 = memref.get_global @".str.2" : memref<7xi8>
    %c0_22 = arith.constant 0 : index
    %c1_23 = arith.constant 1 : index
    %c7_24 = arith.constant 7 : index
    %subview_25 = memref.subview %21[%c0_22] [%c7_24] [%c1_23] : memref<7xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_26 = memref.reinterpret_cast %subview_25 to offset: [0], sizes: [%c7_24], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_27 = memref.extract_aligned_pointer_as_index %reinterpret_cast_21 : memref<?xi8> -> index
    %22 = arith.index_castui %intptr_27 : index to i64
    %23 = llvm.inttoptr %22 : i64 to !llvm.ptr
    %intptr_28 = memref.extract_aligned_pointer_as_index %reinterpret_cast_26 : memref<?xi8> -> index
    %24 = arith.index_castui %intptr_28 : index to i64
    %25 = llvm.inttoptr %24 : i64 to !llvm.ptr
    %26 = llvm.call @fprintf(%19, %23, %25) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %27 = llvm.mlir.addressof @stderr : !llvm.ptr
    %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
    %29 = memref.get_global @".str.6" : memref<23xi8>
    %c0_29 = arith.constant 0 : index
    %c1_30 = arith.constant 1 : index
    %c23_31 = arith.constant 23 : index
    %subview_32 = memref.subview %29[%c0_29] [%c23_31] [%c1_30] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_33 = memref.reinterpret_cast %subview_32 to offset: [0], sizes: [%c23_31], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_34 = memref.extract_aligned_pointer_as_index %reinterpret_cast_33 : memref<?xi8> -> index
    %30 = arith.index_castui %intptr_34 : index to i64
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
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xf32>
    %cast = memref.cast %alloca_4 : memref<1xf32> to memref<?xf32>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf32>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf32>>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf32>>
    %alloca_8 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf32>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_9 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_9] : memref<1xmemref<?xmemref<?xi8>>>
    %c4096_i32 = arith.constant 4096 : i32
    %c0_10 = arith.constant 0 : index
    memref.store %c4096_i32, %alloca_2[%c0_10] : memref<1xi32>
    %c2160_i32 = arith.constant 2160 : i32
    %c0_11 = arith.constant 0 : index
    memref.store %c2160_i32, %alloca_3[%c0_11] : memref<1xi32>
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
    %c4_i64 = arith.constant 4 : i64
    %6 = arith.trunci %c4_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xf32>
    %c0_15 = arith.constant 0 : index
    memref.store %8, %alloca_5[%c0_15] : memref<1xmemref<?xf32>>
    %c0_16 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_16] : memref<1xi32>
    %c0_i32_17 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_17 : i32
    %c0_18 = arith.constant 0 : index
    %11 = memref.load %alloca_3[%c0_18] : memref<1xi32>
    %c0_i32_19 = arith.constant 0 : i32
    %12 = arith.addi %11, %c0_i32_19 : i32
    %13 = arith.muli %10, %12 : i32
    %14 = arith.extsi %13 : i32 to i64
    %c4_i64_20 = arith.constant 4 : i64
    %15 = arith.trunci %c4_i64_20 : i64 to i32
    %16 = call @polybench_alloc_data(%14, %15) : (i64, i32) -> !llvm.ptr
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.ptr to memref<?xf32>
    %c0_21 = arith.constant 0 : index
    memref.store %17, %alloca_6[%c0_21] : memref<1xmemref<?xf32>>
    %c0_22 = arith.constant 0 : index
    %18 = memref.load %alloca_2[%c0_22] : memref<1xi32>
    %c0_i32_23 = arith.constant 0 : i32
    %19 = arith.addi %18, %c0_i32_23 : i32
    %c0_24 = arith.constant 0 : index
    %20 = memref.load %alloca_3[%c0_24] : memref<1xi32>
    %c0_i32_25 = arith.constant 0 : i32
    %21 = arith.addi %20, %c0_i32_25 : i32
    %22 = arith.muli %19, %21 : i32
    %23 = arith.extsi %22 : i32 to i64
    %c4_i64_26 = arith.constant 4 : i64
    %24 = arith.trunci %c4_i64_26 : i64 to i32
    %25 = call @polybench_alloc_data(%23, %24) : (i64, i32) -> !llvm.ptr
    %26 = builtin.unrealized_conversion_cast %25 : !llvm.ptr to memref<?xf32>
    %c0_27 = arith.constant 0 : index
    memref.store %26, %alloca_7[%c0_27] : memref<1xmemref<?xf32>>
    %c0_28 = arith.constant 0 : index
    %27 = memref.load %alloca_2[%c0_28] : memref<1xi32>
    %c0_i32_29 = arith.constant 0 : i32
    %28 = arith.addi %27, %c0_i32_29 : i32
    %c0_30 = arith.constant 0 : index
    %29 = memref.load %alloca_3[%c0_30] : memref<1xi32>
    %c0_i32_31 = arith.constant 0 : i32
    %30 = arith.addi %29, %c0_i32_31 : i32
    %31 = arith.muli %28, %30 : i32
    %32 = arith.extsi %31 : i32 to i64
    %c4_i64_32 = arith.constant 4 : i64
    %33 = arith.trunci %c4_i64_32 : i64 to i32
    %34 = call @polybench_alloc_data(%32, %33) : (i64, i32) -> !llvm.ptr
    %35 = builtin.unrealized_conversion_cast %34 : !llvm.ptr to memref<?xf32>
    %c0_33 = arith.constant 0 : index
    memref.store %35, %alloca_8[%c0_33] : memref<1xmemref<?xf32>>
    %c0_34 = arith.constant 0 : index
    %36 = memref.load %alloca_2[%c0_34] : memref<1xi32>
    %c0_35 = arith.constant 0 : index
    %37 = memref.load %alloca_3[%c0_35] : memref<1xi32>
    %c0_36 = arith.constant 0 : index
    %38 = memref.load %alloca_5[%c0_36] : memref<1xmemref<?xf32>>
    %c0_37 = arith.constant 0 : index
    %39 = memref.load %alloca_6[%c0_37] : memref<1xmemref<?xf32>>
    call @init_array(%36, %37, %cast, %38, %39) : (i32, i32, memref<?xf32>, memref<?xf32>, memref<?xf32>) -> ()
    %40 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %40() : !llvm.ptr, () -> ()
    %c0_38 = arith.constant 0 : index
    %41 = memref.load %alloca_2[%c0_38] : memref<1xi32>
    %c0_39 = arith.constant 0 : index
    %42 = memref.load %alloca_3[%c0_39] : memref<1xi32>
    %c0_40 = arith.constant 0 : index
    %43 = memref.load %alloca_4[%c0_40] : memref<1xf32>
    %c0_41 = arith.constant 0 : index
    %44 = memref.load %alloca_5[%c0_41] : memref<1xmemref<?xf32>>
    %c0_42 = arith.constant 0 : index
    %45 = memref.load %alloca_6[%c0_42] : memref<1xmemref<?xf32>>
    %c0_43 = arith.constant 0 : index
    %46 = memref.load %alloca_7[%c0_43] : memref<1xmemref<?xf32>>
    %c0_44 = arith.constant 0 : index
    %47 = memref.load %alloca_8[%c0_44] : memref<1xmemref<?xf32>>
    call @kernel_deriche(%41, %42, %43, %44, %45, %46, %47) : (i32, i32, f32, memref<?xf32>, memref<?xf32>, memref<?xf32>, memref<?xf32>) -> ()
    %48 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %48() : !llvm.ptr, () -> ()
    %49 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %49() : !llvm.ptr, () -> ()
    %c0_45 = arith.constant 0 : index
    %50 = memref.load %alloca_2[%c0_45] : memref<1xi32>
    %c0_46 = arith.constant 0 : index
    %51 = memref.load %alloca_3[%c0_46] : memref<1xi32>
    %c0_47 = arith.constant 0 : index
    %52 = memref.load %alloca_6[%c0_47] : memref<1xmemref<?xf32>>
    call @print_array(%50, %51, %52) : (i32, i32, memref<?xf32>) -> ()
    %c0_48 = arith.constant 0 : index
    %53 = memref.load %alloca_5[%c0_48] : memref<1xmemref<?xf32>>
    %intptr = memref.extract_aligned_pointer_as_index %53 : memref<?xf32> -> index
    %54 = arith.index_castui %intptr : index to i64
    %55 = llvm.inttoptr %54 : i64 to !llvm.ptr
    call @free(%55) : (!llvm.ptr) -> ()
    %c0_49 = arith.constant 0 : index
    %56 = memref.load %alloca_6[%c0_49] : memref<1xmemref<?xf32>>
    %intptr_50 = memref.extract_aligned_pointer_as_index %56 : memref<?xf32> -> index
    %57 = arith.index_castui %intptr_50 : index to i64
    %58 = llvm.inttoptr %57 : i64 to !llvm.ptr
    call @free(%58) : (!llvm.ptr) -> ()
    %c0_51 = arith.constant 0 : index
    %59 = memref.load %alloca_7[%c0_51] : memref<1xmemref<?xf32>>
    %intptr_52 = memref.extract_aligned_pointer_as_index %59 : memref<?xf32> -> index
    %60 = arith.index_castui %intptr_52 : index to i64
    %61 = llvm.inttoptr %60 : i64 to !llvm.ptr
    call @free(%61) : (!llvm.ptr) -> ()
    %c0_53 = arith.constant 0 : index
    %62 = memref.load %alloca_8[%c0_53] : memref<1xmemref<?xf32>>
    %intptr_54 = memref.extract_aligned_pointer_as_index %62 : memref<?xf32> -> index
    %63 = arith.index_castui %intptr_54 : index to i64
    %64 = llvm.inttoptr %63 : i64 to !llvm.ptr
    call @free(%64) : (!llvm.ptr) -> ()
    %c0_i32_55 = arith.constant 0 : i32
    %c0_56 = arith.constant 0 : index
    memref.store %c0_i32_55, %alloca_1[%c0_56] : memref<1xi32>
    %c0_57 = arith.constant 0 : index
    %65 = memref.load %alloca_1[%c0_57] : memref<1xi32>
    return %65 : i32
  }
}

