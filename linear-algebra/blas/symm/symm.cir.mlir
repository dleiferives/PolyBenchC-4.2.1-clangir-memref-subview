module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/blas/symm/symm.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
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
    memref.store %arg2, %alloca_1[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_10] : memref<1xmemref<?xf64>>
    %c0_11 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_12] : memref<1xmemref<?xf64>>
    %c0_13 = arith.constant 0 : index
    memref.store %arg6, %alloca_5[%c0_13] : memref<1xmemref<?xf64>>
    %c0_14 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_14] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_15 = arith.constant 0 : index
    %3 = memref.load %alloca[%c0_15] : memref<1xi32>
    %c0_i32_16 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_16 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_17 = arith.constant 0 : index
    %6 = memref.load %alloca_0[%c0_17] : memref<1xi32>
    %c0_i32_18 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_18 : i32
    %8 = arith.extsi %7 : i32 to i64
    %cst = arith.constant 1.500000e+00 : f64
    %c0_19 = arith.constant 0 : index
    %9 = memref.load %alloca_1[%c0_19] : memref<1xmemref<?xf64>>
    %c0_20 = arith.constant 0 : index
    memref.store %cst, %9[%c0_20] : memref<?xf64>
    %cst_21 = arith.constant 1.200000e+00 : f64
    %c0_22 = arith.constant 0 : index
    %10 = memref.load %alloca_2[%c0_22] : memref<1xmemref<?xf64>>
    %c0_23 = arith.constant 0 : index
    memref.store %cst_21, %10[%c0_23] : memref<?xf64>
    memref.alloca_scope  {
      %c0_i32_24 = arith.constant 0 : i32
      %c0_25 = arith.constant 0 : index
      memref.store %c0_i32_24, %alloca_6[%c0_25] : memref<1xi32>
      scf.while : () -> () {
        %c0_26 = arith.constant 0 : index
        %11 = memref.load %alloca_6[%c0_26] : memref<1xi32>
        %c0_27 = arith.constant 0 : index
        %12 = memref.load %alloca[%c0_27] : memref<1xi32>
        %13 = arith.cmpi slt, %11, %12 : i32
        scf.condition(%13)
      } do {
        memref.alloca_scope  {
          %c0_i32_28 = arith.constant 0 : i32
          %c0_29 = arith.constant 0 : index
          memref.store %c0_i32_28, %alloca_7[%c0_29] : memref<1xi32>
          scf.while : () -> () {
            %c0_30 = arith.constant 0 : index
            %13 = memref.load %alloca_7[%c0_30] : memref<1xi32>
            %c0_31 = arith.constant 0 : index
            %14 = memref.load %alloca_0[%c0_31] : memref<1xi32>
            %15 = arith.cmpi slt, %13, %14 : i32
            scf.condition(%15)
          } do {
            memref.alloca_scope  {
              %c0_33 = arith.constant 0 : index
              %15 = memref.load %alloca_6[%c0_33] : memref<1xi32>
              %c0_34 = arith.constant 0 : index
              %16 = memref.load %alloca_7[%c0_34] : memref<1xi32>
              %17 = arith.addi %15, %16 : i32
              %c100_i32 = arith.constant 100 : i32
              %18 = arith.remsi %17, %c100_i32 : i32
              %19 = arith.sitofp %18 : i32 to f64
              %c0_35 = arith.constant 0 : index
              %20 = memref.load %alloca[%c0_35] : memref<1xi32>
              %21 = arith.sitofp %20 : i32 to f64
              %22 = arith.divf %19, %21 : f64
              %c0_36 = arith.constant 0 : index
              %23 = memref.load %alloca_3[%c0_36] : memref<1xmemref<?xf64>>
              %c0_37 = arith.constant 0 : index
              %24 = memref.load %alloca_6[%c0_37] : memref<1xi32>
              %25 = arith.extsi %24 : i32 to i64
              %26 = arith.muli %25, %2 : i64
              %27 = arith.index_cast %26 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_38 = arith.constant 0 : index
              %c0_39 = arith.constant 0 : index
              %dim = memref.dim %23, %c0_39 : memref<?xf64>
              %28 = arith.subi %dim, %27 : index
              %subview = memref.subview %23[%27] [%28] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%28], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_40 = arith.constant 0 : index
              %29 = memref.load %alloca_7[%c0_40] : memref<1xi32>
              %30 = arith.index_cast %29 : i32 to index
              %c0_41 = arith.constant 0 : index
              %dim_42 = memref.dim %reinterpret_cast, %c0_41 : memref<?xf64>
              %31 = arith.subi %dim_42, %30 : index
              %c1_43 = arith.constant 1 : index
              %subview_44 = memref.subview %reinterpret_cast[%30] [%31] [%c1_43] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_45 = arith.constant 0 : index
              memref.store %22, %subview_44[%c0_45] : memref<?xf64, strided<[?], offset: ?>>
              %c0_46 = arith.constant 0 : index
              %32 = memref.load %alloca_0[%c0_46] : memref<1xi32>
              %c0_47 = arith.constant 0 : index
              %33 = memref.load %alloca_6[%c0_47] : memref<1xi32>
              %34 = arith.addi %32, %33 : i32
              %c0_48 = arith.constant 0 : index
              %35 = memref.load %alloca_7[%c0_48] : memref<1xi32>
              %36 = arith.subi %34, %35 : i32
              %c100_i32_49 = arith.constant 100 : i32
              %37 = arith.remsi %36, %c100_i32_49 : i32
              %38 = arith.sitofp %37 : i32 to f64
              %c0_50 = arith.constant 0 : index
              %39 = memref.load %alloca[%c0_50] : memref<1xi32>
              %40 = arith.sitofp %39 : i32 to f64
              %41 = arith.divf %38, %40 : f64
              %c0_51 = arith.constant 0 : index
              %42 = memref.load %alloca_5[%c0_51] : memref<1xmemref<?xf64>>
              %c0_52 = arith.constant 0 : index
              %43 = memref.load %alloca_6[%c0_52] : memref<1xi32>
              %44 = arith.extsi %43 : i32 to i64
              %45 = arith.muli %44, %8 : i64
              %46 = arith.index_cast %45 : i64 to index
              %c1_53 = arith.constant 1 : index
              %c0_54 = arith.constant 0 : index
              %c0_55 = arith.constant 0 : index
              %dim_56 = memref.dim %42, %c0_55 : memref<?xf64>
              %47 = arith.subi %dim_56, %46 : index
              %subview_57 = memref.subview %42[%46] [%47] [%c1_53] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_58 = memref.reinterpret_cast %subview_57 to offset: [0], sizes: [%47], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_59 = arith.constant 0 : index
              %48 = memref.load %alloca_7[%c0_59] : memref<1xi32>
              %49 = arith.index_cast %48 : i32 to index
              %c0_60 = arith.constant 0 : index
              %dim_61 = memref.dim %reinterpret_cast_58, %c0_60 : memref<?xf64>
              %50 = arith.subi %dim_61, %49 : index
              %c1_62 = arith.constant 1 : index
              %subview_63 = memref.subview %reinterpret_cast_58[%49] [%50] [%c1_62] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_64 = arith.constant 0 : index
              memref.store %41, %subview_63[%c0_64] : memref<?xf64, strided<[?], offset: ?>>
            }
            %c0_30 = arith.constant 0 : index
            %13 = memref.load %alloca_7[%c0_30] : memref<1xi32>
            %c1_i32_31 = arith.constant 1 : i32
            %14 = arith.addi %13, %c1_i32_31 : i32
            %c0_32 = arith.constant 0 : index
            memref.store %14, %alloca_7[%c0_32] : memref<1xi32>
            scf.yield
          }
        }
        %c0_26 = arith.constant 0 : index
        %11 = memref.load %alloca_6[%c0_26] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %12 = arith.addi %11, %c1_i32 : i32
        %c0_27 = arith.constant 0 : index
        memref.store %12, %alloca_6[%c0_27] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_24 = arith.constant 0 : i32
      %c0_25 = arith.constant 0 : index
      memref.store %c0_i32_24, %alloca_6[%c0_25] : memref<1xi32>
      scf.while : () -> () {
        %c0_26 = arith.constant 0 : index
        %11 = memref.load %alloca_6[%c0_26] : memref<1xi32>
        %c0_27 = arith.constant 0 : index
        %12 = memref.load %alloca[%c0_27] : memref<1xi32>
        %13 = arith.cmpi slt, %11, %12 : i32
        scf.condition(%13)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_i32_28 = arith.constant 0 : i32
            %c0_29 = arith.constant 0 : index
            memref.store %c0_i32_28, %alloca_7[%c0_29] : memref<1xi32>
            scf.while : () -> () {
              %c0_30 = arith.constant 0 : index
              %13 = memref.load %alloca_7[%c0_30] : memref<1xi32>
              %c0_31 = arith.constant 0 : index
              %14 = memref.load %alloca_6[%c0_31] : memref<1xi32>
              %15 = arith.cmpi sle, %13, %14 : i32
              scf.condition(%15)
            } do {
              %c0_30 = arith.constant 0 : index
              %13 = memref.load %alloca_6[%c0_30] : memref<1xi32>
              %c0_31 = arith.constant 0 : index
              %14 = memref.load %alloca_7[%c0_31] : memref<1xi32>
              %15 = arith.addi %13, %14 : i32
              %c100_i32 = arith.constant 100 : i32
              %16 = arith.remsi %15, %c100_i32 : i32
              %17 = arith.sitofp %16 : i32 to f64
              %c0_32 = arith.constant 0 : index
              %18 = memref.load %alloca[%c0_32] : memref<1xi32>
              %19 = arith.sitofp %18 : i32 to f64
              %20 = arith.divf %17, %19 : f64
              %c0_33 = arith.constant 0 : index
              %21 = memref.load %alloca_4[%c0_33] : memref<1xmemref<?xf64>>
              %c0_34 = arith.constant 0 : index
              %22 = memref.load %alloca_6[%c0_34] : memref<1xi32>
              %23 = arith.extsi %22 : i32 to i64
              %24 = arith.muli %23, %5 : i64
              %25 = arith.index_cast %24 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_35 = arith.constant 0 : index
              %c0_36 = arith.constant 0 : index
              %dim = memref.dim %21, %c0_36 : memref<?xf64>
              %26 = arith.subi %dim, %25 : index
              %subview = memref.subview %21[%25] [%26] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%26], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_37 = arith.constant 0 : index
              %27 = memref.load %alloca_7[%c0_37] : memref<1xi32>
              %28 = arith.index_cast %27 : i32 to index
              %c0_38 = arith.constant 0 : index
              %dim_39 = memref.dim %reinterpret_cast, %c0_38 : memref<?xf64>
              %29 = arith.subi %dim_39, %28 : index
              %c1_40 = arith.constant 1 : index
              %subview_41 = memref.subview %reinterpret_cast[%28] [%29] [%c1_40] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_42 = arith.constant 0 : index
              memref.store %20, %subview_41[%c0_42] : memref<?xf64, strided<[?], offset: ?>>
              %c0_43 = arith.constant 0 : index
              %30 = memref.load %alloca_7[%c0_43] : memref<1xi32>
              %c1_i32_44 = arith.constant 1 : i32
              %31 = arith.addi %30, %c1_i32_44 : i32
              %c0_45 = arith.constant 0 : index
              memref.store %31, %alloca_7[%c0_45] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c0_28 = arith.constant 0 : index
            %13 = memref.load %alloca_6[%c0_28] : memref<1xi32>
            %c1_i32_29 = arith.constant 1 : i32
            %14 = arith.addi %13, %c1_i32_29 : i32
            %c0_30 = arith.constant 0 : index
            memref.store %14, %alloca_7[%c0_30] : memref<1xi32>
            scf.while : () -> () {
              %c0_31 = arith.constant 0 : index
              %15 = memref.load %alloca_7[%c0_31] : memref<1xi32>
              %c0_32 = arith.constant 0 : index
              %16 = memref.load %alloca[%c0_32] : memref<1xi32>
              %17 = arith.cmpi slt, %15, %16 : i32
              scf.condition(%17)
            } do {
              %c999_i32 = arith.constant 999 : i32
              %c0_i32_31 = arith.constant 0 : i32
              %15 = arith.subi %c0_i32_31, %c999_i32 : i32
              %16 = arith.sitofp %15 : i32 to f64
              %c0_32 = arith.constant 0 : index
              %17 = memref.load %alloca_4[%c0_32] : memref<1xmemref<?xf64>>
              %c0_33 = arith.constant 0 : index
              %18 = memref.load %alloca_6[%c0_33] : memref<1xi32>
              %19 = arith.extsi %18 : i32 to i64
              %20 = arith.muli %19, %5 : i64
              %21 = arith.index_cast %20 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_34 = arith.constant 0 : index
              %c0_35 = arith.constant 0 : index
              %dim = memref.dim %17, %c0_35 : memref<?xf64>
              %22 = arith.subi %dim, %21 : index
              %subview = memref.subview %17[%21] [%22] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%22], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_36 = arith.constant 0 : index
              %23 = memref.load %alloca_7[%c0_36] : memref<1xi32>
              %24 = arith.index_cast %23 : i32 to index
              %c0_37 = arith.constant 0 : index
              %dim_38 = memref.dim %reinterpret_cast, %c0_37 : memref<?xf64>
              %25 = arith.subi %dim_38, %24 : index
              %c1_39 = arith.constant 1 : index
              %subview_40 = memref.subview %reinterpret_cast[%24] [%25] [%c1_39] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_41 = arith.constant 0 : index
              memref.store %16, %subview_40[%c0_41] : memref<?xf64, strided<[?], offset: ?>>
              %c0_42 = arith.constant 0 : index
              %26 = memref.load %alloca_7[%c0_42] : memref<1xi32>
              %c1_i32_43 = arith.constant 1 : i32
              %27 = arith.addi %26, %c1_i32_43 : i32
              %c0_44 = arith.constant 0 : index
              memref.store %27, %alloca_7[%c0_44] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_26 = arith.constant 0 : index
        %11 = memref.load %alloca_6[%c0_26] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %12 = arith.addi %11, %c1_i32 : i32
        %c0_27 = arith.constant 0 : index
        memref.store %12, %alloca_6[%c0_27] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
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
    memref.store %arg3, %alloca_2[%c0_12] : memref<1xf64>
    %c0_13 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_13] : memref<1xmemref<?xf64>>
    %c0_14 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_14] : memref<1xmemref<?xf64>>
    %c0_15 = arith.constant 0 : index
    memref.store %arg6, %alloca_5[%c0_15] : memref<1xmemref<?xf64>>
    %c0_16 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_16] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_17 = arith.constant 0 : index
    %3 = memref.load %alloca[%c0_17] : memref<1xi32>
    %c0_i32_18 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_18 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_19 = arith.constant 0 : index
    %6 = memref.load %alloca_0[%c0_19] : memref<1xi32>
    %c0_i32_20 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_20 : i32
    %8 = arith.extsi %7 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_21 = arith.constant 0 : i32
      %c0_22 = arith.constant 0 : index
      memref.store %c0_i32_21, %alloca_6[%c0_22] : memref<1xi32>
      scf.while : () -> () {
        %c0_23 = arith.constant 0 : index
        %9 = memref.load %alloca_6[%c0_23] : memref<1xi32>
        %c0_24 = arith.constant 0 : index
        %10 = memref.load %alloca[%c0_24] : memref<1xi32>
        %11 = arith.cmpi slt, %9, %10 : i32
        scf.condition(%11)
      } do {
        memref.alloca_scope  {
          %c0_i32_25 = arith.constant 0 : i32
          %c0_26 = arith.constant 0 : index
          memref.store %c0_i32_25, %alloca_7[%c0_26] : memref<1xi32>
          scf.while : () -> () {
            %c0_27 = arith.constant 0 : index
            %11 = memref.load %alloca_7[%c0_27] : memref<1xi32>
            %c0_28 = arith.constant 0 : index
            %12 = memref.load %alloca_0[%c0_28] : memref<1xi32>
            %13 = arith.cmpi slt, %11, %12 : i32
            scf.condition(%13)
          } do {
            memref.alloca_scope  {
              %c0_i32_30 = arith.constant 0 : i32
              %13 = arith.sitofp %c0_i32_30 : i32 to f64
              %c0_31 = arith.constant 0 : index
              memref.store %13, %alloca_9[%c0_31] : memref<1xf64>
              memref.alloca_scope  {
                %c0_i32_88 = arith.constant 0 : i32
                %c0_89 = arith.constant 0 : index
                memref.store %c0_i32_88, %alloca_8[%c0_89] : memref<1xi32>
                scf.while : () -> () {
                  %c0_90 = arith.constant 0 : index
                  %63 = memref.load %alloca_8[%c0_90] : memref<1xi32>
                  %c0_91 = arith.constant 0 : index
                  %64 = memref.load %alloca_6[%c0_91] : memref<1xi32>
                  %65 = arith.cmpi slt, %63, %64 : i32
                  scf.condition(%65)
                } do {
                  memref.alloca_scope  {
                    %c0_93 = arith.constant 0 : index
                    %65 = memref.load %alloca_1[%c0_93] : memref<1xf64>
                    %c0_94 = arith.constant 0 : index
                    %66 = memref.load %alloca_5[%c0_94] : memref<1xmemref<?xf64>>
                    %c0_95 = arith.constant 0 : index
                    %67 = memref.load %alloca_6[%c0_95] : memref<1xi32>
                    %68 = arith.extsi %67 : i32 to i64
                    %69 = arith.muli %68, %8 : i64
                    %70 = arith.index_cast %69 : i64 to index
                    %c1_96 = arith.constant 1 : index
                    %c0_97 = arith.constant 0 : index
                    %c0_98 = arith.constant 0 : index
                    %dim_99 = memref.dim %66, %c0_98 : memref<?xf64>
                    %71 = arith.subi %dim_99, %70 : index
                    %subview_100 = memref.subview %66[%70] [%71] [%c1_96] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_101 = memref.reinterpret_cast %subview_100 to offset: [0], sizes: [%71], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_102 = arith.constant 0 : index
                    %72 = memref.load %alloca_7[%c0_102] : memref<1xi32>
                    %73 = arith.index_cast %72 : i32 to index
                    %c0_103 = arith.constant 0 : index
                    %dim_104 = memref.dim %reinterpret_cast_101, %c0_103 : memref<?xf64>
                    %74 = arith.subi %dim_104, %73 : index
                    %c1_105 = arith.constant 1 : index
                    %subview_106 = memref.subview %reinterpret_cast_101[%73] [%74] [%c1_105] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_107 = arith.constant 0 : index
                    %75 = memref.load %subview_106[%c0_107] : memref<?xf64, strided<[?], offset: ?>>
                    %76 = arith.mulf %65, %75 : f64
                    %c0_108 = arith.constant 0 : index
                    %77 = memref.load %alloca_4[%c0_108] : memref<1xmemref<?xf64>>
                    %c0_109 = arith.constant 0 : index
                    %78 = memref.load %alloca_6[%c0_109] : memref<1xi32>
                    %79 = arith.extsi %78 : i32 to i64
                    %80 = arith.muli %79, %5 : i64
                    %81 = arith.index_cast %80 : i64 to index
                    %c1_110 = arith.constant 1 : index
                    %c0_111 = arith.constant 0 : index
                    %c0_112 = arith.constant 0 : index
                    %dim_113 = memref.dim %77, %c0_112 : memref<?xf64>
                    %82 = arith.subi %dim_113, %81 : index
                    %subview_114 = memref.subview %77[%81] [%82] [%c1_110] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_115 = memref.reinterpret_cast %subview_114 to offset: [0], sizes: [%82], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_116 = arith.constant 0 : index
                    %83 = memref.load %alloca_8[%c0_116] : memref<1xi32>
                    %84 = arith.index_cast %83 : i32 to index
                    %c0_117 = arith.constant 0 : index
                    %dim_118 = memref.dim %reinterpret_cast_115, %c0_117 : memref<?xf64>
                    %85 = arith.subi %dim_118, %84 : index
                    %c1_119 = arith.constant 1 : index
                    %subview_120 = memref.subview %reinterpret_cast_115[%84] [%85] [%c1_119] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_121 = arith.constant 0 : index
                    %86 = memref.load %subview_120[%c0_121] : memref<?xf64, strided<[?], offset: ?>>
                    %87 = arith.mulf %76, %86 : f64
                    %c0_122 = arith.constant 0 : index
                    %88 = memref.load %alloca_3[%c0_122] : memref<1xmemref<?xf64>>
                    %c0_123 = arith.constant 0 : index
                    %89 = memref.load %alloca_8[%c0_123] : memref<1xi32>
                    %90 = arith.extsi %89 : i32 to i64
                    %91 = arith.muli %90, %2 : i64
                    %92 = arith.index_cast %91 : i64 to index
                    %c1_124 = arith.constant 1 : index
                    %c0_125 = arith.constant 0 : index
                    %c0_126 = arith.constant 0 : index
                    %dim_127 = memref.dim %88, %c0_126 : memref<?xf64>
                    %93 = arith.subi %dim_127, %92 : index
                    %subview_128 = memref.subview %88[%92] [%93] [%c1_124] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_129 = memref.reinterpret_cast %subview_128 to offset: [0], sizes: [%93], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_130 = arith.constant 0 : index
                    %94 = memref.load %alloca_7[%c0_130] : memref<1xi32>
                    %95 = arith.index_cast %94 : i32 to index
                    %c0_131 = arith.constant 0 : index
                    %dim_132 = memref.dim %reinterpret_cast_129, %c0_131 : memref<?xf64>
                    %96 = arith.subi %dim_132, %95 : index
                    %c1_133 = arith.constant 1 : index
                    %subview_134 = memref.subview %reinterpret_cast_129[%95] [%96] [%c1_133] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_135 = arith.constant 0 : index
                    %97 = memref.load %subview_134[%c0_135] : memref<?xf64, strided<[?], offset: ?>>
                    %98 = arith.addf %97, %87 : f64
                    %c0_136 = arith.constant 0 : index
                    memref.store %98, %subview_134[%c0_136] : memref<?xf64, strided<[?], offset: ?>>
                    %c0_137 = arith.constant 0 : index
                    %99 = memref.load %alloca_5[%c0_137] : memref<1xmemref<?xf64>>
                    %c0_138 = arith.constant 0 : index
                    %100 = memref.load %alloca_8[%c0_138] : memref<1xi32>
                    %101 = arith.extsi %100 : i32 to i64
                    %102 = arith.muli %101, %8 : i64
                    %103 = arith.index_cast %102 : i64 to index
                    %c1_139 = arith.constant 1 : index
                    %c0_140 = arith.constant 0 : index
                    %c0_141 = arith.constant 0 : index
                    %dim_142 = memref.dim %99, %c0_141 : memref<?xf64>
                    %104 = arith.subi %dim_142, %103 : index
                    %subview_143 = memref.subview %99[%103] [%104] [%c1_139] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_144 = memref.reinterpret_cast %subview_143 to offset: [0], sizes: [%104], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_145 = arith.constant 0 : index
                    %105 = memref.load %alloca_7[%c0_145] : memref<1xi32>
                    %106 = arith.index_cast %105 : i32 to index
                    %c0_146 = arith.constant 0 : index
                    %dim_147 = memref.dim %reinterpret_cast_144, %c0_146 : memref<?xf64>
                    %107 = arith.subi %dim_147, %106 : index
                    %c1_148 = arith.constant 1 : index
                    %subview_149 = memref.subview %reinterpret_cast_144[%106] [%107] [%c1_148] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_150 = arith.constant 0 : index
                    %108 = memref.load %subview_149[%c0_150] : memref<?xf64, strided<[?], offset: ?>>
                    %c0_151 = arith.constant 0 : index
                    %109 = memref.load %alloca_4[%c0_151] : memref<1xmemref<?xf64>>
                    %c0_152 = arith.constant 0 : index
                    %110 = memref.load %alloca_6[%c0_152] : memref<1xi32>
                    %111 = arith.extsi %110 : i32 to i64
                    %112 = arith.muli %111, %5 : i64
                    %113 = arith.index_cast %112 : i64 to index
                    %c1_153 = arith.constant 1 : index
                    %c0_154 = arith.constant 0 : index
                    %c0_155 = arith.constant 0 : index
                    %dim_156 = memref.dim %109, %c0_155 : memref<?xf64>
                    %114 = arith.subi %dim_156, %113 : index
                    %subview_157 = memref.subview %109[%113] [%114] [%c1_153] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_158 = memref.reinterpret_cast %subview_157 to offset: [0], sizes: [%114], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_159 = arith.constant 0 : index
                    %115 = memref.load %alloca_8[%c0_159] : memref<1xi32>
                    %116 = arith.index_cast %115 : i32 to index
                    %c0_160 = arith.constant 0 : index
                    %dim_161 = memref.dim %reinterpret_cast_158, %c0_160 : memref<?xf64>
                    %117 = arith.subi %dim_161, %116 : index
                    %c1_162 = arith.constant 1 : index
                    %subview_163 = memref.subview %reinterpret_cast_158[%116] [%117] [%c1_162] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_164 = arith.constant 0 : index
                    %118 = memref.load %subview_163[%c0_164] : memref<?xf64, strided<[?], offset: ?>>
                    %119 = arith.mulf %108, %118 : f64
                    %c0_165 = arith.constant 0 : index
                    %120 = memref.load %alloca_9[%c0_165] : memref<1xf64>
                    %121 = arith.addf %120, %119 : f64
                    %c0_166 = arith.constant 0 : index
                    memref.store %121, %alloca_9[%c0_166] : memref<1xf64>
                  }
                  %c0_90 = arith.constant 0 : index
                  %63 = memref.load %alloca_8[%c0_90] : memref<1xi32>
                  %c1_i32_91 = arith.constant 1 : i32
                  %64 = arith.addi %63, %c1_i32_91 : i32
                  %c0_92 = arith.constant 0 : index
                  memref.store %64, %alloca_8[%c0_92] : memref<1xi32>
                  scf.yield
                }
              }
              %c0_32 = arith.constant 0 : index
              %14 = memref.load %alloca_2[%c0_32] : memref<1xf64>
              %c0_33 = arith.constant 0 : index
              %15 = memref.load %alloca_3[%c0_33] : memref<1xmemref<?xf64>>
              %c0_34 = arith.constant 0 : index
              %16 = memref.load %alloca_6[%c0_34] : memref<1xi32>
              %17 = arith.extsi %16 : i32 to i64
              %18 = arith.muli %17, %2 : i64
              %19 = arith.index_cast %18 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_35 = arith.constant 0 : index
              %c0_36 = arith.constant 0 : index
              %dim = memref.dim %15, %c0_36 : memref<?xf64>
              %20 = arith.subi %dim, %19 : index
              %subview = memref.subview %15[%19] [%20] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%20], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_37 = arith.constant 0 : index
              %21 = memref.load %alloca_7[%c0_37] : memref<1xi32>
              %22 = arith.index_cast %21 : i32 to index
              %c0_38 = arith.constant 0 : index
              %dim_39 = memref.dim %reinterpret_cast, %c0_38 : memref<?xf64>
              %23 = arith.subi %dim_39, %22 : index
              %c1_40 = arith.constant 1 : index
              %subview_41 = memref.subview %reinterpret_cast[%22] [%23] [%c1_40] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_42 = arith.constant 0 : index
              %24 = memref.load %subview_41[%c0_42] : memref<?xf64, strided<[?], offset: ?>>
              %25 = arith.mulf %14, %24 : f64
              %c0_43 = arith.constant 0 : index
              %26 = memref.load %alloca_1[%c0_43] : memref<1xf64>
              %c0_44 = arith.constant 0 : index
              %27 = memref.load %alloca_5[%c0_44] : memref<1xmemref<?xf64>>
              %c0_45 = arith.constant 0 : index
              %28 = memref.load %alloca_6[%c0_45] : memref<1xi32>
              %29 = arith.extsi %28 : i32 to i64
              %30 = arith.muli %29, %8 : i64
              %31 = arith.index_cast %30 : i64 to index
              %c1_46 = arith.constant 1 : index
              %c0_47 = arith.constant 0 : index
              %c0_48 = arith.constant 0 : index
              %dim_49 = memref.dim %27, %c0_48 : memref<?xf64>
              %32 = arith.subi %dim_49, %31 : index
              %subview_50 = memref.subview %27[%31] [%32] [%c1_46] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_51 = memref.reinterpret_cast %subview_50 to offset: [0], sizes: [%32], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_52 = arith.constant 0 : index
              %33 = memref.load %alloca_7[%c0_52] : memref<1xi32>
              %34 = arith.index_cast %33 : i32 to index
              %c0_53 = arith.constant 0 : index
              %dim_54 = memref.dim %reinterpret_cast_51, %c0_53 : memref<?xf64>
              %35 = arith.subi %dim_54, %34 : index
              %c1_55 = arith.constant 1 : index
              %subview_56 = memref.subview %reinterpret_cast_51[%34] [%35] [%c1_55] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_57 = arith.constant 0 : index
              %36 = memref.load %subview_56[%c0_57] : memref<?xf64, strided<[?], offset: ?>>
              %37 = arith.mulf %26, %36 : f64
              %c0_58 = arith.constant 0 : index
              %38 = memref.load %alloca_4[%c0_58] : memref<1xmemref<?xf64>>
              %c0_59 = arith.constant 0 : index
              %39 = memref.load %alloca_6[%c0_59] : memref<1xi32>
              %40 = arith.extsi %39 : i32 to i64
              %41 = arith.muli %40, %5 : i64
              %42 = arith.index_cast %41 : i64 to index
              %c1_60 = arith.constant 1 : index
              %c0_61 = arith.constant 0 : index
              %c0_62 = arith.constant 0 : index
              %dim_63 = memref.dim %38, %c0_62 : memref<?xf64>
              %43 = arith.subi %dim_63, %42 : index
              %subview_64 = memref.subview %38[%42] [%43] [%c1_60] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_65 = memref.reinterpret_cast %subview_64 to offset: [0], sizes: [%43], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_66 = arith.constant 0 : index
              %44 = memref.load %alloca_6[%c0_66] : memref<1xi32>
              %45 = arith.index_cast %44 : i32 to index
              %c0_67 = arith.constant 0 : index
              %dim_68 = memref.dim %reinterpret_cast_65, %c0_67 : memref<?xf64>
              %46 = arith.subi %dim_68, %45 : index
              %c1_69 = arith.constant 1 : index
              %subview_70 = memref.subview %reinterpret_cast_65[%45] [%46] [%c1_69] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_71 = arith.constant 0 : index
              %47 = memref.load %subview_70[%c0_71] : memref<?xf64, strided<[?], offset: ?>>
              %48 = arith.mulf %37, %47 : f64
              %49 = arith.addf %25, %48 : f64
              %c0_72 = arith.constant 0 : index
              %50 = memref.load %alloca_1[%c0_72] : memref<1xf64>
              %c0_73 = arith.constant 0 : index
              %51 = memref.load %alloca_9[%c0_73] : memref<1xf64>
              %52 = arith.mulf %50, %51 : f64
              %53 = arith.addf %49, %52 : f64
              %c0_74 = arith.constant 0 : index
              %54 = memref.load %alloca_3[%c0_74] : memref<1xmemref<?xf64>>
              %c0_75 = arith.constant 0 : index
              %55 = memref.load %alloca_6[%c0_75] : memref<1xi32>
              %56 = arith.extsi %55 : i32 to i64
              %57 = arith.muli %56, %2 : i64
              %58 = arith.index_cast %57 : i64 to index
              %c1_76 = arith.constant 1 : index
              %c0_77 = arith.constant 0 : index
              %c0_78 = arith.constant 0 : index
              %dim_79 = memref.dim %54, %c0_78 : memref<?xf64>
              %59 = arith.subi %dim_79, %58 : index
              %subview_80 = memref.subview %54[%58] [%59] [%c1_76] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_81 = memref.reinterpret_cast %subview_80 to offset: [0], sizes: [%59], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_82 = arith.constant 0 : index
              %60 = memref.load %alloca_7[%c0_82] : memref<1xi32>
              %61 = arith.index_cast %60 : i32 to index
              %c0_83 = arith.constant 0 : index
              %dim_84 = memref.dim %reinterpret_cast_81, %c0_83 : memref<?xf64>
              %62 = arith.subi %dim_84, %61 : index
              %c1_85 = arith.constant 1 : index
              %subview_86 = memref.subview %reinterpret_cast_81[%61] [%62] [%c1_85] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_87 = arith.constant 0 : index
              memref.store %53, %subview_86[%c0_87] : memref<?xf64, strided<[?], offset: ?>>
            }
            %c0_27 = arith.constant 0 : index
            %11 = memref.load %alloca_7[%c0_27] : memref<1xi32>
            %c1_i32_28 = arith.constant 1 : i32
            %12 = arith.addi %11, %c1_i32_28 : i32
            %c0_29 = arith.constant 0 : index
            memref.store %12, %alloca_7[%c0_29] : memref<1xi32>
            scf.yield
          }
        }
        %c0_23 = arith.constant 0 : index
        %9 = memref.load %alloca_6[%c0_23] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %10 = arith.addi %9, %c1_i32 : i32
        %c0_24 = arith.constant 0 : index
        memref.store %10, %alloca_6[%c0_24] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[67, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.3" : memref<2xi8> = dense<[10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.4" : memref<8xi8> = dense<[37, 48, 46, 50, 108, 102, 32, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.5" : memref<17xi8> = dense<[10, 101, 110, 100, 32, 32, 32, 100, 117, 109, 112, 58, 32, 37, 115, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.6" : memref<23xi8> = dense<[61, 61, 69, 78, 68, 32, 32, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  func.func private @print_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_4 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_4] : memref<1xi32>
    %c0_5 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_5] : memref<1xmemref<?xf64>>
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
    %12 = memref.get_global @".str.2" : memref<2xi8>
    %c0_12 = arith.constant 0 : index
    %c1_13 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %subview_14 = memref.subview %12[%c0_12] [%c2] [%c1_13] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_15 = memref.reinterpret_cast %subview_14 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
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
                %c0_62 = arith.constant 0 : index
                %53 = memref.load %alloca_2[%c0_62] : memref<1xi32>
                %c0_63 = arith.constant 0 : index
                %54 = memref.load %alloca[%c0_63] : memref<1xi32>
                %55 = arith.muli %53, %54 : i32
                %c0_64 = arith.constant 0 : index
                %56 = memref.load %alloca_3[%c0_64] : memref<1xi32>
                %57 = arith.addi %55, %56 : i32
                %c20_i32 = arith.constant 20 : i32
                %58 = arith.remsi %57, %c20_i32 : i32
                %c0_i32_65 = arith.constant 0 : i32
                %59 = arith.cmpi eq, %58, %c0_i32_65 : i32
                scf.if %59 {
                  %60 = llvm.mlir.addressof @stderr : !llvm.ptr
                  %61 = llvm.load %60 : !llvm.ptr -> !llvm.ptr
                  %62 = memref.get_global @".str.3" : memref<2xi8>
                  %c0_66 = arith.constant 0 : index
                  %c1_67 = arith.constant 1 : index
                  %c2_68 = arith.constant 2 : index
                  %subview_69 = memref.subview %62[%c0_66] [%c2_68] [%c1_67] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
                  %reinterpret_cast_70 = memref.reinterpret_cast %subview_69 to offset: [0], sizes: [%c2_68], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                  %intptr_71 = memref.extract_aligned_pointer_as_index %reinterpret_cast_70 : memref<?xi8> -> index
                  %63 = arith.index_castui %intptr_71 : index to i64
                  %64 = llvm.inttoptr %63 : i64 to !llvm.ptr
                  %65 = llvm.call @fprintf(%61, %64) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                }
              }
              %37 = llvm.mlir.addressof @stderr : !llvm.ptr
              %38 = llvm.load %37 : !llvm.ptr -> !llvm.ptr
              %39 = memref.get_global @".str.4" : memref<8xi8>
              %c0_44 = arith.constant 0 : index
              %c1_45 = arith.constant 1 : index
              %c8 = arith.constant 8 : index
              %subview_46 = memref.subview %39[%c0_44] [%c8] [%c1_45] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_47 = memref.reinterpret_cast %subview_46 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %c0_48 = arith.constant 0 : index
              %40 = memref.load %alloca_1[%c0_48] : memref<1xmemref<?xf64>>
              %c0_49 = arith.constant 0 : index
              %41 = memref.load %alloca_2[%c0_49] : memref<1xi32>
              %42 = arith.extsi %41 : i32 to i64
              %43 = arith.muli %42, %2 : i64
              %44 = arith.index_cast %43 : i64 to index
              %c1_50 = arith.constant 1 : index
              %c0_51 = arith.constant 0 : index
              %c0_52 = arith.constant 0 : index
              %dim = memref.dim %40, %c0_52 : memref<?xf64>
              %45 = arith.subi %dim, %44 : index
              %subview_53 = memref.subview %40[%44] [%45] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_54 = memref.reinterpret_cast %subview_53 to offset: [0], sizes: [%45], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_55 = arith.constant 0 : index
              %46 = memref.load %alloca_3[%c0_55] : memref<1xi32>
              %47 = arith.index_cast %46 : i32 to index
              %c0_56 = arith.constant 0 : index
              %dim_57 = memref.dim %reinterpret_cast_54, %c0_56 : memref<?xf64>
              %48 = arith.subi %dim_57, %47 : index
              %c1_58 = arith.constant 1 : index
              %subview_59 = memref.subview %reinterpret_cast_54[%47] [%48] [%c1_58] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_60 = arith.constant 0 : index
              %49 = memref.load %subview_59[%c0_60] : memref<?xf64, strided<[?], offset: ?>>
              %intptr_61 = memref.extract_aligned_pointer_as_index %reinterpret_cast_47 : memref<?xi8> -> index
              %50 = arith.index_castui %intptr_61 : index to i64
              %51 = llvm.inttoptr %50 : i64 to !llvm.ptr
              %52 = llvm.call @fprintf(%38, %51, %49) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
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
    %21 = memref.get_global @".str.2" : memref<2xi8>
    %c0_22 = arith.constant 0 : index
    %c1_23 = arith.constant 1 : index
    %c2_24 = arith.constant 2 : index
    %subview_25 = memref.subview %21[%c0_22] [%c2_24] [%c1_23] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_26 = memref.reinterpret_cast %subview_25 to offset: [0], sizes: [%c2_24], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
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
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %cast = memref.cast %alloca_4 : memref<1xf64> to memref<?xf64>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %cast_6 = memref.cast %alloca_5 : memref<1xf64> to memref<?xf64>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_8 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_9 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_10 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_10] : memref<1xmemref<?xmemref<?xi8>>>
    %c1000_i32 = arith.constant 1000 : i32
    %c0_11 = arith.constant 0 : index
    memref.store %c1000_i32, %alloca_2[%c0_11] : memref<1xi32>
    %c1200_i32 = arith.constant 1200 : i32
    %c0_12 = arith.constant 0 : index
    memref.store %c1200_i32, %alloca_3[%c0_12] : memref<1xi32>
    %c0_13 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_13] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_14 = arith.constant 0 : index
    %2 = memref.load %alloca_3[%c0_14] : memref<1xi32>
    %c0_i32_15 = arith.constant 0 : i32
    %3 = arith.addi %2, %c0_i32_15 : i32
    %4 = arith.muli %1, %3 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %6 = arith.trunci %c8_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xf64>
    %c0_16 = arith.constant 0 : index
    memref.store %8, %alloca_7[%c0_16] : memref<1xmemref<?xf64>>
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
    memref.store %17, %alloca_8[%c0_22] : memref<1xmemref<?xf64>>
    %c0_23 = arith.constant 0 : index
    %18 = memref.load %alloca_2[%c0_23] : memref<1xi32>
    %c0_i32_24 = arith.constant 0 : i32
    %19 = arith.addi %18, %c0_i32_24 : i32
    %c0_25 = arith.constant 0 : index
    %20 = memref.load %alloca_3[%c0_25] : memref<1xi32>
    %c0_i32_26 = arith.constant 0 : i32
    %21 = arith.addi %20, %c0_i32_26 : i32
    %22 = arith.muli %19, %21 : i32
    %23 = arith.extsi %22 : i32 to i64
    %c8_i64_27 = arith.constant 8 : i64
    %24 = arith.trunci %c8_i64_27 : i64 to i32
    %25 = call @polybench_alloc_data(%23, %24) : (i64, i32) -> !llvm.ptr
    %26 = builtin.unrealized_conversion_cast %25 : !llvm.ptr to memref<?xf64>
    %c0_28 = arith.constant 0 : index
    memref.store %26, %alloca_9[%c0_28] : memref<1xmemref<?xf64>>
    %c0_29 = arith.constant 0 : index
    %27 = memref.load %alloca_2[%c0_29] : memref<1xi32>
    %c0_30 = arith.constant 0 : index
    %28 = memref.load %alloca_3[%c0_30] : memref<1xi32>
    %c0_31 = arith.constant 0 : index
    %29 = memref.load %alloca_7[%c0_31] : memref<1xmemref<?xf64>>
    %c0_32 = arith.constant 0 : index
    %30 = memref.load %alloca_8[%c0_32] : memref<1xmemref<?xf64>>
    %c0_33 = arith.constant 0 : index
    %31 = memref.load %alloca_9[%c0_33] : memref<1xmemref<?xf64>>
    call @init_array(%27, %28, %cast, %cast_6, %29, %30, %31) : (i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %32 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %32() : !llvm.ptr, () -> ()
    %c0_34 = arith.constant 0 : index
    %33 = memref.load %alloca_2[%c0_34] : memref<1xi32>
    %c0_35 = arith.constant 0 : index
    %34 = memref.load %alloca_3[%c0_35] : memref<1xi32>
    %c0_36 = arith.constant 0 : index
    %35 = memref.load %alloca_4[%c0_36] : memref<1xf64>
    %c0_37 = arith.constant 0 : index
    %36 = memref.load %alloca_5[%c0_37] : memref<1xf64>
    %c0_38 = arith.constant 0 : index
    %37 = memref.load %alloca_7[%c0_38] : memref<1xmemref<?xf64>>
    %c0_39 = arith.constant 0 : index
    %38 = memref.load %alloca_8[%c0_39] : memref<1xmemref<?xf64>>
    %c0_40 = arith.constant 0 : index
    %39 = memref.load %alloca_9[%c0_40] : memref<1xmemref<?xf64>>
    call @kernel_symm(%33, %34, %35, %36, %37, %38, %39) : (i32, i32, f64, f64, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %40 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %40() : !llvm.ptr, () -> ()
    %41 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %41() : !llvm.ptr, () -> ()
    %c0_41 = arith.constant 0 : index
    %42 = memref.load %alloca_2[%c0_41] : memref<1xi32>
    %c0_42 = arith.constant 0 : index
    %43 = memref.load %alloca_3[%c0_42] : memref<1xi32>
    %c0_43 = arith.constant 0 : index
    %44 = memref.load %alloca_7[%c0_43] : memref<1xmemref<?xf64>>
    call @print_array(%42, %43, %44) : (i32, i32, memref<?xf64>) -> ()
    %c0_44 = arith.constant 0 : index
    %45 = memref.load %alloca_7[%c0_44] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %45 : memref<?xf64> -> index
    %46 = arith.index_castui %intptr : index to i64
    %47 = llvm.inttoptr %46 : i64 to !llvm.ptr
    call @free(%47) : (!llvm.ptr) -> ()
    %c0_45 = arith.constant 0 : index
    %48 = memref.load %alloca_8[%c0_45] : memref<1xmemref<?xf64>>
    %intptr_46 = memref.extract_aligned_pointer_as_index %48 : memref<?xf64> -> index
    %49 = arith.index_castui %intptr_46 : index to i64
    %50 = llvm.inttoptr %49 : i64 to !llvm.ptr
    call @free(%50) : (!llvm.ptr) -> ()
    %c0_47 = arith.constant 0 : index
    %51 = memref.load %alloca_9[%c0_47] : memref<1xmemref<?xf64>>
    %intptr_48 = memref.extract_aligned_pointer_as_index %51 : memref<?xf64> -> index
    %52 = arith.index_castui %intptr_48 : index to i64
    %53 = llvm.inttoptr %52 : i64 to !llvm.ptr
    call @free(%53) : (!llvm.ptr) -> ()
    %c0_i32_49 = arith.constant 0 : i32
    %c0_50 = arith.constant 0 : index
    memref.store %c0_i32_49, %alloca_1[%c0_50] : memref<1xi32>
    %c0_51 = arith.constant 0 : index
    %54 = memref.load %alloca_1[%c0_51] : memref<1xi32>
    return %54 : i32
  }
}

