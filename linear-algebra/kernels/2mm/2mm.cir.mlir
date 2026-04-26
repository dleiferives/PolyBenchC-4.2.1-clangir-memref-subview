module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/kernels/2mm/2mm.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_8 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_9 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_10 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_11 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_11] : memref<1xi32>
    %c0_12 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_12] : memref<1xi32>
    %c0_13 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_13] : memref<1xi32>
    %c0_14 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_14] : memref<1xmemref<?xf64>>
    %c0_15 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_15] : memref<1xmemref<?xf64>>
    %c0_16 = arith.constant 0 : index
    memref.store %arg6, %alloca_5[%c0_16] : memref<1xmemref<?xf64>>
    %c0_17 = arith.constant 0 : index
    memref.store %arg7, %alloca_6[%c0_17] : memref<1xmemref<?xf64>>
    %c0_18 = arith.constant 0 : index
    memref.store %arg8, %alloca_7[%c0_18] : memref<1xmemref<?xf64>>
    %c0_19 = arith.constant 0 : index
    memref.store %arg9, %alloca_8[%c0_19] : memref<1xmemref<?xf64>>
    %c0_20 = arith.constant 0 : index
    %0 = memref.load %alloca_1[%c0_20] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_21 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_21] : memref<1xi32>
    %c0_i32_22 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_22 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_23 = arith.constant 0 : index
    %6 = memref.load %alloca_2[%c0_23] : memref<1xi32>
    %c0_i32_24 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_24 : i32
    %8 = arith.extsi %7 : i32 to i64
    %c0_25 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_25] : memref<1xi32>
    %c0_i32_26 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_26 : i32
    %11 = arith.extsi %10 : i32 to i64
    %cst = arith.constant 1.500000e+00 : f64
    %c0_27 = arith.constant 0 : index
    %12 = memref.load %alloca_3[%c0_27] : memref<1xmemref<?xf64>>
    %c0_28 = arith.constant 0 : index
    memref.store %cst, %12[%c0_28] : memref<?xf64>
    %cst_29 = arith.constant 1.200000e+00 : f64
    %c0_30 = arith.constant 0 : index
    %13 = memref.load %alloca_4[%c0_30] : memref<1xmemref<?xf64>>
    %c0_31 = arith.constant 0 : index
    memref.store %cst_29, %13[%c0_31] : memref<?xf64>
    memref.alloca_scope  {
      %c0_i32_32 = arith.constant 0 : i32
      %c0_33 = arith.constant 0 : index
      memref.store %c0_i32_32, %alloca_9[%c0_33] : memref<1xi32>
      scf.while : () -> () {
        %c0_34 = arith.constant 0 : index
        %14 = memref.load %alloca_9[%c0_34] : memref<1xi32>
        %c0_35 = arith.constant 0 : index
        %15 = memref.load %alloca[%c0_35] : memref<1xi32>
        %16 = arith.cmpi slt, %14, %15 : i32
        scf.condition(%16)
      } do {
        memref.alloca_scope  {
          %c0_i32_36 = arith.constant 0 : i32
          %c0_37 = arith.constant 0 : index
          memref.store %c0_i32_36, %alloca_10[%c0_37] : memref<1xi32>
          scf.while : () -> () {
            %c0_38 = arith.constant 0 : index
            %16 = memref.load %alloca_10[%c0_38] : memref<1xi32>
            %c0_39 = arith.constant 0 : index
            %17 = memref.load %alloca_1[%c0_39] : memref<1xi32>
            %18 = arith.cmpi slt, %16, %17 : i32
            scf.condition(%18)
          } do {
            %c0_38 = arith.constant 0 : index
            %16 = memref.load %alloca_9[%c0_38] : memref<1xi32>
            %c0_39 = arith.constant 0 : index
            %17 = memref.load %alloca_10[%c0_39] : memref<1xi32>
            %18 = arith.muli %16, %17 : i32
            %c1_i32_40 = arith.constant 1 : i32
            %19 = arith.addi %18, %c1_i32_40 : i32
            %c0_41 = arith.constant 0 : index
            %20 = memref.load %alloca[%c0_41] : memref<1xi32>
            %21 = arith.remsi %19, %20 : i32
            %22 = arith.sitofp %21 : i32 to f64
            %c0_42 = arith.constant 0 : index
            %23 = memref.load %alloca[%c0_42] : memref<1xi32>
            %24 = arith.sitofp %23 : i32 to f64
            %25 = arith.divf %22, %24 : f64
            %c0_43 = arith.constant 0 : index
            %26 = memref.load %alloca_5[%c0_43] : memref<1xmemref<?xf64>>
            %c0_44 = arith.constant 0 : index
            %27 = memref.load %alloca_9[%c0_44] : memref<1xi32>
            %28 = arith.extsi %27 : i32 to i64
            %29 = arith.muli %28, %2 : i64
            %30 = arith.index_cast %29 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_45 = arith.constant 0 : index
            %c0_46 = arith.constant 0 : index
            %dim = memref.dim %26, %c0_46 : memref<?xf64>
            %31 = arith.subi %dim, %30 : index
            %subview = memref.subview %26[%30] [%31] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%31], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_47 = arith.constant 0 : index
            %32 = memref.load %alloca_10[%c0_47] : memref<1xi32>
            %33 = arith.index_cast %32 : i32 to index
            %c0_48 = arith.constant 0 : index
            %dim_49 = memref.dim %reinterpret_cast, %c0_48 : memref<?xf64>
            %34 = arith.subi %dim_49, %33 : index
            %c1_50 = arith.constant 1 : index
            %subview_51 = memref.subview %reinterpret_cast[%33] [%34] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_52 = arith.constant 0 : index
            memref.store %25, %subview_51[%c0_52] : memref<?xf64, strided<[?], offset: ?>>
            %c0_53 = arith.constant 0 : index
            %35 = memref.load %alloca_10[%c0_53] : memref<1xi32>
            %c1_i32_54 = arith.constant 1 : i32
            %36 = arith.addi %35, %c1_i32_54 : i32
            %c0_55 = arith.constant 0 : index
            memref.store %36, %alloca_10[%c0_55] : memref<1xi32>
            scf.yield
          }
        }
        %c0_34 = arith.constant 0 : index
        %14 = memref.load %alloca_9[%c0_34] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %15 = arith.addi %14, %c1_i32 : i32
        %c0_35 = arith.constant 0 : index
        memref.store %15, %alloca_9[%c0_35] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_32 = arith.constant 0 : i32
      %c0_33 = arith.constant 0 : index
      memref.store %c0_i32_32, %alloca_9[%c0_33] : memref<1xi32>
      scf.while : () -> () {
        %c0_34 = arith.constant 0 : index
        %14 = memref.load %alloca_9[%c0_34] : memref<1xi32>
        %c0_35 = arith.constant 0 : index
        %15 = memref.load %alloca_1[%c0_35] : memref<1xi32>
        %16 = arith.cmpi slt, %14, %15 : i32
        scf.condition(%16)
      } do {
        memref.alloca_scope  {
          %c0_i32_36 = arith.constant 0 : i32
          %c0_37 = arith.constant 0 : index
          memref.store %c0_i32_36, %alloca_10[%c0_37] : memref<1xi32>
          scf.while : () -> () {
            %c0_38 = arith.constant 0 : index
            %16 = memref.load %alloca_10[%c0_38] : memref<1xi32>
            %c0_39 = arith.constant 0 : index
            %17 = memref.load %alloca_0[%c0_39] : memref<1xi32>
            %18 = arith.cmpi slt, %16, %17 : i32
            scf.condition(%18)
          } do {
            %c0_38 = arith.constant 0 : index
            %16 = memref.load %alloca_9[%c0_38] : memref<1xi32>
            %c0_39 = arith.constant 0 : index
            %17 = memref.load %alloca_10[%c0_39] : memref<1xi32>
            %c1_i32_40 = arith.constant 1 : i32
            %18 = arith.addi %17, %c1_i32_40 : i32
            %19 = arith.muli %16, %18 : i32
            %c0_41 = arith.constant 0 : index
            %20 = memref.load %alloca_0[%c0_41] : memref<1xi32>
            %21 = arith.remsi %19, %20 : i32
            %22 = arith.sitofp %21 : i32 to f64
            %c0_42 = arith.constant 0 : index
            %23 = memref.load %alloca_0[%c0_42] : memref<1xi32>
            %24 = arith.sitofp %23 : i32 to f64
            %25 = arith.divf %22, %24 : f64
            %c0_43 = arith.constant 0 : index
            %26 = memref.load %alloca_6[%c0_43] : memref<1xmemref<?xf64>>
            %c0_44 = arith.constant 0 : index
            %27 = memref.load %alloca_9[%c0_44] : memref<1xi32>
            %28 = arith.extsi %27 : i32 to i64
            %29 = arith.muli %28, %5 : i64
            %30 = arith.index_cast %29 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_45 = arith.constant 0 : index
            %c0_46 = arith.constant 0 : index
            %dim = memref.dim %26, %c0_46 : memref<?xf64>
            %31 = arith.subi %dim, %30 : index
            %subview = memref.subview %26[%30] [%31] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%31], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_47 = arith.constant 0 : index
            %32 = memref.load %alloca_10[%c0_47] : memref<1xi32>
            %33 = arith.index_cast %32 : i32 to index
            %c0_48 = arith.constant 0 : index
            %dim_49 = memref.dim %reinterpret_cast, %c0_48 : memref<?xf64>
            %34 = arith.subi %dim_49, %33 : index
            %c1_50 = arith.constant 1 : index
            %subview_51 = memref.subview %reinterpret_cast[%33] [%34] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_52 = arith.constant 0 : index
            memref.store %25, %subview_51[%c0_52] : memref<?xf64, strided<[?], offset: ?>>
            %c0_53 = arith.constant 0 : index
            %35 = memref.load %alloca_10[%c0_53] : memref<1xi32>
            %c1_i32_54 = arith.constant 1 : i32
            %36 = arith.addi %35, %c1_i32_54 : i32
            %c0_55 = arith.constant 0 : index
            memref.store %36, %alloca_10[%c0_55] : memref<1xi32>
            scf.yield
          }
        }
        %c0_34 = arith.constant 0 : index
        %14 = memref.load %alloca_9[%c0_34] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %15 = arith.addi %14, %c1_i32 : i32
        %c0_35 = arith.constant 0 : index
        memref.store %15, %alloca_9[%c0_35] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_32 = arith.constant 0 : i32
      %c0_33 = arith.constant 0 : index
      memref.store %c0_i32_32, %alloca_9[%c0_33] : memref<1xi32>
      scf.while : () -> () {
        %c0_34 = arith.constant 0 : index
        %14 = memref.load %alloca_9[%c0_34] : memref<1xi32>
        %c0_35 = arith.constant 0 : index
        %15 = memref.load %alloca_0[%c0_35] : memref<1xi32>
        %16 = arith.cmpi slt, %14, %15 : i32
        scf.condition(%16)
      } do {
        memref.alloca_scope  {
          %c0_i32_36 = arith.constant 0 : i32
          %c0_37 = arith.constant 0 : index
          memref.store %c0_i32_36, %alloca_10[%c0_37] : memref<1xi32>
          scf.while : () -> () {
            %c0_38 = arith.constant 0 : index
            %16 = memref.load %alloca_10[%c0_38] : memref<1xi32>
            %c0_39 = arith.constant 0 : index
            %17 = memref.load %alloca_2[%c0_39] : memref<1xi32>
            %18 = arith.cmpi slt, %16, %17 : i32
            scf.condition(%18)
          } do {
            %c0_38 = arith.constant 0 : index
            %16 = memref.load %alloca_9[%c0_38] : memref<1xi32>
            %c0_39 = arith.constant 0 : index
            %17 = memref.load %alloca_10[%c0_39] : memref<1xi32>
            %c3_i32 = arith.constant 3 : i32
            %18 = arith.addi %17, %c3_i32 : i32
            %19 = arith.muli %16, %18 : i32
            %c1_i32_40 = arith.constant 1 : i32
            %20 = arith.addi %19, %c1_i32_40 : i32
            %c0_41 = arith.constant 0 : index
            %21 = memref.load %alloca_2[%c0_41] : memref<1xi32>
            %22 = arith.remsi %20, %21 : i32
            %23 = arith.sitofp %22 : i32 to f64
            %c0_42 = arith.constant 0 : index
            %24 = memref.load %alloca_2[%c0_42] : memref<1xi32>
            %25 = arith.sitofp %24 : i32 to f64
            %26 = arith.divf %23, %25 : f64
            %c0_43 = arith.constant 0 : index
            %27 = memref.load %alloca_7[%c0_43] : memref<1xmemref<?xf64>>
            %c0_44 = arith.constant 0 : index
            %28 = memref.load %alloca_9[%c0_44] : memref<1xi32>
            %29 = arith.extsi %28 : i32 to i64
            %30 = arith.muli %29, %8 : i64
            %31 = arith.index_cast %30 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_45 = arith.constant 0 : index
            %c0_46 = arith.constant 0 : index
            %dim = memref.dim %27, %c0_46 : memref<?xf64>
            %32 = arith.subi %dim, %31 : index
            %subview = memref.subview %27[%31] [%32] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%32], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_47 = arith.constant 0 : index
            %33 = memref.load %alloca_10[%c0_47] : memref<1xi32>
            %34 = arith.index_cast %33 : i32 to index
            %c0_48 = arith.constant 0 : index
            %dim_49 = memref.dim %reinterpret_cast, %c0_48 : memref<?xf64>
            %35 = arith.subi %dim_49, %34 : index
            %c1_50 = arith.constant 1 : index
            %subview_51 = memref.subview %reinterpret_cast[%34] [%35] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_52 = arith.constant 0 : index
            memref.store %26, %subview_51[%c0_52] : memref<?xf64, strided<[?], offset: ?>>
            %c0_53 = arith.constant 0 : index
            %36 = memref.load %alloca_10[%c0_53] : memref<1xi32>
            %c1_i32_54 = arith.constant 1 : i32
            %37 = arith.addi %36, %c1_i32_54 : i32
            %c0_55 = arith.constant 0 : index
            memref.store %37, %alloca_10[%c0_55] : memref<1xi32>
            scf.yield
          }
        }
        %c0_34 = arith.constant 0 : index
        %14 = memref.load %alloca_9[%c0_34] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %15 = arith.addi %14, %c1_i32 : i32
        %c0_35 = arith.constant 0 : index
        memref.store %15, %alloca_9[%c0_35] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_32 = arith.constant 0 : i32
      %c0_33 = arith.constant 0 : index
      memref.store %c0_i32_32, %alloca_9[%c0_33] : memref<1xi32>
      scf.while : () -> () {
        %c0_34 = arith.constant 0 : index
        %14 = memref.load %alloca_9[%c0_34] : memref<1xi32>
        %c0_35 = arith.constant 0 : index
        %15 = memref.load %alloca[%c0_35] : memref<1xi32>
        %16 = arith.cmpi slt, %14, %15 : i32
        scf.condition(%16)
      } do {
        memref.alloca_scope  {
          %c0_i32_36 = arith.constant 0 : i32
          %c0_37 = arith.constant 0 : index
          memref.store %c0_i32_36, %alloca_10[%c0_37] : memref<1xi32>
          scf.while : () -> () {
            %c0_38 = arith.constant 0 : index
            %16 = memref.load %alloca_10[%c0_38] : memref<1xi32>
            %c0_39 = arith.constant 0 : index
            %17 = memref.load %alloca_2[%c0_39] : memref<1xi32>
            %18 = arith.cmpi slt, %16, %17 : i32
            scf.condition(%18)
          } do {
            %c0_38 = arith.constant 0 : index
            %16 = memref.load %alloca_9[%c0_38] : memref<1xi32>
            %c0_39 = arith.constant 0 : index
            %17 = memref.load %alloca_10[%c0_39] : memref<1xi32>
            %c2_i32 = arith.constant 2 : i32
            %18 = arith.addi %17, %c2_i32 : i32
            %19 = arith.muli %16, %18 : i32
            %c0_40 = arith.constant 0 : index
            %20 = memref.load %alloca_1[%c0_40] : memref<1xi32>
            %21 = arith.remsi %19, %20 : i32
            %22 = arith.sitofp %21 : i32 to f64
            %c0_41 = arith.constant 0 : index
            %23 = memref.load %alloca_1[%c0_41] : memref<1xi32>
            %24 = arith.sitofp %23 : i32 to f64
            %25 = arith.divf %22, %24 : f64
            %c0_42 = arith.constant 0 : index
            %26 = memref.load %alloca_8[%c0_42] : memref<1xmemref<?xf64>>
            %c0_43 = arith.constant 0 : index
            %27 = memref.load %alloca_9[%c0_43] : memref<1xi32>
            %28 = arith.extsi %27 : i32 to i64
            %29 = arith.muli %28, %11 : i64
            %30 = arith.index_cast %29 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_44 = arith.constant 0 : index
            %c0_45 = arith.constant 0 : index
            %dim = memref.dim %26, %c0_45 : memref<?xf64>
            %31 = arith.subi %dim, %30 : index
            %subview = memref.subview %26[%30] [%31] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%31], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_46 = arith.constant 0 : index
            %32 = memref.load %alloca_10[%c0_46] : memref<1xi32>
            %33 = arith.index_cast %32 : i32 to index
            %c0_47 = arith.constant 0 : index
            %dim_48 = memref.dim %reinterpret_cast, %c0_47 : memref<?xf64>
            %34 = arith.subi %dim_48, %33 : index
            %c1_49 = arith.constant 1 : index
            %subview_50 = memref.subview %reinterpret_cast[%33] [%34] [%c1_49] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_51 = arith.constant 0 : index
            memref.store %25, %subview_50[%c0_51] : memref<?xf64, strided<[?], offset: ?>>
            %c0_52 = arith.constant 0 : index
            %35 = memref.load %alloca_10[%c0_52] : memref<1xi32>
            %c1_i32_53 = arith.constant 1 : i32
            %36 = arith.addi %35, %c1_i32_53 : i32
            %c0_54 = arith.constant 0 : index
            memref.store %36, %alloca_10[%c0_54] : memref<1xi32>
            scf.yield
          }
        }
        %c0_34 = arith.constant 0 : index
        %14 = memref.load %alloca_9[%c0_34] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %15 = arith.addi %14, %c1_i32 : i32
        %c0_35 = arith.constant 0 : index
        memref.store %15, %alloca_9[%c0_35] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_8 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_9 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_10 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_11 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_12 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_13 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_13] : memref<1xi32>
    %c0_14 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_14] : memref<1xi32>
    %c0_15 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_15] : memref<1xi32>
    %c0_16 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_16] : memref<1xf64>
    %c0_17 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_17] : memref<1xf64>
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
    %0 = memref.load %alloca_0[%c0_23] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_24 = arith.constant 0 : index
    %3 = memref.load %alloca_1[%c0_24] : memref<1xi32>
    %c0_i32_25 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_25 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_26 = arith.constant 0 : index
    %6 = memref.load %alloca_0[%c0_26] : memref<1xi32>
    %c0_i32_27 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_27 : i32
    %8 = arith.extsi %7 : i32 to i64
    %c0_28 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_28] : memref<1xi32>
    %c0_i32_29 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_29 : i32
    %11 = arith.extsi %10 : i32 to i64
    %c0_30 = arith.constant 0 : index
    %12 = memref.load %alloca_2[%c0_30] : memref<1xi32>
    %c0_i32_31 = arith.constant 0 : i32
    %13 = arith.addi %12, %c0_i32_31 : i32
    %14 = arith.extsi %13 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_32 = arith.constant 0 : i32
      %c0_33 = arith.constant 0 : index
      memref.store %c0_i32_32, %alloca_10[%c0_33] : memref<1xi32>
      scf.while : () -> () {
        %c0_34 = arith.constant 0 : index
        %15 = memref.load %alloca_10[%c0_34] : memref<1xi32>
        %c0_35 = arith.constant 0 : index
        %16 = memref.load %alloca[%c0_35] : memref<1xi32>
        %17 = arith.cmpi slt, %15, %16 : i32
        scf.condition(%17)
      } do {
        memref.alloca_scope  {
          %c0_i32_36 = arith.constant 0 : i32
          %c0_37 = arith.constant 0 : index
          memref.store %c0_i32_36, %alloca_11[%c0_37] : memref<1xi32>
          scf.while : () -> () {
            %c0_38 = arith.constant 0 : index
            %17 = memref.load %alloca_11[%c0_38] : memref<1xi32>
            %c0_39 = arith.constant 0 : index
            %18 = memref.load %alloca_0[%c0_39] : memref<1xi32>
            %19 = arith.cmpi slt, %17, %18 : i32
            scf.condition(%19)
          } do {
            memref.alloca_scope  {
              %cst = arith.constant 0.000000e+00 : f64
              %c0_41 = arith.constant 0 : index
              %19 = memref.load %alloca_5[%c0_41] : memref<1xmemref<?xf64>>
              %c0_42 = arith.constant 0 : index
              %20 = memref.load %alloca_10[%c0_42] : memref<1xi32>
              %21 = arith.extsi %20 : i32 to i64
              %22 = arith.muli %21, %2 : i64
              %23 = arith.index_cast %22 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_43 = arith.constant 0 : index
              %c0_44 = arith.constant 0 : index
              %dim = memref.dim %19, %c0_44 : memref<?xf64>
              %24 = arith.subi %dim, %23 : index
              %subview = memref.subview %19[%23] [%24] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%24], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_45 = arith.constant 0 : index
              %25 = memref.load %alloca_11[%c0_45] : memref<1xi32>
              %26 = arith.index_cast %25 : i32 to index
              %c0_46 = arith.constant 0 : index
              %dim_47 = memref.dim %reinterpret_cast, %c0_46 : memref<?xf64>
              %27 = arith.subi %dim_47, %26 : index
              %c1_48 = arith.constant 1 : index
              %subview_49 = memref.subview %reinterpret_cast[%26] [%27] [%c1_48] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_50 = arith.constant 0 : index
              memref.store %cst, %subview_49[%c0_50] : memref<?xf64, strided<[?], offset: ?>>
              memref.alloca_scope  {
                %c0_i32_51 = arith.constant 0 : i32
                %c0_52 = arith.constant 0 : index
                memref.store %c0_i32_51, %alloca_12[%c0_52] : memref<1xi32>
                scf.while : () -> () {
                  %c0_53 = arith.constant 0 : index
                  %28 = memref.load %alloca_12[%c0_53] : memref<1xi32>
                  %c0_54 = arith.constant 0 : index
                  %29 = memref.load %alloca_1[%c0_54] : memref<1xi32>
                  %30 = arith.cmpi slt, %28, %29 : i32
                  scf.condition(%30)
                } do {
                  %c0_53 = arith.constant 0 : index
                  %28 = memref.load %alloca_3[%c0_53] : memref<1xf64>
                  %c0_54 = arith.constant 0 : index
                  %29 = memref.load %alloca_6[%c0_54] : memref<1xmemref<?xf64>>
                  %c0_55 = arith.constant 0 : index
                  %30 = memref.load %alloca_10[%c0_55] : memref<1xi32>
                  %31 = arith.extsi %30 : i32 to i64
                  %32 = arith.muli %31, %5 : i64
                  %33 = arith.index_cast %32 : i64 to index
                  %c1_56 = arith.constant 1 : index
                  %c0_57 = arith.constant 0 : index
                  %c0_58 = arith.constant 0 : index
                  %dim_59 = memref.dim %29, %c0_58 : memref<?xf64>
                  %34 = arith.subi %dim_59, %33 : index
                  %subview_60 = memref.subview %29[%33] [%34] [%c1_56] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_61 = memref.reinterpret_cast %subview_60 to offset: [0], sizes: [%34], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_62 = arith.constant 0 : index
                  %35 = memref.load %alloca_12[%c0_62] : memref<1xi32>
                  %36 = arith.index_cast %35 : i32 to index
                  %c0_63 = arith.constant 0 : index
                  %dim_64 = memref.dim %reinterpret_cast_61, %c0_63 : memref<?xf64>
                  %37 = arith.subi %dim_64, %36 : index
                  %c1_65 = arith.constant 1 : index
                  %subview_66 = memref.subview %reinterpret_cast_61[%36] [%37] [%c1_65] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_67 = arith.constant 0 : index
                  %38 = memref.load %subview_66[%c0_67] : memref<?xf64, strided<[?], offset: ?>>
                  %39 = arith.mulf %28, %38 : f64
                  %c0_68 = arith.constant 0 : index
                  %40 = memref.load %alloca_7[%c0_68] : memref<1xmemref<?xf64>>
                  %c0_69 = arith.constant 0 : index
                  %41 = memref.load %alloca_12[%c0_69] : memref<1xi32>
                  %42 = arith.extsi %41 : i32 to i64
                  %43 = arith.muli %42, %8 : i64
                  %44 = arith.index_cast %43 : i64 to index
                  %c1_70 = arith.constant 1 : index
                  %c0_71 = arith.constant 0 : index
                  %c0_72 = arith.constant 0 : index
                  %dim_73 = memref.dim %40, %c0_72 : memref<?xf64>
                  %45 = arith.subi %dim_73, %44 : index
                  %subview_74 = memref.subview %40[%44] [%45] [%c1_70] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_75 = memref.reinterpret_cast %subview_74 to offset: [0], sizes: [%45], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_76 = arith.constant 0 : index
                  %46 = memref.load %alloca_11[%c0_76] : memref<1xi32>
                  %47 = arith.index_cast %46 : i32 to index
                  %c0_77 = arith.constant 0 : index
                  %dim_78 = memref.dim %reinterpret_cast_75, %c0_77 : memref<?xf64>
                  %48 = arith.subi %dim_78, %47 : index
                  %c1_79 = arith.constant 1 : index
                  %subview_80 = memref.subview %reinterpret_cast_75[%47] [%48] [%c1_79] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_81 = arith.constant 0 : index
                  %49 = memref.load %subview_80[%c0_81] : memref<?xf64, strided<[?], offset: ?>>
                  %50 = arith.mulf %39, %49 : f64
                  %c0_82 = arith.constant 0 : index
                  %51 = memref.load %alloca_5[%c0_82] : memref<1xmemref<?xf64>>
                  %c0_83 = arith.constant 0 : index
                  %52 = memref.load %alloca_10[%c0_83] : memref<1xi32>
                  %53 = arith.extsi %52 : i32 to i64
                  %54 = arith.muli %53, %2 : i64
                  %55 = arith.index_cast %54 : i64 to index
                  %c1_84 = arith.constant 1 : index
                  %c0_85 = arith.constant 0 : index
                  %c0_86 = arith.constant 0 : index
                  %dim_87 = memref.dim %51, %c0_86 : memref<?xf64>
                  %56 = arith.subi %dim_87, %55 : index
                  %subview_88 = memref.subview %51[%55] [%56] [%c1_84] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_89 = memref.reinterpret_cast %subview_88 to offset: [0], sizes: [%56], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_90 = arith.constant 0 : index
                  %57 = memref.load %alloca_11[%c0_90] : memref<1xi32>
                  %58 = arith.index_cast %57 : i32 to index
                  %c0_91 = arith.constant 0 : index
                  %dim_92 = memref.dim %reinterpret_cast_89, %c0_91 : memref<?xf64>
                  %59 = arith.subi %dim_92, %58 : index
                  %c1_93 = arith.constant 1 : index
                  %subview_94 = memref.subview %reinterpret_cast_89[%58] [%59] [%c1_93] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_95 = arith.constant 0 : index
                  %60 = memref.load %subview_94[%c0_95] : memref<?xf64, strided<[?], offset: ?>>
                  %61 = arith.addf %60, %50 : f64
                  %c0_96 = arith.constant 0 : index
                  memref.store %61, %subview_94[%c0_96] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_97 = arith.constant 0 : index
                  %62 = memref.load %alloca_12[%c0_97] : memref<1xi32>
                  %c1_i32_98 = arith.constant 1 : i32
                  %63 = arith.addi %62, %c1_i32_98 : i32
                  %c0_99 = arith.constant 0 : index
                  memref.store %63, %alloca_12[%c0_99] : memref<1xi32>
                  scf.yield
                }
              }
            }
            %c0_38 = arith.constant 0 : index
            %17 = memref.load %alloca_11[%c0_38] : memref<1xi32>
            %c1_i32_39 = arith.constant 1 : i32
            %18 = arith.addi %17, %c1_i32_39 : i32
            %c0_40 = arith.constant 0 : index
            memref.store %18, %alloca_11[%c0_40] : memref<1xi32>
            scf.yield
          }
        }
        %c0_34 = arith.constant 0 : index
        %15 = memref.load %alloca_10[%c0_34] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %16 = arith.addi %15, %c1_i32 : i32
        %c0_35 = arith.constant 0 : index
        memref.store %16, %alloca_10[%c0_35] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_32 = arith.constant 0 : i32
      %c0_33 = arith.constant 0 : index
      memref.store %c0_i32_32, %alloca_10[%c0_33] : memref<1xi32>
      scf.while : () -> () {
        %c0_34 = arith.constant 0 : index
        %15 = memref.load %alloca_10[%c0_34] : memref<1xi32>
        %c0_35 = arith.constant 0 : index
        %16 = memref.load %alloca[%c0_35] : memref<1xi32>
        %17 = arith.cmpi slt, %15, %16 : i32
        scf.condition(%17)
      } do {
        memref.alloca_scope  {
          %c0_i32_36 = arith.constant 0 : i32
          %c0_37 = arith.constant 0 : index
          memref.store %c0_i32_36, %alloca_11[%c0_37] : memref<1xi32>
          scf.while : () -> () {
            %c0_38 = arith.constant 0 : index
            %17 = memref.load %alloca_11[%c0_38] : memref<1xi32>
            %c0_39 = arith.constant 0 : index
            %18 = memref.load %alloca_2[%c0_39] : memref<1xi32>
            %19 = arith.cmpi slt, %17, %18 : i32
            scf.condition(%19)
          } do {
            memref.alloca_scope  {
              %c0_41 = arith.constant 0 : index
              %19 = memref.load %alloca_4[%c0_41] : memref<1xf64>
              %c0_42 = arith.constant 0 : index
              %20 = memref.load %alloca_9[%c0_42] : memref<1xmemref<?xf64>>
              %c0_43 = arith.constant 0 : index
              %21 = memref.load %alloca_10[%c0_43] : memref<1xi32>
              %22 = arith.extsi %21 : i32 to i64
              %23 = arith.muli %22, %14 : i64
              %24 = arith.index_cast %23 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_44 = arith.constant 0 : index
              %c0_45 = arith.constant 0 : index
              %dim = memref.dim %20, %c0_45 : memref<?xf64>
              %25 = arith.subi %dim, %24 : index
              %subview = memref.subview %20[%24] [%25] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%25], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_46 = arith.constant 0 : index
              %26 = memref.load %alloca_11[%c0_46] : memref<1xi32>
              %27 = arith.index_cast %26 : i32 to index
              %c0_47 = arith.constant 0 : index
              %dim_48 = memref.dim %reinterpret_cast, %c0_47 : memref<?xf64>
              %28 = arith.subi %dim_48, %27 : index
              %c1_49 = arith.constant 1 : index
              %subview_50 = memref.subview %reinterpret_cast[%27] [%28] [%c1_49] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_51 = arith.constant 0 : index
              %29 = memref.load %subview_50[%c0_51] : memref<?xf64, strided<[?], offset: ?>>
              %30 = arith.mulf %29, %19 : f64
              %c0_52 = arith.constant 0 : index
              memref.store %30, %subview_50[%c0_52] : memref<?xf64, strided<[?], offset: ?>>
              memref.alloca_scope  {
                %c0_i32_53 = arith.constant 0 : i32
                %c0_54 = arith.constant 0 : index
                memref.store %c0_i32_53, %alloca_12[%c0_54] : memref<1xi32>
                scf.while : () -> () {
                  %c0_55 = arith.constant 0 : index
                  %31 = memref.load %alloca_12[%c0_55] : memref<1xi32>
                  %c0_56 = arith.constant 0 : index
                  %32 = memref.load %alloca_0[%c0_56] : memref<1xi32>
                  %33 = arith.cmpi slt, %31, %32 : i32
                  scf.condition(%33)
                } do {
                  %c0_55 = arith.constant 0 : index
                  %31 = memref.load %alloca_5[%c0_55] : memref<1xmemref<?xf64>>
                  %c0_56 = arith.constant 0 : index
                  %32 = memref.load %alloca_10[%c0_56] : memref<1xi32>
                  %33 = arith.extsi %32 : i32 to i64
                  %34 = arith.muli %33, %2 : i64
                  %35 = arith.index_cast %34 : i64 to index
                  %c1_57 = arith.constant 1 : index
                  %c0_58 = arith.constant 0 : index
                  %c0_59 = arith.constant 0 : index
                  %dim_60 = memref.dim %31, %c0_59 : memref<?xf64>
                  %36 = arith.subi %dim_60, %35 : index
                  %subview_61 = memref.subview %31[%35] [%36] [%c1_57] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_62 = memref.reinterpret_cast %subview_61 to offset: [0], sizes: [%36], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_63 = arith.constant 0 : index
                  %37 = memref.load %alloca_12[%c0_63] : memref<1xi32>
                  %38 = arith.index_cast %37 : i32 to index
                  %c0_64 = arith.constant 0 : index
                  %dim_65 = memref.dim %reinterpret_cast_62, %c0_64 : memref<?xf64>
                  %39 = arith.subi %dim_65, %38 : index
                  %c1_66 = arith.constant 1 : index
                  %subview_67 = memref.subview %reinterpret_cast_62[%38] [%39] [%c1_66] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_68 = arith.constant 0 : index
                  %40 = memref.load %subview_67[%c0_68] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_69 = arith.constant 0 : index
                  %41 = memref.load %alloca_8[%c0_69] : memref<1xmemref<?xf64>>
                  %c0_70 = arith.constant 0 : index
                  %42 = memref.load %alloca_12[%c0_70] : memref<1xi32>
                  %43 = arith.extsi %42 : i32 to i64
                  %44 = arith.muli %43, %11 : i64
                  %45 = arith.index_cast %44 : i64 to index
                  %c1_71 = arith.constant 1 : index
                  %c0_72 = arith.constant 0 : index
                  %c0_73 = arith.constant 0 : index
                  %dim_74 = memref.dim %41, %c0_73 : memref<?xf64>
                  %46 = arith.subi %dim_74, %45 : index
                  %subview_75 = memref.subview %41[%45] [%46] [%c1_71] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_76 = memref.reinterpret_cast %subview_75 to offset: [0], sizes: [%46], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_77 = arith.constant 0 : index
                  %47 = memref.load %alloca_11[%c0_77] : memref<1xi32>
                  %48 = arith.index_cast %47 : i32 to index
                  %c0_78 = arith.constant 0 : index
                  %dim_79 = memref.dim %reinterpret_cast_76, %c0_78 : memref<?xf64>
                  %49 = arith.subi %dim_79, %48 : index
                  %c1_80 = arith.constant 1 : index
                  %subview_81 = memref.subview %reinterpret_cast_76[%48] [%49] [%c1_80] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_82 = arith.constant 0 : index
                  %50 = memref.load %subview_81[%c0_82] : memref<?xf64, strided<[?], offset: ?>>
                  %51 = arith.mulf %40, %50 : f64
                  %c0_83 = arith.constant 0 : index
                  %52 = memref.load %alloca_9[%c0_83] : memref<1xmemref<?xf64>>
                  %c0_84 = arith.constant 0 : index
                  %53 = memref.load %alloca_10[%c0_84] : memref<1xi32>
                  %54 = arith.extsi %53 : i32 to i64
                  %55 = arith.muli %54, %14 : i64
                  %56 = arith.index_cast %55 : i64 to index
                  %c1_85 = arith.constant 1 : index
                  %c0_86 = arith.constant 0 : index
                  %c0_87 = arith.constant 0 : index
                  %dim_88 = memref.dim %52, %c0_87 : memref<?xf64>
                  %57 = arith.subi %dim_88, %56 : index
                  %subview_89 = memref.subview %52[%56] [%57] [%c1_85] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_90 = memref.reinterpret_cast %subview_89 to offset: [0], sizes: [%57], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_91 = arith.constant 0 : index
                  %58 = memref.load %alloca_11[%c0_91] : memref<1xi32>
                  %59 = arith.index_cast %58 : i32 to index
                  %c0_92 = arith.constant 0 : index
                  %dim_93 = memref.dim %reinterpret_cast_90, %c0_92 : memref<?xf64>
                  %60 = arith.subi %dim_93, %59 : index
                  %c1_94 = arith.constant 1 : index
                  %subview_95 = memref.subview %reinterpret_cast_90[%59] [%60] [%c1_94] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_96 = arith.constant 0 : index
                  %61 = memref.load %subview_95[%c0_96] : memref<?xf64, strided<[?], offset: ?>>
                  %62 = arith.addf %61, %51 : f64
                  %c0_97 = arith.constant 0 : index
                  memref.store %62, %subview_95[%c0_97] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_98 = arith.constant 0 : index
                  %63 = memref.load %alloca_12[%c0_98] : memref<1xi32>
                  %c1_i32_99 = arith.constant 1 : i32
                  %64 = arith.addi %63, %c1_i32_99 : i32
                  %c0_100 = arith.constant 0 : index
                  memref.store %64, %alloca_12[%c0_100] : memref<1xi32>
                  scf.yield
                }
              }
            }
            %c0_38 = arith.constant 0 : index
            %17 = memref.load %alloca_11[%c0_38] : memref<1xi32>
            %c1_i32_39 = arith.constant 1 : i32
            %18 = arith.addi %17, %c1_i32_39 : i32
            %c0_40 = arith.constant 0 : index
            memref.store %18, %alloca_11[%c0_40] : memref<1xi32>
            scf.yield
          }
        }
        %c0_34 = arith.constant 0 : index
        %15 = memref.load %alloca_10[%c0_34] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %16 = arith.addi %15, %c1_i32 : i32
        %c0_35 = arith.constant 0 : index
        memref.store %16, %alloca_10[%c0_35] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[68, 0]> {alignment = 1 : i64}
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
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %cast = memref.cast %alloca_6 : memref<1xf64> to memref<?xf64>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %cast_8 = memref.cast %alloca_7 : memref<1xf64> to memref<?xf64>
    %alloca_9 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_10 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_11 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_12 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_13 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_14 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_14] : memref<1xmemref<?xmemref<?xi8>>>
    %c800_i32 = arith.constant 800 : i32
    %c0_15 = arith.constant 0 : index
    memref.store %c800_i32, %alloca_2[%c0_15] : memref<1xi32>
    %c900_i32 = arith.constant 900 : i32
    %c0_16 = arith.constant 0 : index
    memref.store %c900_i32, %alloca_3[%c0_16] : memref<1xi32>
    %c1100_i32 = arith.constant 1100 : i32
    %c0_17 = arith.constant 0 : index
    memref.store %c1100_i32, %alloca_4[%c0_17] : memref<1xi32>
    %c1200_i32 = arith.constant 1200 : i32
    %c0_18 = arith.constant 0 : index
    memref.store %c1200_i32, %alloca_5[%c0_18] : memref<1xi32>
    %c0_19 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_19] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_20 = arith.constant 0 : index
    %2 = memref.load %alloca_3[%c0_20] : memref<1xi32>
    %c0_i32_21 = arith.constant 0 : i32
    %3 = arith.addi %2, %c0_i32_21 : i32
    %4 = arith.muli %1, %3 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %6 = arith.trunci %c8_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xf64>
    %c0_22 = arith.constant 0 : index
    memref.store %8, %alloca_9[%c0_22] : memref<1xmemref<?xf64>>
    %c0_23 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_23] : memref<1xi32>
    %c0_i32_24 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_24 : i32
    %c0_25 = arith.constant 0 : index
    %11 = memref.load %alloca_4[%c0_25] : memref<1xi32>
    %c0_i32_26 = arith.constant 0 : i32
    %12 = arith.addi %11, %c0_i32_26 : i32
    %13 = arith.muli %10, %12 : i32
    %14 = arith.extsi %13 : i32 to i64
    %c8_i64_27 = arith.constant 8 : i64
    %15 = arith.trunci %c8_i64_27 : i64 to i32
    %16 = call @polybench_alloc_data(%14, %15) : (i64, i32) -> !llvm.ptr
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.ptr to memref<?xf64>
    %c0_28 = arith.constant 0 : index
    memref.store %17, %alloca_10[%c0_28] : memref<1xmemref<?xf64>>
    %c0_29 = arith.constant 0 : index
    %18 = memref.load %alloca_4[%c0_29] : memref<1xi32>
    %c0_i32_30 = arith.constant 0 : i32
    %19 = arith.addi %18, %c0_i32_30 : i32
    %c0_31 = arith.constant 0 : index
    %20 = memref.load %alloca_3[%c0_31] : memref<1xi32>
    %c0_i32_32 = arith.constant 0 : i32
    %21 = arith.addi %20, %c0_i32_32 : i32
    %22 = arith.muli %19, %21 : i32
    %23 = arith.extsi %22 : i32 to i64
    %c8_i64_33 = arith.constant 8 : i64
    %24 = arith.trunci %c8_i64_33 : i64 to i32
    %25 = call @polybench_alloc_data(%23, %24) : (i64, i32) -> !llvm.ptr
    %26 = builtin.unrealized_conversion_cast %25 : !llvm.ptr to memref<?xf64>
    %c0_34 = arith.constant 0 : index
    memref.store %26, %alloca_11[%c0_34] : memref<1xmemref<?xf64>>
    %c0_35 = arith.constant 0 : index
    %27 = memref.load %alloca_3[%c0_35] : memref<1xi32>
    %c0_i32_36 = arith.constant 0 : i32
    %28 = arith.addi %27, %c0_i32_36 : i32
    %c0_37 = arith.constant 0 : index
    %29 = memref.load %alloca_5[%c0_37] : memref<1xi32>
    %c0_i32_38 = arith.constant 0 : i32
    %30 = arith.addi %29, %c0_i32_38 : i32
    %31 = arith.muli %28, %30 : i32
    %32 = arith.extsi %31 : i32 to i64
    %c8_i64_39 = arith.constant 8 : i64
    %33 = arith.trunci %c8_i64_39 : i64 to i32
    %34 = call @polybench_alloc_data(%32, %33) : (i64, i32) -> !llvm.ptr
    %35 = builtin.unrealized_conversion_cast %34 : !llvm.ptr to memref<?xf64>
    %c0_40 = arith.constant 0 : index
    memref.store %35, %alloca_12[%c0_40] : memref<1xmemref<?xf64>>
    %c0_41 = arith.constant 0 : index
    %36 = memref.load %alloca_2[%c0_41] : memref<1xi32>
    %c0_i32_42 = arith.constant 0 : i32
    %37 = arith.addi %36, %c0_i32_42 : i32
    %c0_43 = arith.constant 0 : index
    %38 = memref.load %alloca_5[%c0_43] : memref<1xi32>
    %c0_i32_44 = arith.constant 0 : i32
    %39 = arith.addi %38, %c0_i32_44 : i32
    %40 = arith.muli %37, %39 : i32
    %41 = arith.extsi %40 : i32 to i64
    %c8_i64_45 = arith.constant 8 : i64
    %42 = arith.trunci %c8_i64_45 : i64 to i32
    %43 = call @polybench_alloc_data(%41, %42) : (i64, i32) -> !llvm.ptr
    %44 = builtin.unrealized_conversion_cast %43 : !llvm.ptr to memref<?xf64>
    %c0_46 = arith.constant 0 : index
    memref.store %44, %alloca_13[%c0_46] : memref<1xmemref<?xf64>>
    %c0_47 = arith.constant 0 : index
    %45 = memref.load %alloca_2[%c0_47] : memref<1xi32>
    %c0_48 = arith.constant 0 : index
    %46 = memref.load %alloca_3[%c0_48] : memref<1xi32>
    %c0_49 = arith.constant 0 : index
    %47 = memref.load %alloca_4[%c0_49] : memref<1xi32>
    %c0_50 = arith.constant 0 : index
    %48 = memref.load %alloca_5[%c0_50] : memref<1xi32>
    %c0_51 = arith.constant 0 : index
    %49 = memref.load %alloca_10[%c0_51] : memref<1xmemref<?xf64>>
    %c0_52 = arith.constant 0 : index
    %50 = memref.load %alloca_11[%c0_52] : memref<1xmemref<?xf64>>
    %c0_53 = arith.constant 0 : index
    %51 = memref.load %alloca_12[%c0_53] : memref<1xmemref<?xf64>>
    %c0_54 = arith.constant 0 : index
    %52 = memref.load %alloca_13[%c0_54] : memref<1xmemref<?xf64>>
    call @init_array(%45, %46, %47, %48, %cast, %cast_8, %49, %50, %51, %52) : (i32, i32, i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %53 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %53() : !llvm.ptr, () -> ()
    %c0_55 = arith.constant 0 : index
    %54 = memref.load %alloca_2[%c0_55] : memref<1xi32>
    %c0_56 = arith.constant 0 : index
    %55 = memref.load %alloca_3[%c0_56] : memref<1xi32>
    %c0_57 = arith.constant 0 : index
    %56 = memref.load %alloca_4[%c0_57] : memref<1xi32>
    %c0_58 = arith.constant 0 : index
    %57 = memref.load %alloca_5[%c0_58] : memref<1xi32>
    %c0_59 = arith.constant 0 : index
    %58 = memref.load %alloca_6[%c0_59] : memref<1xf64>
    %c0_60 = arith.constant 0 : index
    %59 = memref.load %alloca_7[%c0_60] : memref<1xf64>
    %c0_61 = arith.constant 0 : index
    %60 = memref.load %alloca_9[%c0_61] : memref<1xmemref<?xf64>>
    %c0_62 = arith.constant 0 : index
    %61 = memref.load %alloca_10[%c0_62] : memref<1xmemref<?xf64>>
    %c0_63 = arith.constant 0 : index
    %62 = memref.load %alloca_11[%c0_63] : memref<1xmemref<?xf64>>
    %c0_64 = arith.constant 0 : index
    %63 = memref.load %alloca_12[%c0_64] : memref<1xmemref<?xf64>>
    %c0_65 = arith.constant 0 : index
    %64 = memref.load %alloca_13[%c0_65] : memref<1xmemref<?xf64>>
    call @kernel_2mm(%54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64) : (i32, i32, i32, i32, f64, f64, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %65 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %65() : !llvm.ptr, () -> ()
    %66 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %66() : !llvm.ptr, () -> ()
    %c0_66 = arith.constant 0 : index
    %67 = memref.load %alloca_2[%c0_66] : memref<1xi32>
    %c0_67 = arith.constant 0 : index
    %68 = memref.load %alloca_5[%c0_67] : memref<1xi32>
    %c0_68 = arith.constant 0 : index
    %69 = memref.load %alloca_13[%c0_68] : memref<1xmemref<?xf64>>
    call @print_array(%67, %68, %69) : (i32, i32, memref<?xf64>) -> ()
    %c0_69 = arith.constant 0 : index
    %70 = memref.load %alloca_9[%c0_69] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %70 : memref<?xf64> -> index
    %71 = arith.index_castui %intptr : index to i64
    %72 = llvm.inttoptr %71 : i64 to !llvm.ptr
    call @free(%72) : (!llvm.ptr) -> ()
    %c0_70 = arith.constant 0 : index
    %73 = memref.load %alloca_10[%c0_70] : memref<1xmemref<?xf64>>
    %intptr_71 = memref.extract_aligned_pointer_as_index %73 : memref<?xf64> -> index
    %74 = arith.index_castui %intptr_71 : index to i64
    %75 = llvm.inttoptr %74 : i64 to !llvm.ptr
    call @free(%75) : (!llvm.ptr) -> ()
    %c0_72 = arith.constant 0 : index
    %76 = memref.load %alloca_11[%c0_72] : memref<1xmemref<?xf64>>
    %intptr_73 = memref.extract_aligned_pointer_as_index %76 : memref<?xf64> -> index
    %77 = arith.index_castui %intptr_73 : index to i64
    %78 = llvm.inttoptr %77 : i64 to !llvm.ptr
    call @free(%78) : (!llvm.ptr) -> ()
    %c0_74 = arith.constant 0 : index
    %79 = memref.load %alloca_12[%c0_74] : memref<1xmemref<?xf64>>
    %intptr_75 = memref.extract_aligned_pointer_as_index %79 : memref<?xf64> -> index
    %80 = arith.index_castui %intptr_75 : index to i64
    %81 = llvm.inttoptr %80 : i64 to !llvm.ptr
    call @free(%81) : (!llvm.ptr) -> ()
    %c0_76 = arith.constant 0 : index
    %82 = memref.load %alloca_13[%c0_76] : memref<1xmemref<?xf64>>
    %intptr_77 = memref.extract_aligned_pointer_as_index %82 : memref<?xf64> -> index
    %83 = arith.index_castui %intptr_77 : index to i64
    %84 = llvm.inttoptr %83 : i64 to !llvm.ptr
    call @free(%84) : (!llvm.ptr) -> ()
    %c0_i32_78 = arith.constant 0 : i32
    %c0_79 = arith.constant 0 : index
    memref.store %c0_i32_78, %alloca_1[%c0_79] : memref<1xi32>
    %c0_80 = arith.constant 0 : index
    %85 = memref.load %alloca_1[%c0_80] : memref<1xi32>
    return %85 : i32
  }
}

