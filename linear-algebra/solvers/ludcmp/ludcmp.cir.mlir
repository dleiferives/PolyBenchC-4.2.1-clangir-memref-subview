module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/solvers/ludcmp/ludcmp.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %alloca_7 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_8 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_9 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_10 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_11 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_12] : memref<1xmemref<?xf64>>
    %c0_13 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_13] : memref<1xmemref<?xf64>>
    %c0_14 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_14] : memref<1xmemref<?xf64>>
    %c0_15 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_15] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_16 = arith.constant 0 : index
    %3 = memref.load %alloca[%c0_16] : memref<1xi32>
    %4 = arith.sitofp %3 : i32 to f64
    %c0_17 = arith.constant 0 : index
    memref.store %4, %alloca_6[%c0_17] : memref<1xf64>
    memref.alloca_scope  {
      %c0_i32_26 = arith.constant 0 : i32
      %c0_27 = arith.constant 0 : index
      memref.store %c0_i32_26, %alloca_4[%c0_27] : memref<1xi32>
      scf.while : () -> () {
        %c0_28 = arith.constant 0 : index
        %20 = memref.load %alloca_4[%c0_28] : memref<1xi32>
        %c0_29 = arith.constant 0 : index
        %21 = memref.load %alloca[%c0_29] : memref<1xi32>
        %22 = arith.cmpi slt, %20, %21 : i32
        scf.condition(%22)
      } do {
        memref.alloca_scope  {
          %c0_i32_30 = arith.constant 0 : i32
          %22 = arith.sitofp %c0_i32_30 : i32 to f64
          %c0_31 = arith.constant 0 : index
          %23 = memref.load %alloca_2[%c0_31] : memref<1xmemref<?xf64>>
          %c0_32 = arith.constant 0 : index
          %24 = memref.load %alloca_4[%c0_32] : memref<1xi32>
          %25 = arith.index_cast %24 : i32 to index
          %c0_33 = arith.constant 0 : index
          %dim = memref.dim %23, %c0_33 : memref<?xf64>
          %26 = arith.subi %dim, %25 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %23[%25] [%26] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_34 = arith.constant 0 : index
          memref.store %22, %subview[%c0_34] : memref<?xf64, strided<[?], offset: ?>>
          %c0_i32_35 = arith.constant 0 : i32
          %27 = arith.sitofp %c0_i32_35 : i32 to f64
          %c0_36 = arith.constant 0 : index
          %28 = memref.load %alloca_3[%c0_36] : memref<1xmemref<?xf64>>
          %c0_37 = arith.constant 0 : index
          %29 = memref.load %alloca_4[%c0_37] : memref<1xi32>
          %30 = arith.index_cast %29 : i32 to index
          %c0_38 = arith.constant 0 : index
          %dim_39 = memref.dim %28, %c0_38 : memref<?xf64>
          %31 = arith.subi %dim_39, %30 : index
          %c1_40 = arith.constant 1 : index
          %subview_41 = memref.subview %28[%30] [%31] [%c1_40] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_42 = arith.constant 0 : index
          memref.store %27, %subview_41[%c0_42] : memref<?xf64, strided<[?], offset: ?>>
          %c0_43 = arith.constant 0 : index
          %32 = memref.load %alloca_4[%c0_43] : memref<1xi32>
          %c1_i32_44 = arith.constant 1 : i32
          %33 = arith.addi %32, %c1_i32_44 : i32
          %34 = arith.sitofp %33 : i32 to f64
          %c0_45 = arith.constant 0 : index
          %35 = memref.load %alloca_6[%c0_45] : memref<1xf64>
          %36 = arith.divf %34, %35 : f64
          %cst = arith.constant 2.000000e+00 : f64
          %37 = arith.divf %36, %cst : f64
          %c4_i32 = arith.constant 4 : i32
          %38 = arith.sitofp %c4_i32 : i32 to f64
          %39 = arith.addf %37, %38 : f64
          %c0_46 = arith.constant 0 : index
          %40 = memref.load %alloca_1[%c0_46] : memref<1xmemref<?xf64>>
          %c0_47 = arith.constant 0 : index
          %41 = memref.load %alloca_4[%c0_47] : memref<1xi32>
          %42 = arith.index_cast %41 : i32 to index
          %c0_48 = arith.constant 0 : index
          %dim_49 = memref.dim %40, %c0_48 : memref<?xf64>
          %43 = arith.subi %dim_49, %42 : index
          %c1_50 = arith.constant 1 : index
          %subview_51 = memref.subview %40[%42] [%43] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_52 = arith.constant 0 : index
          memref.store %39, %subview_51[%c0_52] : memref<?xf64, strided<[?], offset: ?>>
        }
        %c0_28 = arith.constant 0 : index
        %20 = memref.load %alloca_4[%c0_28] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %21 = arith.addi %20, %c1_i32 : i32
        %c0_29 = arith.constant 0 : index
        memref.store %21, %alloca_4[%c0_29] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_26 = arith.constant 0 : i32
      %c0_27 = arith.constant 0 : index
      memref.store %c0_i32_26, %alloca_4[%c0_27] : memref<1xi32>
      scf.while : () -> () {
        %c0_28 = arith.constant 0 : index
        %20 = memref.load %alloca_4[%c0_28] : memref<1xi32>
        %c0_29 = arith.constant 0 : index
        %21 = memref.load %alloca[%c0_29] : memref<1xi32>
        %22 = arith.cmpi slt, %20, %21 : i32
        scf.condition(%22)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_i32_41 = arith.constant 0 : i32
            %c0_42 = arith.constant 0 : index
            memref.store %c0_i32_41, %alloca_5[%c0_42] : memref<1xi32>
            scf.while : () -> () {
              %c0_43 = arith.constant 0 : index
              %32 = memref.load %alloca_5[%c0_43] : memref<1xi32>
              %c0_44 = arith.constant 0 : index
              %33 = memref.load %alloca_4[%c0_44] : memref<1xi32>
              %34 = arith.cmpi sle, %32, %33 : i32
              scf.condition(%34)
            } do {
              %c0_43 = arith.constant 0 : index
              %32 = memref.load %alloca_5[%c0_43] : memref<1xi32>
              %c0_i32_44 = arith.constant 0 : i32
              %33 = arith.subi %c0_i32_44, %32 : i32
              %c0_45 = arith.constant 0 : index
              %34 = memref.load %alloca[%c0_45] : memref<1xi32>
              %35 = arith.remsi %33, %34 : i32
              %36 = arith.sitofp %35 : i32 to f64
              %c0_46 = arith.constant 0 : index
              %37 = memref.load %alloca[%c0_46] : memref<1xi32>
              %38 = arith.sitofp %37 : i32 to f64
              %39 = arith.divf %36, %38 : f64
              %c1_i32_47 = arith.constant 1 : i32
              %40 = arith.sitofp %c1_i32_47 : i32 to f64
              %41 = arith.addf %39, %40 : f64
              %c0_48 = arith.constant 0 : index
              %42 = memref.load %alloca_0[%c0_48] : memref<1xmemref<?xf64>>
              %c0_49 = arith.constant 0 : index
              %43 = memref.load %alloca_4[%c0_49] : memref<1xi32>
              %44 = arith.extsi %43 : i32 to i64
              %45 = arith.muli %44, %2 : i64
              %46 = arith.index_cast %45 : i64 to index
              %c1_50 = arith.constant 1 : index
              %c0_51 = arith.constant 0 : index
              %c0_52 = arith.constant 0 : index
              %dim_53 = memref.dim %42, %c0_52 : memref<?xf64>
              %47 = arith.subi %dim_53, %46 : index
              %subview_54 = memref.subview %42[%46] [%47] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_55 = memref.reinterpret_cast %subview_54 to offset: [0], sizes: [%47], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_56 = arith.constant 0 : index
              %48 = memref.load %alloca_5[%c0_56] : memref<1xi32>
              %49 = arith.index_cast %48 : i32 to index
              %c0_57 = arith.constant 0 : index
              %dim_58 = memref.dim %reinterpret_cast_55, %c0_57 : memref<?xf64>
              %50 = arith.subi %dim_58, %49 : index
              %c1_59 = arith.constant 1 : index
              %subview_60 = memref.subview %reinterpret_cast_55[%49] [%50] [%c1_59] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_61 = arith.constant 0 : index
              memref.store %41, %subview_60[%c0_61] : memref<?xf64, strided<[?], offset: ?>>
              %c0_62 = arith.constant 0 : index
              %51 = memref.load %alloca_5[%c0_62] : memref<1xi32>
              %c1_i32_63 = arith.constant 1 : i32
              %52 = arith.addi %51, %c1_i32_63 : i32
              %c0_64 = arith.constant 0 : index
              memref.store %52, %alloca_5[%c0_64] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c0_41 = arith.constant 0 : index
            %32 = memref.load %alloca_4[%c0_41] : memref<1xi32>
            %c1_i32_42 = arith.constant 1 : i32
            %33 = arith.addi %32, %c1_i32_42 : i32
            %c0_43 = arith.constant 0 : index
            memref.store %33, %alloca_5[%c0_43] : memref<1xi32>
            scf.while : () -> () {
              %c0_44 = arith.constant 0 : index
              %34 = memref.load %alloca_5[%c0_44] : memref<1xi32>
              %c0_45 = arith.constant 0 : index
              %35 = memref.load %alloca[%c0_45] : memref<1xi32>
              %36 = arith.cmpi slt, %34, %35 : i32
              scf.condition(%36)
            } do {
              memref.alloca_scope  {
                %c0_i32_47 = arith.constant 0 : i32
                %36 = arith.sitofp %c0_i32_47 : i32 to f64
                %c0_48 = arith.constant 0 : index
                %37 = memref.load %alloca_0[%c0_48] : memref<1xmemref<?xf64>>
                %c0_49 = arith.constant 0 : index
                %38 = memref.load %alloca_4[%c0_49] : memref<1xi32>
                %39 = arith.extsi %38 : i32 to i64
                %40 = arith.muli %39, %2 : i64
                %41 = arith.index_cast %40 : i64 to index
                %c1_50 = arith.constant 1 : index
                %c0_51 = arith.constant 0 : index
                %c0_52 = arith.constant 0 : index
                %dim_53 = memref.dim %37, %c0_52 : memref<?xf64>
                %42 = arith.subi %dim_53, %41 : index
                %subview_54 = memref.subview %37[%41] [%42] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_55 = memref.reinterpret_cast %subview_54 to offset: [0], sizes: [%42], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_56 = arith.constant 0 : index
                %43 = memref.load %alloca_5[%c0_56] : memref<1xi32>
                %44 = arith.index_cast %43 : i32 to index
                %c0_57 = arith.constant 0 : index
                %dim_58 = memref.dim %reinterpret_cast_55, %c0_57 : memref<?xf64>
                %45 = arith.subi %dim_58, %44 : index
                %c1_59 = arith.constant 1 : index
                %subview_60 = memref.subview %reinterpret_cast_55[%44] [%45] [%c1_59] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_61 = arith.constant 0 : index
                memref.store %36, %subview_60[%c0_61] : memref<?xf64, strided<[?], offset: ?>>
              }
              %c0_44 = arith.constant 0 : index
              %34 = memref.load %alloca_5[%c0_44] : memref<1xi32>
              %c1_i32_45 = arith.constant 1 : i32
              %35 = arith.addi %34, %c1_i32_45 : i32
              %c0_46 = arith.constant 0 : index
              memref.store %35, %alloca_5[%c0_46] : memref<1xi32>
              scf.yield
            }
          }
          %c1_i32_30 = arith.constant 1 : i32
          %22 = arith.sitofp %c1_i32_30 : i32 to f64
          %c0_31 = arith.constant 0 : index
          %23 = memref.load %alloca_0[%c0_31] : memref<1xmemref<?xf64>>
          %c0_32 = arith.constant 0 : index
          %24 = memref.load %alloca_4[%c0_32] : memref<1xi32>
          %25 = arith.extsi %24 : i32 to i64
          %26 = arith.muli %25, %2 : i64
          %27 = arith.index_cast %26 : i64 to index
          %c1 = arith.constant 1 : index
          %c0_33 = arith.constant 0 : index
          %c0_34 = arith.constant 0 : index
          %dim = memref.dim %23, %c0_34 : memref<?xf64>
          %28 = arith.subi %dim, %27 : index
          %subview = memref.subview %23[%27] [%28] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%28], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
          %c0_35 = arith.constant 0 : index
          %29 = memref.load %alloca_4[%c0_35] : memref<1xi32>
          %30 = arith.index_cast %29 : i32 to index
          %c0_36 = arith.constant 0 : index
          %dim_37 = memref.dim %reinterpret_cast, %c0_36 : memref<?xf64>
          %31 = arith.subi %dim_37, %30 : index
          %c1_38 = arith.constant 1 : index
          %subview_39 = memref.subview %reinterpret_cast[%30] [%31] [%c1_38] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_40 = arith.constant 0 : index
          memref.store %22, %subview_39[%c0_40] : memref<?xf64, strided<[?], offset: ?>>
        }
        %c0_28 = arith.constant 0 : index
        %20 = memref.load %alloca_4[%c0_28] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %21 = arith.addi %20, %c1_i32 : i32
        %c0_29 = arith.constant 0 : index
        memref.store %21, %alloca_4[%c0_29] : memref<1xi32>
        scf.yield
      }
    }
    %c0_18 = arith.constant 0 : index
    %5 = memref.load %alloca[%c0_18] : memref<1xi32>
    %c0_i32_19 = arith.constant 0 : i32
    %6 = arith.addi %5, %c0_i32_19 : i32
    %7 = arith.extsi %6 : i32 to i64
    %c0_20 = arith.constant 0 : index
    %8 = memref.load %alloca[%c0_20] : memref<1xi32>
    %c0_i32_21 = arith.constant 0 : i32
    %9 = arith.addi %8, %c0_i32_21 : i32
    %c0_22 = arith.constant 0 : index
    %10 = memref.load %alloca[%c0_22] : memref<1xi32>
    %c0_i32_23 = arith.constant 0 : i32
    %11 = arith.addi %10, %c0_i32_23 : i32
    %12 = arith.muli %9, %11 : i32
    %13 = arith.extsi %12 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %14 = arith.trunci %c8_i64 : i64 to i32
    %15 = call @polybench_alloc_data(%13, %14) : (i64, i32) -> !llvm.ptr
    %16 = builtin.unrealized_conversion_cast %15 : !llvm.ptr to memref<?xf64>
    %c0_24 = arith.constant 0 : index
    memref.store %16, %alloca_10[%c0_24] : memref<1xmemref<?xf64>>
    memref.alloca_scope  {
      %c0_i32_26 = arith.constant 0 : i32
      %c0_27 = arith.constant 0 : index
      memref.store %c0_i32_26, %alloca_7[%c0_27] : memref<1xi32>
      scf.while : () -> () {
        %c0_28 = arith.constant 0 : index
        %20 = memref.load %alloca_7[%c0_28] : memref<1xi32>
        %c0_29 = arith.constant 0 : index
        %21 = memref.load %alloca[%c0_29] : memref<1xi32>
        %22 = arith.cmpi slt, %20, %21 : i32
        scf.condition(%22)
      } do {
        memref.alloca_scope  {
          %c0_i32_30 = arith.constant 0 : i32
          %c0_31 = arith.constant 0 : index
          memref.store %c0_i32_30, %alloca_8[%c0_31] : memref<1xi32>
          scf.while : () -> () {
            %c0_32 = arith.constant 0 : index
            %22 = memref.load %alloca_8[%c0_32] : memref<1xi32>
            %c0_33 = arith.constant 0 : index
            %23 = memref.load %alloca[%c0_33] : memref<1xi32>
            %24 = arith.cmpi slt, %22, %23 : i32
            scf.condition(%24)
          } do {
            %c0_i32_32 = arith.constant 0 : i32
            %22 = arith.sitofp %c0_i32_32 : i32 to f64
            %c0_33 = arith.constant 0 : index
            %23 = memref.load %alloca_10[%c0_33] : memref<1xmemref<?xf64>>
            %c0_34 = arith.constant 0 : index
            %24 = memref.load %alloca_7[%c0_34] : memref<1xi32>
            %25 = arith.extsi %24 : i32 to i64
            %26 = arith.muli %25, %7 : i64
            %27 = arith.index_cast %26 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_35 = arith.constant 0 : index
            %c0_36 = arith.constant 0 : index
            %dim = memref.dim %23, %c0_36 : memref<?xf64>
            %28 = arith.subi %dim, %27 : index
            %subview = memref.subview %23[%27] [%28] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%28], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_37 = arith.constant 0 : index
            %29 = memref.load %alloca_8[%c0_37] : memref<1xi32>
            %30 = arith.index_cast %29 : i32 to index
            %c0_38 = arith.constant 0 : index
            %dim_39 = memref.dim %reinterpret_cast, %c0_38 : memref<?xf64>
            %31 = arith.subi %dim_39, %30 : index
            %c1_40 = arith.constant 1 : index
            %subview_41 = memref.subview %reinterpret_cast[%30] [%31] [%c1_40] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_42 = arith.constant 0 : index
            memref.store %22, %subview_41[%c0_42] : memref<?xf64, strided<[?], offset: ?>>
            %c0_43 = arith.constant 0 : index
            %32 = memref.load %alloca_8[%c0_43] : memref<1xi32>
            %c1_i32_44 = arith.constant 1 : i32
            %33 = arith.addi %32, %c1_i32_44 : i32
            %c0_45 = arith.constant 0 : index
            memref.store %33, %alloca_8[%c0_45] : memref<1xi32>
            scf.yield
          }
        }
        %c0_28 = arith.constant 0 : index
        %20 = memref.load %alloca_7[%c0_28] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %21 = arith.addi %20, %c1_i32 : i32
        %c0_29 = arith.constant 0 : index
        memref.store %21, %alloca_7[%c0_29] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_26 = arith.constant 0 : i32
      %c0_27 = arith.constant 0 : index
      memref.store %c0_i32_26, %alloca_9[%c0_27] : memref<1xi32>
      scf.while : () -> () {
        %c0_28 = arith.constant 0 : index
        %20 = memref.load %alloca_9[%c0_28] : memref<1xi32>
        %c0_29 = arith.constant 0 : index
        %21 = memref.load %alloca[%c0_29] : memref<1xi32>
        %22 = arith.cmpi slt, %20, %21 : i32
        scf.condition(%22)
      } do {
        memref.alloca_scope  {
          %c0_i32_30 = arith.constant 0 : i32
          %c0_31 = arith.constant 0 : index
          memref.store %c0_i32_30, %alloca_7[%c0_31] : memref<1xi32>
          scf.while : () -> () {
            %c0_32 = arith.constant 0 : index
            %22 = memref.load %alloca_7[%c0_32] : memref<1xi32>
            %c0_33 = arith.constant 0 : index
            %23 = memref.load %alloca[%c0_33] : memref<1xi32>
            %24 = arith.cmpi slt, %22, %23 : i32
            scf.condition(%24)
          } do {
            memref.alloca_scope  {
              %c0_i32_35 = arith.constant 0 : i32
              %c0_36 = arith.constant 0 : index
              memref.store %c0_i32_35, %alloca_8[%c0_36] : memref<1xi32>
              scf.while : () -> () {
                %c0_37 = arith.constant 0 : index
                %24 = memref.load %alloca_8[%c0_37] : memref<1xi32>
                %c0_38 = arith.constant 0 : index
                %25 = memref.load %alloca[%c0_38] : memref<1xi32>
                %26 = arith.cmpi slt, %24, %25 : i32
                scf.condition(%26)
              } do {
                %c0_37 = arith.constant 0 : index
                %24 = memref.load %alloca_0[%c0_37] : memref<1xmemref<?xf64>>
                %c0_38 = arith.constant 0 : index
                %25 = memref.load %alloca_7[%c0_38] : memref<1xi32>
                %26 = arith.extsi %25 : i32 to i64
                %27 = arith.muli %26, %2 : i64
                %28 = arith.index_cast %27 : i64 to index
                %c1 = arith.constant 1 : index
                %c0_39 = arith.constant 0 : index
                %c0_40 = arith.constant 0 : index
                %dim = memref.dim %24, %c0_40 : memref<?xf64>
                %29 = arith.subi %dim, %28 : index
                %subview = memref.subview %24[%28] [%29] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%29], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_41 = arith.constant 0 : index
                %30 = memref.load %alloca_9[%c0_41] : memref<1xi32>
                %31 = arith.index_cast %30 : i32 to index
                %c0_42 = arith.constant 0 : index
                %dim_43 = memref.dim %reinterpret_cast, %c0_42 : memref<?xf64>
                %32 = arith.subi %dim_43, %31 : index
                %c1_44 = arith.constant 1 : index
                %subview_45 = memref.subview %reinterpret_cast[%31] [%32] [%c1_44] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_46 = arith.constant 0 : index
                %33 = memref.load %subview_45[%c0_46] : memref<?xf64, strided<[?], offset: ?>>
                %c0_47 = arith.constant 0 : index
                %34 = memref.load %alloca_0[%c0_47] : memref<1xmemref<?xf64>>
                %c0_48 = arith.constant 0 : index
                %35 = memref.load %alloca_8[%c0_48] : memref<1xi32>
                %36 = arith.extsi %35 : i32 to i64
                %37 = arith.muli %36, %2 : i64
                %38 = arith.index_cast %37 : i64 to index
                %c1_49 = arith.constant 1 : index
                %c0_50 = arith.constant 0 : index
                %c0_51 = arith.constant 0 : index
                %dim_52 = memref.dim %34, %c0_51 : memref<?xf64>
                %39 = arith.subi %dim_52, %38 : index
                %subview_53 = memref.subview %34[%38] [%39] [%c1_49] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_54 = memref.reinterpret_cast %subview_53 to offset: [0], sizes: [%39], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_55 = arith.constant 0 : index
                %40 = memref.load %alloca_9[%c0_55] : memref<1xi32>
                %41 = arith.index_cast %40 : i32 to index
                %c0_56 = arith.constant 0 : index
                %dim_57 = memref.dim %reinterpret_cast_54, %c0_56 : memref<?xf64>
                %42 = arith.subi %dim_57, %41 : index
                %c1_58 = arith.constant 1 : index
                %subview_59 = memref.subview %reinterpret_cast_54[%41] [%42] [%c1_58] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_60 = arith.constant 0 : index
                %43 = memref.load %subview_59[%c0_60] : memref<?xf64, strided<[?], offset: ?>>
                %44 = arith.mulf %33, %43 : f64
                %c0_61 = arith.constant 0 : index
                %45 = memref.load %alloca_10[%c0_61] : memref<1xmemref<?xf64>>
                %c0_62 = arith.constant 0 : index
                %46 = memref.load %alloca_7[%c0_62] : memref<1xi32>
                %47 = arith.extsi %46 : i32 to i64
                %48 = arith.muli %47, %7 : i64
                %49 = arith.index_cast %48 : i64 to index
                %c1_63 = arith.constant 1 : index
                %c0_64 = arith.constant 0 : index
                %c0_65 = arith.constant 0 : index
                %dim_66 = memref.dim %45, %c0_65 : memref<?xf64>
                %50 = arith.subi %dim_66, %49 : index
                %subview_67 = memref.subview %45[%49] [%50] [%c1_63] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_68 = memref.reinterpret_cast %subview_67 to offset: [0], sizes: [%50], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_69 = arith.constant 0 : index
                %51 = memref.load %alloca_8[%c0_69] : memref<1xi32>
                %52 = arith.index_cast %51 : i32 to index
                %c0_70 = arith.constant 0 : index
                %dim_71 = memref.dim %reinterpret_cast_68, %c0_70 : memref<?xf64>
                %53 = arith.subi %dim_71, %52 : index
                %c1_72 = arith.constant 1 : index
                %subview_73 = memref.subview %reinterpret_cast_68[%52] [%53] [%c1_72] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_74 = arith.constant 0 : index
                %54 = memref.load %subview_73[%c0_74] : memref<?xf64, strided<[?], offset: ?>>
                %55 = arith.addf %54, %44 : f64
                %c0_75 = arith.constant 0 : index
                memref.store %55, %subview_73[%c0_75] : memref<?xf64, strided<[?], offset: ?>>
                %c0_76 = arith.constant 0 : index
                %56 = memref.load %alloca_8[%c0_76] : memref<1xi32>
                %c1_i32_77 = arith.constant 1 : i32
                %57 = arith.addi %56, %c1_i32_77 : i32
                %c0_78 = arith.constant 0 : index
                memref.store %57, %alloca_8[%c0_78] : memref<1xi32>
                scf.yield
              }
            }
            %c0_32 = arith.constant 0 : index
            %22 = memref.load %alloca_7[%c0_32] : memref<1xi32>
            %c1_i32_33 = arith.constant 1 : i32
            %23 = arith.addi %22, %c1_i32_33 : i32
            %c0_34 = arith.constant 0 : index
            memref.store %23, %alloca_7[%c0_34] : memref<1xi32>
            scf.yield
          }
        }
        %c0_28 = arith.constant 0 : index
        %20 = memref.load %alloca_9[%c0_28] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %21 = arith.addi %20, %c1_i32 : i32
        %c0_29 = arith.constant 0 : index
        memref.store %21, %alloca_9[%c0_29] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_26 = arith.constant 0 : i32
      %c0_27 = arith.constant 0 : index
      memref.store %c0_i32_26, %alloca_7[%c0_27] : memref<1xi32>
      scf.while : () -> () {
        %c0_28 = arith.constant 0 : index
        %20 = memref.load %alloca_7[%c0_28] : memref<1xi32>
        %c0_29 = arith.constant 0 : index
        %21 = memref.load %alloca[%c0_29] : memref<1xi32>
        %22 = arith.cmpi slt, %20, %21 : i32
        scf.condition(%22)
      } do {
        memref.alloca_scope  {
          %c0_i32_30 = arith.constant 0 : i32
          %c0_31 = arith.constant 0 : index
          memref.store %c0_i32_30, %alloca_8[%c0_31] : memref<1xi32>
          scf.while : () -> () {
            %c0_32 = arith.constant 0 : index
            %22 = memref.load %alloca_8[%c0_32] : memref<1xi32>
            %c0_33 = arith.constant 0 : index
            %23 = memref.load %alloca[%c0_33] : memref<1xi32>
            %24 = arith.cmpi slt, %22, %23 : i32
            scf.condition(%24)
          } do {
            %c0_32 = arith.constant 0 : index
            %22 = memref.load %alloca_10[%c0_32] : memref<1xmemref<?xf64>>
            %c0_33 = arith.constant 0 : index
            %23 = memref.load %alloca_7[%c0_33] : memref<1xi32>
            %24 = arith.extsi %23 : i32 to i64
            %25 = arith.muli %24, %7 : i64
            %26 = arith.index_cast %25 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_34 = arith.constant 0 : index
            %c0_35 = arith.constant 0 : index
            %dim = memref.dim %22, %c0_35 : memref<?xf64>
            %27 = arith.subi %dim, %26 : index
            %subview = memref.subview %22[%26] [%27] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%27], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_36 = arith.constant 0 : index
            %28 = memref.load %alloca_8[%c0_36] : memref<1xi32>
            %29 = arith.index_cast %28 : i32 to index
            %c0_37 = arith.constant 0 : index
            %dim_38 = memref.dim %reinterpret_cast, %c0_37 : memref<?xf64>
            %30 = arith.subi %dim_38, %29 : index
            %c1_39 = arith.constant 1 : index
            %subview_40 = memref.subview %reinterpret_cast[%29] [%30] [%c1_39] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_41 = arith.constant 0 : index
            %31 = memref.load %subview_40[%c0_41] : memref<?xf64, strided<[?], offset: ?>>
            %c0_42 = arith.constant 0 : index
            %32 = memref.load %alloca_0[%c0_42] : memref<1xmemref<?xf64>>
            %c0_43 = arith.constant 0 : index
            %33 = memref.load %alloca_7[%c0_43] : memref<1xi32>
            %34 = arith.extsi %33 : i32 to i64
            %35 = arith.muli %34, %2 : i64
            %36 = arith.index_cast %35 : i64 to index
            %c1_44 = arith.constant 1 : index
            %c0_45 = arith.constant 0 : index
            %c0_46 = arith.constant 0 : index
            %dim_47 = memref.dim %32, %c0_46 : memref<?xf64>
            %37 = arith.subi %dim_47, %36 : index
            %subview_48 = memref.subview %32[%36] [%37] [%c1_44] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast_49 = memref.reinterpret_cast %subview_48 to offset: [0], sizes: [%37], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_50 = arith.constant 0 : index
            %38 = memref.load %alloca_8[%c0_50] : memref<1xi32>
            %39 = arith.index_cast %38 : i32 to index
            %c0_51 = arith.constant 0 : index
            %dim_52 = memref.dim %reinterpret_cast_49, %c0_51 : memref<?xf64>
            %40 = arith.subi %dim_52, %39 : index
            %c1_53 = arith.constant 1 : index
            %subview_54 = memref.subview %reinterpret_cast_49[%39] [%40] [%c1_53] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_55 = arith.constant 0 : index
            memref.store %31, %subview_54[%c0_55] : memref<?xf64, strided<[?], offset: ?>>
            %c0_56 = arith.constant 0 : index
            %41 = memref.load %alloca_8[%c0_56] : memref<1xi32>
            %c1_i32_57 = arith.constant 1 : i32
            %42 = arith.addi %41, %c1_i32_57 : i32
            %c0_58 = arith.constant 0 : index
            memref.store %42, %alloca_8[%c0_58] : memref<1xi32>
            scf.yield
          }
        }
        %c0_28 = arith.constant 0 : index
        %20 = memref.load %alloca_7[%c0_28] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %21 = arith.addi %20, %c1_i32 : i32
        %c0_29 = arith.constant 0 : index
        memref.store %21, %alloca_7[%c0_29] : memref<1xi32>
        scf.yield
      }
    }
    %c0_25 = arith.constant 0 : index
    %17 = memref.load %alloca_10[%c0_25] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %17 : memref<?xf64> -> index
    %18 = arith.index_castui %intptr : index to i64
    %19 = llvm.inttoptr %18 : i64 to !llvm.ptr
    call @free(%19) : (!llvm.ptr) -> ()
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_ludcmp(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_8] : memref<1xmemref<?xf64>>
    %c0_9 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_10] : memref<1xmemref<?xf64>>
    %c0_11 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_12] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_13 = arith.constant 0 : i32
      %c0_14 = arith.constant 0 : index
      memref.store %c0_i32_13, %alloca_4[%c0_14] : memref<1xi32>
      scf.while : () -> () {
        %c0_15 = arith.constant 0 : index
        %3 = memref.load %alloca_4[%c0_15] : memref<1xi32>
        %c0_16 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_16] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_i32_17 = arith.constant 0 : i32
            %c0_18 = arith.constant 0 : index
            memref.store %c0_i32_17, %alloca_5[%c0_18] : memref<1xi32>
            scf.while : () -> () {
              %c0_19 = arith.constant 0 : index
              %5 = memref.load %alloca_5[%c0_19] : memref<1xi32>
              %c0_20 = arith.constant 0 : index
              %6 = memref.load %alloca_4[%c0_20] : memref<1xi32>
              %7 = arith.cmpi slt, %5, %6 : i32
              scf.condition(%7)
            } do {
              memref.alloca_scope  {
                %c0_22 = arith.constant 0 : index
                %7 = memref.load %alloca_0[%c0_22] : memref<1xmemref<?xf64>>
                %c0_23 = arith.constant 0 : index
                %8 = memref.load %alloca_4[%c0_23] : memref<1xi32>
                %9 = arith.extsi %8 : i32 to i64
                %10 = arith.muli %9, %2 : i64
                %11 = arith.index_cast %10 : i64 to index
                %c1 = arith.constant 1 : index
                %c0_24 = arith.constant 0 : index
                %c0_25 = arith.constant 0 : index
                %dim = memref.dim %7, %c0_25 : memref<?xf64>
                %12 = arith.subi %dim, %11 : index
                %subview = memref.subview %7[%11] [%12] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%12], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_26 = arith.constant 0 : index
                %13 = memref.load %alloca_5[%c0_26] : memref<1xi32>
                %14 = arith.index_cast %13 : i32 to index
                %c0_27 = arith.constant 0 : index
                %dim_28 = memref.dim %reinterpret_cast, %c0_27 : memref<?xf64>
                %15 = arith.subi %dim_28, %14 : index
                %c1_29 = arith.constant 1 : index
                %subview_30 = memref.subview %reinterpret_cast[%14] [%15] [%c1_29] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_31 = arith.constant 0 : index
                %16 = memref.load %subview_30[%c0_31] : memref<?xf64, strided<[?], offset: ?>>
                %c0_32 = arith.constant 0 : index
                memref.store %16, %alloca_7[%c0_32] : memref<1xf64>
                memref.alloca_scope  {
                  %c0_i32_62 = arith.constant 0 : i32
                  %c0_63 = arith.constant 0 : index
                  memref.store %c0_i32_62, %alloca_6[%c0_63] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_64 = arith.constant 0 : index
                    %38 = memref.load %alloca_6[%c0_64] : memref<1xi32>
                    %c0_65 = arith.constant 0 : index
                    %39 = memref.load %alloca_5[%c0_65] : memref<1xi32>
                    %40 = arith.cmpi slt, %38, %39 : i32
                    scf.condition(%40)
                  } do {
                    memref.alloca_scope  {
                      %c0_67 = arith.constant 0 : index
                      %40 = memref.load %alloca_0[%c0_67] : memref<1xmemref<?xf64>>
                      %c0_68 = arith.constant 0 : index
                      %41 = memref.load %alloca_4[%c0_68] : memref<1xi32>
                      %42 = arith.extsi %41 : i32 to i64
                      %43 = arith.muli %42, %2 : i64
                      %44 = arith.index_cast %43 : i64 to index
                      %c1_69 = arith.constant 1 : index
                      %c0_70 = arith.constant 0 : index
                      %c0_71 = arith.constant 0 : index
                      %dim_72 = memref.dim %40, %c0_71 : memref<?xf64>
                      %45 = arith.subi %dim_72, %44 : index
                      %subview_73 = memref.subview %40[%44] [%45] [%c1_69] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_74 = memref.reinterpret_cast %subview_73 to offset: [0], sizes: [%45], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_75 = arith.constant 0 : index
                      %46 = memref.load %alloca_6[%c0_75] : memref<1xi32>
                      %47 = arith.index_cast %46 : i32 to index
                      %c0_76 = arith.constant 0 : index
                      %dim_77 = memref.dim %reinterpret_cast_74, %c0_76 : memref<?xf64>
                      %48 = arith.subi %dim_77, %47 : index
                      %c1_78 = arith.constant 1 : index
                      %subview_79 = memref.subview %reinterpret_cast_74[%47] [%48] [%c1_78] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_80 = arith.constant 0 : index
                      %49 = memref.load %subview_79[%c0_80] : memref<?xf64, strided<[?], offset: ?>>
                      %c0_81 = arith.constant 0 : index
                      %50 = memref.load %alloca_0[%c0_81] : memref<1xmemref<?xf64>>
                      %c0_82 = arith.constant 0 : index
                      %51 = memref.load %alloca_6[%c0_82] : memref<1xi32>
                      %52 = arith.extsi %51 : i32 to i64
                      %53 = arith.muli %52, %2 : i64
                      %54 = arith.index_cast %53 : i64 to index
                      %c1_83 = arith.constant 1 : index
                      %c0_84 = arith.constant 0 : index
                      %c0_85 = arith.constant 0 : index
                      %dim_86 = memref.dim %50, %c0_85 : memref<?xf64>
                      %55 = arith.subi %dim_86, %54 : index
                      %subview_87 = memref.subview %50[%54] [%55] [%c1_83] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_88 = memref.reinterpret_cast %subview_87 to offset: [0], sizes: [%55], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_89 = arith.constant 0 : index
                      %56 = memref.load %alloca_5[%c0_89] : memref<1xi32>
                      %57 = arith.index_cast %56 : i32 to index
                      %c0_90 = arith.constant 0 : index
                      %dim_91 = memref.dim %reinterpret_cast_88, %c0_90 : memref<?xf64>
                      %58 = arith.subi %dim_91, %57 : index
                      %c1_92 = arith.constant 1 : index
                      %subview_93 = memref.subview %reinterpret_cast_88[%57] [%58] [%c1_92] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_94 = arith.constant 0 : index
                      %59 = memref.load %subview_93[%c0_94] : memref<?xf64, strided<[?], offset: ?>>
                      %60 = arith.mulf %49, %59 : f64
                      %c0_95 = arith.constant 0 : index
                      %61 = memref.load %alloca_7[%c0_95] : memref<1xf64>
                      %62 = arith.subf %61, %60 : f64
                      %c0_96 = arith.constant 0 : index
                      memref.store %62, %alloca_7[%c0_96] : memref<1xf64>
                    }
                    %c0_64 = arith.constant 0 : index
                    %38 = memref.load %alloca_6[%c0_64] : memref<1xi32>
                    %c1_i32_65 = arith.constant 1 : i32
                    %39 = arith.addi %38, %c1_i32_65 : i32
                    %c0_66 = arith.constant 0 : index
                    memref.store %39, %alloca_6[%c0_66] : memref<1xi32>
                    scf.yield
                  }
                }
                %c0_33 = arith.constant 0 : index
                %17 = memref.load %alloca_7[%c0_33] : memref<1xf64>
                %c0_34 = arith.constant 0 : index
                %18 = memref.load %alloca_0[%c0_34] : memref<1xmemref<?xf64>>
                %c0_35 = arith.constant 0 : index
                %19 = memref.load %alloca_5[%c0_35] : memref<1xi32>
                %20 = arith.extsi %19 : i32 to i64
                %21 = arith.muli %20, %2 : i64
                %22 = arith.index_cast %21 : i64 to index
                %c1_36 = arith.constant 1 : index
                %c0_37 = arith.constant 0 : index
                %c0_38 = arith.constant 0 : index
                %dim_39 = memref.dim %18, %c0_38 : memref<?xf64>
                %23 = arith.subi %dim_39, %22 : index
                %subview_40 = memref.subview %18[%22] [%23] [%c1_36] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_41 = memref.reinterpret_cast %subview_40 to offset: [0], sizes: [%23], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_42 = arith.constant 0 : index
                %24 = memref.load %alloca_5[%c0_42] : memref<1xi32>
                %25 = arith.index_cast %24 : i32 to index
                %c0_43 = arith.constant 0 : index
                %dim_44 = memref.dim %reinterpret_cast_41, %c0_43 : memref<?xf64>
                %26 = arith.subi %dim_44, %25 : index
                %c1_45 = arith.constant 1 : index
                %subview_46 = memref.subview %reinterpret_cast_41[%25] [%26] [%c1_45] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_47 = arith.constant 0 : index
                %27 = memref.load %subview_46[%c0_47] : memref<?xf64, strided<[?], offset: ?>>
                %28 = arith.divf %17, %27 : f64
                %c0_48 = arith.constant 0 : index
                %29 = memref.load %alloca_0[%c0_48] : memref<1xmemref<?xf64>>
                %c0_49 = arith.constant 0 : index
                %30 = memref.load %alloca_4[%c0_49] : memref<1xi32>
                %31 = arith.extsi %30 : i32 to i64
                %32 = arith.muli %31, %2 : i64
                %33 = arith.index_cast %32 : i64 to index
                %c1_50 = arith.constant 1 : index
                %c0_51 = arith.constant 0 : index
                %c0_52 = arith.constant 0 : index
                %dim_53 = memref.dim %29, %c0_52 : memref<?xf64>
                %34 = arith.subi %dim_53, %33 : index
                %subview_54 = memref.subview %29[%33] [%34] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_55 = memref.reinterpret_cast %subview_54 to offset: [0], sizes: [%34], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_56 = arith.constant 0 : index
                %35 = memref.load %alloca_5[%c0_56] : memref<1xi32>
                %36 = arith.index_cast %35 : i32 to index
                %c0_57 = arith.constant 0 : index
                %dim_58 = memref.dim %reinterpret_cast_55, %c0_57 : memref<?xf64>
                %37 = arith.subi %dim_58, %36 : index
                %c1_59 = arith.constant 1 : index
                %subview_60 = memref.subview %reinterpret_cast_55[%36] [%37] [%c1_59] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_61 = arith.constant 0 : index
                memref.store %28, %subview_60[%c0_61] : memref<?xf64, strided<[?], offset: ?>>
              }
              %c0_19 = arith.constant 0 : index
              %5 = memref.load %alloca_5[%c0_19] : memref<1xi32>
              %c1_i32_20 = arith.constant 1 : i32
              %6 = arith.addi %5, %c1_i32_20 : i32
              %c0_21 = arith.constant 0 : index
              memref.store %6, %alloca_5[%c0_21] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c0_17 = arith.constant 0 : index
            %5 = memref.load %alloca_4[%c0_17] : memref<1xi32>
            %c0_18 = arith.constant 0 : index
            memref.store %5, %alloca_5[%c0_18] : memref<1xi32>
            scf.while : () -> () {
              %c0_19 = arith.constant 0 : index
              %6 = memref.load %alloca_5[%c0_19] : memref<1xi32>
              %c0_20 = arith.constant 0 : index
              %7 = memref.load %alloca[%c0_20] : memref<1xi32>
              %8 = arith.cmpi slt, %6, %7 : i32
              scf.condition(%8)
            } do {
              memref.alloca_scope  {
                %c0_22 = arith.constant 0 : index
                %8 = memref.load %alloca_0[%c0_22] : memref<1xmemref<?xf64>>
                %c0_23 = arith.constant 0 : index
                %9 = memref.load %alloca_4[%c0_23] : memref<1xi32>
                %10 = arith.extsi %9 : i32 to i64
                %11 = arith.muli %10, %2 : i64
                %12 = arith.index_cast %11 : i64 to index
                %c1 = arith.constant 1 : index
                %c0_24 = arith.constant 0 : index
                %c0_25 = arith.constant 0 : index
                %dim = memref.dim %8, %c0_25 : memref<?xf64>
                %13 = arith.subi %dim, %12 : index
                %subview = memref.subview %8[%12] [%13] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%13], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_26 = arith.constant 0 : index
                %14 = memref.load %alloca_5[%c0_26] : memref<1xi32>
                %15 = arith.index_cast %14 : i32 to index
                %c0_27 = arith.constant 0 : index
                %dim_28 = memref.dim %reinterpret_cast, %c0_27 : memref<?xf64>
                %16 = arith.subi %dim_28, %15 : index
                %c1_29 = arith.constant 1 : index
                %subview_30 = memref.subview %reinterpret_cast[%15] [%16] [%c1_29] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_31 = arith.constant 0 : index
                %17 = memref.load %subview_30[%c0_31] : memref<?xf64, strided<[?], offset: ?>>
                %c0_32 = arith.constant 0 : index
                memref.store %17, %alloca_7[%c0_32] : memref<1xf64>
                memref.alloca_scope  {
                  %c0_i32_48 = arith.constant 0 : i32
                  %c0_49 = arith.constant 0 : index
                  memref.store %c0_i32_48, %alloca_6[%c0_49] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_50 = arith.constant 0 : index
                    %28 = memref.load %alloca_6[%c0_50] : memref<1xi32>
                    %c0_51 = arith.constant 0 : index
                    %29 = memref.load %alloca_4[%c0_51] : memref<1xi32>
                    %30 = arith.cmpi slt, %28, %29 : i32
                    scf.condition(%30)
                  } do {
                    memref.alloca_scope  {
                      %c0_53 = arith.constant 0 : index
                      %30 = memref.load %alloca_0[%c0_53] : memref<1xmemref<?xf64>>
                      %c0_54 = arith.constant 0 : index
                      %31 = memref.load %alloca_4[%c0_54] : memref<1xi32>
                      %32 = arith.extsi %31 : i32 to i64
                      %33 = arith.muli %32, %2 : i64
                      %34 = arith.index_cast %33 : i64 to index
                      %c1_55 = arith.constant 1 : index
                      %c0_56 = arith.constant 0 : index
                      %c0_57 = arith.constant 0 : index
                      %dim_58 = memref.dim %30, %c0_57 : memref<?xf64>
                      %35 = arith.subi %dim_58, %34 : index
                      %subview_59 = memref.subview %30[%34] [%35] [%c1_55] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_60 = memref.reinterpret_cast %subview_59 to offset: [0], sizes: [%35], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_61 = arith.constant 0 : index
                      %36 = memref.load %alloca_6[%c0_61] : memref<1xi32>
                      %37 = arith.index_cast %36 : i32 to index
                      %c0_62 = arith.constant 0 : index
                      %dim_63 = memref.dim %reinterpret_cast_60, %c0_62 : memref<?xf64>
                      %38 = arith.subi %dim_63, %37 : index
                      %c1_64 = arith.constant 1 : index
                      %subview_65 = memref.subview %reinterpret_cast_60[%37] [%38] [%c1_64] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_66 = arith.constant 0 : index
                      %39 = memref.load %subview_65[%c0_66] : memref<?xf64, strided<[?], offset: ?>>
                      %c0_67 = arith.constant 0 : index
                      %40 = memref.load %alloca_0[%c0_67] : memref<1xmemref<?xf64>>
                      %c0_68 = arith.constant 0 : index
                      %41 = memref.load %alloca_6[%c0_68] : memref<1xi32>
                      %42 = arith.extsi %41 : i32 to i64
                      %43 = arith.muli %42, %2 : i64
                      %44 = arith.index_cast %43 : i64 to index
                      %c1_69 = arith.constant 1 : index
                      %c0_70 = arith.constant 0 : index
                      %c0_71 = arith.constant 0 : index
                      %dim_72 = memref.dim %40, %c0_71 : memref<?xf64>
                      %45 = arith.subi %dim_72, %44 : index
                      %subview_73 = memref.subview %40[%44] [%45] [%c1_69] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_74 = memref.reinterpret_cast %subview_73 to offset: [0], sizes: [%45], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_75 = arith.constant 0 : index
                      %46 = memref.load %alloca_5[%c0_75] : memref<1xi32>
                      %47 = arith.index_cast %46 : i32 to index
                      %c0_76 = arith.constant 0 : index
                      %dim_77 = memref.dim %reinterpret_cast_74, %c0_76 : memref<?xf64>
                      %48 = arith.subi %dim_77, %47 : index
                      %c1_78 = arith.constant 1 : index
                      %subview_79 = memref.subview %reinterpret_cast_74[%47] [%48] [%c1_78] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_80 = arith.constant 0 : index
                      %49 = memref.load %subview_79[%c0_80] : memref<?xf64, strided<[?], offset: ?>>
                      %50 = arith.mulf %39, %49 : f64
                      %c0_81 = arith.constant 0 : index
                      %51 = memref.load %alloca_7[%c0_81] : memref<1xf64>
                      %52 = arith.subf %51, %50 : f64
                      %c0_82 = arith.constant 0 : index
                      memref.store %52, %alloca_7[%c0_82] : memref<1xf64>
                    }
                    %c0_50 = arith.constant 0 : index
                    %28 = memref.load %alloca_6[%c0_50] : memref<1xi32>
                    %c1_i32_51 = arith.constant 1 : i32
                    %29 = arith.addi %28, %c1_i32_51 : i32
                    %c0_52 = arith.constant 0 : index
                    memref.store %29, %alloca_6[%c0_52] : memref<1xi32>
                    scf.yield
                  }
                }
                %c0_33 = arith.constant 0 : index
                %18 = memref.load %alloca_7[%c0_33] : memref<1xf64>
                %c0_34 = arith.constant 0 : index
                %19 = memref.load %alloca_0[%c0_34] : memref<1xmemref<?xf64>>
                %c0_35 = arith.constant 0 : index
                %20 = memref.load %alloca_4[%c0_35] : memref<1xi32>
                %21 = arith.extsi %20 : i32 to i64
                %22 = arith.muli %21, %2 : i64
                %23 = arith.index_cast %22 : i64 to index
                %c1_36 = arith.constant 1 : index
                %c0_37 = arith.constant 0 : index
                %c0_38 = arith.constant 0 : index
                %dim_39 = memref.dim %19, %c0_38 : memref<?xf64>
                %24 = arith.subi %dim_39, %23 : index
                %subview_40 = memref.subview %19[%23] [%24] [%c1_36] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_41 = memref.reinterpret_cast %subview_40 to offset: [0], sizes: [%24], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_42 = arith.constant 0 : index
                %25 = memref.load %alloca_5[%c0_42] : memref<1xi32>
                %26 = arith.index_cast %25 : i32 to index
                %c0_43 = arith.constant 0 : index
                %dim_44 = memref.dim %reinterpret_cast_41, %c0_43 : memref<?xf64>
                %27 = arith.subi %dim_44, %26 : index
                %c1_45 = arith.constant 1 : index
                %subview_46 = memref.subview %reinterpret_cast_41[%26] [%27] [%c1_45] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_47 = arith.constant 0 : index
                memref.store %18, %subview_46[%c0_47] : memref<?xf64, strided<[?], offset: ?>>
              }
              %c0_19 = arith.constant 0 : index
              %6 = memref.load %alloca_5[%c0_19] : memref<1xi32>
              %c1_i32_20 = arith.constant 1 : i32
              %7 = arith.addi %6, %c1_i32_20 : i32
              %c0_21 = arith.constant 0 : index
              memref.store %7, %alloca_5[%c0_21] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_15 = arith.constant 0 : index
        %3 = memref.load %alloca_4[%c0_15] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_16 = arith.constant 0 : index
        memref.store %4, %alloca_4[%c0_16] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_13 = arith.constant 0 : i32
      %c0_14 = arith.constant 0 : index
      memref.store %c0_i32_13, %alloca_4[%c0_14] : memref<1xi32>
      scf.while : () -> () {
        %c0_15 = arith.constant 0 : index
        %3 = memref.load %alloca_4[%c0_15] : memref<1xi32>
        %c0_16 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_16] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %c0_17 = arith.constant 0 : index
          %5 = memref.load %alloca_1[%c0_17] : memref<1xmemref<?xf64>>
          %c0_18 = arith.constant 0 : index
          %6 = memref.load %alloca_4[%c0_18] : memref<1xi32>
          %7 = arith.index_cast %6 : i32 to index
          %c0_19 = arith.constant 0 : index
          %dim = memref.dim %5, %c0_19 : memref<?xf64>
          %8 = arith.subi %dim, %7 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %5[%7] [%8] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_20 = arith.constant 0 : index
          %9 = memref.load %subview[%c0_20] : memref<?xf64, strided<[?], offset: ?>>
          %c0_21 = arith.constant 0 : index
          memref.store %9, %alloca_7[%c0_21] : memref<1xf64>
          memref.alloca_scope  {
            %c0_i32_30 = arith.constant 0 : i32
            %c0_31 = arith.constant 0 : index
            memref.store %c0_i32_30, %alloca_5[%c0_31] : memref<1xi32>
            scf.while : () -> () {
              %c0_32 = arith.constant 0 : index
              %15 = memref.load %alloca_5[%c0_32] : memref<1xi32>
              %c0_33 = arith.constant 0 : index
              %16 = memref.load %alloca_4[%c0_33] : memref<1xi32>
              %17 = arith.cmpi slt, %15, %16 : i32
              scf.condition(%17)
            } do {
              %c0_32 = arith.constant 0 : index
              %15 = memref.load %alloca_0[%c0_32] : memref<1xmemref<?xf64>>
              %c0_33 = arith.constant 0 : index
              %16 = memref.load %alloca_4[%c0_33] : memref<1xi32>
              %17 = arith.extsi %16 : i32 to i64
              %18 = arith.muli %17, %2 : i64
              %19 = arith.index_cast %18 : i64 to index
              %c1_34 = arith.constant 1 : index
              %c0_35 = arith.constant 0 : index
              %c0_36 = arith.constant 0 : index
              %dim_37 = memref.dim %15, %c0_36 : memref<?xf64>
              %20 = arith.subi %dim_37, %19 : index
              %subview_38 = memref.subview %15[%19] [%20] [%c1_34] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview_38 to offset: [0], sizes: [%20], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_39 = arith.constant 0 : index
              %21 = memref.load %alloca_5[%c0_39] : memref<1xi32>
              %22 = arith.index_cast %21 : i32 to index
              %c0_40 = arith.constant 0 : index
              %dim_41 = memref.dim %reinterpret_cast, %c0_40 : memref<?xf64>
              %23 = arith.subi %dim_41, %22 : index
              %c1_42 = arith.constant 1 : index
              %subview_43 = memref.subview %reinterpret_cast[%22] [%23] [%c1_42] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_44 = arith.constant 0 : index
              %24 = memref.load %subview_43[%c0_44] : memref<?xf64, strided<[?], offset: ?>>
              %c0_45 = arith.constant 0 : index
              %25 = memref.load %alloca_3[%c0_45] : memref<1xmemref<?xf64>>
              %c0_46 = arith.constant 0 : index
              %26 = memref.load %alloca_5[%c0_46] : memref<1xi32>
              %27 = arith.index_cast %26 : i32 to index
              %c0_47 = arith.constant 0 : index
              %dim_48 = memref.dim %25, %c0_47 : memref<?xf64>
              %28 = arith.subi %dim_48, %27 : index
              %c1_49 = arith.constant 1 : index
              %subview_50 = memref.subview %25[%27] [%28] [%c1_49] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_51 = arith.constant 0 : index
              %29 = memref.load %subview_50[%c0_51] : memref<?xf64, strided<[?], offset: ?>>
              %30 = arith.mulf %24, %29 : f64
              %c0_52 = arith.constant 0 : index
              %31 = memref.load %alloca_7[%c0_52] : memref<1xf64>
              %32 = arith.subf %31, %30 : f64
              %c0_53 = arith.constant 0 : index
              memref.store %32, %alloca_7[%c0_53] : memref<1xf64>
              %c0_54 = arith.constant 0 : index
              %33 = memref.load %alloca_5[%c0_54] : memref<1xi32>
              %c1_i32_55 = arith.constant 1 : i32
              %34 = arith.addi %33, %c1_i32_55 : i32
              %c0_56 = arith.constant 0 : index
              memref.store %34, %alloca_5[%c0_56] : memref<1xi32>
              scf.yield
            }
          }
          %c0_22 = arith.constant 0 : index
          %10 = memref.load %alloca_7[%c0_22] : memref<1xf64>
          %c0_23 = arith.constant 0 : index
          %11 = memref.load %alloca_3[%c0_23] : memref<1xmemref<?xf64>>
          %c0_24 = arith.constant 0 : index
          %12 = memref.load %alloca_4[%c0_24] : memref<1xi32>
          %13 = arith.index_cast %12 : i32 to index
          %c0_25 = arith.constant 0 : index
          %dim_26 = memref.dim %11, %c0_25 : memref<?xf64>
          %14 = arith.subi %dim_26, %13 : index
          %c1_27 = arith.constant 1 : index
          %subview_28 = memref.subview %11[%13] [%14] [%c1_27] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_29 = arith.constant 0 : index
          memref.store %10, %subview_28[%c0_29] : memref<?xf64, strided<[?], offset: ?>>
        }
        %c0_15 = arith.constant 0 : index
        %3 = memref.load %alloca_4[%c0_15] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_16 = arith.constant 0 : index
        memref.store %4, %alloca_4[%c0_16] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_13 = arith.constant 0 : index
      %3 = memref.load %alloca[%c0_13] : memref<1xi32>
      %c1_i32 = arith.constant 1 : i32
      %4 = arith.subi %3, %c1_i32 : i32
      %c0_14 = arith.constant 0 : index
      memref.store %4, %alloca_4[%c0_14] : memref<1xi32>
      scf.while : () -> () {
        %c0_15 = arith.constant 0 : index
        %5 = memref.load %alloca_4[%c0_15] : memref<1xi32>
        %c0_i32_16 = arith.constant 0 : i32
        %6 = arith.cmpi sge, %5, %c0_i32_16 : i32
        scf.condition(%6)
      } do {
        memref.alloca_scope  {
          %c0_17 = arith.constant 0 : index
          %7 = memref.load %alloca_3[%c0_17] : memref<1xmemref<?xf64>>
          %c0_18 = arith.constant 0 : index
          %8 = memref.load %alloca_4[%c0_18] : memref<1xi32>
          %9 = arith.index_cast %8 : i32 to index
          %c0_19 = arith.constant 0 : index
          %dim = memref.dim %7, %c0_19 : memref<?xf64>
          %10 = arith.subi %dim, %9 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %7[%9] [%10] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_20 = arith.constant 0 : index
          %11 = memref.load %subview[%c0_20] : memref<?xf64, strided<[?], offset: ?>>
          %c0_21 = arith.constant 0 : index
          memref.store %11, %alloca_7[%c0_21] : memref<1xf64>
          memref.alloca_scope  {
            %c0_43 = arith.constant 0 : index
            %28 = memref.load %alloca_4[%c0_43] : memref<1xi32>
            %c1_i32_44 = arith.constant 1 : i32
            %29 = arith.addi %28, %c1_i32_44 : i32
            %c0_45 = arith.constant 0 : index
            memref.store %29, %alloca_5[%c0_45] : memref<1xi32>
            scf.while : () -> () {
              %c0_46 = arith.constant 0 : index
              %30 = memref.load %alloca_5[%c0_46] : memref<1xi32>
              %c0_47 = arith.constant 0 : index
              %31 = memref.load %alloca[%c0_47] : memref<1xi32>
              %32 = arith.cmpi slt, %30, %31 : i32
              scf.condition(%32)
            } do {
              %c0_46 = arith.constant 0 : index
              %30 = memref.load %alloca_0[%c0_46] : memref<1xmemref<?xf64>>
              %c0_47 = arith.constant 0 : index
              %31 = memref.load %alloca_4[%c0_47] : memref<1xi32>
              %32 = arith.extsi %31 : i32 to i64
              %33 = arith.muli %32, %2 : i64
              %34 = arith.index_cast %33 : i64 to index
              %c1_48 = arith.constant 1 : index
              %c0_49 = arith.constant 0 : index
              %c0_50 = arith.constant 0 : index
              %dim_51 = memref.dim %30, %c0_50 : memref<?xf64>
              %35 = arith.subi %dim_51, %34 : index
              %subview_52 = memref.subview %30[%34] [%35] [%c1_48] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_53 = memref.reinterpret_cast %subview_52 to offset: [0], sizes: [%35], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_54 = arith.constant 0 : index
              %36 = memref.load %alloca_5[%c0_54] : memref<1xi32>
              %37 = arith.index_cast %36 : i32 to index
              %c0_55 = arith.constant 0 : index
              %dim_56 = memref.dim %reinterpret_cast_53, %c0_55 : memref<?xf64>
              %38 = arith.subi %dim_56, %37 : index
              %c1_57 = arith.constant 1 : index
              %subview_58 = memref.subview %reinterpret_cast_53[%37] [%38] [%c1_57] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_59 = arith.constant 0 : index
              %39 = memref.load %subview_58[%c0_59] : memref<?xf64, strided<[?], offset: ?>>
              %c0_60 = arith.constant 0 : index
              %40 = memref.load %alloca_2[%c0_60] : memref<1xmemref<?xf64>>
              %c0_61 = arith.constant 0 : index
              %41 = memref.load %alloca_5[%c0_61] : memref<1xi32>
              %42 = arith.index_cast %41 : i32 to index
              %c0_62 = arith.constant 0 : index
              %dim_63 = memref.dim %40, %c0_62 : memref<?xf64>
              %43 = arith.subi %dim_63, %42 : index
              %c1_64 = arith.constant 1 : index
              %subview_65 = memref.subview %40[%42] [%43] [%c1_64] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_66 = arith.constant 0 : index
              %44 = memref.load %subview_65[%c0_66] : memref<?xf64, strided<[?], offset: ?>>
              %45 = arith.mulf %39, %44 : f64
              %c0_67 = arith.constant 0 : index
              %46 = memref.load %alloca_7[%c0_67] : memref<1xf64>
              %47 = arith.subf %46, %45 : f64
              %c0_68 = arith.constant 0 : index
              memref.store %47, %alloca_7[%c0_68] : memref<1xf64>
              %c0_69 = arith.constant 0 : index
              %48 = memref.load %alloca_5[%c0_69] : memref<1xi32>
              %c1_i32_70 = arith.constant 1 : i32
              %49 = arith.addi %48, %c1_i32_70 : i32
              %c0_71 = arith.constant 0 : index
              memref.store %49, %alloca_5[%c0_71] : memref<1xi32>
              scf.yield
            }
          }
          %c0_22 = arith.constant 0 : index
          %12 = memref.load %alloca_7[%c0_22] : memref<1xf64>
          %c0_23 = arith.constant 0 : index
          %13 = memref.load %alloca_0[%c0_23] : memref<1xmemref<?xf64>>
          %c0_24 = arith.constant 0 : index
          %14 = memref.load %alloca_4[%c0_24] : memref<1xi32>
          %15 = arith.extsi %14 : i32 to i64
          %16 = arith.muli %15, %2 : i64
          %17 = arith.index_cast %16 : i64 to index
          %c1_25 = arith.constant 1 : index
          %c0_26 = arith.constant 0 : index
          %c0_27 = arith.constant 0 : index
          %dim_28 = memref.dim %13, %c0_27 : memref<?xf64>
          %18 = arith.subi %dim_28, %17 : index
          %subview_29 = memref.subview %13[%17] [%18] [%c1_25] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %reinterpret_cast = memref.reinterpret_cast %subview_29 to offset: [0], sizes: [%18], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
          %c0_30 = arith.constant 0 : index
          %19 = memref.load %alloca_4[%c0_30] : memref<1xi32>
          %20 = arith.index_cast %19 : i32 to index
          %c0_31 = arith.constant 0 : index
          %dim_32 = memref.dim %reinterpret_cast, %c0_31 : memref<?xf64>
          %21 = arith.subi %dim_32, %20 : index
          %c1_33 = arith.constant 1 : index
          %subview_34 = memref.subview %reinterpret_cast[%20] [%21] [%c1_33] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_35 = arith.constant 0 : index
          %22 = memref.load %subview_34[%c0_35] : memref<?xf64, strided<[?], offset: ?>>
          %23 = arith.divf %12, %22 : f64
          %c0_36 = arith.constant 0 : index
          %24 = memref.load %alloca_2[%c0_36] : memref<1xmemref<?xf64>>
          %c0_37 = arith.constant 0 : index
          %25 = memref.load %alloca_4[%c0_37] : memref<1xi32>
          %26 = arith.index_cast %25 : i32 to index
          %c0_38 = arith.constant 0 : index
          %dim_39 = memref.dim %24, %c0_38 : memref<?xf64>
          %27 = arith.subi %dim_39, %26 : index
          %c1_40 = arith.constant 1 : index
          %subview_41 = memref.subview %24[%26] [%27] [%c1_40] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_42 = arith.constant 0 : index
          memref.store %23, %subview_41[%c0_42] : memref<?xf64, strided<[?], offset: ?>>
        }
        %c0_15 = arith.constant 0 : index
        %5 = memref.load %alloca_4[%c0_15] : memref<1xi32>
        %c-1_i32 = arith.constant -1 : i32
        %6 = arith.addi %5, %c-1_i32 : i32
        %c0_16 = arith.constant 0 : index
        memref.store %6, %alloca_4[%c0_16] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[120, 0]> {alignment = 1 : i64}
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
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_7] : memref<1xmemref<?xmemref<?xi8>>>
    %c2000_i32 = arith.constant 2000 : i32
    %c0_8 = arith.constant 0 : index
    memref.store %c2000_i32, %alloca_2[%c0_8] : memref<1xi32>
    %c0_9 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_9] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_10 = arith.constant 0 : index
    %2 = memref.load %alloca_2[%c0_10] : memref<1xi32>
    %c0_i32_11 = arith.constant 0 : i32
    %3 = arith.addi %2, %c0_i32_11 : i32
    %4 = arith.muli %1, %3 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %6 = arith.trunci %c8_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xf64>
    %c0_12 = arith.constant 0 : index
    memref.store %8, %alloca_3[%c0_12] : memref<1xmemref<?xf64>>
    %c0_13 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_13] : memref<1xi32>
    %c0_i32_14 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_14 : i32
    %11 = arith.extsi %10 : i32 to i64
    %c8_i64_15 = arith.constant 8 : i64
    %12 = arith.trunci %c8_i64_15 : i64 to i32
    %13 = call @polybench_alloc_data(%11, %12) : (i64, i32) -> !llvm.ptr
    %14 = builtin.unrealized_conversion_cast %13 : !llvm.ptr to memref<?xf64>
    %c0_16 = arith.constant 0 : index
    memref.store %14, %alloca_4[%c0_16] : memref<1xmemref<?xf64>>
    %c0_17 = arith.constant 0 : index
    %15 = memref.load %alloca_2[%c0_17] : memref<1xi32>
    %c0_i32_18 = arith.constant 0 : i32
    %16 = arith.addi %15, %c0_i32_18 : i32
    %17 = arith.extsi %16 : i32 to i64
    %c8_i64_19 = arith.constant 8 : i64
    %18 = arith.trunci %c8_i64_19 : i64 to i32
    %19 = call @polybench_alloc_data(%17, %18) : (i64, i32) -> !llvm.ptr
    %20 = builtin.unrealized_conversion_cast %19 : !llvm.ptr to memref<?xf64>
    %c0_20 = arith.constant 0 : index
    memref.store %20, %alloca_5[%c0_20] : memref<1xmemref<?xf64>>
    %c0_21 = arith.constant 0 : index
    %21 = memref.load %alloca_2[%c0_21] : memref<1xi32>
    %c0_i32_22 = arith.constant 0 : i32
    %22 = arith.addi %21, %c0_i32_22 : i32
    %23 = arith.extsi %22 : i32 to i64
    %c8_i64_23 = arith.constant 8 : i64
    %24 = arith.trunci %c8_i64_23 : i64 to i32
    %25 = call @polybench_alloc_data(%23, %24) : (i64, i32) -> !llvm.ptr
    %26 = builtin.unrealized_conversion_cast %25 : !llvm.ptr to memref<?xf64>
    %c0_24 = arith.constant 0 : index
    memref.store %26, %alloca_6[%c0_24] : memref<1xmemref<?xf64>>
    %c0_25 = arith.constant 0 : index
    %27 = memref.load %alloca_2[%c0_25] : memref<1xi32>
    %c0_26 = arith.constant 0 : index
    %28 = memref.load %alloca_3[%c0_26] : memref<1xmemref<?xf64>>
    %c0_27 = arith.constant 0 : index
    %29 = memref.load %alloca_4[%c0_27] : memref<1xmemref<?xf64>>
    %c0_28 = arith.constant 0 : index
    %30 = memref.load %alloca_5[%c0_28] : memref<1xmemref<?xf64>>
    %c0_29 = arith.constant 0 : index
    %31 = memref.load %alloca_6[%c0_29] : memref<1xmemref<?xf64>>
    call @init_array(%27, %28, %29, %30, %31) : (i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %32 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %32() : !llvm.ptr, () -> ()
    %c0_30 = arith.constant 0 : index
    %33 = memref.load %alloca_2[%c0_30] : memref<1xi32>
    %c0_31 = arith.constant 0 : index
    %34 = memref.load %alloca_3[%c0_31] : memref<1xmemref<?xf64>>
    %c0_32 = arith.constant 0 : index
    %35 = memref.load %alloca_4[%c0_32] : memref<1xmemref<?xf64>>
    %c0_33 = arith.constant 0 : index
    %36 = memref.load %alloca_5[%c0_33] : memref<1xmemref<?xf64>>
    %c0_34 = arith.constant 0 : index
    %37 = memref.load %alloca_6[%c0_34] : memref<1xmemref<?xf64>>
    call @kernel_ludcmp(%33, %34, %35, %36, %37) : (i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %38 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %38() : !llvm.ptr, () -> ()
    %39 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %39() : !llvm.ptr, () -> ()
    %c0_35 = arith.constant 0 : index
    %40 = memref.load %alloca_2[%c0_35] : memref<1xi32>
    %c0_36 = arith.constant 0 : index
    %41 = memref.load %alloca_5[%c0_36] : memref<1xmemref<?xf64>>
    call @print_array(%40, %41) : (i32, memref<?xf64>) -> ()
    %c0_37 = arith.constant 0 : index
    %42 = memref.load %alloca_3[%c0_37] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %42 : memref<?xf64> -> index
    %43 = arith.index_castui %intptr : index to i64
    %44 = llvm.inttoptr %43 : i64 to !llvm.ptr
    call @free(%44) : (!llvm.ptr) -> ()
    %c0_38 = arith.constant 0 : index
    %45 = memref.load %alloca_4[%c0_38] : memref<1xmemref<?xf64>>
    %intptr_39 = memref.extract_aligned_pointer_as_index %45 : memref<?xf64> -> index
    %46 = arith.index_castui %intptr_39 : index to i64
    %47 = llvm.inttoptr %46 : i64 to !llvm.ptr
    call @free(%47) : (!llvm.ptr) -> ()
    %c0_40 = arith.constant 0 : index
    %48 = memref.load %alloca_5[%c0_40] : memref<1xmemref<?xf64>>
    %intptr_41 = memref.extract_aligned_pointer_as_index %48 : memref<?xf64> -> index
    %49 = arith.index_castui %intptr_41 : index to i64
    %50 = llvm.inttoptr %49 : i64 to !llvm.ptr
    call @free(%50) : (!llvm.ptr) -> ()
    %c0_42 = arith.constant 0 : index
    %51 = memref.load %alloca_6[%c0_42] : memref<1xmemref<?xf64>>
    %intptr_43 = memref.extract_aligned_pointer_as_index %51 : memref<?xf64> -> index
    %52 = arith.index_castui %intptr_43 : index to i64
    %53 = llvm.inttoptr %52 : i64 to !llvm.ptr
    call @free(%53) : (!llvm.ptr) -> ()
    %c0_i32_44 = arith.constant 0 : i32
    %c0_45 = arith.constant 0 : index
    memref.store %c0_i32_44, %alloca_1[%c0_45] : memref<1xi32>
    %c0_46 = arith.constant 0 : index
    %54 = memref.load %alloca_1[%c0_46] : memref<1xi32>
    return %54 : i32
  }
}

