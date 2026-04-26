module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/solvers/lu/lu.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_7] : memref<1xmemref<?xf64>>
    %c0_8 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_8] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_17 = arith.constant 0 : i32
      %c0_18 = arith.constant 0 : index
      memref.store %c0_i32_17, %alloca_1[%c0_18] : memref<1xi32>
      scf.while : () -> () {
        %c0_19 = arith.constant 0 : index
        %18 = memref.load %alloca_1[%c0_19] : memref<1xi32>
        %c0_20 = arith.constant 0 : index
        %19 = memref.load %alloca[%c0_20] : memref<1xi32>
        %20 = arith.cmpi slt, %18, %19 : i32
        scf.condition(%20)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_i32_32 = arith.constant 0 : i32
            %c0_33 = arith.constant 0 : index
            memref.store %c0_i32_32, %alloca_2[%c0_33] : memref<1xi32>
            scf.while : () -> () {
              %c0_34 = arith.constant 0 : index
              %30 = memref.load %alloca_2[%c0_34] : memref<1xi32>
              %c0_35 = arith.constant 0 : index
              %31 = memref.load %alloca_1[%c0_35] : memref<1xi32>
              %32 = arith.cmpi sle, %30, %31 : i32
              scf.condition(%32)
            } do {
              %c0_34 = arith.constant 0 : index
              %30 = memref.load %alloca_2[%c0_34] : memref<1xi32>
              %c0_i32_35 = arith.constant 0 : i32
              %31 = arith.subi %c0_i32_35, %30 : i32
              %c0_36 = arith.constant 0 : index
              %32 = memref.load %alloca[%c0_36] : memref<1xi32>
              %33 = arith.remsi %31, %32 : i32
              %34 = arith.sitofp %33 : i32 to f64
              %c0_37 = arith.constant 0 : index
              %35 = memref.load %alloca[%c0_37] : memref<1xi32>
              %36 = arith.sitofp %35 : i32 to f64
              %37 = arith.divf %34, %36 : f64
              %c1_i32_38 = arith.constant 1 : i32
              %38 = arith.sitofp %c1_i32_38 : i32 to f64
              %39 = arith.addf %37, %38 : f64
              %c0_39 = arith.constant 0 : index
              %40 = memref.load %alloca_0[%c0_39] : memref<1xmemref<?xf64>>
              %c0_40 = arith.constant 0 : index
              %41 = memref.load %alloca_1[%c0_40] : memref<1xi32>
              %42 = arith.extsi %41 : i32 to i64
              %43 = arith.muli %42, %2 : i64
              %44 = arith.index_cast %43 : i64 to index
              %c1_41 = arith.constant 1 : index
              %c0_42 = arith.constant 0 : index
              %c0_43 = arith.constant 0 : index
              %dim_44 = memref.dim %40, %c0_43 : memref<?xf64>
              %45 = arith.subi %dim_44, %44 : index
              %subview_45 = memref.subview %40[%44] [%45] [%c1_41] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_46 = memref.reinterpret_cast %subview_45 to offset: [0], sizes: [%45], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_47 = arith.constant 0 : index
              %46 = memref.load %alloca_2[%c0_47] : memref<1xi32>
              %47 = arith.index_cast %46 : i32 to index
              %c0_48 = arith.constant 0 : index
              %dim_49 = memref.dim %reinterpret_cast_46, %c0_48 : memref<?xf64>
              %48 = arith.subi %dim_49, %47 : index
              %c1_50 = arith.constant 1 : index
              %subview_51 = memref.subview %reinterpret_cast_46[%47] [%48] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_52 = arith.constant 0 : index
              memref.store %39, %subview_51[%c0_52] : memref<?xf64, strided<[?], offset: ?>>
              %c0_53 = arith.constant 0 : index
              %49 = memref.load %alloca_2[%c0_53] : memref<1xi32>
              %c1_i32_54 = arith.constant 1 : i32
              %50 = arith.addi %49, %c1_i32_54 : i32
              %c0_55 = arith.constant 0 : index
              memref.store %50, %alloca_2[%c0_55] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c0_32 = arith.constant 0 : index
            %30 = memref.load %alloca_1[%c0_32] : memref<1xi32>
            %c1_i32_33 = arith.constant 1 : i32
            %31 = arith.addi %30, %c1_i32_33 : i32
            %c0_34 = arith.constant 0 : index
            memref.store %31, %alloca_2[%c0_34] : memref<1xi32>
            scf.while : () -> () {
              %c0_35 = arith.constant 0 : index
              %32 = memref.load %alloca_2[%c0_35] : memref<1xi32>
              %c0_36 = arith.constant 0 : index
              %33 = memref.load %alloca[%c0_36] : memref<1xi32>
              %34 = arith.cmpi slt, %32, %33 : i32
              scf.condition(%34)
            } do {
              memref.alloca_scope  {
                %c0_i32_38 = arith.constant 0 : i32
                %34 = arith.sitofp %c0_i32_38 : i32 to f64
                %c0_39 = arith.constant 0 : index
                %35 = memref.load %alloca_0[%c0_39] : memref<1xmemref<?xf64>>
                %c0_40 = arith.constant 0 : index
                %36 = memref.load %alloca_1[%c0_40] : memref<1xi32>
                %37 = arith.extsi %36 : i32 to i64
                %38 = arith.muli %37, %2 : i64
                %39 = arith.index_cast %38 : i64 to index
                %c1_41 = arith.constant 1 : index
                %c0_42 = arith.constant 0 : index
                %c0_43 = arith.constant 0 : index
                %dim_44 = memref.dim %35, %c0_43 : memref<?xf64>
                %40 = arith.subi %dim_44, %39 : index
                %subview_45 = memref.subview %35[%39] [%40] [%c1_41] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_46 = memref.reinterpret_cast %subview_45 to offset: [0], sizes: [%40], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_47 = arith.constant 0 : index
                %41 = memref.load %alloca_2[%c0_47] : memref<1xi32>
                %42 = arith.index_cast %41 : i32 to index
                %c0_48 = arith.constant 0 : index
                %dim_49 = memref.dim %reinterpret_cast_46, %c0_48 : memref<?xf64>
                %43 = arith.subi %dim_49, %42 : index
                %c1_50 = arith.constant 1 : index
                %subview_51 = memref.subview %reinterpret_cast_46[%42] [%43] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_52 = arith.constant 0 : index
                memref.store %34, %subview_51[%c0_52] : memref<?xf64, strided<[?], offset: ?>>
              }
              %c0_35 = arith.constant 0 : index
              %32 = memref.load %alloca_2[%c0_35] : memref<1xi32>
              %c1_i32_36 = arith.constant 1 : i32
              %33 = arith.addi %32, %c1_i32_36 : i32
              %c0_37 = arith.constant 0 : index
              memref.store %33, %alloca_2[%c0_37] : memref<1xi32>
              scf.yield
            }
          }
          %c1_i32_21 = arith.constant 1 : i32
          %20 = arith.sitofp %c1_i32_21 : i32 to f64
          %c0_22 = arith.constant 0 : index
          %21 = memref.load %alloca_0[%c0_22] : memref<1xmemref<?xf64>>
          %c0_23 = arith.constant 0 : index
          %22 = memref.load %alloca_1[%c0_23] : memref<1xi32>
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
          %27 = memref.load %alloca_1[%c0_26] : memref<1xi32>
          %28 = arith.index_cast %27 : i32 to index
          %c0_27 = arith.constant 0 : index
          %dim_28 = memref.dim %reinterpret_cast, %c0_27 : memref<?xf64>
          %29 = arith.subi %dim_28, %28 : index
          %c1_29 = arith.constant 1 : index
          %subview_30 = memref.subview %reinterpret_cast[%28] [%29] [%c1_29] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_31 = arith.constant 0 : index
          memref.store %20, %subview_30[%c0_31] : memref<?xf64, strided<[?], offset: ?>>
        }
        %c0_19 = arith.constant 0 : index
        %18 = memref.load %alloca_1[%c0_19] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %19 = arith.addi %18, %c1_i32 : i32
        %c0_20 = arith.constant 0 : index
        memref.store %19, %alloca_1[%c0_20] : memref<1xi32>
        scf.yield
      }
    }
    %c0_9 = arith.constant 0 : index
    %3 = memref.load %alloca[%c0_9] : memref<1xi32>
    %c0_i32_10 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_10 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_11 = arith.constant 0 : index
    %6 = memref.load %alloca[%c0_11] : memref<1xi32>
    %c0_i32_12 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_12 : i32
    %c0_13 = arith.constant 0 : index
    %8 = memref.load %alloca[%c0_13] : memref<1xi32>
    %c0_i32_14 = arith.constant 0 : i32
    %9 = arith.addi %8, %c0_i32_14 : i32
    %10 = arith.muli %7, %9 : i32
    %11 = arith.extsi %10 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %12 = arith.trunci %c8_i64 : i64 to i32
    %13 = call @polybench_alloc_data(%11, %12) : (i64, i32) -> !llvm.ptr
    %14 = builtin.unrealized_conversion_cast %13 : !llvm.ptr to memref<?xf64>
    %c0_15 = arith.constant 0 : index
    memref.store %14, %alloca_6[%c0_15] : memref<1xmemref<?xf64>>
    memref.alloca_scope  {
      %c0_i32_17 = arith.constant 0 : i32
      %c0_18 = arith.constant 0 : index
      memref.store %c0_i32_17, %alloca_3[%c0_18] : memref<1xi32>
      scf.while : () -> () {
        %c0_19 = arith.constant 0 : index
        %18 = memref.load %alloca_3[%c0_19] : memref<1xi32>
        %c0_20 = arith.constant 0 : index
        %19 = memref.load %alloca[%c0_20] : memref<1xi32>
        %20 = arith.cmpi slt, %18, %19 : i32
        scf.condition(%20)
      } do {
        memref.alloca_scope  {
          %c0_i32_21 = arith.constant 0 : i32
          %c0_22 = arith.constant 0 : index
          memref.store %c0_i32_21, %alloca_4[%c0_22] : memref<1xi32>
          scf.while : () -> () {
            %c0_23 = arith.constant 0 : index
            %20 = memref.load %alloca_4[%c0_23] : memref<1xi32>
            %c0_24 = arith.constant 0 : index
            %21 = memref.load %alloca[%c0_24] : memref<1xi32>
            %22 = arith.cmpi slt, %20, %21 : i32
            scf.condition(%22)
          } do {
            %c0_i32_23 = arith.constant 0 : i32
            %20 = arith.sitofp %c0_i32_23 : i32 to f64
            %c0_24 = arith.constant 0 : index
            %21 = memref.load %alloca_6[%c0_24] : memref<1xmemref<?xf64>>
            %c0_25 = arith.constant 0 : index
            %22 = memref.load %alloca_3[%c0_25] : memref<1xi32>
            %23 = arith.extsi %22 : i32 to i64
            %24 = arith.muli %23, %5 : i64
            %25 = arith.index_cast %24 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_26 = arith.constant 0 : index
            %c0_27 = arith.constant 0 : index
            %dim = memref.dim %21, %c0_27 : memref<?xf64>
            %26 = arith.subi %dim, %25 : index
            %subview = memref.subview %21[%25] [%26] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%26], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_28 = arith.constant 0 : index
            %27 = memref.load %alloca_4[%c0_28] : memref<1xi32>
            %28 = arith.index_cast %27 : i32 to index
            %c0_29 = arith.constant 0 : index
            %dim_30 = memref.dim %reinterpret_cast, %c0_29 : memref<?xf64>
            %29 = arith.subi %dim_30, %28 : index
            %c1_31 = arith.constant 1 : index
            %subview_32 = memref.subview %reinterpret_cast[%28] [%29] [%c1_31] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_33 = arith.constant 0 : index
            memref.store %20, %subview_32[%c0_33] : memref<?xf64, strided<[?], offset: ?>>
            %c0_34 = arith.constant 0 : index
            %30 = memref.load %alloca_4[%c0_34] : memref<1xi32>
            %c1_i32_35 = arith.constant 1 : i32
            %31 = arith.addi %30, %c1_i32_35 : i32
            %c0_36 = arith.constant 0 : index
            memref.store %31, %alloca_4[%c0_36] : memref<1xi32>
            scf.yield
          }
        }
        %c0_19 = arith.constant 0 : index
        %18 = memref.load %alloca_3[%c0_19] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %19 = arith.addi %18, %c1_i32 : i32
        %c0_20 = arith.constant 0 : index
        memref.store %19, %alloca_3[%c0_20] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_17 = arith.constant 0 : i32
      %c0_18 = arith.constant 0 : index
      memref.store %c0_i32_17, %alloca_5[%c0_18] : memref<1xi32>
      scf.while : () -> () {
        %c0_19 = arith.constant 0 : index
        %18 = memref.load %alloca_5[%c0_19] : memref<1xi32>
        %c0_20 = arith.constant 0 : index
        %19 = memref.load %alloca[%c0_20] : memref<1xi32>
        %20 = arith.cmpi slt, %18, %19 : i32
        scf.condition(%20)
      } do {
        memref.alloca_scope  {
          %c0_i32_21 = arith.constant 0 : i32
          %c0_22 = arith.constant 0 : index
          memref.store %c0_i32_21, %alloca_3[%c0_22] : memref<1xi32>
          scf.while : () -> () {
            %c0_23 = arith.constant 0 : index
            %20 = memref.load %alloca_3[%c0_23] : memref<1xi32>
            %c0_24 = arith.constant 0 : index
            %21 = memref.load %alloca[%c0_24] : memref<1xi32>
            %22 = arith.cmpi slt, %20, %21 : i32
            scf.condition(%22)
          } do {
            memref.alloca_scope  {
              %c0_i32_26 = arith.constant 0 : i32
              %c0_27 = arith.constant 0 : index
              memref.store %c0_i32_26, %alloca_4[%c0_27] : memref<1xi32>
              scf.while : () -> () {
                %c0_28 = arith.constant 0 : index
                %22 = memref.load %alloca_4[%c0_28] : memref<1xi32>
                %c0_29 = arith.constant 0 : index
                %23 = memref.load %alloca[%c0_29] : memref<1xi32>
                %24 = arith.cmpi slt, %22, %23 : i32
                scf.condition(%24)
              } do {
                %c0_28 = arith.constant 0 : index
                %22 = memref.load %alloca_0[%c0_28] : memref<1xmemref<?xf64>>
                %c0_29 = arith.constant 0 : index
                %23 = memref.load %alloca_3[%c0_29] : memref<1xi32>
                %24 = arith.extsi %23 : i32 to i64
                %25 = arith.muli %24, %2 : i64
                %26 = arith.index_cast %25 : i64 to index
                %c1 = arith.constant 1 : index
                %c0_30 = arith.constant 0 : index
                %c0_31 = arith.constant 0 : index
                %dim = memref.dim %22, %c0_31 : memref<?xf64>
                %27 = arith.subi %dim, %26 : index
                %subview = memref.subview %22[%26] [%27] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%27], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_32 = arith.constant 0 : index
                %28 = memref.load %alloca_5[%c0_32] : memref<1xi32>
                %29 = arith.index_cast %28 : i32 to index
                %c0_33 = arith.constant 0 : index
                %dim_34 = memref.dim %reinterpret_cast, %c0_33 : memref<?xf64>
                %30 = arith.subi %dim_34, %29 : index
                %c1_35 = arith.constant 1 : index
                %subview_36 = memref.subview %reinterpret_cast[%29] [%30] [%c1_35] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_37 = arith.constant 0 : index
                %31 = memref.load %subview_36[%c0_37] : memref<?xf64, strided<[?], offset: ?>>
                %c0_38 = arith.constant 0 : index
                %32 = memref.load %alloca_0[%c0_38] : memref<1xmemref<?xf64>>
                %c0_39 = arith.constant 0 : index
                %33 = memref.load %alloca_4[%c0_39] : memref<1xi32>
                %34 = arith.extsi %33 : i32 to i64
                %35 = arith.muli %34, %2 : i64
                %36 = arith.index_cast %35 : i64 to index
                %c1_40 = arith.constant 1 : index
                %c0_41 = arith.constant 0 : index
                %c0_42 = arith.constant 0 : index
                %dim_43 = memref.dim %32, %c0_42 : memref<?xf64>
                %37 = arith.subi %dim_43, %36 : index
                %subview_44 = memref.subview %32[%36] [%37] [%c1_40] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_45 = memref.reinterpret_cast %subview_44 to offset: [0], sizes: [%37], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_46 = arith.constant 0 : index
                %38 = memref.load %alloca_5[%c0_46] : memref<1xi32>
                %39 = arith.index_cast %38 : i32 to index
                %c0_47 = arith.constant 0 : index
                %dim_48 = memref.dim %reinterpret_cast_45, %c0_47 : memref<?xf64>
                %40 = arith.subi %dim_48, %39 : index
                %c1_49 = arith.constant 1 : index
                %subview_50 = memref.subview %reinterpret_cast_45[%39] [%40] [%c1_49] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_51 = arith.constant 0 : index
                %41 = memref.load %subview_50[%c0_51] : memref<?xf64, strided<[?], offset: ?>>
                %42 = arith.mulf %31, %41 : f64
                %c0_52 = arith.constant 0 : index
                %43 = memref.load %alloca_6[%c0_52] : memref<1xmemref<?xf64>>
                %c0_53 = arith.constant 0 : index
                %44 = memref.load %alloca_3[%c0_53] : memref<1xi32>
                %45 = arith.extsi %44 : i32 to i64
                %46 = arith.muli %45, %5 : i64
                %47 = arith.index_cast %46 : i64 to index
                %c1_54 = arith.constant 1 : index
                %c0_55 = arith.constant 0 : index
                %c0_56 = arith.constant 0 : index
                %dim_57 = memref.dim %43, %c0_56 : memref<?xf64>
                %48 = arith.subi %dim_57, %47 : index
                %subview_58 = memref.subview %43[%47] [%48] [%c1_54] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_59 = memref.reinterpret_cast %subview_58 to offset: [0], sizes: [%48], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_60 = arith.constant 0 : index
                %49 = memref.load %alloca_4[%c0_60] : memref<1xi32>
                %50 = arith.index_cast %49 : i32 to index
                %c0_61 = arith.constant 0 : index
                %dim_62 = memref.dim %reinterpret_cast_59, %c0_61 : memref<?xf64>
                %51 = arith.subi %dim_62, %50 : index
                %c1_63 = arith.constant 1 : index
                %subview_64 = memref.subview %reinterpret_cast_59[%50] [%51] [%c1_63] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_65 = arith.constant 0 : index
                %52 = memref.load %subview_64[%c0_65] : memref<?xf64, strided<[?], offset: ?>>
                %53 = arith.addf %52, %42 : f64
                %c0_66 = arith.constant 0 : index
                memref.store %53, %subview_64[%c0_66] : memref<?xf64, strided<[?], offset: ?>>
                %c0_67 = arith.constant 0 : index
                %54 = memref.load %alloca_4[%c0_67] : memref<1xi32>
                %c1_i32_68 = arith.constant 1 : i32
                %55 = arith.addi %54, %c1_i32_68 : i32
                %c0_69 = arith.constant 0 : index
                memref.store %55, %alloca_4[%c0_69] : memref<1xi32>
                scf.yield
              }
            }
            %c0_23 = arith.constant 0 : index
            %20 = memref.load %alloca_3[%c0_23] : memref<1xi32>
            %c1_i32_24 = arith.constant 1 : i32
            %21 = arith.addi %20, %c1_i32_24 : i32
            %c0_25 = arith.constant 0 : index
            memref.store %21, %alloca_3[%c0_25] : memref<1xi32>
            scf.yield
          }
        }
        %c0_19 = arith.constant 0 : index
        %18 = memref.load %alloca_5[%c0_19] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %19 = arith.addi %18, %c1_i32 : i32
        %c0_20 = arith.constant 0 : index
        memref.store %19, %alloca_5[%c0_20] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_17 = arith.constant 0 : i32
      %c0_18 = arith.constant 0 : index
      memref.store %c0_i32_17, %alloca_3[%c0_18] : memref<1xi32>
      scf.while : () -> () {
        %c0_19 = arith.constant 0 : index
        %18 = memref.load %alloca_3[%c0_19] : memref<1xi32>
        %c0_20 = arith.constant 0 : index
        %19 = memref.load %alloca[%c0_20] : memref<1xi32>
        %20 = arith.cmpi slt, %18, %19 : i32
        scf.condition(%20)
      } do {
        memref.alloca_scope  {
          %c0_i32_21 = arith.constant 0 : i32
          %c0_22 = arith.constant 0 : index
          memref.store %c0_i32_21, %alloca_4[%c0_22] : memref<1xi32>
          scf.while : () -> () {
            %c0_23 = arith.constant 0 : index
            %20 = memref.load %alloca_4[%c0_23] : memref<1xi32>
            %c0_24 = arith.constant 0 : index
            %21 = memref.load %alloca[%c0_24] : memref<1xi32>
            %22 = arith.cmpi slt, %20, %21 : i32
            scf.condition(%22)
          } do {
            %c0_23 = arith.constant 0 : index
            %20 = memref.load %alloca_6[%c0_23] : memref<1xmemref<?xf64>>
            %c0_24 = arith.constant 0 : index
            %21 = memref.load %alloca_3[%c0_24] : memref<1xi32>
            %22 = arith.extsi %21 : i32 to i64
            %23 = arith.muli %22, %5 : i64
            %24 = arith.index_cast %23 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_25 = arith.constant 0 : index
            %c0_26 = arith.constant 0 : index
            %dim = memref.dim %20, %c0_26 : memref<?xf64>
            %25 = arith.subi %dim, %24 : index
            %subview = memref.subview %20[%24] [%25] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%25], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_27 = arith.constant 0 : index
            %26 = memref.load %alloca_4[%c0_27] : memref<1xi32>
            %27 = arith.index_cast %26 : i32 to index
            %c0_28 = arith.constant 0 : index
            %dim_29 = memref.dim %reinterpret_cast, %c0_28 : memref<?xf64>
            %28 = arith.subi %dim_29, %27 : index
            %c1_30 = arith.constant 1 : index
            %subview_31 = memref.subview %reinterpret_cast[%27] [%28] [%c1_30] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_32 = arith.constant 0 : index
            %29 = memref.load %subview_31[%c0_32] : memref<?xf64, strided<[?], offset: ?>>
            %c0_33 = arith.constant 0 : index
            %30 = memref.load %alloca_0[%c0_33] : memref<1xmemref<?xf64>>
            %c0_34 = arith.constant 0 : index
            %31 = memref.load %alloca_3[%c0_34] : memref<1xi32>
            %32 = arith.extsi %31 : i32 to i64
            %33 = arith.muli %32, %2 : i64
            %34 = arith.index_cast %33 : i64 to index
            %c1_35 = arith.constant 1 : index
            %c0_36 = arith.constant 0 : index
            %c0_37 = arith.constant 0 : index
            %dim_38 = memref.dim %30, %c0_37 : memref<?xf64>
            %35 = arith.subi %dim_38, %34 : index
            %subview_39 = memref.subview %30[%34] [%35] [%c1_35] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast_40 = memref.reinterpret_cast %subview_39 to offset: [0], sizes: [%35], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_41 = arith.constant 0 : index
            %36 = memref.load %alloca_4[%c0_41] : memref<1xi32>
            %37 = arith.index_cast %36 : i32 to index
            %c0_42 = arith.constant 0 : index
            %dim_43 = memref.dim %reinterpret_cast_40, %c0_42 : memref<?xf64>
            %38 = arith.subi %dim_43, %37 : index
            %c1_44 = arith.constant 1 : index
            %subview_45 = memref.subview %reinterpret_cast_40[%37] [%38] [%c1_44] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_46 = arith.constant 0 : index
            memref.store %29, %subview_45[%c0_46] : memref<?xf64, strided<[?], offset: ?>>
            %c0_47 = arith.constant 0 : index
            %39 = memref.load %alloca_4[%c0_47] : memref<1xi32>
            %c1_i32_48 = arith.constant 1 : i32
            %40 = arith.addi %39, %c1_i32_48 : i32
            %c0_49 = arith.constant 0 : index
            memref.store %40, %alloca_4[%c0_49] : memref<1xi32>
            scf.yield
          }
        }
        %c0_19 = arith.constant 0 : index
        %18 = memref.load %alloca_3[%c0_19] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %19 = arith.addi %18, %c1_i32 : i32
        %c0_20 = arith.constant 0 : index
        memref.store %19, %alloca_3[%c0_20] : memref<1xi32>
        scf.yield
      }
    }
    %c0_16 = arith.constant 0 : index
    %15 = memref.load %alloca_6[%c0_16] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %15 : memref<?xf64> -> index
    %16 = arith.index_castui %intptr : index to i64
    %17 = llvm.inttoptr %16 : i64 to !llvm.ptr
    call @free(%17) : (!llvm.ptr) -> ()
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_lu(%arg0: i32, %arg1: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_4 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_4] : memref<1xmemref<?xf64>>
    %c0_5 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_5] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_6 = arith.constant 0 : i32
      %c0_7 = arith.constant 0 : index
      memref.store %c0_i32_6, %alloca_1[%c0_7] : memref<1xi32>
      scf.while : () -> () {
        %c0_8 = arith.constant 0 : index
        %3 = memref.load %alloca_1[%c0_8] : memref<1xi32>
        %c0_9 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_9] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_i32_10 = arith.constant 0 : i32
            %c0_11 = arith.constant 0 : index
            memref.store %c0_i32_10, %alloca_2[%c0_11] : memref<1xi32>
            scf.while : () -> () {
              %c0_12 = arith.constant 0 : index
              %5 = memref.load %alloca_2[%c0_12] : memref<1xi32>
              %c0_13 = arith.constant 0 : index
              %6 = memref.load %alloca_1[%c0_13] : memref<1xi32>
              %7 = arith.cmpi slt, %5, %6 : i32
              scf.condition(%7)
            } do {
              memref.alloca_scope  {
                memref.alloca_scope  {
                  %c0_i32_40 = arith.constant 0 : i32
                  %c0_41 = arith.constant 0 : index
                  memref.store %c0_i32_40, %alloca_3[%c0_41] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_42 = arith.constant 0 : index
                    %28 = memref.load %alloca_3[%c0_42] : memref<1xi32>
                    %c0_43 = arith.constant 0 : index
                    %29 = memref.load %alloca_2[%c0_43] : memref<1xi32>
                    %30 = arith.cmpi slt, %28, %29 : i32
                    scf.condition(%30)
                  } do {
                    memref.alloca_scope  {
                      %c0_45 = arith.constant 0 : index
                      %30 = memref.load %alloca_0[%c0_45] : memref<1xmemref<?xf64>>
                      %c0_46 = arith.constant 0 : index
                      %31 = memref.load %alloca_1[%c0_46] : memref<1xi32>
                      %32 = arith.extsi %31 : i32 to i64
                      %33 = arith.muli %32, %2 : i64
                      %34 = arith.index_cast %33 : i64 to index
                      %c1_47 = arith.constant 1 : index
                      %c0_48 = arith.constant 0 : index
                      %c0_49 = arith.constant 0 : index
                      %dim_50 = memref.dim %30, %c0_49 : memref<?xf64>
                      %35 = arith.subi %dim_50, %34 : index
                      %subview_51 = memref.subview %30[%34] [%35] [%c1_47] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_52 = memref.reinterpret_cast %subview_51 to offset: [0], sizes: [%35], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_53 = arith.constant 0 : index
                      %36 = memref.load %alloca_3[%c0_53] : memref<1xi32>
                      %37 = arith.index_cast %36 : i32 to index
                      %c0_54 = arith.constant 0 : index
                      %dim_55 = memref.dim %reinterpret_cast_52, %c0_54 : memref<?xf64>
                      %38 = arith.subi %dim_55, %37 : index
                      %c1_56 = arith.constant 1 : index
                      %subview_57 = memref.subview %reinterpret_cast_52[%37] [%38] [%c1_56] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_58 = arith.constant 0 : index
                      %39 = memref.load %subview_57[%c0_58] : memref<?xf64, strided<[?], offset: ?>>
                      %c0_59 = arith.constant 0 : index
                      %40 = memref.load %alloca_0[%c0_59] : memref<1xmemref<?xf64>>
                      %c0_60 = arith.constant 0 : index
                      %41 = memref.load %alloca_3[%c0_60] : memref<1xi32>
                      %42 = arith.extsi %41 : i32 to i64
                      %43 = arith.muli %42, %2 : i64
                      %44 = arith.index_cast %43 : i64 to index
                      %c1_61 = arith.constant 1 : index
                      %c0_62 = arith.constant 0 : index
                      %c0_63 = arith.constant 0 : index
                      %dim_64 = memref.dim %40, %c0_63 : memref<?xf64>
                      %45 = arith.subi %dim_64, %44 : index
                      %subview_65 = memref.subview %40[%44] [%45] [%c1_61] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_66 = memref.reinterpret_cast %subview_65 to offset: [0], sizes: [%45], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_67 = arith.constant 0 : index
                      %46 = memref.load %alloca_2[%c0_67] : memref<1xi32>
                      %47 = arith.index_cast %46 : i32 to index
                      %c0_68 = arith.constant 0 : index
                      %dim_69 = memref.dim %reinterpret_cast_66, %c0_68 : memref<?xf64>
                      %48 = arith.subi %dim_69, %47 : index
                      %c1_70 = arith.constant 1 : index
                      %subview_71 = memref.subview %reinterpret_cast_66[%47] [%48] [%c1_70] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_72 = arith.constant 0 : index
                      %49 = memref.load %subview_71[%c0_72] : memref<?xf64, strided<[?], offset: ?>>
                      %50 = arith.mulf %39, %49 : f64
                      %c0_73 = arith.constant 0 : index
                      %51 = memref.load %alloca_0[%c0_73] : memref<1xmemref<?xf64>>
                      %c0_74 = arith.constant 0 : index
                      %52 = memref.load %alloca_1[%c0_74] : memref<1xi32>
                      %53 = arith.extsi %52 : i32 to i64
                      %54 = arith.muli %53, %2 : i64
                      %55 = arith.index_cast %54 : i64 to index
                      %c1_75 = arith.constant 1 : index
                      %c0_76 = arith.constant 0 : index
                      %c0_77 = arith.constant 0 : index
                      %dim_78 = memref.dim %51, %c0_77 : memref<?xf64>
                      %56 = arith.subi %dim_78, %55 : index
                      %subview_79 = memref.subview %51[%55] [%56] [%c1_75] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_80 = memref.reinterpret_cast %subview_79 to offset: [0], sizes: [%56], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_81 = arith.constant 0 : index
                      %57 = memref.load %alloca_2[%c0_81] : memref<1xi32>
                      %58 = arith.index_cast %57 : i32 to index
                      %c0_82 = arith.constant 0 : index
                      %dim_83 = memref.dim %reinterpret_cast_80, %c0_82 : memref<?xf64>
                      %59 = arith.subi %dim_83, %58 : index
                      %c1_84 = arith.constant 1 : index
                      %subview_85 = memref.subview %reinterpret_cast_80[%58] [%59] [%c1_84] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_86 = arith.constant 0 : index
                      %60 = memref.load %subview_85[%c0_86] : memref<?xf64, strided<[?], offset: ?>>
                      %61 = arith.subf %60, %50 : f64
                      %c0_87 = arith.constant 0 : index
                      memref.store %61, %subview_85[%c0_87] : memref<?xf64, strided<[?], offset: ?>>
                    }
                    %c0_42 = arith.constant 0 : index
                    %28 = memref.load %alloca_3[%c0_42] : memref<1xi32>
                    %c1_i32_43 = arith.constant 1 : i32
                    %29 = arith.addi %28, %c1_i32_43 : i32
                    %c0_44 = arith.constant 0 : index
                    memref.store %29, %alloca_3[%c0_44] : memref<1xi32>
                    scf.yield
                  }
                }
                %c0_15 = arith.constant 0 : index
                %7 = memref.load %alloca_0[%c0_15] : memref<1xmemref<?xf64>>
                %c0_16 = arith.constant 0 : index
                %8 = memref.load %alloca_2[%c0_16] : memref<1xi32>
                %9 = arith.extsi %8 : i32 to i64
                %10 = arith.muli %9, %2 : i64
                %11 = arith.index_cast %10 : i64 to index
                %c1 = arith.constant 1 : index
                %c0_17 = arith.constant 0 : index
                %c0_18 = arith.constant 0 : index
                %dim = memref.dim %7, %c0_18 : memref<?xf64>
                %12 = arith.subi %dim, %11 : index
                %subview = memref.subview %7[%11] [%12] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%12], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_19 = arith.constant 0 : index
                %13 = memref.load %alloca_2[%c0_19] : memref<1xi32>
                %14 = arith.index_cast %13 : i32 to index
                %c0_20 = arith.constant 0 : index
                %dim_21 = memref.dim %reinterpret_cast, %c0_20 : memref<?xf64>
                %15 = arith.subi %dim_21, %14 : index
                %c1_22 = arith.constant 1 : index
                %subview_23 = memref.subview %reinterpret_cast[%14] [%15] [%c1_22] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_24 = arith.constant 0 : index
                %16 = memref.load %subview_23[%c0_24] : memref<?xf64, strided<[?], offset: ?>>
                %c0_25 = arith.constant 0 : index
                %17 = memref.load %alloca_0[%c0_25] : memref<1xmemref<?xf64>>
                %c0_26 = arith.constant 0 : index
                %18 = memref.load %alloca_1[%c0_26] : memref<1xi32>
                %19 = arith.extsi %18 : i32 to i64
                %20 = arith.muli %19, %2 : i64
                %21 = arith.index_cast %20 : i64 to index
                %c1_27 = arith.constant 1 : index
                %c0_28 = arith.constant 0 : index
                %c0_29 = arith.constant 0 : index
                %dim_30 = memref.dim %17, %c0_29 : memref<?xf64>
                %22 = arith.subi %dim_30, %21 : index
                %subview_31 = memref.subview %17[%21] [%22] [%c1_27] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_32 = memref.reinterpret_cast %subview_31 to offset: [0], sizes: [%22], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_33 = arith.constant 0 : index
                %23 = memref.load %alloca_2[%c0_33] : memref<1xi32>
                %24 = arith.index_cast %23 : i32 to index
                %c0_34 = arith.constant 0 : index
                %dim_35 = memref.dim %reinterpret_cast_32, %c0_34 : memref<?xf64>
                %25 = arith.subi %dim_35, %24 : index
                %c1_36 = arith.constant 1 : index
                %subview_37 = memref.subview %reinterpret_cast_32[%24] [%25] [%c1_36] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_38 = arith.constant 0 : index
                %26 = memref.load %subview_37[%c0_38] : memref<?xf64, strided<[?], offset: ?>>
                %27 = arith.divf %26, %16 : f64
                %c0_39 = arith.constant 0 : index
                memref.store %27, %subview_37[%c0_39] : memref<?xf64, strided<[?], offset: ?>>
              }
              %c0_12 = arith.constant 0 : index
              %5 = memref.load %alloca_2[%c0_12] : memref<1xi32>
              %c1_i32_13 = arith.constant 1 : i32
              %6 = arith.addi %5, %c1_i32_13 : i32
              %c0_14 = arith.constant 0 : index
              memref.store %6, %alloca_2[%c0_14] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c0_10 = arith.constant 0 : index
            %5 = memref.load %alloca_1[%c0_10] : memref<1xi32>
            %c0_11 = arith.constant 0 : index
            memref.store %5, %alloca_2[%c0_11] : memref<1xi32>
            scf.while : () -> () {
              %c0_12 = arith.constant 0 : index
              %6 = memref.load %alloca_2[%c0_12] : memref<1xi32>
              %c0_13 = arith.constant 0 : index
              %7 = memref.load %alloca[%c0_13] : memref<1xi32>
              %8 = arith.cmpi slt, %6, %7 : i32
              scf.condition(%8)
            } do {
              memref.alloca_scope  {
                memref.alloca_scope  {
                  %c0_i32_15 = arith.constant 0 : i32
                  %c0_16 = arith.constant 0 : index
                  memref.store %c0_i32_15, %alloca_3[%c0_16] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_17 = arith.constant 0 : index
                    %8 = memref.load %alloca_3[%c0_17] : memref<1xi32>
                    %c0_18 = arith.constant 0 : index
                    %9 = memref.load %alloca_1[%c0_18] : memref<1xi32>
                    %10 = arith.cmpi slt, %8, %9 : i32
                    scf.condition(%10)
                  } do {
                    memref.alloca_scope  {
                      %c0_20 = arith.constant 0 : index
                      %10 = memref.load %alloca_0[%c0_20] : memref<1xmemref<?xf64>>
                      %c0_21 = arith.constant 0 : index
                      %11 = memref.load %alloca_1[%c0_21] : memref<1xi32>
                      %12 = arith.extsi %11 : i32 to i64
                      %13 = arith.muli %12, %2 : i64
                      %14 = arith.index_cast %13 : i64 to index
                      %c1 = arith.constant 1 : index
                      %c0_22 = arith.constant 0 : index
                      %c0_23 = arith.constant 0 : index
                      %dim = memref.dim %10, %c0_23 : memref<?xf64>
                      %15 = arith.subi %dim, %14 : index
                      %subview = memref.subview %10[%14] [%15] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%15], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_24 = arith.constant 0 : index
                      %16 = memref.load %alloca_3[%c0_24] : memref<1xi32>
                      %17 = arith.index_cast %16 : i32 to index
                      %c0_25 = arith.constant 0 : index
                      %dim_26 = memref.dim %reinterpret_cast, %c0_25 : memref<?xf64>
                      %18 = arith.subi %dim_26, %17 : index
                      %c1_27 = arith.constant 1 : index
                      %subview_28 = memref.subview %reinterpret_cast[%17] [%18] [%c1_27] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_29 = arith.constant 0 : index
                      %19 = memref.load %subview_28[%c0_29] : memref<?xf64, strided<[?], offset: ?>>
                      %c0_30 = arith.constant 0 : index
                      %20 = memref.load %alloca_0[%c0_30] : memref<1xmemref<?xf64>>
                      %c0_31 = arith.constant 0 : index
                      %21 = memref.load %alloca_3[%c0_31] : memref<1xi32>
                      %22 = arith.extsi %21 : i32 to i64
                      %23 = arith.muli %22, %2 : i64
                      %24 = arith.index_cast %23 : i64 to index
                      %c1_32 = arith.constant 1 : index
                      %c0_33 = arith.constant 0 : index
                      %c0_34 = arith.constant 0 : index
                      %dim_35 = memref.dim %20, %c0_34 : memref<?xf64>
                      %25 = arith.subi %dim_35, %24 : index
                      %subview_36 = memref.subview %20[%24] [%25] [%c1_32] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_37 = memref.reinterpret_cast %subview_36 to offset: [0], sizes: [%25], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_38 = arith.constant 0 : index
                      %26 = memref.load %alloca_2[%c0_38] : memref<1xi32>
                      %27 = arith.index_cast %26 : i32 to index
                      %c0_39 = arith.constant 0 : index
                      %dim_40 = memref.dim %reinterpret_cast_37, %c0_39 : memref<?xf64>
                      %28 = arith.subi %dim_40, %27 : index
                      %c1_41 = arith.constant 1 : index
                      %subview_42 = memref.subview %reinterpret_cast_37[%27] [%28] [%c1_41] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_43 = arith.constant 0 : index
                      %29 = memref.load %subview_42[%c0_43] : memref<?xf64, strided<[?], offset: ?>>
                      %30 = arith.mulf %19, %29 : f64
                      %c0_44 = arith.constant 0 : index
                      %31 = memref.load %alloca_0[%c0_44] : memref<1xmemref<?xf64>>
                      %c0_45 = arith.constant 0 : index
                      %32 = memref.load %alloca_1[%c0_45] : memref<1xi32>
                      %33 = arith.extsi %32 : i32 to i64
                      %34 = arith.muli %33, %2 : i64
                      %35 = arith.index_cast %34 : i64 to index
                      %c1_46 = arith.constant 1 : index
                      %c0_47 = arith.constant 0 : index
                      %c0_48 = arith.constant 0 : index
                      %dim_49 = memref.dim %31, %c0_48 : memref<?xf64>
                      %36 = arith.subi %dim_49, %35 : index
                      %subview_50 = memref.subview %31[%35] [%36] [%c1_46] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %reinterpret_cast_51 = memref.reinterpret_cast %subview_50 to offset: [0], sizes: [%36], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                      %c0_52 = arith.constant 0 : index
                      %37 = memref.load %alloca_2[%c0_52] : memref<1xi32>
                      %38 = arith.index_cast %37 : i32 to index
                      %c0_53 = arith.constant 0 : index
                      %dim_54 = memref.dim %reinterpret_cast_51, %c0_53 : memref<?xf64>
                      %39 = arith.subi %dim_54, %38 : index
                      %c1_55 = arith.constant 1 : index
                      %subview_56 = memref.subview %reinterpret_cast_51[%38] [%39] [%c1_55] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                      %c0_57 = arith.constant 0 : index
                      %40 = memref.load %subview_56[%c0_57] : memref<?xf64, strided<[?], offset: ?>>
                      %41 = arith.subf %40, %30 : f64
                      %c0_58 = arith.constant 0 : index
                      memref.store %41, %subview_56[%c0_58] : memref<?xf64, strided<[?], offset: ?>>
                    }
                    %c0_17 = arith.constant 0 : index
                    %8 = memref.load %alloca_3[%c0_17] : memref<1xi32>
                    %c1_i32_18 = arith.constant 1 : i32
                    %9 = arith.addi %8, %c1_i32_18 : i32
                    %c0_19 = arith.constant 0 : index
                    memref.store %9, %alloca_3[%c0_19] : memref<1xi32>
                    scf.yield
                  }
                }
              }
              %c0_12 = arith.constant 0 : index
              %6 = memref.load %alloca_2[%c0_12] : memref<1xi32>
              %c1_i32_13 = arith.constant 1 : i32
              %7 = arith.addi %6, %c1_i32_13 : i32
              %c0_14 = arith.constant 0 : index
              memref.store %7, %alloca_2[%c0_14] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_8 = arith.constant 0 : index
        %3 = memref.load %alloca_1[%c0_8] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_9 = arith.constant 0 : index
        memref.store %4, %alloca_1[%c0_9] : memref<1xi32>
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
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_4 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_4] : memref<1xmemref<?xmemref<?xi8>>>
    %c2000_i32 = arith.constant 2000 : i32
    %c0_5 = arith.constant 0 : index
    memref.store %c2000_i32, %alloca_2[%c0_5] : memref<1xi32>
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
    %c8_i64 = arith.constant 8 : i64
    %6 = arith.trunci %c8_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xf64>
    %c0_9 = arith.constant 0 : index
    memref.store %8, %alloca_3[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_10] : memref<1xi32>
    %c0_11 = arith.constant 0 : index
    %10 = memref.load %alloca_3[%c0_11] : memref<1xmemref<?xf64>>
    call @init_array(%9, %10) : (i32, memref<?xf64>) -> ()
    %11 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %11() : !llvm.ptr, () -> ()
    %c0_12 = arith.constant 0 : index
    %12 = memref.load %alloca_2[%c0_12] : memref<1xi32>
    %c0_13 = arith.constant 0 : index
    %13 = memref.load %alloca_3[%c0_13] : memref<1xmemref<?xf64>>
    call @kernel_lu(%12, %13) : (i32, memref<?xf64>) -> ()
    %14 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %14() : !llvm.ptr, () -> ()
    %15 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %15() : !llvm.ptr, () -> ()
    %c0_14 = arith.constant 0 : index
    %16 = memref.load %alloca_2[%c0_14] : memref<1xi32>
    %c0_15 = arith.constant 0 : index
    %17 = memref.load %alloca_3[%c0_15] : memref<1xmemref<?xf64>>
    call @print_array(%16, %17) : (i32, memref<?xf64>) -> ()
    %c0_16 = arith.constant 0 : index
    %18 = memref.load %alloca_3[%c0_16] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %18 : memref<?xf64> -> index
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

