module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/kernels/doitgen/doitgen.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_7 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_8 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_9 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_9] : memref<1xi32>
    %c0_10 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_10] : memref<1xi32>
    %c0_11 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_12] : memref<1xmemref<?xf64>>
    %c0_13 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_13] : memref<1xmemref<?xf64>>
    %c0_14 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_14] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_15 = arith.constant 0 : index
    %3 = memref.load %alloca_1[%c0_15] : memref<1xi32>
    %c0_i32_16 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_16 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_17 = arith.constant 0 : index
    %6 = memref.load %alloca_1[%c0_17] : memref<1xi32>
    %c0_i32_18 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_18 : i32
    %8 = arith.extsi %7 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_19 = arith.constant 0 : i32
      %c0_20 = arith.constant 0 : index
      memref.store %c0_i32_19, %alloca_5[%c0_20] : memref<1xi32>
      scf.while : () -> () {
        %c0_21 = arith.constant 0 : index
        %9 = memref.load %alloca_5[%c0_21] : memref<1xi32>
        %c0_22 = arith.constant 0 : index
        %10 = memref.load %alloca[%c0_22] : memref<1xi32>
        %11 = arith.cmpi slt, %9, %10 : i32
        scf.condition(%11)
      } do {
        memref.alloca_scope  {
          %c0_i32_23 = arith.constant 0 : i32
          %c0_24 = arith.constant 0 : index
          memref.store %c0_i32_23, %alloca_6[%c0_24] : memref<1xi32>
          scf.while : () -> () {
            %c0_25 = arith.constant 0 : index
            %11 = memref.load %alloca_6[%c0_25] : memref<1xi32>
            %c0_26 = arith.constant 0 : index
            %12 = memref.load %alloca_0[%c0_26] : memref<1xi32>
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
                  %14 = memref.load %alloca_1[%c0_31] : memref<1xi32>
                  %15 = arith.cmpi slt, %13, %14 : i32
                  scf.condition(%15)
                } do {
                  memref.alloca_scope  {
                    %cst = arith.constant 0.000000e+00 : f64
                    %c0_33 = arith.constant 0 : index
                    %15 = memref.load %alloca_4[%c0_33] : memref<1xmemref<?xf64>>
                    %c0_34 = arith.constant 0 : index
                    %16 = memref.load %alloca_7[%c0_34] : memref<1xi32>
                    %17 = arith.index_cast %16 : i32 to index
                    %c0_35 = arith.constant 0 : index
                    %dim = memref.dim %15, %c0_35 : memref<?xf64>
                    %18 = arith.subi %dim, %17 : index
                    %c1 = arith.constant 1 : index
                    %subview = memref.subview %15[%17] [%18] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                    %c0_36 = arith.constant 0 : index
                    memref.store %cst, %subview[%c0_36] : memref<?xf64, strided<[?], offset: ?>>
                    memref.alloca_scope  {
                      %c0_i32_37 = arith.constant 0 : i32
                      %c0_38 = arith.constant 0 : index
                      memref.store %c0_i32_37, %alloca_8[%c0_38] : memref<1xi32>
                      scf.while : () -> () {
                        %c0_39 = arith.constant 0 : index
                        %19 = memref.load %alloca_8[%c0_39] : memref<1xi32>
                        %c0_40 = arith.constant 0 : index
                        %20 = memref.load %alloca_1[%c0_40] : memref<1xi32>
                        %21 = arith.cmpi slt, %19, %20 : i32
                        scf.condition(%21)
                      } do {
                        %c0_39 = arith.constant 0 : index
                        %19 = memref.load %alloca_2[%c0_39] : memref<1xmemref<?xf64>>
                        %c0_40 = arith.constant 0 : index
                        %20 = memref.load %alloca_5[%c0_40] : memref<1xi32>
                        %21 = arith.muli %2, %5 : i64
                        %22 = arith.extsi %20 : i32 to i64
                        %23 = arith.muli %22, %21 : i64
                        %24 = arith.index_cast %23 : i64 to index
                        %c1_41 = arith.constant 1 : index
                        %c0_42 = arith.constant 0 : index
                        %c0_43 = arith.constant 0 : index
                        %dim_44 = memref.dim %19, %c0_43 : memref<?xf64>
                        %25 = arith.subi %dim_44, %24 : index
                        %subview_45 = memref.subview %19[%24] [%25] [%c1_41] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                        %reinterpret_cast = memref.reinterpret_cast %subview_45 to offset: [0], sizes: [%25], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                        %c0_46 = arith.constant 0 : index
                        %26 = memref.load %alloca_6[%c0_46] : memref<1xi32>
                        %27 = arith.extsi %26 : i32 to i64
                        %28 = arith.muli %27, %5 : i64
                        %29 = arith.index_cast %28 : i64 to index
                        %c1_47 = arith.constant 1 : index
                        %c0_48 = arith.constant 0 : index
                        %c0_49 = arith.constant 0 : index
                        %dim_50 = memref.dim %reinterpret_cast, %c0_49 : memref<?xf64>
                        %30 = arith.subi %dim_50, %29 : index
                        %subview_51 = memref.subview %reinterpret_cast[%29] [%30] [%c1_47] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                        %reinterpret_cast_52 = memref.reinterpret_cast %subview_51 to offset: [0], sizes: [%30], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                        %c0_53 = arith.constant 0 : index
                        %31 = memref.load %alloca_8[%c0_53] : memref<1xi32>
                        %32 = arith.index_cast %31 : i32 to index
                        %c0_54 = arith.constant 0 : index
                        %dim_55 = memref.dim %reinterpret_cast_52, %c0_54 : memref<?xf64>
                        %33 = arith.subi %dim_55, %32 : index
                        %c1_56 = arith.constant 1 : index
                        %subview_57 = memref.subview %reinterpret_cast_52[%32] [%33] [%c1_56] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                        %c0_58 = arith.constant 0 : index
                        %34 = memref.load %subview_57[%c0_58] : memref<?xf64, strided<[?], offset: ?>>
                        %c0_59 = arith.constant 0 : index
                        %35 = memref.load %alloca_3[%c0_59] : memref<1xmemref<?xf64>>
                        %c0_60 = arith.constant 0 : index
                        %36 = memref.load %alloca_8[%c0_60] : memref<1xi32>
                        %37 = arith.extsi %36 : i32 to i64
                        %38 = arith.muli %37, %8 : i64
                        %39 = arith.index_cast %38 : i64 to index
                        %c1_61 = arith.constant 1 : index
                        %c0_62 = arith.constant 0 : index
                        %c0_63 = arith.constant 0 : index
                        %dim_64 = memref.dim %35, %c0_63 : memref<?xf64>
                        %40 = arith.subi %dim_64, %39 : index
                        %subview_65 = memref.subview %35[%39] [%40] [%c1_61] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                        %reinterpret_cast_66 = memref.reinterpret_cast %subview_65 to offset: [0], sizes: [%40], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                        %c0_67 = arith.constant 0 : index
                        %41 = memref.load %alloca_7[%c0_67] : memref<1xi32>
                        %42 = arith.index_cast %41 : i32 to index
                        %c0_68 = arith.constant 0 : index
                        %dim_69 = memref.dim %reinterpret_cast_66, %c0_68 : memref<?xf64>
                        %43 = arith.subi %dim_69, %42 : index
                        %c1_70 = arith.constant 1 : index
                        %subview_71 = memref.subview %reinterpret_cast_66[%42] [%43] [%c1_70] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                        %c0_72 = arith.constant 0 : index
                        %44 = memref.load %subview_71[%c0_72] : memref<?xf64, strided<[?], offset: ?>>
                        %45 = arith.mulf %34, %44 : f64
                        %c0_73 = arith.constant 0 : index
                        %46 = memref.load %alloca_4[%c0_73] : memref<1xmemref<?xf64>>
                        %c0_74 = arith.constant 0 : index
                        %47 = memref.load %alloca_7[%c0_74] : memref<1xi32>
                        %48 = arith.index_cast %47 : i32 to index
                        %c0_75 = arith.constant 0 : index
                        %dim_76 = memref.dim %46, %c0_75 : memref<?xf64>
                        %49 = arith.subi %dim_76, %48 : index
                        %c1_77 = arith.constant 1 : index
                        %subview_78 = memref.subview %46[%48] [%49] [%c1_77] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                        %c0_79 = arith.constant 0 : index
                        %50 = memref.load %subview_78[%c0_79] : memref<?xf64, strided<[?], offset: ?>>
                        %51 = arith.addf %50, %45 : f64
                        %c0_80 = arith.constant 0 : index
                        memref.store %51, %subview_78[%c0_80] : memref<?xf64, strided<[?], offset: ?>>
                        %c0_81 = arith.constant 0 : index
                        %52 = memref.load %alloca_8[%c0_81] : memref<1xi32>
                        %c1_i32_82 = arith.constant 1 : i32
                        %53 = arith.addi %52, %c1_i32_82 : i32
                        %c0_83 = arith.constant 0 : index
                        memref.store %53, %alloca_8[%c0_83] : memref<1xi32>
                        scf.yield
                      }
                    }
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
              memref.alloca_scope  {
                %c0_i32_28 = arith.constant 0 : i32
                %c0_29 = arith.constant 0 : index
                memref.store %c0_i32_28, %alloca_7[%c0_29] : memref<1xi32>
                scf.while : () -> () {
                  %c0_30 = arith.constant 0 : index
                  %13 = memref.load %alloca_7[%c0_30] : memref<1xi32>
                  %c0_31 = arith.constant 0 : index
                  %14 = memref.load %alloca_1[%c0_31] : memref<1xi32>
                  %15 = arith.cmpi slt, %13, %14 : i32
                  scf.condition(%15)
                } do {
                  %c0_30 = arith.constant 0 : index
                  %13 = memref.load %alloca_4[%c0_30] : memref<1xmemref<?xf64>>
                  %c0_31 = arith.constant 0 : index
                  %14 = memref.load %alloca_7[%c0_31] : memref<1xi32>
                  %15 = arith.index_cast %14 : i32 to index
                  %c0_32 = arith.constant 0 : index
                  %dim = memref.dim %13, %c0_32 : memref<?xf64>
                  %16 = arith.subi %dim, %15 : index
                  %c1 = arith.constant 1 : index
                  %subview = memref.subview %13[%15] [%16] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_33 = arith.constant 0 : index
                  %17 = memref.load %subview[%c0_33] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_34 = arith.constant 0 : index
                  %18 = memref.load %alloca_2[%c0_34] : memref<1xmemref<?xf64>>
                  %c0_35 = arith.constant 0 : index
                  %19 = memref.load %alloca_5[%c0_35] : memref<1xi32>
                  %20 = arith.muli %2, %5 : i64
                  %21 = arith.extsi %19 : i32 to i64
                  %22 = arith.muli %21, %20 : i64
                  %23 = arith.index_cast %22 : i64 to index
                  %c1_36 = arith.constant 1 : index
                  %c0_37 = arith.constant 0 : index
                  %c0_38 = arith.constant 0 : index
                  %dim_39 = memref.dim %18, %c0_38 : memref<?xf64>
                  %24 = arith.subi %dim_39, %23 : index
                  %subview_40 = memref.subview %18[%23] [%24] [%c1_36] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast = memref.reinterpret_cast %subview_40 to offset: [0], sizes: [%24], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_41 = arith.constant 0 : index
                  %25 = memref.load %alloca_6[%c0_41] : memref<1xi32>
                  %26 = arith.extsi %25 : i32 to i64
                  %27 = arith.muli %26, %5 : i64
                  %28 = arith.index_cast %27 : i64 to index
                  %c1_42 = arith.constant 1 : index
                  %c0_43 = arith.constant 0 : index
                  %c0_44 = arith.constant 0 : index
                  %dim_45 = memref.dim %reinterpret_cast, %c0_44 : memref<?xf64>
                  %29 = arith.subi %dim_45, %28 : index
                  %subview_46 = memref.subview %reinterpret_cast[%28] [%29] [%c1_42] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_47 = memref.reinterpret_cast %subview_46 to offset: [0], sizes: [%29], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_48 = arith.constant 0 : index
                  %30 = memref.load %alloca_7[%c0_48] : memref<1xi32>
                  %31 = arith.index_cast %30 : i32 to index
                  %c0_49 = arith.constant 0 : index
                  %dim_50 = memref.dim %reinterpret_cast_47, %c0_49 : memref<?xf64>
                  %32 = arith.subi %dim_50, %31 : index
                  %c1_51 = arith.constant 1 : index
                  %subview_52 = memref.subview %reinterpret_cast_47[%31] [%32] [%c1_51] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_53 = arith.constant 0 : index
                  memref.store %17, %subview_52[%c0_53] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_54 = arith.constant 0 : index
                  %33 = memref.load %alloca_7[%c0_54] : memref<1xi32>
                  %c1_i32_55 = arith.constant 1 : i32
                  %34 = arith.addi %33, %c1_i32_55 : i32
                  %c0_56 = arith.constant 0 : index
                  memref.store %34, %alloca_7[%c0_56] : memref<1xi32>
                  scf.yield
                }
              }
            }
            %c0_25 = arith.constant 0 : index
            %11 = memref.load %alloca_6[%c0_25] : memref<1xi32>
            %c1_i32_26 = arith.constant 1 : i32
            %12 = arith.addi %11, %c1_i32_26 : i32
            %c0_27 = arith.constant 0 : index
            memref.store %12, %alloca_6[%c0_27] : memref<1xi32>
            scf.yield
          }
        }
        %c0_21 = arith.constant 0 : index
        %9 = memref.load %alloca_5[%c0_21] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %10 = arith.addi %9, %c1_i32 : i32
        %c0_22 = arith.constant 0 : index
        memref.store %10, %alloca_5[%c0_22] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_7] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_8] : memref<1xi32>
    %c0_9 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_10] : memref<1xmemref<?xf64>>
    %c0_11 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_11] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_12 = arith.constant 0 : index
    %3 = memref.load %alloca_1[%c0_12] : memref<1xi32>
    %c0_i32_13 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_13 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_14 = arith.constant 0 : index
    %6 = memref.load %alloca_1[%c0_14] : memref<1xi32>
    %c0_i32_15 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_15 : i32
    %8 = arith.extsi %7 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_16 = arith.constant 0 : i32
      %c0_17 = arith.constant 0 : index
      memref.store %c0_i32_16, %alloca_4[%c0_17] : memref<1xi32>
      scf.while : () -> () {
        %c0_18 = arith.constant 0 : index
        %9 = memref.load %alloca_4[%c0_18] : memref<1xi32>
        %c0_19 = arith.constant 0 : index
        %10 = memref.load %alloca[%c0_19] : memref<1xi32>
        %11 = arith.cmpi slt, %9, %10 : i32
        scf.condition(%11)
      } do {
        memref.alloca_scope  {
          %c0_i32_20 = arith.constant 0 : i32
          %c0_21 = arith.constant 0 : index
          memref.store %c0_i32_20, %alloca_5[%c0_21] : memref<1xi32>
          scf.while : () -> () {
            %c0_22 = arith.constant 0 : index
            %11 = memref.load %alloca_5[%c0_22] : memref<1xi32>
            %c0_23 = arith.constant 0 : index
            %12 = memref.load %alloca_0[%c0_23] : memref<1xi32>
            %13 = arith.cmpi slt, %11, %12 : i32
            scf.condition(%13)
          } do {
            memref.alloca_scope  {
              %c0_i32_25 = arith.constant 0 : i32
              %c0_26 = arith.constant 0 : index
              memref.store %c0_i32_25, %alloca_6[%c0_26] : memref<1xi32>
              scf.while : () -> () {
                %c0_27 = arith.constant 0 : index
                %13 = memref.load %alloca_6[%c0_27] : memref<1xi32>
                %c0_28 = arith.constant 0 : index
                %14 = memref.load %alloca_1[%c0_28] : memref<1xi32>
                %15 = arith.cmpi slt, %13, %14 : i32
                scf.condition(%15)
              } do {
                %c0_27 = arith.constant 0 : index
                %13 = memref.load %alloca_4[%c0_27] : memref<1xi32>
                %c0_28 = arith.constant 0 : index
                %14 = memref.load %alloca_5[%c0_28] : memref<1xi32>
                %15 = arith.muli %13, %14 : i32
                %c0_29 = arith.constant 0 : index
                %16 = memref.load %alloca_6[%c0_29] : memref<1xi32>
                %17 = arith.addi %15, %16 : i32
                %c0_30 = arith.constant 0 : index
                %18 = memref.load %alloca_1[%c0_30] : memref<1xi32>
                %19 = arith.remsi %17, %18 : i32
                %20 = arith.sitofp %19 : i32 to f64
                %c0_31 = arith.constant 0 : index
                %21 = memref.load %alloca_1[%c0_31] : memref<1xi32>
                %22 = arith.sitofp %21 : i32 to f64
                %23 = arith.divf %20, %22 : f64
                %c0_32 = arith.constant 0 : index
                %24 = memref.load %alloca_2[%c0_32] : memref<1xmemref<?xf64>>
                %c0_33 = arith.constant 0 : index
                %25 = memref.load %alloca_4[%c0_33] : memref<1xi32>
                %26 = arith.muli %2, %5 : i64
                %27 = arith.extsi %25 : i32 to i64
                %28 = arith.muli %27, %26 : i64
                %29 = arith.index_cast %28 : i64 to index
                %c1 = arith.constant 1 : index
                %c0_34 = arith.constant 0 : index
                %c0_35 = arith.constant 0 : index
                %dim = memref.dim %24, %c0_35 : memref<?xf64>
                %30 = arith.subi %dim, %29 : index
                %subview = memref.subview %24[%29] [%30] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%30], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_36 = arith.constant 0 : index
                %31 = memref.load %alloca_5[%c0_36] : memref<1xi32>
                %32 = arith.extsi %31 : i32 to i64
                %33 = arith.muli %32, %5 : i64
                %34 = arith.index_cast %33 : i64 to index
                %c1_37 = arith.constant 1 : index
                %c0_38 = arith.constant 0 : index
                %c0_39 = arith.constant 0 : index
                %dim_40 = memref.dim %reinterpret_cast, %c0_39 : memref<?xf64>
                %35 = arith.subi %dim_40, %34 : index
                %subview_41 = memref.subview %reinterpret_cast[%34] [%35] [%c1_37] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_42 = memref.reinterpret_cast %subview_41 to offset: [0], sizes: [%35], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_43 = arith.constant 0 : index
                %36 = memref.load %alloca_6[%c0_43] : memref<1xi32>
                %37 = arith.index_cast %36 : i32 to index
                %c0_44 = arith.constant 0 : index
                %dim_45 = memref.dim %reinterpret_cast_42, %c0_44 : memref<?xf64>
                %38 = arith.subi %dim_45, %37 : index
                %c1_46 = arith.constant 1 : index
                %subview_47 = memref.subview %reinterpret_cast_42[%37] [%38] [%c1_46] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_48 = arith.constant 0 : index
                memref.store %23, %subview_47[%c0_48] : memref<?xf64, strided<[?], offset: ?>>
                %c0_49 = arith.constant 0 : index
                %39 = memref.load %alloca_6[%c0_49] : memref<1xi32>
                %c1_i32_50 = arith.constant 1 : i32
                %40 = arith.addi %39, %c1_i32_50 : i32
                %c0_51 = arith.constant 0 : index
                memref.store %40, %alloca_6[%c0_51] : memref<1xi32>
                scf.yield
              }
            }
            %c0_22 = arith.constant 0 : index
            %11 = memref.load %alloca_5[%c0_22] : memref<1xi32>
            %c1_i32_23 = arith.constant 1 : i32
            %12 = arith.addi %11, %c1_i32_23 : i32
            %c0_24 = arith.constant 0 : index
            memref.store %12, %alloca_5[%c0_24] : memref<1xi32>
            scf.yield
          }
        }
        %c0_18 = arith.constant 0 : index
        %9 = memref.load %alloca_4[%c0_18] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %10 = arith.addi %9, %c1_i32 : i32
        %c0_19 = arith.constant 0 : index
        memref.store %10, %alloca_4[%c0_19] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_16 = arith.constant 0 : i32
      %c0_17 = arith.constant 0 : index
      memref.store %c0_i32_16, %alloca_4[%c0_17] : memref<1xi32>
      scf.while : () -> () {
        %c0_18 = arith.constant 0 : index
        %9 = memref.load %alloca_4[%c0_18] : memref<1xi32>
        %c0_19 = arith.constant 0 : index
        %10 = memref.load %alloca_1[%c0_19] : memref<1xi32>
        %11 = arith.cmpi slt, %9, %10 : i32
        scf.condition(%11)
      } do {
        memref.alloca_scope  {
          %c0_i32_20 = arith.constant 0 : i32
          %c0_21 = arith.constant 0 : index
          memref.store %c0_i32_20, %alloca_5[%c0_21] : memref<1xi32>
          scf.while : () -> () {
            %c0_22 = arith.constant 0 : index
            %11 = memref.load %alloca_5[%c0_22] : memref<1xi32>
            %c0_23 = arith.constant 0 : index
            %12 = memref.load %alloca_1[%c0_23] : memref<1xi32>
            %13 = arith.cmpi slt, %11, %12 : i32
            scf.condition(%13)
          } do {
            %c0_22 = arith.constant 0 : index
            %11 = memref.load %alloca_4[%c0_22] : memref<1xi32>
            %c0_23 = arith.constant 0 : index
            %12 = memref.load %alloca_5[%c0_23] : memref<1xi32>
            %13 = arith.muli %11, %12 : i32
            %c0_24 = arith.constant 0 : index
            %14 = memref.load %alloca_1[%c0_24] : memref<1xi32>
            %15 = arith.remsi %13, %14 : i32
            %16 = arith.sitofp %15 : i32 to f64
            %c0_25 = arith.constant 0 : index
            %17 = memref.load %alloca_1[%c0_25] : memref<1xi32>
            %18 = arith.sitofp %17 : i32 to f64
            %19 = arith.divf %16, %18 : f64
            %c0_26 = arith.constant 0 : index
            %20 = memref.load %alloca_3[%c0_26] : memref<1xmemref<?xf64>>
            %c0_27 = arith.constant 0 : index
            %21 = memref.load %alloca_4[%c0_27] : memref<1xi32>
            %22 = arith.extsi %21 : i32 to i64
            %23 = arith.muli %22, %8 : i64
            %24 = arith.index_cast %23 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_28 = arith.constant 0 : index
            %c0_29 = arith.constant 0 : index
            %dim = memref.dim %20, %c0_29 : memref<?xf64>
            %25 = arith.subi %dim, %24 : index
            %subview = memref.subview %20[%24] [%25] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%25], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_30 = arith.constant 0 : index
            %26 = memref.load %alloca_5[%c0_30] : memref<1xi32>
            %27 = arith.index_cast %26 : i32 to index
            %c0_31 = arith.constant 0 : index
            %dim_32 = memref.dim %reinterpret_cast, %c0_31 : memref<?xf64>
            %28 = arith.subi %dim_32, %27 : index
            %c1_33 = arith.constant 1 : index
            %subview_34 = memref.subview %reinterpret_cast[%27] [%28] [%c1_33] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_35 = arith.constant 0 : index
            memref.store %19, %subview_34[%c0_35] : memref<?xf64, strided<[?], offset: ?>>
            %c0_36 = arith.constant 0 : index
            %29 = memref.load %alloca_5[%c0_36] : memref<1xi32>
            %c1_i32_37 = arith.constant 1 : i32
            %30 = arith.addi %29, %c1_i32_37 : i32
            %c0_38 = arith.constant 0 : index
            memref.store %30, %alloca_5[%c0_38] : memref<1xi32>
            scf.yield
          }
        }
        %c0_18 = arith.constant 0 : index
        %9 = memref.load %alloca_4[%c0_18] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %10 = arith.addi %9, %c1_i32 : i32
        %c0_19 = arith.constant 0 : index
        memref.store %10, %alloca_4[%c0_19] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  llvm.func @polybench_timer_stop(...)
  llvm.func @polybench_timer_print(...)
  llvm.func @fprintf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global external @stderr() {addr_space = 0 : i32, alignment = 8 : i64} : !llvm.ptr
  memref.global "private" constant @".str" : memref<23xi8> = dense<[61, 61, 66, 69, 71, 73, 78, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.1" : memref<15xi8> = dense<[98, 101, 103, 105, 110, 32, 100, 117, 109, 112, 58, 32, 37, 115, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[65, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.3" : memref<2xi8> = dense<[10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.4" : memref<8xi8> = dense<[37, 48, 46, 50, 108, 102, 32, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.5" : memref<17xi8> = dense<[10, 101, 110, 100, 32, 32, 32, 100, 117, 109, 112, 58, 32, 37, 115, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.6" : memref<23xi8> = dense<[61, 61, 69, 78, 68, 32, 32, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  func.func private @print_array(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_6 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_6] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_7] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_8] : memref<1xmemref<?xf64>>
    %c0_9 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_9] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_10 = arith.constant 0 : index
    %3 = memref.load %alloca_1[%c0_10] : memref<1xi32>
    %c0_i32_11 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_11 : i32
    %5 = arith.extsi %4 : i32 to i64
    %6 = llvm.mlir.addressof @stderr : !llvm.ptr
    %7 = llvm.load %6 : !llvm.ptr -> !llvm.ptr
    %8 = memref.get_global @".str" : memref<23xi8>
    %c0_12 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c23 = arith.constant 23 : index
    %subview = memref.subview %8[%c0_12] [%c23] [%c1] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%c23], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr = memref.extract_aligned_pointer_as_index %reinterpret_cast : memref<?xi8> -> index
    %9 = arith.index_castui %intptr : index to i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr
    %11 = llvm.call @fprintf(%7, %10) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %12 = llvm.mlir.addressof @stderr : !llvm.ptr
    %13 = llvm.load %12 : !llvm.ptr -> !llvm.ptr
    %14 = memref.get_global @".str.1" : memref<15xi8>
    %c0_13 = arith.constant 0 : index
    %c1_14 = arith.constant 1 : index
    %c15 = arith.constant 15 : index
    %subview_15 = memref.subview %14[%c0_13] [%c15] [%c1_14] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_16 = memref.reinterpret_cast %subview_15 to offset: [0], sizes: [%c15], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %15 = memref.get_global @".str.2" : memref<2xi8>
    %c0_17 = arith.constant 0 : index
    %c1_18 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %subview_19 = memref.subview %15[%c0_17] [%c2] [%c1_18] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_20 = memref.reinterpret_cast %subview_19 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_21 = memref.extract_aligned_pointer_as_index %reinterpret_cast_16 : memref<?xi8> -> index
    %16 = arith.index_castui %intptr_21 : index to i64
    %17 = llvm.inttoptr %16 : i64 to !llvm.ptr
    %intptr_22 = memref.extract_aligned_pointer_as_index %reinterpret_cast_20 : memref<?xi8> -> index
    %18 = arith.index_castui %intptr_22 : index to i64
    %19 = llvm.inttoptr %18 : i64 to !llvm.ptr
    %20 = llvm.call @fprintf(%13, %17, %19) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32_40 = arith.constant 0 : i32
      %c0_41 = arith.constant 0 : index
      memref.store %c0_i32_40, %alloca_3[%c0_41] : memref<1xi32>
      scf.while : () -> () {
        %c0_42 = arith.constant 0 : index
        %36 = memref.load %alloca_3[%c0_42] : memref<1xi32>
        %c0_43 = arith.constant 0 : index
        %37 = memref.load %alloca[%c0_43] : memref<1xi32>
        %38 = arith.cmpi slt, %36, %37 : i32
        scf.condition(%38)
      } do {
        memref.alloca_scope  {
          %c0_i32_44 = arith.constant 0 : i32
          %c0_45 = arith.constant 0 : index
          memref.store %c0_i32_44, %alloca_4[%c0_45] : memref<1xi32>
          scf.while : () -> () {
            %c0_46 = arith.constant 0 : index
            %38 = memref.load %alloca_4[%c0_46] : memref<1xi32>
            %c0_47 = arith.constant 0 : index
            %39 = memref.load %alloca_0[%c0_47] : memref<1xi32>
            %40 = arith.cmpi slt, %38, %39 : i32
            scf.condition(%40)
          } do {
            memref.alloca_scope  {
              %c0_i32_49 = arith.constant 0 : i32
              %c0_50 = arith.constant 0 : index
              memref.store %c0_i32_49, %alloca_5[%c0_50] : memref<1xi32>
              scf.while : () -> () {
                %c0_51 = arith.constant 0 : index
                %40 = memref.load %alloca_5[%c0_51] : memref<1xi32>
                %c0_52 = arith.constant 0 : index
                %41 = memref.load %alloca_1[%c0_52] : memref<1xi32>
                %42 = arith.cmpi slt, %40, %41 : i32
                scf.condition(%42)
              } do {
                memref.alloca_scope  {
                  memref.alloca_scope  {
                    %c0_79 = arith.constant 0 : index
                    %64 = memref.load %alloca_3[%c0_79] : memref<1xi32>
                    %c0_80 = arith.constant 0 : index
                    %65 = memref.load %alloca_0[%c0_80] : memref<1xi32>
                    %66 = arith.muli %64, %65 : i32
                    %c0_81 = arith.constant 0 : index
                    %67 = memref.load %alloca_1[%c0_81] : memref<1xi32>
                    %68 = arith.muli %66, %67 : i32
                    %c0_82 = arith.constant 0 : index
                    %69 = memref.load %alloca_4[%c0_82] : memref<1xi32>
                    %c0_83 = arith.constant 0 : index
                    %70 = memref.load %alloca_1[%c0_83] : memref<1xi32>
                    %71 = arith.muli %69, %70 : i32
                    %72 = arith.addi %68, %71 : i32
                    %c0_84 = arith.constant 0 : index
                    %73 = memref.load %alloca_5[%c0_84] : memref<1xi32>
                    %74 = arith.addi %72, %73 : i32
                    %c20_i32 = arith.constant 20 : i32
                    %75 = arith.remsi %74, %c20_i32 : i32
                    %c0_i32_85 = arith.constant 0 : i32
                    %76 = arith.cmpi eq, %75, %c0_i32_85 : i32
                    scf.if %76 {
                      %77 = llvm.mlir.addressof @stderr : !llvm.ptr
                      %78 = llvm.load %77 : !llvm.ptr -> !llvm.ptr
                      %79 = memref.get_global @".str.3" : memref<2xi8>
                      %c0_86 = arith.constant 0 : index
                      %c1_87 = arith.constant 1 : index
                      %c2_88 = arith.constant 2 : index
                      %subview_89 = memref.subview %79[%c0_86] [%c2_88] [%c1_87] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
                      %reinterpret_cast_90 = memref.reinterpret_cast %subview_89 to offset: [0], sizes: [%c2_88], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                      %intptr_91 = memref.extract_aligned_pointer_as_index %reinterpret_cast_90 : memref<?xi8> -> index
                      %80 = arith.index_castui %intptr_91 : index to i64
                      %81 = llvm.inttoptr %80 : i64 to !llvm.ptr
                      %82 = llvm.call @fprintf(%78, %81) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                    }
                  }
                  %42 = llvm.mlir.addressof @stderr : !llvm.ptr
                  %43 = llvm.load %42 : !llvm.ptr -> !llvm.ptr
                  %44 = memref.get_global @".str.4" : memref<8xi8>
                  %c0_54 = arith.constant 0 : index
                  %c1_55 = arith.constant 1 : index
                  %c8 = arith.constant 8 : index
                  %subview_56 = memref.subview %44[%c0_54] [%c8] [%c1_55] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
                  %reinterpret_cast_57 = memref.reinterpret_cast %subview_56 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                  %c0_58 = arith.constant 0 : index
                  %45 = memref.load %alloca_2[%c0_58] : memref<1xmemref<?xf64>>
                  %c0_59 = arith.constant 0 : index
                  %46 = memref.load %alloca_3[%c0_59] : memref<1xi32>
                  %47 = arith.muli %2, %5 : i64
                  %48 = arith.extsi %46 : i32 to i64
                  %49 = arith.muli %48, %47 : i64
                  %50 = arith.index_cast %49 : i64 to index
                  %c1_60 = arith.constant 1 : index
                  %c0_61 = arith.constant 0 : index
                  %c0_62 = arith.constant 0 : index
                  %dim = memref.dim %45, %c0_62 : memref<?xf64>
                  %51 = arith.subi %dim, %50 : index
                  %subview_63 = memref.subview %45[%50] [%51] [%c1_60] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_64 = memref.reinterpret_cast %subview_63 to offset: [0], sizes: [%51], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_65 = arith.constant 0 : index
                  %52 = memref.load %alloca_4[%c0_65] : memref<1xi32>
                  %53 = arith.extsi %52 : i32 to i64
                  %54 = arith.muli %53, %5 : i64
                  %55 = arith.index_cast %54 : i64 to index
                  %c1_66 = arith.constant 1 : index
                  %c0_67 = arith.constant 0 : index
                  %c0_68 = arith.constant 0 : index
                  %dim_69 = memref.dim %reinterpret_cast_64, %c0_68 : memref<?xf64>
                  %56 = arith.subi %dim_69, %55 : index
                  %subview_70 = memref.subview %reinterpret_cast_64[%55] [%56] [%c1_66] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_71 = memref.reinterpret_cast %subview_70 to offset: [0], sizes: [%56], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_72 = arith.constant 0 : index
                  %57 = memref.load %alloca_5[%c0_72] : memref<1xi32>
                  %58 = arith.index_cast %57 : i32 to index
                  %c0_73 = arith.constant 0 : index
                  %dim_74 = memref.dim %reinterpret_cast_71, %c0_73 : memref<?xf64>
                  %59 = arith.subi %dim_74, %58 : index
                  %c1_75 = arith.constant 1 : index
                  %subview_76 = memref.subview %reinterpret_cast_71[%58] [%59] [%c1_75] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_77 = arith.constant 0 : index
                  %60 = memref.load %subview_76[%c0_77] : memref<?xf64, strided<[?], offset: ?>>
                  %intptr_78 = memref.extract_aligned_pointer_as_index %reinterpret_cast_57 : memref<?xi8> -> index
                  %61 = arith.index_castui %intptr_78 : index to i64
                  %62 = llvm.inttoptr %61 : i64 to !llvm.ptr
                  %63 = llvm.call @fprintf(%43, %62, %60) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
                }
                %c0_51 = arith.constant 0 : index
                %40 = memref.load %alloca_5[%c0_51] : memref<1xi32>
                %c1_i32_52 = arith.constant 1 : i32
                %41 = arith.addi %40, %c1_i32_52 : i32
                %c0_53 = arith.constant 0 : index
                memref.store %41, %alloca_5[%c0_53] : memref<1xi32>
                scf.yield
              }
            }
            %c0_46 = arith.constant 0 : index
            %38 = memref.load %alloca_4[%c0_46] : memref<1xi32>
            %c1_i32_47 = arith.constant 1 : i32
            %39 = arith.addi %38, %c1_i32_47 : i32
            %c0_48 = arith.constant 0 : index
            memref.store %39, %alloca_4[%c0_48] : memref<1xi32>
            scf.yield
          }
        }
        %c0_42 = arith.constant 0 : index
        %36 = memref.load %alloca_3[%c0_42] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %37 = arith.addi %36, %c1_i32 : i32
        %c0_43 = arith.constant 0 : index
        memref.store %37, %alloca_3[%c0_43] : memref<1xi32>
        scf.yield
      }
    }
    %21 = llvm.mlir.addressof @stderr : !llvm.ptr
    %22 = llvm.load %21 : !llvm.ptr -> !llvm.ptr
    %23 = memref.get_global @".str.5" : memref<17xi8>
    %c0_23 = arith.constant 0 : index
    %c1_24 = arith.constant 1 : index
    %c17 = arith.constant 17 : index
    %subview_25 = memref.subview %23[%c0_23] [%c17] [%c1_24] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_26 = memref.reinterpret_cast %subview_25 to offset: [0], sizes: [%c17], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %24 = memref.get_global @".str.2" : memref<2xi8>
    %c0_27 = arith.constant 0 : index
    %c1_28 = arith.constant 1 : index
    %c2_29 = arith.constant 2 : index
    %subview_30 = memref.subview %24[%c0_27] [%c2_29] [%c1_28] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_31 = memref.reinterpret_cast %subview_30 to offset: [0], sizes: [%c2_29], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_32 = memref.extract_aligned_pointer_as_index %reinterpret_cast_26 : memref<?xi8> -> index
    %25 = arith.index_castui %intptr_32 : index to i64
    %26 = llvm.inttoptr %25 : i64 to !llvm.ptr
    %intptr_33 = memref.extract_aligned_pointer_as_index %reinterpret_cast_31 : memref<?xi8> -> index
    %27 = arith.index_castui %intptr_33 : index to i64
    %28 = llvm.inttoptr %27 : i64 to !llvm.ptr
    %29 = llvm.call @fprintf(%22, %26, %28) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %30 = llvm.mlir.addressof @stderr : !llvm.ptr
    %31 = llvm.load %30 : !llvm.ptr -> !llvm.ptr
    %32 = memref.get_global @".str.6" : memref<23xi8>
    %c0_34 = arith.constant 0 : index
    %c1_35 = arith.constant 1 : index
    %c23_36 = arith.constant 23 : index
    %subview_37 = memref.subview %32[%c0_34] [%c23_36] [%c1_35] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_38 = memref.reinterpret_cast %subview_37 to offset: [0], sizes: [%c23_36], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_39 = memref.extract_aligned_pointer_as_index %reinterpret_cast_38 : memref<?xi8> -> index
    %33 = arith.index_castui %intptr_39 : index to i64
    %34 = llvm.inttoptr %33 : i64 to !llvm.ptr
    %35 = llvm.call @fprintf(%31, %34) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
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
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_8] : memref<1xmemref<?xmemref<?xi8>>>
    %c150_i32 = arith.constant 150 : i32
    %c0_9 = arith.constant 0 : index
    memref.store %c150_i32, %alloca_2[%c0_9] : memref<1xi32>
    %c140_i32 = arith.constant 140 : i32
    %c0_10 = arith.constant 0 : index
    memref.store %c140_i32, %alloca_3[%c0_10] : memref<1xi32>
    %c160_i32 = arith.constant 160 : i32
    %c0_11 = arith.constant 0 : index
    memref.store %c160_i32, %alloca_4[%c0_11] : memref<1xi32>
    %c0_12 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_12] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_13 = arith.constant 0 : index
    %2 = memref.load %alloca_3[%c0_13] : memref<1xi32>
    %c0_i32_14 = arith.constant 0 : i32
    %3 = arith.addi %2, %c0_i32_14 : i32
    %4 = arith.muli %1, %3 : i32
    %c0_15 = arith.constant 0 : index
    %5 = memref.load %alloca_4[%c0_15] : memref<1xi32>
    %c0_i32_16 = arith.constant 0 : i32
    %6 = arith.addi %5, %c0_i32_16 : i32
    %7 = arith.muli %4, %6 : i32
    %8 = arith.extsi %7 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %9 = arith.trunci %c8_i64 : i64 to i32
    %10 = call @polybench_alloc_data(%8, %9) : (i64, i32) -> !llvm.ptr
    %11 = builtin.unrealized_conversion_cast %10 : !llvm.ptr to memref<?xf64>
    %c0_17 = arith.constant 0 : index
    memref.store %11, %alloca_5[%c0_17] : memref<1xmemref<?xf64>>
    %c0_18 = arith.constant 0 : index
    %12 = memref.load %alloca_4[%c0_18] : memref<1xi32>
    %c0_i32_19 = arith.constant 0 : i32
    %13 = arith.addi %12, %c0_i32_19 : i32
    %14 = arith.extsi %13 : i32 to i64
    %c8_i64_20 = arith.constant 8 : i64
    %15 = arith.trunci %c8_i64_20 : i64 to i32
    %16 = call @polybench_alloc_data(%14, %15) : (i64, i32) -> !llvm.ptr
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.ptr to memref<?xf64>
    %c0_21 = arith.constant 0 : index
    memref.store %17, %alloca_6[%c0_21] : memref<1xmemref<?xf64>>
    %c0_22 = arith.constant 0 : index
    %18 = memref.load %alloca_4[%c0_22] : memref<1xi32>
    %c0_i32_23 = arith.constant 0 : i32
    %19 = arith.addi %18, %c0_i32_23 : i32
    %c0_24 = arith.constant 0 : index
    %20 = memref.load %alloca_4[%c0_24] : memref<1xi32>
    %c0_i32_25 = arith.constant 0 : i32
    %21 = arith.addi %20, %c0_i32_25 : i32
    %22 = arith.muli %19, %21 : i32
    %23 = arith.extsi %22 : i32 to i64
    %c8_i64_26 = arith.constant 8 : i64
    %24 = arith.trunci %c8_i64_26 : i64 to i32
    %25 = call @polybench_alloc_data(%23, %24) : (i64, i32) -> !llvm.ptr
    %26 = builtin.unrealized_conversion_cast %25 : !llvm.ptr to memref<?xf64>
    %c0_27 = arith.constant 0 : index
    memref.store %26, %alloca_7[%c0_27] : memref<1xmemref<?xf64>>
    %c0_28 = arith.constant 0 : index
    %27 = memref.load %alloca_2[%c0_28] : memref<1xi32>
    %c0_29 = arith.constant 0 : index
    %28 = memref.load %alloca_3[%c0_29] : memref<1xi32>
    %c0_30 = arith.constant 0 : index
    %29 = memref.load %alloca_4[%c0_30] : memref<1xi32>
    %c0_31 = arith.constant 0 : index
    %30 = memref.load %alloca_5[%c0_31] : memref<1xmemref<?xf64>>
    %c0_32 = arith.constant 0 : index
    %31 = memref.load %alloca_7[%c0_32] : memref<1xmemref<?xf64>>
    call @init_array(%27, %28, %29, %30, %31) : (i32, i32, i32, memref<?xf64>, memref<?xf64>) -> ()
    %32 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %32() : !llvm.ptr, () -> ()
    %c0_33 = arith.constant 0 : index
    %33 = memref.load %alloca_2[%c0_33] : memref<1xi32>
    %c0_34 = arith.constant 0 : index
    %34 = memref.load %alloca_3[%c0_34] : memref<1xi32>
    %c0_35 = arith.constant 0 : index
    %35 = memref.load %alloca_4[%c0_35] : memref<1xi32>
    %c0_36 = arith.constant 0 : index
    %36 = memref.load %alloca_5[%c0_36] : memref<1xmemref<?xf64>>
    %c0_37 = arith.constant 0 : index
    %37 = memref.load %alloca_7[%c0_37] : memref<1xmemref<?xf64>>
    %c0_38 = arith.constant 0 : index
    %38 = memref.load %alloca_6[%c0_38] : memref<1xmemref<?xf64>>
    call @kernel_doitgen(%33, %34, %35, %36, %37, %38) : (i32, i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %39 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %39() : !llvm.ptr, () -> ()
    %40 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %40() : !llvm.ptr, () -> ()
    %c0_39 = arith.constant 0 : index
    %41 = memref.load %alloca_2[%c0_39] : memref<1xi32>
    %c0_40 = arith.constant 0 : index
    %42 = memref.load %alloca_3[%c0_40] : memref<1xi32>
    %c0_41 = arith.constant 0 : index
    %43 = memref.load %alloca_4[%c0_41] : memref<1xi32>
    %c0_42 = arith.constant 0 : index
    %44 = memref.load %alloca_5[%c0_42] : memref<1xmemref<?xf64>>
    call @print_array(%41, %42, %43, %44) : (i32, i32, i32, memref<?xf64>) -> ()
    %c0_43 = arith.constant 0 : index
    %45 = memref.load %alloca_5[%c0_43] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %45 : memref<?xf64> -> index
    %46 = arith.index_castui %intptr : index to i64
    %47 = llvm.inttoptr %46 : i64 to !llvm.ptr
    call @free(%47) : (!llvm.ptr) -> ()
    %c0_44 = arith.constant 0 : index
    %48 = memref.load %alloca_6[%c0_44] : memref<1xmemref<?xf64>>
    %intptr_45 = memref.extract_aligned_pointer_as_index %48 : memref<?xf64> -> index
    %49 = arith.index_castui %intptr_45 : index to i64
    %50 = llvm.inttoptr %49 : i64 to !llvm.ptr
    call @free(%50) : (!llvm.ptr) -> ()
    %c0_46 = arith.constant 0 : index
    %51 = memref.load %alloca_7[%c0_46] : memref<1xmemref<?xf64>>
    %intptr_47 = memref.extract_aligned_pointer_as_index %51 : memref<?xf64> -> index
    %52 = arith.index_castui %intptr_47 : index to i64
    %53 = llvm.inttoptr %52 : i64 to !llvm.ptr
    call @free(%53) : (!llvm.ptr) -> ()
    %c0_i32_48 = arith.constant 0 : i32
    %c0_49 = arith.constant 0 : index
    memref.store %c0_i32_48, %alloca_1[%c0_49] : memref<1xi32>
    %c0_50 = arith.constant 0 : index
    %54 = memref.load %alloca_1[%c0_50] : memref<1xi32>
    return %54 : i32
  }
}

