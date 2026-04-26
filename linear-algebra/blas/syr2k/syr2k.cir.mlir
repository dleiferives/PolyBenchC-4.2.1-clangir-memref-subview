module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/blas/syr2k/syr2k.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
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
    %0 = memref.load %alloca[%c0_14] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_15 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_15] : memref<1xi32>
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
              %17 = arith.muli %15, %16 : i32
              %c1_i32_35 = arith.constant 1 : i32
              %18 = arith.addi %17, %c1_i32_35 : i32
              %c0_36 = arith.constant 0 : index
              %19 = memref.load %alloca[%c0_36] : memref<1xi32>
              %20 = arith.remsi %18, %19 : i32
              %21 = arith.sitofp %20 : i32 to f64
              %c0_37 = arith.constant 0 : index
              %22 = memref.load %alloca[%c0_37] : memref<1xi32>
              %23 = arith.sitofp %22 : i32 to f64
              %24 = arith.divf %21, %23 : f64
              %c0_38 = arith.constant 0 : index
              %25 = memref.load %alloca_4[%c0_38] : memref<1xmemref<?xf64>>
              %c0_39 = arith.constant 0 : index
              %26 = memref.load %alloca_6[%c0_39] : memref<1xi32>
              %27 = arith.extsi %26 : i32 to i64
              %28 = arith.muli %27, %5 : i64
              %29 = arith.index_cast %28 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_40 = arith.constant 0 : index
              %c0_41 = arith.constant 0 : index
              %dim = memref.dim %25, %c0_41 : memref<?xf64>
              %30 = arith.subi %dim, %29 : index
              %subview = memref.subview %25[%29] [%30] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%30], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_42 = arith.constant 0 : index
              %31 = memref.load %alloca_7[%c0_42] : memref<1xi32>
              %32 = arith.index_cast %31 : i32 to index
              %c0_43 = arith.constant 0 : index
              %dim_44 = memref.dim %reinterpret_cast, %c0_43 : memref<?xf64>
              %33 = arith.subi %dim_44, %32 : index
              %c1_45 = arith.constant 1 : index
              %subview_46 = memref.subview %reinterpret_cast[%32] [%33] [%c1_45] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_47 = arith.constant 0 : index
              memref.store %24, %subview_46[%c0_47] : memref<?xf64, strided<[?], offset: ?>>
              %c0_48 = arith.constant 0 : index
              %34 = memref.load %alloca_6[%c0_48] : memref<1xi32>
              %c0_49 = arith.constant 0 : index
              %35 = memref.load %alloca_7[%c0_49] : memref<1xi32>
              %36 = arith.muli %34, %35 : i32
              %c2_i32 = arith.constant 2 : i32
              %37 = arith.addi %36, %c2_i32 : i32
              %c0_50 = arith.constant 0 : index
              %38 = memref.load %alloca_0[%c0_50] : memref<1xi32>
              %39 = arith.remsi %37, %38 : i32
              %40 = arith.sitofp %39 : i32 to f64
              %c0_51 = arith.constant 0 : index
              %41 = memref.load %alloca_0[%c0_51] : memref<1xi32>
              %42 = arith.sitofp %41 : i32 to f64
              %43 = arith.divf %40, %42 : f64
              %c0_52 = arith.constant 0 : index
              %44 = memref.load %alloca_5[%c0_52] : memref<1xmemref<?xf64>>
              %c0_53 = arith.constant 0 : index
              %45 = memref.load %alloca_6[%c0_53] : memref<1xi32>
              %46 = arith.extsi %45 : i32 to i64
              %47 = arith.muli %46, %8 : i64
              %48 = arith.index_cast %47 : i64 to index
              %c1_54 = arith.constant 1 : index
              %c0_55 = arith.constant 0 : index
              %c0_56 = arith.constant 0 : index
              %dim_57 = memref.dim %44, %c0_56 : memref<?xf64>
              %49 = arith.subi %dim_57, %48 : index
              %subview_58 = memref.subview %44[%48] [%49] [%c1_54] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_59 = memref.reinterpret_cast %subview_58 to offset: [0], sizes: [%49], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_60 = arith.constant 0 : index
              %50 = memref.load %alloca_7[%c0_60] : memref<1xi32>
              %51 = arith.index_cast %50 : i32 to index
              %c0_61 = arith.constant 0 : index
              %dim_62 = memref.dim %reinterpret_cast_59, %c0_61 : memref<?xf64>
              %52 = arith.subi %dim_62, %51 : index
              %c1_63 = arith.constant 1 : index
              %subview_64 = memref.subview %reinterpret_cast_59[%51] [%52] [%c1_63] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_65 = arith.constant 0 : index
              memref.store %43, %subview_64[%c0_65] : memref<?xf64, strided<[?], offset: ?>>
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
          %c0_i32_28 = arith.constant 0 : i32
          %c0_29 = arith.constant 0 : index
          memref.store %c0_i32_28, %alloca_7[%c0_29] : memref<1xi32>
          scf.while : () -> () {
            %c0_30 = arith.constant 0 : index
            %13 = memref.load %alloca_7[%c0_30] : memref<1xi32>
            %c0_31 = arith.constant 0 : index
            %14 = memref.load %alloca[%c0_31] : memref<1xi32>
            %15 = arith.cmpi slt, %13, %14 : i32
            scf.condition(%15)
          } do {
            memref.alloca_scope  {
              %c0_33 = arith.constant 0 : index
              %15 = memref.load %alloca_6[%c0_33] : memref<1xi32>
              %c0_34 = arith.constant 0 : index
              %16 = memref.load %alloca_7[%c0_34] : memref<1xi32>
              %17 = arith.muli %15, %16 : i32
              %c3_i32 = arith.constant 3 : i32
              %18 = arith.addi %17, %c3_i32 : i32
              %c0_35 = arith.constant 0 : index
              %19 = memref.load %alloca[%c0_35] : memref<1xi32>
              %20 = arith.remsi %18, %19 : i32
              %21 = arith.sitofp %20 : i32 to f64
              %c0_36 = arith.constant 0 : index
              %22 = memref.load %alloca_0[%c0_36] : memref<1xi32>
              %23 = arith.sitofp %22 : i32 to f64
              %24 = arith.divf %21, %23 : f64
              %c0_37 = arith.constant 0 : index
              %25 = memref.load %alloca_3[%c0_37] : memref<1xmemref<?xf64>>
              %c0_38 = arith.constant 0 : index
              %26 = memref.load %alloca_6[%c0_38] : memref<1xi32>
              %27 = arith.extsi %26 : i32 to i64
              %28 = arith.muli %27, %2 : i64
              %29 = arith.index_cast %28 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_39 = arith.constant 0 : index
              %c0_40 = arith.constant 0 : index
              %dim = memref.dim %25, %c0_40 : memref<?xf64>
              %30 = arith.subi %dim, %29 : index
              %subview = memref.subview %25[%29] [%30] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%30], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_41 = arith.constant 0 : index
              %31 = memref.load %alloca_7[%c0_41] : memref<1xi32>
              %32 = arith.index_cast %31 : i32 to index
              %c0_42 = arith.constant 0 : index
              %dim_43 = memref.dim %reinterpret_cast, %c0_42 : memref<?xf64>
              %33 = arith.subi %dim_43, %32 : index
              %c1_44 = arith.constant 1 : index
              %subview_45 = memref.subview %reinterpret_cast[%32] [%33] [%c1_44] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_46 = arith.constant 0 : index
              memref.store %24, %subview_45[%c0_46] : memref<?xf64, strided<[?], offset: ?>>
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
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
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
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_9 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_9] : memref<1xi32>
    %c0_10 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_10] : memref<1xf64>
    %c0_11 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_11] : memref<1xf64>
    %c0_12 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_12] : memref<1xmemref<?xf64>>
    %c0_13 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_13] : memref<1xmemref<?xf64>>
    %c0_14 = arith.constant 0 : index
    memref.store %arg6, %alloca_5[%c0_14] : memref<1xmemref<?xf64>>
    %c0_15 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_15] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_16 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_16] : memref<1xi32>
    %c0_i32_17 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_17 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_18 = arith.constant 0 : index
    %6 = memref.load %alloca_0[%c0_18] : memref<1xi32>
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
            memref.store %c0_i32_24, %alloca_7[%c0_25] : memref<1xi32>
            scf.while : () -> () {
              %c0_26 = arith.constant 0 : index
              %11 = memref.load %alloca_7[%c0_26] : memref<1xi32>
              %c0_27 = arith.constant 0 : index
              %12 = memref.load %alloca_6[%c0_27] : memref<1xi32>
              %13 = arith.cmpi sle, %11, %12 : i32
              scf.condition(%13)
            } do {
              %c0_26 = arith.constant 0 : index
              %11 = memref.load %alloca_2[%c0_26] : memref<1xf64>
              %c0_27 = arith.constant 0 : index
              %12 = memref.load %alloca_3[%c0_27] : memref<1xmemref<?xf64>>
              %c0_28 = arith.constant 0 : index
              %13 = memref.load %alloca_6[%c0_28] : memref<1xi32>
              %14 = arith.extsi %13 : i32 to i64
              %15 = arith.muli %14, %2 : i64
              %16 = arith.index_cast %15 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_29 = arith.constant 0 : index
              %c0_30 = arith.constant 0 : index
              %dim = memref.dim %12, %c0_30 : memref<?xf64>
              %17 = arith.subi %dim, %16 : index
              %subview = memref.subview %12[%16] [%17] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%17], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_31 = arith.constant 0 : index
              %18 = memref.load %alloca_7[%c0_31] : memref<1xi32>
              %19 = arith.index_cast %18 : i32 to index
              %c0_32 = arith.constant 0 : index
              %dim_33 = memref.dim %reinterpret_cast, %c0_32 : memref<?xf64>
              %20 = arith.subi %dim_33, %19 : index
              %c1_34 = arith.constant 1 : index
              %subview_35 = memref.subview %reinterpret_cast[%19] [%20] [%c1_34] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_36 = arith.constant 0 : index
              %21 = memref.load %subview_35[%c0_36] : memref<?xf64, strided<[?], offset: ?>>
              %22 = arith.mulf %21, %11 : f64
              %c0_37 = arith.constant 0 : index
              memref.store %22, %subview_35[%c0_37] : memref<?xf64, strided<[?], offset: ?>>
              %c0_38 = arith.constant 0 : index
              %23 = memref.load %alloca_7[%c0_38] : memref<1xi32>
              %c1_i32_39 = arith.constant 1 : i32
              %24 = arith.addi %23, %c1_i32_39 : i32
              %c0_40 = arith.constant 0 : index
              memref.store %24, %alloca_7[%c0_40] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c0_i32_24 = arith.constant 0 : i32
            %c0_25 = arith.constant 0 : index
            memref.store %c0_i32_24, %alloca_8[%c0_25] : memref<1xi32>
            scf.while : () -> () {
              %c0_26 = arith.constant 0 : index
              %11 = memref.load %alloca_8[%c0_26] : memref<1xi32>
              %c0_27 = arith.constant 0 : index
              %12 = memref.load %alloca_0[%c0_27] : memref<1xi32>
              %13 = arith.cmpi slt, %11, %12 : i32
              scf.condition(%13)
            } do {
              memref.alloca_scope  {
                %c0_i32_29 = arith.constant 0 : i32
                %c0_30 = arith.constant 0 : index
                memref.store %c0_i32_29, %alloca_7[%c0_30] : memref<1xi32>
                scf.while : () -> () {
                  %c0_31 = arith.constant 0 : index
                  %13 = memref.load %alloca_7[%c0_31] : memref<1xi32>
                  %c0_32 = arith.constant 0 : index
                  %14 = memref.load %alloca_6[%c0_32] : memref<1xi32>
                  %15 = arith.cmpi sle, %13, %14 : i32
                  scf.condition(%15)
                } do {
                  memref.alloca_scope  {
                    %c0_34 = arith.constant 0 : index
                    %15 = memref.load %alloca_4[%c0_34] : memref<1xmemref<?xf64>>
                    %c0_35 = arith.constant 0 : index
                    %16 = memref.load %alloca_7[%c0_35] : memref<1xi32>
                    %17 = arith.extsi %16 : i32 to i64
                    %18 = arith.muli %17, %5 : i64
                    %19 = arith.index_cast %18 : i64 to index
                    %c1 = arith.constant 1 : index
                    %c0_36 = arith.constant 0 : index
                    %c0_37 = arith.constant 0 : index
                    %dim = memref.dim %15, %c0_37 : memref<?xf64>
                    %20 = arith.subi %dim, %19 : index
                    %subview = memref.subview %15[%19] [%20] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%20], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_38 = arith.constant 0 : index
                    %21 = memref.load %alloca_8[%c0_38] : memref<1xi32>
                    %22 = arith.index_cast %21 : i32 to index
                    %c0_39 = arith.constant 0 : index
                    %dim_40 = memref.dim %reinterpret_cast, %c0_39 : memref<?xf64>
                    %23 = arith.subi %dim_40, %22 : index
                    %c1_41 = arith.constant 1 : index
                    %subview_42 = memref.subview %reinterpret_cast[%22] [%23] [%c1_41] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_43 = arith.constant 0 : index
                    %24 = memref.load %subview_42[%c0_43] : memref<?xf64, strided<[?], offset: ?>>
                    %c0_44 = arith.constant 0 : index
                    %25 = memref.load %alloca_1[%c0_44] : memref<1xf64>
                    %26 = arith.mulf %24, %25 : f64
                    %c0_45 = arith.constant 0 : index
                    %27 = memref.load %alloca_5[%c0_45] : memref<1xmemref<?xf64>>
                    %c0_46 = arith.constant 0 : index
                    %28 = memref.load %alloca_6[%c0_46] : memref<1xi32>
                    %29 = arith.extsi %28 : i32 to i64
                    %30 = arith.muli %29, %8 : i64
                    %31 = arith.index_cast %30 : i64 to index
                    %c1_47 = arith.constant 1 : index
                    %c0_48 = arith.constant 0 : index
                    %c0_49 = arith.constant 0 : index
                    %dim_50 = memref.dim %27, %c0_49 : memref<?xf64>
                    %32 = arith.subi %dim_50, %31 : index
                    %subview_51 = memref.subview %27[%31] [%32] [%c1_47] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_52 = memref.reinterpret_cast %subview_51 to offset: [0], sizes: [%32], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_53 = arith.constant 0 : index
                    %33 = memref.load %alloca_8[%c0_53] : memref<1xi32>
                    %34 = arith.index_cast %33 : i32 to index
                    %c0_54 = arith.constant 0 : index
                    %dim_55 = memref.dim %reinterpret_cast_52, %c0_54 : memref<?xf64>
                    %35 = arith.subi %dim_55, %34 : index
                    %c1_56 = arith.constant 1 : index
                    %subview_57 = memref.subview %reinterpret_cast_52[%34] [%35] [%c1_56] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_58 = arith.constant 0 : index
                    %36 = memref.load %subview_57[%c0_58] : memref<?xf64, strided<[?], offset: ?>>
                    %37 = arith.mulf %26, %36 : f64
                    %c0_59 = arith.constant 0 : index
                    %38 = memref.load %alloca_5[%c0_59] : memref<1xmemref<?xf64>>
                    %c0_60 = arith.constant 0 : index
                    %39 = memref.load %alloca_7[%c0_60] : memref<1xi32>
                    %40 = arith.extsi %39 : i32 to i64
                    %41 = arith.muli %40, %8 : i64
                    %42 = arith.index_cast %41 : i64 to index
                    %c1_61 = arith.constant 1 : index
                    %c0_62 = arith.constant 0 : index
                    %c0_63 = arith.constant 0 : index
                    %dim_64 = memref.dim %38, %c0_63 : memref<?xf64>
                    %43 = arith.subi %dim_64, %42 : index
                    %subview_65 = memref.subview %38[%42] [%43] [%c1_61] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_66 = memref.reinterpret_cast %subview_65 to offset: [0], sizes: [%43], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_67 = arith.constant 0 : index
                    %44 = memref.load %alloca_8[%c0_67] : memref<1xi32>
                    %45 = arith.index_cast %44 : i32 to index
                    %c0_68 = arith.constant 0 : index
                    %dim_69 = memref.dim %reinterpret_cast_66, %c0_68 : memref<?xf64>
                    %46 = arith.subi %dim_69, %45 : index
                    %c1_70 = arith.constant 1 : index
                    %subview_71 = memref.subview %reinterpret_cast_66[%45] [%46] [%c1_70] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_72 = arith.constant 0 : index
                    %47 = memref.load %subview_71[%c0_72] : memref<?xf64, strided<[?], offset: ?>>
                    %c0_73 = arith.constant 0 : index
                    %48 = memref.load %alloca_1[%c0_73] : memref<1xf64>
                    %49 = arith.mulf %47, %48 : f64
                    %c0_74 = arith.constant 0 : index
                    %50 = memref.load %alloca_4[%c0_74] : memref<1xmemref<?xf64>>
                    %c0_75 = arith.constant 0 : index
                    %51 = memref.load %alloca_6[%c0_75] : memref<1xi32>
                    %52 = arith.extsi %51 : i32 to i64
                    %53 = arith.muli %52, %5 : i64
                    %54 = arith.index_cast %53 : i64 to index
                    %c1_76 = arith.constant 1 : index
                    %c0_77 = arith.constant 0 : index
                    %c0_78 = arith.constant 0 : index
                    %dim_79 = memref.dim %50, %c0_78 : memref<?xf64>
                    %55 = arith.subi %dim_79, %54 : index
                    %subview_80 = memref.subview %50[%54] [%55] [%c1_76] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_81 = memref.reinterpret_cast %subview_80 to offset: [0], sizes: [%55], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_82 = arith.constant 0 : index
                    %56 = memref.load %alloca_8[%c0_82] : memref<1xi32>
                    %57 = arith.index_cast %56 : i32 to index
                    %c0_83 = arith.constant 0 : index
                    %dim_84 = memref.dim %reinterpret_cast_81, %c0_83 : memref<?xf64>
                    %58 = arith.subi %dim_84, %57 : index
                    %c1_85 = arith.constant 1 : index
                    %subview_86 = memref.subview %reinterpret_cast_81[%57] [%58] [%c1_85] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_87 = arith.constant 0 : index
                    %59 = memref.load %subview_86[%c0_87] : memref<?xf64, strided<[?], offset: ?>>
                    %60 = arith.mulf %49, %59 : f64
                    %61 = arith.addf %37, %60 : f64
                    %c0_88 = arith.constant 0 : index
                    %62 = memref.load %alloca_3[%c0_88] : memref<1xmemref<?xf64>>
                    %c0_89 = arith.constant 0 : index
                    %63 = memref.load %alloca_6[%c0_89] : memref<1xi32>
                    %64 = arith.extsi %63 : i32 to i64
                    %65 = arith.muli %64, %2 : i64
                    %66 = arith.index_cast %65 : i64 to index
                    %c1_90 = arith.constant 1 : index
                    %c0_91 = arith.constant 0 : index
                    %c0_92 = arith.constant 0 : index
                    %dim_93 = memref.dim %62, %c0_92 : memref<?xf64>
                    %67 = arith.subi %dim_93, %66 : index
                    %subview_94 = memref.subview %62[%66] [%67] [%c1_90] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %reinterpret_cast_95 = memref.reinterpret_cast %subview_94 to offset: [0], sizes: [%67], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                    %c0_96 = arith.constant 0 : index
                    %68 = memref.load %alloca_7[%c0_96] : memref<1xi32>
                    %69 = arith.index_cast %68 : i32 to index
                    %c0_97 = arith.constant 0 : index
                    %dim_98 = memref.dim %reinterpret_cast_95, %c0_97 : memref<?xf64>
                    %70 = arith.subi %dim_98, %69 : index
                    %c1_99 = arith.constant 1 : index
                    %subview_100 = memref.subview %reinterpret_cast_95[%69] [%70] [%c1_99] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_101 = arith.constant 0 : index
                    %71 = memref.load %subview_100[%c0_101] : memref<?xf64, strided<[?], offset: ?>>
                    %72 = arith.addf %71, %61 : f64
                    %c0_102 = arith.constant 0 : index
                    memref.store %72, %subview_100[%c0_102] : memref<?xf64, strided<[?], offset: ?>>
                  }
                  %c0_31 = arith.constant 0 : index
                  %13 = memref.load %alloca_7[%c0_31] : memref<1xi32>
                  %c1_i32_32 = arith.constant 1 : i32
                  %14 = arith.addi %13, %c1_i32_32 : i32
                  %c0_33 = arith.constant 0 : index
                  memref.store %14, %alloca_7[%c0_33] : memref<1xi32>
                  scf.yield
                }
              }
              %c0_26 = arith.constant 0 : index
              %11 = memref.load %alloca_8[%c0_26] : memref<1xi32>
              %c1_i32_27 = arith.constant 1 : i32
              %12 = arith.addi %11, %c1_i32_27 : i32
              %c0_28 = arith.constant 0 : index
              memref.store %12, %alloca_8[%c0_28] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[67, 0]> {alignment = 1 : i64}
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
    %c1200_i32 = arith.constant 1200 : i32
    %c0_11 = arith.constant 0 : index
    memref.store %c1200_i32, %alloca_2[%c0_11] : memref<1xi32>
    %c1000_i32 = arith.constant 1000 : i32
    %c0_12 = arith.constant 0 : index
    memref.store %c1000_i32, %alloca_3[%c0_12] : memref<1xi32>
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
    memref.store %8, %alloca_7[%c0_16] : memref<1xmemref<?xf64>>
    %c0_17 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_17] : memref<1xi32>
    %c0_i32_18 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_18 : i32
    %c0_19 = arith.constant 0 : index
    %11 = memref.load %alloca_3[%c0_19] : memref<1xi32>
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
    call @kernel_syr2k(%33, %34, %35, %36, %37, %38, %39) : (i32, i32, f64, f64, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %40 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %40() : !llvm.ptr, () -> ()
    %41 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %41() : !llvm.ptr, () -> ()
    %c0_41 = arith.constant 0 : index
    %42 = memref.load %alloca_2[%c0_41] : memref<1xi32>
    %c0_42 = arith.constant 0 : index
    %43 = memref.load %alloca_7[%c0_42] : memref<1xmemref<?xf64>>
    call @print_array(%42, %43) : (i32, memref<?xf64>) -> ()
    %c0_43 = arith.constant 0 : index
    %44 = memref.load %alloca_7[%c0_43] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %44 : memref<?xf64> -> index
    %45 = arith.index_castui %intptr : index to i64
    %46 = llvm.inttoptr %45 : i64 to !llvm.ptr
    call @free(%46) : (!llvm.ptr) -> ()
    %c0_44 = arith.constant 0 : index
    %47 = memref.load %alloca_8[%c0_44] : memref<1xmemref<?xf64>>
    %intptr_45 = memref.extract_aligned_pointer_as_index %47 : memref<?xf64> -> index
    %48 = arith.index_castui %intptr_45 : index to i64
    %49 = llvm.inttoptr %48 : i64 to !llvm.ptr
    call @free(%49) : (!llvm.ptr) -> ()
    %c0_46 = arith.constant 0 : index
    %50 = memref.load %alloca_9[%c0_46] : memref<1xmemref<?xf64>>
    %intptr_47 = memref.extract_aligned_pointer_as_index %50 : memref<?xf64> -> index
    %51 = arith.index_castui %intptr_47 : index to i64
    %52 = llvm.inttoptr %51 : i64 to !llvm.ptr
    call @free(%52) : (!llvm.ptr) -> ()
    %c0_i32_48 = arith.constant 0 : i32
    %c0_49 = arith.constant 0 : index
    memref.store %c0_i32_48, %alloca_1[%c0_49] : memref<1xi32>
    %c0_50 = arith.constant 0 : index
    %53 = memref.load %alloca_1[%c0_50] : memref<1xi32>
    return %53 : i32
  }
}

