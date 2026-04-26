module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/medley/floyd-warshall/floyd-warshall.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: memref<?xi32>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xi32>>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_3 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_3] : memref<1xmemref<?xi32>>
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
              %8 = memref.load %alloca_2[%c0_15] : memref<1xi32>
              %9 = arith.muli %7, %8 : i32
              %c7_i32 = arith.constant 7 : i32
              %10 = arith.remsi %9, %c7_i32 : i32
              %c1_i32_16 = arith.constant 1 : i32
              %11 = arith.addi %10, %c1_i32_16 : i32
              %c0_17 = arith.constant 0 : index
              %12 = memref.load %alloca_0[%c0_17] : memref<1xmemref<?xi32>>
              %c0_18 = arith.constant 0 : index
              %13 = memref.load %alloca_1[%c0_18] : memref<1xi32>
              %14 = arith.extsi %13 : i32 to i64
              %15 = arith.muli %14, %2 : i64
              %16 = arith.index_cast %15 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_19 = arith.constant 0 : index
              %c0_20 = arith.constant 0 : index
              %dim = memref.dim %12, %c0_20 : memref<?xi32>
              %17 = arith.subi %dim, %16 : index
              %subview = memref.subview %12[%16] [%17] [%c1] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%17], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
              %c0_21 = arith.constant 0 : index
              %18 = memref.load %alloca_2[%c0_21] : memref<1xi32>
              %19 = arith.index_cast %18 : i32 to index
              %c0_22 = arith.constant 0 : index
              %dim_23 = memref.dim %reinterpret_cast, %c0_22 : memref<?xi32>
              %20 = arith.subi %dim_23, %19 : index
              %c1_24 = arith.constant 1 : index
              %subview_25 = memref.subview %reinterpret_cast[%19] [%20] [%c1_24] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
              %c0_26 = arith.constant 0 : index
              memref.store %11, %subview_25[%c0_26] : memref<?xi32, strided<[?], offset: ?>>
              memref.alloca_scope  {
                %c0_27 = arith.constant 0 : index
                %21 = memref.load %alloca_1[%c0_27] : memref<1xi32>
                %c0_28 = arith.constant 0 : index
                %22 = memref.load %alloca_2[%c0_28] : memref<1xi32>
                %23 = arith.addi %21, %22 : i32
                %c13_i32 = arith.constant 13 : i32
                %24 = arith.remsi %23, %c13_i32 : i32
                %c0_i32_29 = arith.constant 0 : i32
                %25 = arith.cmpi eq, %24, %c0_i32_29 : i32
                %26 = scf.if %25 -> (i1) {
                  %true = arith.constant true
                  scf.yield %true : i1
                } else {
                  %c0_30 = arith.constant 0 : index
                  %28 = memref.load %alloca_1[%c0_30] : memref<1xi32>
                  %c0_31 = arith.constant 0 : index
                  %29 = memref.load %alloca_2[%c0_31] : memref<1xi32>
                  %30 = arith.addi %28, %29 : i32
                  %c7_i32_32 = arith.constant 7 : i32
                  %31 = arith.remsi %30, %c7_i32_32 : i32
                  %c0_i32_33 = arith.constant 0 : i32
                  %32 = arith.cmpi eq, %31, %c0_i32_33 : i32
                  scf.yield %32 : i1
                }
                %27 = scf.if %26 -> (i1) {
                  %true = arith.constant true
                  scf.yield %true : i1
                } else {
                  %c0_30 = arith.constant 0 : index
                  %28 = memref.load %alloca_1[%c0_30] : memref<1xi32>
                  %c0_31 = arith.constant 0 : index
                  %29 = memref.load %alloca_2[%c0_31] : memref<1xi32>
                  %30 = arith.addi %28, %29 : i32
                  %c11_i32 = arith.constant 11 : i32
                  %31 = arith.remsi %30, %c11_i32 : i32
                  %c0_i32_32 = arith.constant 0 : i32
                  %32 = arith.cmpi eq, %31, %c0_i32_32 : i32
                  scf.yield %32 : i1
                }
                scf.if %27 {
                  %c999_i32 = arith.constant 999 : i32
                  %c0_30 = arith.constant 0 : index
                  %28 = memref.load %alloca_0[%c0_30] : memref<1xmemref<?xi32>>
                  %c0_31 = arith.constant 0 : index
                  %29 = memref.load %alloca_1[%c0_31] : memref<1xi32>
                  %30 = arith.extsi %29 : i32 to i64
                  %31 = arith.muli %30, %2 : i64
                  %32 = arith.index_cast %31 : i64 to index
                  %c1_32 = arith.constant 1 : index
                  %c0_33 = arith.constant 0 : index
                  %c0_34 = arith.constant 0 : index
                  %dim_35 = memref.dim %28, %c0_34 : memref<?xi32>
                  %33 = arith.subi %dim_35, %32 : index
                  %subview_36 = memref.subview %28[%32] [%33] [%c1_32] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                  %reinterpret_cast_37 = memref.reinterpret_cast %subview_36 to offset: [0], sizes: [%33], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                  %c0_38 = arith.constant 0 : index
                  %34 = memref.load %alloca_2[%c0_38] : memref<1xi32>
                  %35 = arith.index_cast %34 : i32 to index
                  %c0_39 = arith.constant 0 : index
                  %dim_40 = memref.dim %reinterpret_cast_37, %c0_39 : memref<?xi32>
                  %36 = arith.subi %dim_40, %35 : index
                  %c1_41 = arith.constant 1 : index
                  %subview_42 = memref.subview %reinterpret_cast_37[%35] [%36] [%c1_41] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                  %c0_43 = arith.constant 0 : index
                  memref.store %c999_i32, %subview_42[%c0_43] : memref<?xi32, strided<[?], offset: ?>>
                }
              }
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
  func.func private @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?xi32>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xi32>>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_4 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_4] : memref<1xmemref<?xi32>>
    %c0_5 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_5] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_6 = arith.constant 0 : i32
      %c0_7 = arith.constant 0 : index
      memref.store %c0_i32_6, %alloca_3[%c0_7] : memref<1xi32>
      scf.while : () -> () {
        %c0_8 = arith.constant 0 : index
        %3 = memref.load %alloca_3[%c0_8] : memref<1xi32>
        %c0_9 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_9] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_i32_10 = arith.constant 0 : i32
            %c0_11 = arith.constant 0 : index
            memref.store %c0_i32_10, %alloca_1[%c0_11] : memref<1xi32>
            scf.while : () -> () {
              %c0_12 = arith.constant 0 : index
              %5 = memref.load %alloca_1[%c0_12] : memref<1xi32>
              %c0_13 = arith.constant 0 : index
              %6 = memref.load %alloca[%c0_13] : memref<1xi32>
              %7 = arith.cmpi slt, %5, %6 : i32
              scf.condition(%7)
            } do {
              memref.alloca_scope  {
                %c0_i32_15 = arith.constant 0 : i32
                %c0_16 = arith.constant 0 : index
                memref.store %c0_i32_15, %alloca_2[%c0_16] : memref<1xi32>
                scf.while : () -> () {
                  %c0_17 = arith.constant 0 : index
                  %7 = memref.load %alloca_2[%c0_17] : memref<1xi32>
                  %c0_18 = arith.constant 0 : index
                  %8 = memref.load %alloca[%c0_18] : memref<1xi32>
                  %9 = arith.cmpi slt, %7, %8 : i32
                  scf.condition(%9)
                } do {
                  %c0_17 = arith.constant 0 : index
                  %7 = memref.load %alloca_0[%c0_17] : memref<1xmemref<?xi32>>
                  %c0_18 = arith.constant 0 : index
                  %8 = memref.load %alloca_1[%c0_18] : memref<1xi32>
                  %9 = arith.extsi %8 : i32 to i64
                  %10 = arith.muli %9, %2 : i64
                  %11 = arith.index_cast %10 : i64 to index
                  %c1 = arith.constant 1 : index
                  %c0_19 = arith.constant 0 : index
                  %c0_20 = arith.constant 0 : index
                  %dim = memref.dim %7, %c0_20 : memref<?xi32>
                  %12 = arith.subi %dim, %11 : index
                  %subview = memref.subview %7[%11] [%12] [%c1] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                  %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%12], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                  %c0_21 = arith.constant 0 : index
                  %13 = memref.load %alloca_2[%c0_21] : memref<1xi32>
                  %14 = arith.index_cast %13 : i32 to index
                  %c0_22 = arith.constant 0 : index
                  %dim_23 = memref.dim %reinterpret_cast, %c0_22 : memref<?xi32>
                  %15 = arith.subi %dim_23, %14 : index
                  %c1_24 = arith.constant 1 : index
                  %subview_25 = memref.subview %reinterpret_cast[%14] [%15] [%c1_24] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                  %c0_26 = arith.constant 0 : index
                  %16 = memref.load %subview_25[%c0_26] : memref<?xi32, strided<[?], offset: ?>>
                  %c0_27 = arith.constant 0 : index
                  %17 = memref.load %alloca_0[%c0_27] : memref<1xmemref<?xi32>>
                  %c0_28 = arith.constant 0 : index
                  %18 = memref.load %alloca_1[%c0_28] : memref<1xi32>
                  %19 = arith.extsi %18 : i32 to i64
                  %20 = arith.muli %19, %2 : i64
                  %21 = arith.index_cast %20 : i64 to index
                  %c1_29 = arith.constant 1 : index
                  %c0_30 = arith.constant 0 : index
                  %c0_31 = arith.constant 0 : index
                  %dim_32 = memref.dim %17, %c0_31 : memref<?xi32>
                  %22 = arith.subi %dim_32, %21 : index
                  %subview_33 = memref.subview %17[%21] [%22] [%c1_29] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                  %reinterpret_cast_34 = memref.reinterpret_cast %subview_33 to offset: [0], sizes: [%22], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                  %c0_35 = arith.constant 0 : index
                  %23 = memref.load %alloca_3[%c0_35] : memref<1xi32>
                  %24 = arith.index_cast %23 : i32 to index
                  %c0_36 = arith.constant 0 : index
                  %dim_37 = memref.dim %reinterpret_cast_34, %c0_36 : memref<?xi32>
                  %25 = arith.subi %dim_37, %24 : index
                  %c1_38 = arith.constant 1 : index
                  %subview_39 = memref.subview %reinterpret_cast_34[%24] [%25] [%c1_38] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                  %c0_40 = arith.constant 0 : index
                  %26 = memref.load %subview_39[%c0_40] : memref<?xi32, strided<[?], offset: ?>>
                  %c0_41 = arith.constant 0 : index
                  %27 = memref.load %alloca_0[%c0_41] : memref<1xmemref<?xi32>>
                  %c0_42 = arith.constant 0 : index
                  %28 = memref.load %alloca_3[%c0_42] : memref<1xi32>
                  %29 = arith.extsi %28 : i32 to i64
                  %30 = arith.muli %29, %2 : i64
                  %31 = arith.index_cast %30 : i64 to index
                  %c1_43 = arith.constant 1 : index
                  %c0_44 = arith.constant 0 : index
                  %c0_45 = arith.constant 0 : index
                  %dim_46 = memref.dim %27, %c0_45 : memref<?xi32>
                  %32 = arith.subi %dim_46, %31 : index
                  %subview_47 = memref.subview %27[%31] [%32] [%c1_43] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                  %reinterpret_cast_48 = memref.reinterpret_cast %subview_47 to offset: [0], sizes: [%32], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                  %c0_49 = arith.constant 0 : index
                  %33 = memref.load %alloca_2[%c0_49] : memref<1xi32>
                  %34 = arith.index_cast %33 : i32 to index
                  %c0_50 = arith.constant 0 : index
                  %dim_51 = memref.dim %reinterpret_cast_48, %c0_50 : memref<?xi32>
                  %35 = arith.subi %dim_51, %34 : index
                  %c1_52 = arith.constant 1 : index
                  %subview_53 = memref.subview %reinterpret_cast_48[%34] [%35] [%c1_52] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                  %c0_54 = arith.constant 0 : index
                  %36 = memref.load %subview_53[%c0_54] : memref<?xi32, strided<[?], offset: ?>>
                  %37 = arith.addi %26, %36 : i32
                  %38 = arith.cmpi slt, %16, %37 : i32
                  %39 = scf.if %38 -> (i32) {
                    %c0_72 = arith.constant 0 : index
                    %51 = memref.load %alloca_0[%c0_72] : memref<1xmemref<?xi32>>
                    %c0_73 = arith.constant 0 : index
                    %52 = memref.load %alloca_1[%c0_73] : memref<1xi32>
                    %53 = arith.extsi %52 : i32 to i64
                    %54 = arith.muli %53, %2 : i64
                    %55 = arith.index_cast %54 : i64 to index
                    %c1_74 = arith.constant 1 : index
                    %c0_75 = arith.constant 0 : index
                    %c0_76 = arith.constant 0 : index
                    %dim_77 = memref.dim %51, %c0_76 : memref<?xi32>
                    %56 = arith.subi %dim_77, %55 : index
                    %subview_78 = memref.subview %51[%55] [%56] [%c1_74] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %reinterpret_cast_79 = memref.reinterpret_cast %subview_78 to offset: [0], sizes: [%56], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                    %c0_80 = arith.constant 0 : index
                    %57 = memref.load %alloca_2[%c0_80] : memref<1xi32>
                    %58 = arith.index_cast %57 : i32 to index
                    %c0_81 = arith.constant 0 : index
                    %dim_82 = memref.dim %reinterpret_cast_79, %c0_81 : memref<?xi32>
                    %59 = arith.subi %dim_82, %58 : index
                    %c1_83 = arith.constant 1 : index
                    %subview_84 = memref.subview %reinterpret_cast_79[%58] [%59] [%c1_83] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %c0_85 = arith.constant 0 : index
                    %60 = memref.load %subview_84[%c0_85] : memref<?xi32, strided<[?], offset: ?>>
                    scf.yield %60 : i32
                  } else {
                    %c0_72 = arith.constant 0 : index
                    %51 = memref.load %alloca_0[%c0_72] : memref<1xmemref<?xi32>>
                    %c0_73 = arith.constant 0 : index
                    %52 = memref.load %alloca_1[%c0_73] : memref<1xi32>
                    %53 = arith.extsi %52 : i32 to i64
                    %54 = arith.muli %53, %2 : i64
                    %55 = arith.index_cast %54 : i64 to index
                    %c1_74 = arith.constant 1 : index
                    %c0_75 = arith.constant 0 : index
                    %c0_76 = arith.constant 0 : index
                    %dim_77 = memref.dim %51, %c0_76 : memref<?xi32>
                    %56 = arith.subi %dim_77, %55 : index
                    %subview_78 = memref.subview %51[%55] [%56] [%c1_74] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %reinterpret_cast_79 = memref.reinterpret_cast %subview_78 to offset: [0], sizes: [%56], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                    %c0_80 = arith.constant 0 : index
                    %57 = memref.load %alloca_3[%c0_80] : memref<1xi32>
                    %58 = arith.index_cast %57 : i32 to index
                    %c0_81 = arith.constant 0 : index
                    %dim_82 = memref.dim %reinterpret_cast_79, %c0_81 : memref<?xi32>
                    %59 = arith.subi %dim_82, %58 : index
                    %c1_83 = arith.constant 1 : index
                    %subview_84 = memref.subview %reinterpret_cast_79[%58] [%59] [%c1_83] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %c0_85 = arith.constant 0 : index
                    %60 = memref.load %subview_84[%c0_85] : memref<?xi32, strided<[?], offset: ?>>
                    %c0_86 = arith.constant 0 : index
                    %61 = memref.load %alloca_0[%c0_86] : memref<1xmemref<?xi32>>
                    %c0_87 = arith.constant 0 : index
                    %62 = memref.load %alloca_3[%c0_87] : memref<1xi32>
                    %63 = arith.extsi %62 : i32 to i64
                    %64 = arith.muli %63, %2 : i64
                    %65 = arith.index_cast %64 : i64 to index
                    %c1_88 = arith.constant 1 : index
                    %c0_89 = arith.constant 0 : index
                    %c0_90 = arith.constant 0 : index
                    %dim_91 = memref.dim %61, %c0_90 : memref<?xi32>
                    %66 = arith.subi %dim_91, %65 : index
                    %subview_92 = memref.subview %61[%65] [%66] [%c1_88] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %reinterpret_cast_93 = memref.reinterpret_cast %subview_92 to offset: [0], sizes: [%66], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                    %c0_94 = arith.constant 0 : index
                    %67 = memref.load %alloca_2[%c0_94] : memref<1xi32>
                    %68 = arith.index_cast %67 : i32 to index
                    %c0_95 = arith.constant 0 : index
                    %dim_96 = memref.dim %reinterpret_cast_93, %c0_95 : memref<?xi32>
                    %69 = arith.subi %dim_96, %68 : index
                    %c1_97 = arith.constant 1 : index
                    %subview_98 = memref.subview %reinterpret_cast_93[%68] [%69] [%c1_97] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %c0_99 = arith.constant 0 : index
                    %70 = memref.load %subview_98[%c0_99] : memref<?xi32, strided<[?], offset: ?>>
                    %71 = arith.addi %60, %70 : i32
                    scf.yield %71 : i32
                  }
                  %c0_55 = arith.constant 0 : index
                  %40 = memref.load %alloca_0[%c0_55] : memref<1xmemref<?xi32>>
                  %c0_56 = arith.constant 0 : index
                  %41 = memref.load %alloca_1[%c0_56] : memref<1xi32>
                  %42 = arith.extsi %41 : i32 to i64
                  %43 = arith.muli %42, %2 : i64
                  %44 = arith.index_cast %43 : i64 to index
                  %c1_57 = arith.constant 1 : index
                  %c0_58 = arith.constant 0 : index
                  %c0_59 = arith.constant 0 : index
                  %dim_60 = memref.dim %40, %c0_59 : memref<?xi32>
                  %45 = arith.subi %dim_60, %44 : index
                  %subview_61 = memref.subview %40[%44] [%45] [%c1_57] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                  %reinterpret_cast_62 = memref.reinterpret_cast %subview_61 to offset: [0], sizes: [%45], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                  %c0_63 = arith.constant 0 : index
                  %46 = memref.load %alloca_2[%c0_63] : memref<1xi32>
                  %47 = arith.index_cast %46 : i32 to index
                  %c0_64 = arith.constant 0 : index
                  %dim_65 = memref.dim %reinterpret_cast_62, %c0_64 : memref<?xi32>
                  %48 = arith.subi %dim_65, %47 : index
                  %c1_66 = arith.constant 1 : index
                  %subview_67 = memref.subview %reinterpret_cast_62[%47] [%48] [%c1_66] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                  %c0_68 = arith.constant 0 : index
                  memref.store %39, %subview_67[%c0_68] : memref<?xi32, strided<[?], offset: ?>>
                  %c0_69 = arith.constant 0 : index
                  %49 = memref.load %alloca_2[%c0_69] : memref<1xi32>
                  %c1_i32_70 = arith.constant 1 : i32
                  %50 = arith.addi %49, %c1_i32_70 : i32
                  %c0_71 = arith.constant 0 : index
                  memref.store %50, %alloca_2[%c0_71] : memref<1xi32>
                  scf.yield
                }
              }
              %c0_12 = arith.constant 0 : index
              %5 = memref.load %alloca_1[%c0_12] : memref<1xi32>
              %c1_i32_13 = arith.constant 1 : i32
              %6 = arith.addi %5, %c1_i32_13 : i32
              %c0_14 = arith.constant 0 : index
              memref.store %6, %alloca_1[%c0_14] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_8 = arith.constant 0 : index
        %3 = memref.load %alloca_3[%c0_8] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_9 = arith.constant 0 : index
        memref.store %4, %alloca_3[%c0_9] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<5xi8> = dense<[112, 97, 116, 104, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.3" : memref<2xi8> = dense<[10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.4" : memref<4xi8> = dense<[37, 100, 32, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.5" : memref<17xi8> = dense<[10, 101, 110, 100, 32, 32, 32, 100, 117, 109, 112, 58, 32, 37, 115, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.6" : memref<23xi8> = dense<[61, 61, 69, 78, 68, 32, 32, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  func.func private @print_array(%arg0: i32, %arg1: memref<?xi32>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xi32>>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_3 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_3] : memref<1xmemref<?xi32>>
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
    %12 = memref.get_global @".str.2" : memref<5xi8>
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
                  %62 = memref.get_global @".str.3" : memref<2xi8>
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
              %39 = memref.get_global @".str.4" : memref<4xi8>
              %c0_42 = arith.constant 0 : index
              %c1_43 = arith.constant 1 : index
              %c4 = arith.constant 4 : index
              %subview_44 = memref.subview %39[%c0_42] [%c4] [%c1_43] : memref<4xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_45 = memref.reinterpret_cast %subview_44 to offset: [0], sizes: [%c4], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %c0_46 = arith.constant 0 : index
              %40 = memref.load %alloca_0[%c0_46] : memref<1xmemref<?xi32>>
              %c0_47 = arith.constant 0 : index
              %41 = memref.load %alloca_1[%c0_47] : memref<1xi32>
              %42 = arith.extsi %41 : i32 to i64
              %43 = arith.muli %42, %2 : i64
              %44 = arith.index_cast %43 : i64 to index
              %c1_48 = arith.constant 1 : index
              %c0_49 = arith.constant 0 : index
              %c0_50 = arith.constant 0 : index
              %dim = memref.dim %40, %c0_50 : memref<?xi32>
              %45 = arith.subi %dim, %44 : index
              %subview_51 = memref.subview %40[%44] [%45] [%c1_48] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
              %reinterpret_cast_52 = memref.reinterpret_cast %subview_51 to offset: [0], sizes: [%45], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
              %c0_53 = arith.constant 0 : index
              %46 = memref.load %alloca_2[%c0_53] : memref<1xi32>
              %47 = arith.index_cast %46 : i32 to index
              %c0_54 = arith.constant 0 : index
              %dim_55 = memref.dim %reinterpret_cast_52, %c0_54 : memref<?xi32>
              %48 = arith.subi %dim_55, %47 : index
              %c1_56 = arith.constant 1 : index
              %subview_57 = memref.subview %reinterpret_cast_52[%47] [%48] [%c1_56] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
              %c0_58 = arith.constant 0 : index
              %49 = memref.load %subview_57[%c0_58] : memref<?xi32, strided<[?], offset: ?>>
              %intptr_59 = memref.extract_aligned_pointer_as_index %reinterpret_cast_45 : memref<?xi8> -> index
              %50 = arith.index_castui %intptr_59 : index to i64
              %51 = llvm.inttoptr %50 : i64 to !llvm.ptr
              %52 = llvm.call @fprintf(%38, %51, %49) vararg(!llvm.func<i32 (ptr, ptr, i32, ...)>) : (!llvm.ptr, !llvm.ptr, i32) -> i32
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
    %21 = memref.get_global @".str.2" : memref<5xi8>
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
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_4 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_4] : memref<1xmemref<?xmemref<?xi8>>>
    %c2800_i32 = arith.constant 2800 : i32
    %c0_5 = arith.constant 0 : index
    memref.store %c2800_i32, %alloca_2[%c0_5] : memref<1xi32>
    %c0_6 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_6] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_7 = arith.constant 0 : index
    %2 = memref.load %alloca_2[%c0_7] : memref<1xi32>
    %c0_i32_8 = arith.constant 0 : i32
    %3 = arith.addi %2, %c0_i32_8 : i32
    %4 = arith.muli %1, %3 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c4_i64 = arith.constant 4 : i64
    %6 = arith.trunci %c4_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xi32>
    %c0_9 = arith.constant 0 : index
    memref.store %8, %alloca_3[%c0_9] : memref<1xmemref<?xi32>>
    %c0_10 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_10] : memref<1xi32>
    %c0_11 = arith.constant 0 : index
    %10 = memref.load %alloca_3[%c0_11] : memref<1xmemref<?xi32>>
    call @init_array(%9, %10) : (i32, memref<?xi32>) -> ()
    %11 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %11() : !llvm.ptr, () -> ()
    %c0_12 = arith.constant 0 : index
    %12 = memref.load %alloca_2[%c0_12] : memref<1xi32>
    %c0_13 = arith.constant 0 : index
    %13 = memref.load %alloca_3[%c0_13] : memref<1xmemref<?xi32>>
    call @kernel_floyd_warshall(%12, %13) : (i32, memref<?xi32>) -> ()
    %14 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %14() : !llvm.ptr, () -> ()
    %15 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %15() : !llvm.ptr, () -> ()
    %c0_14 = arith.constant 0 : index
    %16 = memref.load %alloca_2[%c0_14] : memref<1xi32>
    %c0_15 = arith.constant 0 : index
    %17 = memref.load %alloca_3[%c0_15] : memref<1xmemref<?xi32>>
    call @print_array(%16, %17) : (i32, memref<?xi32>) -> ()
    %c0_16 = arith.constant 0 : index
    %18 = memref.load %alloca_3[%c0_16] : memref<1xmemref<?xi32>>
    %intptr = memref.extract_aligned_pointer_as_index %18 : memref<?xi32> -> index
    %19 = arith.index_castui %intptr : index to i64
    %20 = llvm.inttoptr %19 : i64 to !llvm.ptr
    call @free(%20) : (!llvm.ptr) -> ()
    %c0_i32_17 = arith.constant 0 : i32
    %c0_18 = arith.constant 0 : index
    memref.store %c0_i32_17, %alloca_1[%c0_18] : memref<1xi32>
    %c0_19 = arith.constant 0 : index
    %21 = memref.load %alloca_1[%c0_19] : memref<1xi32>
    return %21 : i32
  }
}

