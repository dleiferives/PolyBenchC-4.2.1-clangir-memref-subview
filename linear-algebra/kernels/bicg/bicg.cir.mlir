module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/kernels/bicg/bicg.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_6 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_6] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_7] : memref<1xmemref<?xf64>>
    %c0_8 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_8] : memref<1xmemref<?xf64>>
    %c0_9 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_10] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_11 = arith.constant 0 : i32
      %c0_12 = arith.constant 0 : index
      memref.store %c0_i32_11, %alloca_4[%c0_12] : memref<1xi32>
      scf.while : () -> () {
        %c0_13 = arith.constant 0 : index
        %3 = memref.load %alloca_4[%c0_13] : memref<1xi32>
        %c0_14 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_14] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        %c0_13 = arith.constant 0 : index
        %3 = memref.load %alloca_4[%c0_13] : memref<1xi32>
        %c0_14 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_14] : memref<1xi32>
        %5 = arith.remsi %3, %4 : i32
        %6 = arith.sitofp %5 : i32 to f64
        %c0_15 = arith.constant 0 : index
        %7 = memref.load %alloca[%c0_15] : memref<1xi32>
        %8 = arith.sitofp %7 : i32 to f64
        %9 = arith.divf %6, %8 : f64
        %c0_16 = arith.constant 0 : index
        %10 = memref.load %alloca_3[%c0_16] : memref<1xmemref<?xf64>>
        %c0_17 = arith.constant 0 : index
        %11 = memref.load %alloca_4[%c0_17] : memref<1xi32>
        %12 = arith.index_cast %11 : i32 to index
        %c0_18 = arith.constant 0 : index
        %dim = memref.dim %10, %c0_18 : memref<?xf64>
        %13 = arith.subi %dim, %12 : index
        %c1 = arith.constant 1 : index
        %subview = memref.subview %10[%12] [%13] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
        %c0_19 = arith.constant 0 : index
        memref.store %9, %subview[%c0_19] : memref<?xf64, strided<[?], offset: ?>>
        %c0_20 = arith.constant 0 : index
        %14 = memref.load %alloca_4[%c0_20] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %15 = arith.addi %14, %c1_i32 : i32
        %c0_21 = arith.constant 0 : index
        memref.store %15, %alloca_4[%c0_21] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_11 = arith.constant 0 : i32
      %c0_12 = arith.constant 0 : index
      memref.store %c0_i32_11, %alloca_4[%c0_12] : memref<1xi32>
      scf.while : () -> () {
        %c0_13 = arith.constant 0 : index
        %3 = memref.load %alloca_4[%c0_13] : memref<1xi32>
        %c0_14 = arith.constant 0 : index
        %4 = memref.load %alloca_0[%c0_14] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %c0_15 = arith.constant 0 : index
          %5 = memref.load %alloca_4[%c0_15] : memref<1xi32>
          %c0_16 = arith.constant 0 : index
          %6 = memref.load %alloca_0[%c0_16] : memref<1xi32>
          %7 = arith.remsi %5, %6 : i32
          %8 = arith.sitofp %7 : i32 to f64
          %c0_17 = arith.constant 0 : index
          %9 = memref.load %alloca_0[%c0_17] : memref<1xi32>
          %10 = arith.sitofp %9 : i32 to f64
          %11 = arith.divf %8, %10 : f64
          %c0_18 = arith.constant 0 : index
          %12 = memref.load %alloca_2[%c0_18] : memref<1xmemref<?xf64>>
          %c0_19 = arith.constant 0 : index
          %13 = memref.load %alloca_4[%c0_19] : memref<1xi32>
          %14 = arith.index_cast %13 : i32 to index
          %c0_20 = arith.constant 0 : index
          %dim = memref.dim %12, %c0_20 : memref<?xf64>
          %15 = arith.subi %dim, %14 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %12[%14] [%15] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_21 = arith.constant 0 : index
          memref.store %11, %subview[%c0_21] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_i32_22 = arith.constant 0 : i32
            %c0_23 = arith.constant 0 : index
            memref.store %c0_i32_22, %alloca_5[%c0_23] : memref<1xi32>
            scf.while : () -> () {
              %c0_24 = arith.constant 0 : index
              %16 = memref.load %alloca_5[%c0_24] : memref<1xi32>
              %c0_25 = arith.constant 0 : index
              %17 = memref.load %alloca[%c0_25] : memref<1xi32>
              %18 = arith.cmpi slt, %16, %17 : i32
              scf.condition(%18)
            } do {
              %c0_24 = arith.constant 0 : index
              %16 = memref.load %alloca_4[%c0_24] : memref<1xi32>
              %c0_25 = arith.constant 0 : index
              %17 = memref.load %alloca_5[%c0_25] : memref<1xi32>
              %c1_i32_26 = arith.constant 1 : i32
              %18 = arith.addi %17, %c1_i32_26 : i32
              %19 = arith.muli %16, %18 : i32
              %c0_27 = arith.constant 0 : index
              %20 = memref.load %alloca_0[%c0_27] : memref<1xi32>
              %21 = arith.remsi %19, %20 : i32
              %22 = arith.sitofp %21 : i32 to f64
              %c0_28 = arith.constant 0 : index
              %23 = memref.load %alloca_0[%c0_28] : memref<1xi32>
              %24 = arith.sitofp %23 : i32 to f64
              %25 = arith.divf %22, %24 : f64
              %c0_29 = arith.constant 0 : index
              %26 = memref.load %alloca_1[%c0_29] : memref<1xmemref<?xf64>>
              %c0_30 = arith.constant 0 : index
              %27 = memref.load %alloca_4[%c0_30] : memref<1xi32>
              %28 = arith.extsi %27 : i32 to i64
              %29 = arith.muli %28, %2 : i64
              %30 = arith.index_cast %29 : i64 to index
              %c1_31 = arith.constant 1 : index
              %c0_32 = arith.constant 0 : index
              %c0_33 = arith.constant 0 : index
              %dim_34 = memref.dim %26, %c0_33 : memref<?xf64>
              %31 = arith.subi %dim_34, %30 : index
              %subview_35 = memref.subview %26[%30] [%31] [%c1_31] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview_35 to offset: [0], sizes: [%31], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_36 = arith.constant 0 : index
              %32 = memref.load %alloca_5[%c0_36] : memref<1xi32>
              %33 = arith.index_cast %32 : i32 to index
              %c0_37 = arith.constant 0 : index
              %dim_38 = memref.dim %reinterpret_cast, %c0_37 : memref<?xf64>
              %34 = arith.subi %dim_38, %33 : index
              %c1_39 = arith.constant 1 : index
              %subview_40 = memref.subview %reinterpret_cast[%33] [%34] [%c1_39] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_41 = arith.constant 0 : index
              memref.store %25, %subview_40[%c0_41] : memref<?xf64, strided<[?], offset: ?>>
              %c0_42 = arith.constant 0 : index
              %35 = memref.load %alloca_5[%c0_42] : memref<1xi32>
              %c1_i32_43 = arith.constant 1 : i32
              %36 = arith.addi %35, %c1_i32_43 : i32
              %c0_44 = arith.constant 0 : index
              memref.store %36, %alloca_5[%c0_44] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_13 = arith.constant 0 : index
        %3 = memref.load %alloca_4[%c0_13] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_14 = arith.constant 0 : index
        memref.store %4, %alloca_4[%c0_14] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
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
    memref.alloca_scope  {
      %c0_i32_15 = arith.constant 0 : i32
      %c0_16 = arith.constant 0 : index
      memref.store %c0_i32_15, %alloca_6[%c0_16] : memref<1xi32>
      scf.while : () -> () {
        %c0_17 = arith.constant 0 : index
        %3 = memref.load %alloca_6[%c0_17] : memref<1xi32>
        %c0_18 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_18] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        %c0_i32_17 = arith.constant 0 : i32
        %3 = arith.sitofp %c0_i32_17 : i32 to f64
        %c0_18 = arith.constant 0 : index
        %4 = memref.load %alloca_2[%c0_18] : memref<1xmemref<?xf64>>
        %c0_19 = arith.constant 0 : index
        %5 = memref.load %alloca_6[%c0_19] : memref<1xi32>
        %6 = arith.index_cast %5 : i32 to index
        %c0_20 = arith.constant 0 : index
        %dim = memref.dim %4, %c0_20 : memref<?xf64>
        %7 = arith.subi %dim, %6 : index
        %c1 = arith.constant 1 : index
        %subview = memref.subview %4[%6] [%7] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
        %c0_21 = arith.constant 0 : index
        memref.store %3, %subview[%c0_21] : memref<?xf64, strided<[?], offset: ?>>
        %c0_22 = arith.constant 0 : index
        %8 = memref.load %alloca_6[%c0_22] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %9 = arith.addi %8, %c1_i32 : i32
        %c0_23 = arith.constant 0 : index
        memref.store %9, %alloca_6[%c0_23] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_15 = arith.constant 0 : i32
      %c0_16 = arith.constant 0 : index
      memref.store %c0_i32_15, %alloca_6[%c0_16] : memref<1xi32>
      scf.while : () -> () {
        %c0_17 = arith.constant 0 : index
        %3 = memref.load %alloca_6[%c0_17] : memref<1xi32>
        %c0_18 = arith.constant 0 : index
        %4 = memref.load %alloca_0[%c0_18] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %cst = arith.constant 0.000000e+00 : f64
          %c0_19 = arith.constant 0 : index
          %5 = memref.load %alloca_3[%c0_19] : memref<1xmemref<?xf64>>
          %c0_20 = arith.constant 0 : index
          %6 = memref.load %alloca_6[%c0_20] : memref<1xi32>
          %7 = arith.index_cast %6 : i32 to index
          %c0_21 = arith.constant 0 : index
          %dim = memref.dim %5, %c0_21 : memref<?xf64>
          %8 = arith.subi %dim, %7 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %5[%7] [%8] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_22 = arith.constant 0 : index
          memref.store %cst, %subview[%c0_22] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_i32_23 = arith.constant 0 : i32
            %c0_24 = arith.constant 0 : index
            memref.store %c0_i32_23, %alloca_7[%c0_24] : memref<1xi32>
            scf.while : () -> () {
              %c0_25 = arith.constant 0 : index
              %9 = memref.load %alloca_7[%c0_25] : memref<1xi32>
              %c0_26 = arith.constant 0 : index
              %10 = memref.load %alloca[%c0_26] : memref<1xi32>
              %11 = arith.cmpi slt, %9, %10 : i32
              scf.condition(%11)
            } do {
              memref.alloca_scope  {
                %c0_28 = arith.constant 0 : index
                %11 = memref.load %alloca_2[%c0_28] : memref<1xmemref<?xf64>>
                %c0_29 = arith.constant 0 : index
                %12 = memref.load %alloca_7[%c0_29] : memref<1xi32>
                %13 = arith.index_cast %12 : i32 to index
                %c0_30 = arith.constant 0 : index
                %dim_31 = memref.dim %11, %c0_30 : memref<?xf64>
                %14 = arith.subi %dim_31, %13 : index
                %c1_32 = arith.constant 1 : index
                %subview_33 = memref.subview %11[%13] [%14] [%c1_32] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_34 = arith.constant 0 : index
                %15 = memref.load %subview_33[%c0_34] : memref<?xf64, strided<[?], offset: ?>>
                %c0_35 = arith.constant 0 : index
                %16 = memref.load %alloca_5[%c0_35] : memref<1xmemref<?xf64>>
                %c0_36 = arith.constant 0 : index
                %17 = memref.load %alloca_6[%c0_36] : memref<1xi32>
                %18 = arith.index_cast %17 : i32 to index
                %c0_37 = arith.constant 0 : index
                %dim_38 = memref.dim %16, %c0_37 : memref<?xf64>
                %19 = arith.subi %dim_38, %18 : index
                %c1_39 = arith.constant 1 : index
                %subview_40 = memref.subview %16[%18] [%19] [%c1_39] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_41 = arith.constant 0 : index
                %20 = memref.load %subview_40[%c0_41] : memref<?xf64, strided<[?], offset: ?>>
                %c0_42 = arith.constant 0 : index
                %21 = memref.load %alloca_1[%c0_42] : memref<1xmemref<?xf64>>
                %c0_43 = arith.constant 0 : index
                %22 = memref.load %alloca_6[%c0_43] : memref<1xi32>
                %23 = arith.extsi %22 : i32 to i64
                %24 = arith.muli %23, %2 : i64
                %25 = arith.index_cast %24 : i64 to index
                %c1_44 = arith.constant 1 : index
                %c0_45 = arith.constant 0 : index
                %c0_46 = arith.constant 0 : index
                %dim_47 = memref.dim %21, %c0_46 : memref<?xf64>
                %26 = arith.subi %dim_47, %25 : index
                %subview_48 = memref.subview %21[%25] [%26] [%c1_44] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview_48 to offset: [0], sizes: [%26], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_49 = arith.constant 0 : index
                %27 = memref.load %alloca_7[%c0_49] : memref<1xi32>
                %28 = arith.index_cast %27 : i32 to index
                %c0_50 = arith.constant 0 : index
                %dim_51 = memref.dim %reinterpret_cast, %c0_50 : memref<?xf64>
                %29 = arith.subi %dim_51, %28 : index
                %c1_52 = arith.constant 1 : index
                %subview_53 = memref.subview %reinterpret_cast[%28] [%29] [%c1_52] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_54 = arith.constant 0 : index
                %30 = memref.load %subview_53[%c0_54] : memref<?xf64, strided<[?], offset: ?>>
                %31 = arith.mulf %20, %30 : f64
                %32 = arith.addf %15, %31 : f64
                %c0_55 = arith.constant 0 : index
                %33 = memref.load %alloca_2[%c0_55] : memref<1xmemref<?xf64>>
                %c0_56 = arith.constant 0 : index
                %34 = memref.load %alloca_7[%c0_56] : memref<1xi32>
                %35 = arith.index_cast %34 : i32 to index
                %c0_57 = arith.constant 0 : index
                %dim_58 = memref.dim %33, %c0_57 : memref<?xf64>
                %36 = arith.subi %dim_58, %35 : index
                %c1_59 = arith.constant 1 : index
                %subview_60 = memref.subview %33[%35] [%36] [%c1_59] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_61 = arith.constant 0 : index
                memref.store %32, %subview_60[%c0_61] : memref<?xf64, strided<[?], offset: ?>>
                %c0_62 = arith.constant 0 : index
                %37 = memref.load %alloca_3[%c0_62] : memref<1xmemref<?xf64>>
                %c0_63 = arith.constant 0 : index
                %38 = memref.load %alloca_6[%c0_63] : memref<1xi32>
                %39 = arith.index_cast %38 : i32 to index
                %c0_64 = arith.constant 0 : index
                %dim_65 = memref.dim %37, %c0_64 : memref<?xf64>
                %40 = arith.subi %dim_65, %39 : index
                %c1_66 = arith.constant 1 : index
                %subview_67 = memref.subview %37[%39] [%40] [%c1_66] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_68 = arith.constant 0 : index
                %41 = memref.load %subview_67[%c0_68] : memref<?xf64, strided<[?], offset: ?>>
                %c0_69 = arith.constant 0 : index
                %42 = memref.load %alloca_1[%c0_69] : memref<1xmemref<?xf64>>
                %c0_70 = arith.constant 0 : index
                %43 = memref.load %alloca_6[%c0_70] : memref<1xi32>
                %44 = arith.extsi %43 : i32 to i64
                %45 = arith.muli %44, %2 : i64
                %46 = arith.index_cast %45 : i64 to index
                %c1_71 = arith.constant 1 : index
                %c0_72 = arith.constant 0 : index
                %c0_73 = arith.constant 0 : index
                %dim_74 = memref.dim %42, %c0_73 : memref<?xf64>
                %47 = arith.subi %dim_74, %46 : index
                %subview_75 = memref.subview %42[%46] [%47] [%c1_71] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_76 = memref.reinterpret_cast %subview_75 to offset: [0], sizes: [%47], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_77 = arith.constant 0 : index
                %48 = memref.load %alloca_7[%c0_77] : memref<1xi32>
                %49 = arith.index_cast %48 : i32 to index
                %c0_78 = arith.constant 0 : index
                %dim_79 = memref.dim %reinterpret_cast_76, %c0_78 : memref<?xf64>
                %50 = arith.subi %dim_79, %49 : index
                %c1_80 = arith.constant 1 : index
                %subview_81 = memref.subview %reinterpret_cast_76[%49] [%50] [%c1_80] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_82 = arith.constant 0 : index
                %51 = memref.load %subview_81[%c0_82] : memref<?xf64, strided<[?], offset: ?>>
                %c0_83 = arith.constant 0 : index
                %52 = memref.load %alloca_4[%c0_83] : memref<1xmemref<?xf64>>
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
                %57 = arith.mulf %51, %56 : f64
                %58 = arith.addf %41, %57 : f64
                %c0_90 = arith.constant 0 : index
                %59 = memref.load %alloca_3[%c0_90] : memref<1xmemref<?xf64>>
                %c0_91 = arith.constant 0 : index
                %60 = memref.load %alloca_6[%c0_91] : memref<1xi32>
                %61 = arith.index_cast %60 : i32 to index
                %c0_92 = arith.constant 0 : index
                %dim_93 = memref.dim %59, %c0_92 : memref<?xf64>
                %62 = arith.subi %dim_93, %61 : index
                %c1_94 = arith.constant 1 : index
                %subview_95 = memref.subview %59[%61] [%62] [%c1_94] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_96 = arith.constant 0 : index
                memref.store %58, %subview_95[%c0_96] : memref<?xf64, strided<[?], offset: ?>>
              }
              %c0_25 = arith.constant 0 : index
              %9 = memref.load %alloca_7[%c0_25] : memref<1xi32>
              %c1_i32_26 = arith.constant 1 : i32
              %10 = arith.addi %9, %c1_i32_26 : i32
              %c0_27 = arith.constant 0 : index
              memref.store %10, %alloca_7[%c0_27] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_17 = arith.constant 0 : index
        %3 = memref.load %alloca_6[%c0_17] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_18 = arith.constant 0 : index
        memref.store %4, %alloca_6[%c0_18] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[115, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.3" : memref<2xi8> = dense<[10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.4" : memref<8xi8> = dense<[37, 48, 46, 50, 108, 102, 32, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.5" : memref<17xi8> = dense<[10, 101, 110, 100, 32, 32, 32, 100, 117, 109, 112, 58, 32, 37, 115, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.6" : memref<2xi8> = dense<[113, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.7" : memref<23xi8> = dense<[61, 61, 69, 78, 68, 32, 32, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  func.func private @print_array(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_4 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_4] : memref<1xi32>
    %c0_5 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_5] : memref<1xmemref<?xf64>>
    %c0_6 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_6] : memref<1xmemref<?xf64>>
    %0 = llvm.mlir.addressof @stderr : !llvm.ptr
    %1 = llvm.load %0 : !llvm.ptr -> !llvm.ptr
    %2 = memref.get_global @".str" : memref<23xi8>
    %c0_7 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c23 = arith.constant 23 : index
    %subview = memref.subview %2[%c0_7] [%c23] [%c1] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%c23], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr = memref.extract_aligned_pointer_as_index %reinterpret_cast : memref<?xi8> -> index
    %3 = arith.index_castui %intptr : index to i64
    %4 = llvm.inttoptr %3 : i64 to !llvm.ptr
    %5 = llvm.call @fprintf(%1, %4) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %6 = llvm.mlir.addressof @stderr : !llvm.ptr
    %7 = llvm.load %6 : !llvm.ptr -> !llvm.ptr
    %8 = memref.get_global @".str.1" : memref<15xi8>
    %c0_8 = arith.constant 0 : index
    %c1_9 = arith.constant 1 : index
    %c15 = arith.constant 15 : index
    %subview_10 = memref.subview %8[%c0_8] [%c15] [%c1_9] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_11 = memref.reinterpret_cast %subview_10 to offset: [0], sizes: [%c15], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %9 = memref.get_global @".str.2" : memref<2xi8>
    %c0_12 = arith.constant 0 : index
    %c1_13 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %subview_14 = memref.subview %9[%c0_12] [%c2] [%c1_13] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_15 = memref.reinterpret_cast %subview_14 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_16 = memref.extract_aligned_pointer_as_index %reinterpret_cast_11 : memref<?xi8> -> index
    %10 = arith.index_castui %intptr_16 : index to i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr
    %intptr_17 = memref.extract_aligned_pointer_as_index %reinterpret_cast_15 : memref<?xi8> -> index
    %12 = arith.index_castui %intptr_17 : index to i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr
    %14 = llvm.call @fprintf(%7, %11, %13) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32 = arith.constant 0 : i32
      %c0_59 = arith.constant 0 : index
      memref.store %c0_i32, %alloca_3[%c0_59] : memref<1xi32>
      scf.while : () -> () {
        %c0_60 = arith.constant 0 : index
        %48 = memref.load %alloca_3[%c0_60] : memref<1xi32>
        %c0_61 = arith.constant 0 : index
        %49 = memref.load %alloca[%c0_61] : memref<1xi32>
        %50 = arith.cmpi slt, %48, %49 : i32
        scf.condition(%50)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_73 = arith.constant 0 : index
            %61 = memref.load %alloca_3[%c0_73] : memref<1xi32>
            %c20_i32 = arith.constant 20 : i32
            %62 = arith.remsi %61, %c20_i32 : i32
            %c0_i32_74 = arith.constant 0 : i32
            %63 = arith.cmpi eq, %62, %c0_i32_74 : i32
            scf.if %63 {
              %64 = llvm.mlir.addressof @stderr : !llvm.ptr
              %65 = llvm.load %64 : !llvm.ptr -> !llvm.ptr
              %66 = memref.get_global @".str.3" : memref<2xi8>
              %c0_75 = arith.constant 0 : index
              %c1_76 = arith.constant 1 : index
              %c2_77 = arith.constant 2 : index
              %subview_78 = memref.subview %66[%c0_75] [%c2_77] [%c1_76] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_79 = memref.reinterpret_cast %subview_78 to offset: [0], sizes: [%c2_77], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %intptr_80 = memref.extract_aligned_pointer_as_index %reinterpret_cast_79 : memref<?xi8> -> index
              %67 = arith.index_castui %intptr_80 : index to i64
              %68 = llvm.inttoptr %67 : i64 to !llvm.ptr
              %69 = llvm.call @fprintf(%65, %68) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
            }
          }
          %50 = llvm.mlir.addressof @stderr : !llvm.ptr
          %51 = llvm.load %50 : !llvm.ptr -> !llvm.ptr
          %52 = memref.get_global @".str.4" : memref<8xi8>
          %c0_62 = arith.constant 0 : index
          %c1_63 = arith.constant 1 : index
          %c8 = arith.constant 8 : index
          %subview_64 = memref.subview %52[%c0_62] [%c8] [%c1_63] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
          %reinterpret_cast_65 = memref.reinterpret_cast %subview_64 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
          %c0_66 = arith.constant 0 : index
          %53 = memref.load %alloca_1[%c0_66] : memref<1xmemref<?xf64>>
          %c0_67 = arith.constant 0 : index
          %54 = memref.load %alloca_3[%c0_67] : memref<1xi32>
          %55 = arith.index_cast %54 : i32 to index
          %c0_68 = arith.constant 0 : index
          %dim = memref.dim %53, %c0_68 : memref<?xf64>
          %56 = arith.subi %dim, %55 : index
          %c1_69 = arith.constant 1 : index
          %subview_70 = memref.subview %53[%55] [%56] [%c1_69] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_71 = arith.constant 0 : index
          %57 = memref.load %subview_70[%c0_71] : memref<?xf64, strided<[?], offset: ?>>
          %intptr_72 = memref.extract_aligned_pointer_as_index %reinterpret_cast_65 : memref<?xi8> -> index
          %58 = arith.index_castui %intptr_72 : index to i64
          %59 = llvm.inttoptr %58 : i64 to !llvm.ptr
          %60 = llvm.call @fprintf(%51, %59, %57) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
        }
        %c0_60 = arith.constant 0 : index
        %48 = memref.load %alloca_3[%c0_60] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %49 = arith.addi %48, %c1_i32 : i32
        %c0_61 = arith.constant 0 : index
        memref.store %49, %alloca_3[%c0_61] : memref<1xi32>
        scf.yield
      }
    }
    %15 = llvm.mlir.addressof @stderr : !llvm.ptr
    %16 = llvm.load %15 : !llvm.ptr -> !llvm.ptr
    %17 = memref.get_global @".str.5" : memref<17xi8>
    %c0_18 = arith.constant 0 : index
    %c1_19 = arith.constant 1 : index
    %c17 = arith.constant 17 : index
    %subview_20 = memref.subview %17[%c0_18] [%c17] [%c1_19] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_21 = memref.reinterpret_cast %subview_20 to offset: [0], sizes: [%c17], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %18 = memref.get_global @".str.2" : memref<2xi8>
    %c0_22 = arith.constant 0 : index
    %c1_23 = arith.constant 1 : index
    %c2_24 = arith.constant 2 : index
    %subview_25 = memref.subview %18[%c0_22] [%c2_24] [%c1_23] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_26 = memref.reinterpret_cast %subview_25 to offset: [0], sizes: [%c2_24], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_27 = memref.extract_aligned_pointer_as_index %reinterpret_cast_21 : memref<?xi8> -> index
    %19 = arith.index_castui %intptr_27 : index to i64
    %20 = llvm.inttoptr %19 : i64 to !llvm.ptr
    %intptr_28 = memref.extract_aligned_pointer_as_index %reinterpret_cast_26 : memref<?xi8> -> index
    %21 = arith.index_castui %intptr_28 : index to i64
    %22 = llvm.inttoptr %21 : i64 to !llvm.ptr
    %23 = llvm.call @fprintf(%16, %20, %22) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %24 = llvm.mlir.addressof @stderr : !llvm.ptr
    %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
    %26 = memref.get_global @".str.1" : memref<15xi8>
    %c0_29 = arith.constant 0 : index
    %c1_30 = arith.constant 1 : index
    %c15_31 = arith.constant 15 : index
    %subview_32 = memref.subview %26[%c0_29] [%c15_31] [%c1_30] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_33 = memref.reinterpret_cast %subview_32 to offset: [0], sizes: [%c15_31], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %27 = memref.get_global @".str.6" : memref<2xi8>
    %c0_34 = arith.constant 0 : index
    %c1_35 = arith.constant 1 : index
    %c2_36 = arith.constant 2 : index
    %subview_37 = memref.subview %27[%c0_34] [%c2_36] [%c1_35] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_38 = memref.reinterpret_cast %subview_37 to offset: [0], sizes: [%c2_36], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_39 = memref.extract_aligned_pointer_as_index %reinterpret_cast_33 : memref<?xi8> -> index
    %28 = arith.index_castui %intptr_39 : index to i64
    %29 = llvm.inttoptr %28 : i64 to !llvm.ptr
    %intptr_40 = memref.extract_aligned_pointer_as_index %reinterpret_cast_38 : memref<?xi8> -> index
    %30 = arith.index_castui %intptr_40 : index to i64
    %31 = llvm.inttoptr %30 : i64 to !llvm.ptr
    %32 = llvm.call @fprintf(%25, %29, %31) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32 = arith.constant 0 : i32
      %c0_59 = arith.constant 0 : index
      memref.store %c0_i32, %alloca_3[%c0_59] : memref<1xi32>
      scf.while : () -> () {
        %c0_60 = arith.constant 0 : index
        %48 = memref.load %alloca_3[%c0_60] : memref<1xi32>
        %c0_61 = arith.constant 0 : index
        %49 = memref.load %alloca_0[%c0_61] : memref<1xi32>
        %50 = arith.cmpi slt, %48, %49 : i32
        scf.condition(%50)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_73 = arith.constant 0 : index
            %61 = memref.load %alloca_3[%c0_73] : memref<1xi32>
            %c20_i32 = arith.constant 20 : i32
            %62 = arith.remsi %61, %c20_i32 : i32
            %c0_i32_74 = arith.constant 0 : i32
            %63 = arith.cmpi eq, %62, %c0_i32_74 : i32
            scf.if %63 {
              %64 = llvm.mlir.addressof @stderr : !llvm.ptr
              %65 = llvm.load %64 : !llvm.ptr -> !llvm.ptr
              %66 = memref.get_global @".str.3" : memref<2xi8>
              %c0_75 = arith.constant 0 : index
              %c1_76 = arith.constant 1 : index
              %c2_77 = arith.constant 2 : index
              %subview_78 = memref.subview %66[%c0_75] [%c2_77] [%c1_76] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_79 = memref.reinterpret_cast %subview_78 to offset: [0], sizes: [%c2_77], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %intptr_80 = memref.extract_aligned_pointer_as_index %reinterpret_cast_79 : memref<?xi8> -> index
              %67 = arith.index_castui %intptr_80 : index to i64
              %68 = llvm.inttoptr %67 : i64 to !llvm.ptr
              %69 = llvm.call @fprintf(%65, %68) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
            }
          }
          %50 = llvm.mlir.addressof @stderr : !llvm.ptr
          %51 = llvm.load %50 : !llvm.ptr -> !llvm.ptr
          %52 = memref.get_global @".str.4" : memref<8xi8>
          %c0_62 = arith.constant 0 : index
          %c1_63 = arith.constant 1 : index
          %c8 = arith.constant 8 : index
          %subview_64 = memref.subview %52[%c0_62] [%c8] [%c1_63] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
          %reinterpret_cast_65 = memref.reinterpret_cast %subview_64 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
          %c0_66 = arith.constant 0 : index
          %53 = memref.load %alloca_2[%c0_66] : memref<1xmemref<?xf64>>
          %c0_67 = arith.constant 0 : index
          %54 = memref.load %alloca_3[%c0_67] : memref<1xi32>
          %55 = arith.index_cast %54 : i32 to index
          %c0_68 = arith.constant 0 : index
          %dim = memref.dim %53, %c0_68 : memref<?xf64>
          %56 = arith.subi %dim, %55 : index
          %c1_69 = arith.constant 1 : index
          %subview_70 = memref.subview %53[%55] [%56] [%c1_69] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_71 = arith.constant 0 : index
          %57 = memref.load %subview_70[%c0_71] : memref<?xf64, strided<[?], offset: ?>>
          %intptr_72 = memref.extract_aligned_pointer_as_index %reinterpret_cast_65 : memref<?xi8> -> index
          %58 = arith.index_castui %intptr_72 : index to i64
          %59 = llvm.inttoptr %58 : i64 to !llvm.ptr
          %60 = llvm.call @fprintf(%51, %59, %57) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
        }
        %c0_60 = arith.constant 0 : index
        %48 = memref.load %alloca_3[%c0_60] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %49 = arith.addi %48, %c1_i32 : i32
        %c0_61 = arith.constant 0 : index
        memref.store %49, %alloca_3[%c0_61] : memref<1xi32>
        scf.yield
      }
    }
    %33 = llvm.mlir.addressof @stderr : !llvm.ptr
    %34 = llvm.load %33 : !llvm.ptr -> !llvm.ptr
    %35 = memref.get_global @".str.5" : memref<17xi8>
    %c0_41 = arith.constant 0 : index
    %c1_42 = arith.constant 1 : index
    %c17_43 = arith.constant 17 : index
    %subview_44 = memref.subview %35[%c0_41] [%c17_43] [%c1_42] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_45 = memref.reinterpret_cast %subview_44 to offset: [0], sizes: [%c17_43], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %36 = memref.get_global @".str.6" : memref<2xi8>
    %c0_46 = arith.constant 0 : index
    %c1_47 = arith.constant 1 : index
    %c2_48 = arith.constant 2 : index
    %subview_49 = memref.subview %36[%c0_46] [%c2_48] [%c1_47] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_50 = memref.reinterpret_cast %subview_49 to offset: [0], sizes: [%c2_48], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_51 = memref.extract_aligned_pointer_as_index %reinterpret_cast_45 : memref<?xi8> -> index
    %37 = arith.index_castui %intptr_51 : index to i64
    %38 = llvm.inttoptr %37 : i64 to !llvm.ptr
    %intptr_52 = memref.extract_aligned_pointer_as_index %reinterpret_cast_50 : memref<?xi8> -> index
    %39 = arith.index_castui %intptr_52 : index to i64
    %40 = llvm.inttoptr %39 : i64 to !llvm.ptr
    %41 = llvm.call @fprintf(%34, %38, %40) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %42 = llvm.mlir.addressof @stderr : !llvm.ptr
    %43 = llvm.load %42 : !llvm.ptr -> !llvm.ptr
    %44 = memref.get_global @".str.7" : memref<23xi8>
    %c0_53 = arith.constant 0 : index
    %c1_54 = arith.constant 1 : index
    %c23_55 = arith.constant 23 : index
    %subview_56 = memref.subview %44[%c0_53] [%c23_55] [%c1_54] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_57 = memref.reinterpret_cast %subview_56 to offset: [0], sizes: [%c23_55], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_58 = memref.extract_aligned_pointer_as_index %reinterpret_cast_57 : memref<?xi8> -> index
    %45 = arith.index_castui %intptr_58 : index to i64
    %46 = llvm.inttoptr %45 : i64 to !llvm.ptr
    %47 = llvm.call @fprintf(%43, %46) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
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
    %alloca_8 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_9 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_9] : memref<1xmemref<?xmemref<?xi8>>>
    %c2100_i32 = arith.constant 2100 : i32
    %c0_10 = arith.constant 0 : index
    memref.store %c2100_i32, %alloca_2[%c0_10] : memref<1xi32>
    %c1900_i32 = arith.constant 1900 : i32
    %c0_11 = arith.constant 0 : index
    memref.store %c1900_i32, %alloca_3[%c0_11] : memref<1xi32>
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
    memref.store %8, %alloca_4[%c0_15] : memref<1xmemref<?xf64>>
    %c0_16 = arith.constant 0 : index
    %9 = memref.load %alloca_3[%c0_16] : memref<1xi32>
    %c0_i32_17 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_17 : i32
    %11 = arith.extsi %10 : i32 to i64
    %c8_i64_18 = arith.constant 8 : i64
    %12 = arith.trunci %c8_i64_18 : i64 to i32
    %13 = call @polybench_alloc_data(%11, %12) : (i64, i32) -> !llvm.ptr
    %14 = builtin.unrealized_conversion_cast %13 : !llvm.ptr to memref<?xf64>
    %c0_19 = arith.constant 0 : index
    memref.store %14, %alloca_5[%c0_19] : memref<1xmemref<?xf64>>
    %c0_20 = arith.constant 0 : index
    %15 = memref.load %alloca_2[%c0_20] : memref<1xi32>
    %c0_i32_21 = arith.constant 0 : i32
    %16 = arith.addi %15, %c0_i32_21 : i32
    %17 = arith.extsi %16 : i32 to i64
    %c8_i64_22 = arith.constant 8 : i64
    %18 = arith.trunci %c8_i64_22 : i64 to i32
    %19 = call @polybench_alloc_data(%17, %18) : (i64, i32) -> !llvm.ptr
    %20 = builtin.unrealized_conversion_cast %19 : !llvm.ptr to memref<?xf64>
    %c0_23 = arith.constant 0 : index
    memref.store %20, %alloca_6[%c0_23] : memref<1xmemref<?xf64>>
    %c0_24 = arith.constant 0 : index
    %21 = memref.load %alloca_3[%c0_24] : memref<1xi32>
    %c0_i32_25 = arith.constant 0 : i32
    %22 = arith.addi %21, %c0_i32_25 : i32
    %23 = arith.extsi %22 : i32 to i64
    %c8_i64_26 = arith.constant 8 : i64
    %24 = arith.trunci %c8_i64_26 : i64 to i32
    %25 = call @polybench_alloc_data(%23, %24) : (i64, i32) -> !llvm.ptr
    %26 = builtin.unrealized_conversion_cast %25 : !llvm.ptr to memref<?xf64>
    %c0_27 = arith.constant 0 : index
    memref.store %26, %alloca_7[%c0_27] : memref<1xmemref<?xf64>>
    %c0_28 = arith.constant 0 : index
    %27 = memref.load %alloca_2[%c0_28] : memref<1xi32>
    %c0_i32_29 = arith.constant 0 : i32
    %28 = arith.addi %27, %c0_i32_29 : i32
    %29 = arith.extsi %28 : i32 to i64
    %c8_i64_30 = arith.constant 8 : i64
    %30 = arith.trunci %c8_i64_30 : i64 to i32
    %31 = call @polybench_alloc_data(%29, %30) : (i64, i32) -> !llvm.ptr
    %32 = builtin.unrealized_conversion_cast %31 : !llvm.ptr to memref<?xf64>
    %c0_31 = arith.constant 0 : index
    memref.store %32, %alloca_8[%c0_31] : memref<1xmemref<?xf64>>
    %c0_32 = arith.constant 0 : index
    %33 = memref.load %alloca_3[%c0_32] : memref<1xi32>
    %c0_33 = arith.constant 0 : index
    %34 = memref.load %alloca_2[%c0_33] : memref<1xi32>
    %c0_34 = arith.constant 0 : index
    %35 = memref.load %alloca_4[%c0_34] : memref<1xmemref<?xf64>>
    %c0_35 = arith.constant 0 : index
    %36 = memref.load %alloca_8[%c0_35] : memref<1xmemref<?xf64>>
    %c0_36 = arith.constant 0 : index
    %37 = memref.load %alloca_7[%c0_36] : memref<1xmemref<?xf64>>
    call @init_array(%33, %34, %35, %36, %37) : (i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %38 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %38() : !llvm.ptr, () -> ()
    %c0_37 = arith.constant 0 : index
    %39 = memref.load %alloca_3[%c0_37] : memref<1xi32>
    %c0_38 = arith.constant 0 : index
    %40 = memref.load %alloca_2[%c0_38] : memref<1xi32>
    %c0_39 = arith.constant 0 : index
    %41 = memref.load %alloca_4[%c0_39] : memref<1xmemref<?xf64>>
    %c0_40 = arith.constant 0 : index
    %42 = memref.load %alloca_5[%c0_40] : memref<1xmemref<?xf64>>
    %c0_41 = arith.constant 0 : index
    %43 = memref.load %alloca_6[%c0_41] : memref<1xmemref<?xf64>>
    %c0_42 = arith.constant 0 : index
    %44 = memref.load %alloca_7[%c0_42] : memref<1xmemref<?xf64>>
    %c0_43 = arith.constant 0 : index
    %45 = memref.load %alloca_8[%c0_43] : memref<1xmemref<?xf64>>
    call @kernel_bicg(%39, %40, %41, %42, %43, %44, %45) : (i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %46 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %46() : !llvm.ptr, () -> ()
    %47 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %47() : !llvm.ptr, () -> ()
    %c0_44 = arith.constant 0 : index
    %48 = memref.load %alloca_3[%c0_44] : memref<1xi32>
    %c0_45 = arith.constant 0 : index
    %49 = memref.load %alloca_2[%c0_45] : memref<1xi32>
    %c0_46 = arith.constant 0 : index
    %50 = memref.load %alloca_5[%c0_46] : memref<1xmemref<?xf64>>
    %c0_47 = arith.constant 0 : index
    %51 = memref.load %alloca_6[%c0_47] : memref<1xmemref<?xf64>>
    call @print_array(%48, %49, %50, %51) : (i32, i32, memref<?xf64>, memref<?xf64>) -> ()
    %c0_48 = arith.constant 0 : index
    %52 = memref.load %alloca_4[%c0_48] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %52 : memref<?xf64> -> index
    %53 = arith.index_castui %intptr : index to i64
    %54 = llvm.inttoptr %53 : i64 to !llvm.ptr
    call @free(%54) : (!llvm.ptr) -> ()
    %c0_49 = arith.constant 0 : index
    %55 = memref.load %alloca_5[%c0_49] : memref<1xmemref<?xf64>>
    %intptr_50 = memref.extract_aligned_pointer_as_index %55 : memref<?xf64> -> index
    %56 = arith.index_castui %intptr_50 : index to i64
    %57 = llvm.inttoptr %56 : i64 to !llvm.ptr
    call @free(%57) : (!llvm.ptr) -> ()
    %c0_51 = arith.constant 0 : index
    %58 = memref.load %alloca_6[%c0_51] : memref<1xmemref<?xf64>>
    %intptr_52 = memref.extract_aligned_pointer_as_index %58 : memref<?xf64> -> index
    %59 = arith.index_castui %intptr_52 : index to i64
    %60 = llvm.inttoptr %59 : i64 to !llvm.ptr
    call @free(%60) : (!llvm.ptr) -> ()
    %c0_53 = arith.constant 0 : index
    %61 = memref.load %alloca_7[%c0_53] : memref<1xmemref<?xf64>>
    %intptr_54 = memref.extract_aligned_pointer_as_index %61 : memref<?xf64> -> index
    %62 = arith.index_castui %intptr_54 : index to i64
    %63 = llvm.inttoptr %62 : i64 to !llvm.ptr
    call @free(%63) : (!llvm.ptr) -> ()
    %c0_55 = arith.constant 0 : index
    %64 = memref.load %alloca_8[%c0_55] : memref<1xmemref<?xf64>>
    %intptr_56 = memref.extract_aligned_pointer_as_index %64 : memref<?xf64> -> index
    %65 = arith.index_castui %intptr_56 : index to i64
    %66 = llvm.inttoptr %65 : i64 to !llvm.ptr
    call @free(%66) : (!llvm.ptr) -> ()
    %c0_i32_57 = arith.constant 0 : i32
    %c0_58 = arith.constant 0 : index
    memref.store %c0_i32_57, %alloca_1[%c0_58] : memref<1xi32>
    %c0_59 = arith.constant 0 : index
    %67 = memref.load %alloca_1[%c0_59] : memref<1xi32>
    return %67 : i32
  }
}

