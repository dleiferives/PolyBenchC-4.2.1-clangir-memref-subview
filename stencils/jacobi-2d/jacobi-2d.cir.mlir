module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/stencils/jacobi-2d/jacobi-2d.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_4 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_4] : memref<1xmemref<?xf64>>
    %c0_5 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_5] : memref<1xmemref<?xf64>>
    %c0_6 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_6] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_7 = arith.constant 0 : index
    %3 = memref.load %alloca[%c0_7] : memref<1xi32>
    %c0_i32_8 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_8 : i32
    %5 = arith.extsi %4 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_9 = arith.constant 0 : i32
      %c0_10 = arith.constant 0 : index
      memref.store %c0_i32_9, %alloca_2[%c0_10] : memref<1xi32>
      scf.while : () -> () {
        %c0_11 = arith.constant 0 : index
        %6 = memref.load %alloca_2[%c0_11] : memref<1xi32>
        %c0_12 = arith.constant 0 : index
        %7 = memref.load %alloca[%c0_12] : memref<1xi32>
        %8 = arith.cmpi slt, %6, %7 : i32
        scf.condition(%8)
      } do {
        memref.alloca_scope  {
          %c0_i32_13 = arith.constant 0 : i32
          %c0_14 = arith.constant 0 : index
          memref.store %c0_i32_13, %alloca_3[%c0_14] : memref<1xi32>
          scf.while : () -> () {
            %c0_15 = arith.constant 0 : index
            %8 = memref.load %alloca_3[%c0_15] : memref<1xi32>
            %c0_16 = arith.constant 0 : index
            %9 = memref.load %alloca[%c0_16] : memref<1xi32>
            %10 = arith.cmpi slt, %8, %9 : i32
            scf.condition(%10)
          } do {
            memref.alloca_scope  {
              %c0_18 = arith.constant 0 : index
              %10 = memref.load %alloca_2[%c0_18] : memref<1xi32>
              %11 = arith.sitofp %10 : i32 to f64
              %c0_19 = arith.constant 0 : index
              %12 = memref.load %alloca_3[%c0_19] : memref<1xi32>
              %c2_i32 = arith.constant 2 : i32
              %13 = arith.addi %12, %c2_i32 : i32
              %14 = arith.sitofp %13 : i32 to f64
              %15 = arith.mulf %11, %14 : f64
              %c2_i32_20 = arith.constant 2 : i32
              %16 = arith.sitofp %c2_i32_20 : i32 to f64
              %17 = arith.addf %15, %16 : f64
              %c0_21 = arith.constant 0 : index
              %18 = memref.load %alloca[%c0_21] : memref<1xi32>
              %19 = arith.sitofp %18 : i32 to f64
              %20 = arith.divf %17, %19 : f64
              %c0_22 = arith.constant 0 : index
              %21 = memref.load %alloca_0[%c0_22] : memref<1xmemref<?xf64>>
              %c0_23 = arith.constant 0 : index
              %22 = memref.load %alloca_2[%c0_23] : memref<1xi32>
              %23 = arith.extsi %22 : i32 to i64
              %24 = arith.muli %23, %2 : i64
              %25 = arith.index_cast %24 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_24 = arith.constant 0 : index
              %c0_25 = arith.constant 0 : index
              %dim = memref.dim %21, %c0_25 : memref<?xf64>
              %26 = arith.subi %dim, %25 : index
              %subview = memref.subview %21[%25] [%26] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%26], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_26 = arith.constant 0 : index
              %27 = memref.load %alloca_3[%c0_26] : memref<1xi32>
              %28 = arith.index_cast %27 : i32 to index
              %c0_27 = arith.constant 0 : index
              %dim_28 = memref.dim %reinterpret_cast, %c0_27 : memref<?xf64>
              %29 = arith.subi %dim_28, %28 : index
              %c1_29 = arith.constant 1 : index
              %subview_30 = memref.subview %reinterpret_cast[%28] [%29] [%c1_29] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_31 = arith.constant 0 : index
              memref.store %20, %subview_30[%c0_31] : memref<?xf64, strided<[?], offset: ?>>
              %c0_32 = arith.constant 0 : index
              %30 = memref.load %alloca_2[%c0_32] : memref<1xi32>
              %31 = arith.sitofp %30 : i32 to f64
              %c0_33 = arith.constant 0 : index
              %32 = memref.load %alloca_3[%c0_33] : memref<1xi32>
              %c3_i32 = arith.constant 3 : i32
              %33 = arith.addi %32, %c3_i32 : i32
              %34 = arith.sitofp %33 : i32 to f64
              %35 = arith.mulf %31, %34 : f64
              %c3_i32_34 = arith.constant 3 : i32
              %36 = arith.sitofp %c3_i32_34 : i32 to f64
              %37 = arith.addf %35, %36 : f64
              %c0_35 = arith.constant 0 : index
              %38 = memref.load %alloca[%c0_35] : memref<1xi32>
              %39 = arith.sitofp %38 : i32 to f64
              %40 = arith.divf %37, %39 : f64
              %c0_36 = arith.constant 0 : index
              %41 = memref.load %alloca_1[%c0_36] : memref<1xmemref<?xf64>>
              %c0_37 = arith.constant 0 : index
              %42 = memref.load %alloca_2[%c0_37] : memref<1xi32>
              %43 = arith.extsi %42 : i32 to i64
              %44 = arith.muli %43, %5 : i64
              %45 = arith.index_cast %44 : i64 to index
              %c1_38 = arith.constant 1 : index
              %c0_39 = arith.constant 0 : index
              %c0_40 = arith.constant 0 : index
              %dim_41 = memref.dim %41, %c0_40 : memref<?xf64>
              %46 = arith.subi %dim_41, %45 : index
              %subview_42 = memref.subview %41[%45] [%46] [%c1_38] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_43 = memref.reinterpret_cast %subview_42 to offset: [0], sizes: [%46], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_44 = arith.constant 0 : index
              %47 = memref.load %alloca_3[%c0_44] : memref<1xi32>
              %48 = arith.index_cast %47 : i32 to index
              %c0_45 = arith.constant 0 : index
              %dim_46 = memref.dim %reinterpret_cast_43, %c0_45 : memref<?xf64>
              %49 = arith.subi %dim_46, %48 : index
              %c1_47 = arith.constant 1 : index
              %subview_48 = memref.subview %reinterpret_cast_43[%48] [%49] [%c1_47] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_49 = arith.constant 0 : index
              memref.store %40, %subview_48[%c0_49] : memref<?xf64, strided<[?], offset: ?>>
            }
            %c0_15 = arith.constant 0 : index
            %8 = memref.load %alloca_3[%c0_15] : memref<1xi32>
            %c1_i32_16 = arith.constant 1 : i32
            %9 = arith.addi %8, %c1_i32_16 : i32
            %c0_17 = arith.constant 0 : index
            memref.store %9, %alloca_3[%c0_17] : memref<1xi32>
            scf.yield
          }
        }
        %c0_11 = arith.constant 0 : index
        %6 = memref.load %alloca_2[%c0_11] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %7 = arith.addi %6, %c1_i32 : i32
        %c0_12 = arith.constant 0 : index
        memref.store %7, %alloca_2[%c0_12] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
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
    %0 = memref.load %alloca_0[%c0_9] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_10 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_10] : memref<1xi32>
    %c0_i32_11 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_11 : i32
    %5 = arith.extsi %4 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_12 = arith.constant 0 : i32
      %c0_13 = arith.constant 0 : index
      memref.store %c0_i32_12, %alloca_3[%c0_13] : memref<1xi32>
      scf.while : () -> () {
        %c0_14 = arith.constant 0 : index
        %6 = memref.load %alloca_3[%c0_14] : memref<1xi32>
        %c0_15 = arith.constant 0 : index
        %7 = memref.load %alloca[%c0_15] : memref<1xi32>
        %8 = arith.cmpi slt, %6, %7 : i32
        scf.condition(%8)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c1_i32_16 = arith.constant 1 : i32
            %c0_17 = arith.constant 0 : index
            memref.store %c1_i32_16, %alloca_4[%c0_17] : memref<1xi32>
            scf.while : () -> () {
              %c0_18 = arith.constant 0 : index
              %8 = memref.load %alloca_4[%c0_18] : memref<1xi32>
              %c0_19 = arith.constant 0 : index
              %9 = memref.load %alloca_0[%c0_19] : memref<1xi32>
              %c1_i32_20 = arith.constant 1 : i32
              %10 = arith.subi %9, %c1_i32_20 : i32
              %11 = arith.cmpi slt, %8, %10 : i32
              scf.condition(%11)
            } do {
              memref.alloca_scope  {
                %c1_i32_21 = arith.constant 1 : i32
                %c0_22 = arith.constant 0 : index
                memref.store %c1_i32_21, %alloca_5[%c0_22] : memref<1xi32>
                scf.while : () -> () {
                  %c0_23 = arith.constant 0 : index
                  %10 = memref.load %alloca_5[%c0_23] : memref<1xi32>
                  %c0_24 = arith.constant 0 : index
                  %11 = memref.load %alloca_0[%c0_24] : memref<1xi32>
                  %c1_i32_25 = arith.constant 1 : i32
                  %12 = arith.subi %11, %c1_i32_25 : i32
                  %13 = arith.cmpi slt, %10, %12 : i32
                  scf.condition(%13)
                } do {
                  %cst = arith.constant 2.000000e-01 : f64
                  %c0_23 = arith.constant 0 : index
                  %10 = memref.load %alloca_1[%c0_23] : memref<1xmemref<?xf64>>
                  %c0_24 = arith.constant 0 : index
                  %11 = memref.load %alloca_4[%c0_24] : memref<1xi32>
                  %12 = arith.extsi %11 : i32 to i64
                  %13 = arith.muli %12, %2 : i64
                  %14 = arith.index_cast %13 : i64 to index
                  %c1 = arith.constant 1 : index
                  %c0_25 = arith.constant 0 : index
                  %c0_26 = arith.constant 0 : index
                  %dim = memref.dim %10, %c0_26 : memref<?xf64>
                  %15 = arith.subi %dim, %14 : index
                  %subview = memref.subview %10[%14] [%15] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%15], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_27 = arith.constant 0 : index
                  %16 = memref.load %alloca_5[%c0_27] : memref<1xi32>
                  %17 = arith.index_cast %16 : i32 to index
                  %c0_28 = arith.constant 0 : index
                  %dim_29 = memref.dim %reinterpret_cast, %c0_28 : memref<?xf64>
                  %18 = arith.subi %dim_29, %17 : index
                  %c1_30 = arith.constant 1 : index
                  %subview_31 = memref.subview %reinterpret_cast[%17] [%18] [%c1_30] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_32 = arith.constant 0 : index
                  %19 = memref.load %subview_31[%c0_32] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_33 = arith.constant 0 : index
                  %20 = memref.load %alloca_1[%c0_33] : memref<1xmemref<?xf64>>
                  %c0_34 = arith.constant 0 : index
                  %21 = memref.load %alloca_4[%c0_34] : memref<1xi32>
                  %22 = arith.extsi %21 : i32 to i64
                  %23 = arith.muli %22, %2 : i64
                  %24 = arith.index_cast %23 : i64 to index
                  %c1_35 = arith.constant 1 : index
                  %c0_36 = arith.constant 0 : index
                  %c0_37 = arith.constant 0 : index
                  %dim_38 = memref.dim %20, %c0_37 : memref<?xf64>
                  %25 = arith.subi %dim_38, %24 : index
                  %subview_39 = memref.subview %20[%24] [%25] [%c1_35] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_40 = memref.reinterpret_cast %subview_39 to offset: [0], sizes: [%25], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_41 = arith.constant 0 : index
                  %26 = memref.load %alloca_5[%c0_41] : memref<1xi32>
                  %c1_i32_42 = arith.constant 1 : i32
                  %27 = arith.subi %26, %c1_i32_42 : i32
                  %28 = arith.index_cast %27 : i32 to index
                  %c0_43 = arith.constant 0 : index
                  %dim_44 = memref.dim %reinterpret_cast_40, %c0_43 : memref<?xf64>
                  %29 = arith.subi %dim_44, %28 : index
                  %c1_45 = arith.constant 1 : index
                  %subview_46 = memref.subview %reinterpret_cast_40[%28] [%29] [%c1_45] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_47 = arith.constant 0 : index
                  %30 = memref.load %subview_46[%c0_47] : memref<?xf64, strided<[?], offset: ?>>
                  %31 = arith.addf %19, %30 : f64
                  %c0_48 = arith.constant 0 : index
                  %32 = memref.load %alloca_1[%c0_48] : memref<1xmemref<?xf64>>
                  %c0_49 = arith.constant 0 : index
                  %33 = memref.load %alloca_4[%c0_49] : memref<1xi32>
                  %34 = arith.extsi %33 : i32 to i64
                  %35 = arith.muli %34, %2 : i64
                  %36 = arith.index_cast %35 : i64 to index
                  %c1_50 = arith.constant 1 : index
                  %c0_51 = arith.constant 0 : index
                  %c0_52 = arith.constant 0 : index
                  %dim_53 = memref.dim %32, %c0_52 : memref<?xf64>
                  %37 = arith.subi %dim_53, %36 : index
                  %subview_54 = memref.subview %32[%36] [%37] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_55 = memref.reinterpret_cast %subview_54 to offset: [0], sizes: [%37], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c1_i32_56 = arith.constant 1 : i32
                  %c0_57 = arith.constant 0 : index
                  %38 = memref.load %alloca_5[%c0_57] : memref<1xi32>
                  %39 = arith.addi %c1_i32_56, %38 : i32
                  %40 = arith.index_cast %39 : i32 to index
                  %c0_58 = arith.constant 0 : index
                  %dim_59 = memref.dim %reinterpret_cast_55, %c0_58 : memref<?xf64>
                  %41 = arith.subi %dim_59, %40 : index
                  %c1_60 = arith.constant 1 : index
                  %subview_61 = memref.subview %reinterpret_cast_55[%40] [%41] [%c1_60] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_62 = arith.constant 0 : index
                  %42 = memref.load %subview_61[%c0_62] : memref<?xf64, strided<[?], offset: ?>>
                  %43 = arith.addf %31, %42 : f64
                  %c0_63 = arith.constant 0 : index
                  %44 = memref.load %alloca_1[%c0_63] : memref<1xmemref<?xf64>>
                  %c1_i32_64 = arith.constant 1 : i32
                  %c0_65 = arith.constant 0 : index
                  %45 = memref.load %alloca_4[%c0_65] : memref<1xi32>
                  %46 = arith.addi %c1_i32_64, %45 : i32
                  %47 = arith.extsi %46 : i32 to i64
                  %48 = arith.muli %47, %2 : i64
                  %49 = arith.index_cast %48 : i64 to index
                  %c1_66 = arith.constant 1 : index
                  %c0_67 = arith.constant 0 : index
                  %c0_68 = arith.constant 0 : index
                  %dim_69 = memref.dim %44, %c0_68 : memref<?xf64>
                  %50 = arith.subi %dim_69, %49 : index
                  %subview_70 = memref.subview %44[%49] [%50] [%c1_66] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_71 = memref.reinterpret_cast %subview_70 to offset: [0], sizes: [%50], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_72 = arith.constant 0 : index
                  %51 = memref.load %alloca_5[%c0_72] : memref<1xi32>
                  %52 = arith.index_cast %51 : i32 to index
                  %c0_73 = arith.constant 0 : index
                  %dim_74 = memref.dim %reinterpret_cast_71, %c0_73 : memref<?xf64>
                  %53 = arith.subi %dim_74, %52 : index
                  %c1_75 = arith.constant 1 : index
                  %subview_76 = memref.subview %reinterpret_cast_71[%52] [%53] [%c1_75] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_77 = arith.constant 0 : index
                  %54 = memref.load %subview_76[%c0_77] : memref<?xf64, strided<[?], offset: ?>>
                  %55 = arith.addf %43, %54 : f64
                  %c0_78 = arith.constant 0 : index
                  %56 = memref.load %alloca_1[%c0_78] : memref<1xmemref<?xf64>>
                  %c0_79 = arith.constant 0 : index
                  %57 = memref.load %alloca_4[%c0_79] : memref<1xi32>
                  %c1_i32_80 = arith.constant 1 : i32
                  %58 = arith.subi %57, %c1_i32_80 : i32
                  %59 = arith.extsi %58 : i32 to i64
                  %60 = arith.muli %59, %2 : i64
                  %61 = arith.index_cast %60 : i64 to index
                  %c1_81 = arith.constant 1 : index
                  %c0_82 = arith.constant 0 : index
                  %c0_83 = arith.constant 0 : index
                  %dim_84 = memref.dim %56, %c0_83 : memref<?xf64>
                  %62 = arith.subi %dim_84, %61 : index
                  %subview_85 = memref.subview %56[%61] [%62] [%c1_81] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_86 = memref.reinterpret_cast %subview_85 to offset: [0], sizes: [%62], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_87 = arith.constant 0 : index
                  %63 = memref.load %alloca_5[%c0_87] : memref<1xi32>
                  %64 = arith.index_cast %63 : i32 to index
                  %c0_88 = arith.constant 0 : index
                  %dim_89 = memref.dim %reinterpret_cast_86, %c0_88 : memref<?xf64>
                  %65 = arith.subi %dim_89, %64 : index
                  %c1_90 = arith.constant 1 : index
                  %subview_91 = memref.subview %reinterpret_cast_86[%64] [%65] [%c1_90] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_92 = arith.constant 0 : index
                  %66 = memref.load %subview_91[%c0_92] : memref<?xf64, strided<[?], offset: ?>>
                  %67 = arith.addf %55, %66 : f64
                  %68 = arith.mulf %cst, %67 : f64
                  %c0_93 = arith.constant 0 : index
                  %69 = memref.load %alloca_2[%c0_93] : memref<1xmemref<?xf64>>
                  %c0_94 = arith.constant 0 : index
                  %70 = memref.load %alloca_4[%c0_94] : memref<1xi32>
                  %71 = arith.extsi %70 : i32 to i64
                  %72 = arith.muli %71, %5 : i64
                  %73 = arith.index_cast %72 : i64 to index
                  %c1_95 = arith.constant 1 : index
                  %c0_96 = arith.constant 0 : index
                  %c0_97 = arith.constant 0 : index
                  %dim_98 = memref.dim %69, %c0_97 : memref<?xf64>
                  %74 = arith.subi %dim_98, %73 : index
                  %subview_99 = memref.subview %69[%73] [%74] [%c1_95] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_100 = memref.reinterpret_cast %subview_99 to offset: [0], sizes: [%74], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_101 = arith.constant 0 : index
                  %75 = memref.load %alloca_5[%c0_101] : memref<1xi32>
                  %76 = arith.index_cast %75 : i32 to index
                  %c0_102 = arith.constant 0 : index
                  %dim_103 = memref.dim %reinterpret_cast_100, %c0_102 : memref<?xf64>
                  %77 = arith.subi %dim_103, %76 : index
                  %c1_104 = arith.constant 1 : index
                  %subview_105 = memref.subview %reinterpret_cast_100[%76] [%77] [%c1_104] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_106 = arith.constant 0 : index
                  memref.store %68, %subview_105[%c0_106] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_107 = arith.constant 0 : index
                  %78 = memref.load %alloca_5[%c0_107] : memref<1xi32>
                  %c1_i32_108 = arith.constant 1 : i32
                  %79 = arith.addi %78, %c1_i32_108 : i32
                  %c0_109 = arith.constant 0 : index
                  memref.store %79, %alloca_5[%c0_109] : memref<1xi32>
                  scf.yield
                }
              }
              %c0_18 = arith.constant 0 : index
              %8 = memref.load %alloca_4[%c0_18] : memref<1xi32>
              %c1_i32_19 = arith.constant 1 : i32
              %9 = arith.addi %8, %c1_i32_19 : i32
              %c0_20 = arith.constant 0 : index
              memref.store %9, %alloca_4[%c0_20] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c1_i32_16 = arith.constant 1 : i32
            %c0_17 = arith.constant 0 : index
            memref.store %c1_i32_16, %alloca_4[%c0_17] : memref<1xi32>
            scf.while : () -> () {
              %c0_18 = arith.constant 0 : index
              %8 = memref.load %alloca_4[%c0_18] : memref<1xi32>
              %c0_19 = arith.constant 0 : index
              %9 = memref.load %alloca_0[%c0_19] : memref<1xi32>
              %c1_i32_20 = arith.constant 1 : i32
              %10 = arith.subi %9, %c1_i32_20 : i32
              %11 = arith.cmpi slt, %8, %10 : i32
              scf.condition(%11)
            } do {
              memref.alloca_scope  {
                %c1_i32_21 = arith.constant 1 : i32
                %c0_22 = arith.constant 0 : index
                memref.store %c1_i32_21, %alloca_5[%c0_22] : memref<1xi32>
                scf.while : () -> () {
                  %c0_23 = arith.constant 0 : index
                  %10 = memref.load %alloca_5[%c0_23] : memref<1xi32>
                  %c0_24 = arith.constant 0 : index
                  %11 = memref.load %alloca_0[%c0_24] : memref<1xi32>
                  %c1_i32_25 = arith.constant 1 : i32
                  %12 = arith.subi %11, %c1_i32_25 : i32
                  %13 = arith.cmpi slt, %10, %12 : i32
                  scf.condition(%13)
                } do {
                  %cst = arith.constant 2.000000e-01 : f64
                  %c0_23 = arith.constant 0 : index
                  %10 = memref.load %alloca_2[%c0_23] : memref<1xmemref<?xf64>>
                  %c0_24 = arith.constant 0 : index
                  %11 = memref.load %alloca_4[%c0_24] : memref<1xi32>
                  %12 = arith.extsi %11 : i32 to i64
                  %13 = arith.muli %12, %5 : i64
                  %14 = arith.index_cast %13 : i64 to index
                  %c1 = arith.constant 1 : index
                  %c0_25 = arith.constant 0 : index
                  %c0_26 = arith.constant 0 : index
                  %dim = memref.dim %10, %c0_26 : memref<?xf64>
                  %15 = arith.subi %dim, %14 : index
                  %subview = memref.subview %10[%14] [%15] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%15], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_27 = arith.constant 0 : index
                  %16 = memref.load %alloca_5[%c0_27] : memref<1xi32>
                  %17 = arith.index_cast %16 : i32 to index
                  %c0_28 = arith.constant 0 : index
                  %dim_29 = memref.dim %reinterpret_cast, %c0_28 : memref<?xf64>
                  %18 = arith.subi %dim_29, %17 : index
                  %c1_30 = arith.constant 1 : index
                  %subview_31 = memref.subview %reinterpret_cast[%17] [%18] [%c1_30] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_32 = arith.constant 0 : index
                  %19 = memref.load %subview_31[%c0_32] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_33 = arith.constant 0 : index
                  %20 = memref.load %alloca_2[%c0_33] : memref<1xmemref<?xf64>>
                  %c0_34 = arith.constant 0 : index
                  %21 = memref.load %alloca_4[%c0_34] : memref<1xi32>
                  %22 = arith.extsi %21 : i32 to i64
                  %23 = arith.muli %22, %5 : i64
                  %24 = arith.index_cast %23 : i64 to index
                  %c1_35 = arith.constant 1 : index
                  %c0_36 = arith.constant 0 : index
                  %c0_37 = arith.constant 0 : index
                  %dim_38 = memref.dim %20, %c0_37 : memref<?xf64>
                  %25 = arith.subi %dim_38, %24 : index
                  %subview_39 = memref.subview %20[%24] [%25] [%c1_35] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_40 = memref.reinterpret_cast %subview_39 to offset: [0], sizes: [%25], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_41 = arith.constant 0 : index
                  %26 = memref.load %alloca_5[%c0_41] : memref<1xi32>
                  %c1_i32_42 = arith.constant 1 : i32
                  %27 = arith.subi %26, %c1_i32_42 : i32
                  %28 = arith.index_cast %27 : i32 to index
                  %c0_43 = arith.constant 0 : index
                  %dim_44 = memref.dim %reinterpret_cast_40, %c0_43 : memref<?xf64>
                  %29 = arith.subi %dim_44, %28 : index
                  %c1_45 = arith.constant 1 : index
                  %subview_46 = memref.subview %reinterpret_cast_40[%28] [%29] [%c1_45] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_47 = arith.constant 0 : index
                  %30 = memref.load %subview_46[%c0_47] : memref<?xf64, strided<[?], offset: ?>>
                  %31 = arith.addf %19, %30 : f64
                  %c0_48 = arith.constant 0 : index
                  %32 = memref.load %alloca_2[%c0_48] : memref<1xmemref<?xf64>>
                  %c0_49 = arith.constant 0 : index
                  %33 = memref.load %alloca_4[%c0_49] : memref<1xi32>
                  %34 = arith.extsi %33 : i32 to i64
                  %35 = arith.muli %34, %5 : i64
                  %36 = arith.index_cast %35 : i64 to index
                  %c1_50 = arith.constant 1 : index
                  %c0_51 = arith.constant 0 : index
                  %c0_52 = arith.constant 0 : index
                  %dim_53 = memref.dim %32, %c0_52 : memref<?xf64>
                  %37 = arith.subi %dim_53, %36 : index
                  %subview_54 = memref.subview %32[%36] [%37] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_55 = memref.reinterpret_cast %subview_54 to offset: [0], sizes: [%37], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c1_i32_56 = arith.constant 1 : i32
                  %c0_57 = arith.constant 0 : index
                  %38 = memref.load %alloca_5[%c0_57] : memref<1xi32>
                  %39 = arith.addi %c1_i32_56, %38 : i32
                  %40 = arith.index_cast %39 : i32 to index
                  %c0_58 = arith.constant 0 : index
                  %dim_59 = memref.dim %reinterpret_cast_55, %c0_58 : memref<?xf64>
                  %41 = arith.subi %dim_59, %40 : index
                  %c1_60 = arith.constant 1 : index
                  %subview_61 = memref.subview %reinterpret_cast_55[%40] [%41] [%c1_60] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_62 = arith.constant 0 : index
                  %42 = memref.load %subview_61[%c0_62] : memref<?xf64, strided<[?], offset: ?>>
                  %43 = arith.addf %31, %42 : f64
                  %c0_63 = arith.constant 0 : index
                  %44 = memref.load %alloca_2[%c0_63] : memref<1xmemref<?xf64>>
                  %c1_i32_64 = arith.constant 1 : i32
                  %c0_65 = arith.constant 0 : index
                  %45 = memref.load %alloca_4[%c0_65] : memref<1xi32>
                  %46 = arith.addi %c1_i32_64, %45 : i32
                  %47 = arith.extsi %46 : i32 to i64
                  %48 = arith.muli %47, %5 : i64
                  %49 = arith.index_cast %48 : i64 to index
                  %c1_66 = arith.constant 1 : index
                  %c0_67 = arith.constant 0 : index
                  %c0_68 = arith.constant 0 : index
                  %dim_69 = memref.dim %44, %c0_68 : memref<?xf64>
                  %50 = arith.subi %dim_69, %49 : index
                  %subview_70 = memref.subview %44[%49] [%50] [%c1_66] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_71 = memref.reinterpret_cast %subview_70 to offset: [0], sizes: [%50], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_72 = arith.constant 0 : index
                  %51 = memref.load %alloca_5[%c0_72] : memref<1xi32>
                  %52 = arith.index_cast %51 : i32 to index
                  %c0_73 = arith.constant 0 : index
                  %dim_74 = memref.dim %reinterpret_cast_71, %c0_73 : memref<?xf64>
                  %53 = arith.subi %dim_74, %52 : index
                  %c1_75 = arith.constant 1 : index
                  %subview_76 = memref.subview %reinterpret_cast_71[%52] [%53] [%c1_75] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_77 = arith.constant 0 : index
                  %54 = memref.load %subview_76[%c0_77] : memref<?xf64, strided<[?], offset: ?>>
                  %55 = arith.addf %43, %54 : f64
                  %c0_78 = arith.constant 0 : index
                  %56 = memref.load %alloca_2[%c0_78] : memref<1xmemref<?xf64>>
                  %c0_79 = arith.constant 0 : index
                  %57 = memref.load %alloca_4[%c0_79] : memref<1xi32>
                  %c1_i32_80 = arith.constant 1 : i32
                  %58 = arith.subi %57, %c1_i32_80 : i32
                  %59 = arith.extsi %58 : i32 to i64
                  %60 = arith.muli %59, %5 : i64
                  %61 = arith.index_cast %60 : i64 to index
                  %c1_81 = arith.constant 1 : index
                  %c0_82 = arith.constant 0 : index
                  %c0_83 = arith.constant 0 : index
                  %dim_84 = memref.dim %56, %c0_83 : memref<?xf64>
                  %62 = arith.subi %dim_84, %61 : index
                  %subview_85 = memref.subview %56[%61] [%62] [%c1_81] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_86 = memref.reinterpret_cast %subview_85 to offset: [0], sizes: [%62], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_87 = arith.constant 0 : index
                  %63 = memref.load %alloca_5[%c0_87] : memref<1xi32>
                  %64 = arith.index_cast %63 : i32 to index
                  %c0_88 = arith.constant 0 : index
                  %dim_89 = memref.dim %reinterpret_cast_86, %c0_88 : memref<?xf64>
                  %65 = arith.subi %dim_89, %64 : index
                  %c1_90 = arith.constant 1 : index
                  %subview_91 = memref.subview %reinterpret_cast_86[%64] [%65] [%c1_90] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_92 = arith.constant 0 : index
                  %66 = memref.load %subview_91[%c0_92] : memref<?xf64, strided<[?], offset: ?>>
                  %67 = arith.addf %55, %66 : f64
                  %68 = arith.mulf %cst, %67 : f64
                  %c0_93 = arith.constant 0 : index
                  %69 = memref.load %alloca_1[%c0_93] : memref<1xmemref<?xf64>>
                  %c0_94 = arith.constant 0 : index
                  %70 = memref.load %alloca_4[%c0_94] : memref<1xi32>
                  %71 = arith.extsi %70 : i32 to i64
                  %72 = arith.muli %71, %2 : i64
                  %73 = arith.index_cast %72 : i64 to index
                  %c1_95 = arith.constant 1 : index
                  %c0_96 = arith.constant 0 : index
                  %c0_97 = arith.constant 0 : index
                  %dim_98 = memref.dim %69, %c0_97 : memref<?xf64>
                  %74 = arith.subi %dim_98, %73 : index
                  %subview_99 = memref.subview %69[%73] [%74] [%c1_95] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_100 = memref.reinterpret_cast %subview_99 to offset: [0], sizes: [%74], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_101 = arith.constant 0 : index
                  %75 = memref.load %alloca_5[%c0_101] : memref<1xi32>
                  %76 = arith.index_cast %75 : i32 to index
                  %c0_102 = arith.constant 0 : index
                  %dim_103 = memref.dim %reinterpret_cast_100, %c0_102 : memref<?xf64>
                  %77 = arith.subi %dim_103, %76 : index
                  %c1_104 = arith.constant 1 : index
                  %subview_105 = memref.subview %reinterpret_cast_100[%76] [%77] [%c1_104] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_106 = arith.constant 0 : index
                  memref.store %68, %subview_105[%c0_106] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_107 = arith.constant 0 : index
                  %78 = memref.load %alloca_5[%c0_107] : memref<1xi32>
                  %c1_i32_108 = arith.constant 1 : i32
                  %79 = arith.addi %78, %c1_i32_108 : i32
                  %c0_109 = arith.constant 0 : index
                  memref.store %79, %alloca_5[%c0_109] : memref<1xi32>
                  scf.yield
                }
              }
              %c0_18 = arith.constant 0 : index
              %8 = memref.load %alloca_4[%c0_18] : memref<1xi32>
              %c1_i32_19 = arith.constant 1 : i32
              %9 = arith.addi %8, %c1_i32_19 : i32
              %c0_20 = arith.constant 0 : index
              memref.store %9, %alloca_4[%c0_20] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_14 = arith.constant 0 : index
        %6 = memref.load %alloca_3[%c0_14] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %7 = arith.addi %6, %c1_i32 : i32
        %c0_15 = arith.constant 0 : index
        memref.store %7, %alloca_3[%c0_15] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[65, 0]> {alignment = 1 : i64}
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
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_6 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_6] : memref<1xmemref<?xmemref<?xi8>>>
    %c1300_i32 = arith.constant 1300 : i32
    %c0_7 = arith.constant 0 : index
    memref.store %c1300_i32, %alloca_2[%c0_7] : memref<1xi32>
    %c500_i32 = arith.constant 500 : i32
    %c0_8 = arith.constant 0 : index
    memref.store %c500_i32, %alloca_3[%c0_8] : memref<1xi32>
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
    memref.store %8, %alloca_4[%c0_12] : memref<1xmemref<?xf64>>
    %c0_13 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_13] : memref<1xi32>
    %c0_i32_14 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_14 : i32
    %c0_15 = arith.constant 0 : index
    %11 = memref.load %alloca_2[%c0_15] : memref<1xi32>
    %c0_i32_16 = arith.constant 0 : i32
    %12 = arith.addi %11, %c0_i32_16 : i32
    %13 = arith.muli %10, %12 : i32
    %14 = arith.extsi %13 : i32 to i64
    %c8_i64_17 = arith.constant 8 : i64
    %15 = arith.trunci %c8_i64_17 : i64 to i32
    %16 = call @polybench_alloc_data(%14, %15) : (i64, i32) -> !llvm.ptr
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.ptr to memref<?xf64>
    %c0_18 = arith.constant 0 : index
    memref.store %17, %alloca_5[%c0_18] : memref<1xmemref<?xf64>>
    %c0_19 = arith.constant 0 : index
    %18 = memref.load %alloca_2[%c0_19] : memref<1xi32>
    %c0_20 = arith.constant 0 : index
    %19 = memref.load %alloca_4[%c0_20] : memref<1xmemref<?xf64>>
    %c0_21 = arith.constant 0 : index
    %20 = memref.load %alloca_5[%c0_21] : memref<1xmemref<?xf64>>
    call @init_array(%18, %19, %20) : (i32, memref<?xf64>, memref<?xf64>) -> ()
    %21 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %21() : !llvm.ptr, () -> ()
    %c0_22 = arith.constant 0 : index
    %22 = memref.load %alloca_3[%c0_22] : memref<1xi32>
    %c0_23 = arith.constant 0 : index
    %23 = memref.load %alloca_2[%c0_23] : memref<1xi32>
    %c0_24 = arith.constant 0 : index
    %24 = memref.load %alloca_4[%c0_24] : memref<1xmemref<?xf64>>
    %c0_25 = arith.constant 0 : index
    %25 = memref.load %alloca_5[%c0_25] : memref<1xmemref<?xf64>>
    call @kernel_jacobi_2d(%22, %23, %24, %25) : (i32, i32, memref<?xf64>, memref<?xf64>) -> ()
    %26 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %26() : !llvm.ptr, () -> ()
    %27 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %27() : !llvm.ptr, () -> ()
    %c0_26 = arith.constant 0 : index
    %28 = memref.load %alloca_2[%c0_26] : memref<1xi32>
    %c0_27 = arith.constant 0 : index
    %29 = memref.load %alloca_4[%c0_27] : memref<1xmemref<?xf64>>
    call @print_array(%28, %29) : (i32, memref<?xf64>) -> ()
    %c0_28 = arith.constant 0 : index
    %30 = memref.load %alloca_4[%c0_28] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %30 : memref<?xf64> -> index
    %31 = arith.index_castui %intptr : index to i64
    %32 = llvm.inttoptr %31 : i64 to !llvm.ptr
    call @free(%32) : (!llvm.ptr) -> ()
    %c0_29 = arith.constant 0 : index
    %33 = memref.load %alloca_5[%c0_29] : memref<1xmemref<?xf64>>
    %intptr_30 = memref.extract_aligned_pointer_as_index %33 : memref<?xf64> -> index
    %34 = arith.index_castui %intptr_30 : index to i64
    %35 = llvm.inttoptr %34 : i64 to !llvm.ptr
    call @free(%35) : (!llvm.ptr) -> ()
    %c0_i32_31 = arith.constant 0 : i32
    %c0_32 = arith.constant 0 : index
    memref.store %c0_i32_31, %alloca_1[%c0_32] : memref<1xi32>
    %c0_33 = arith.constant 0 : index
    %36 = memref.load %alloca_1[%c0_33] : memref<1xi32>
    return %36 : i32
  }
}

