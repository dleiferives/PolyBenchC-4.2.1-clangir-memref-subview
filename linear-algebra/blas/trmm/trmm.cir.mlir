module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/blas/trmm/trmm.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
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
    %c0_11 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_11] : memref<1xi32>
    %c0_i32_12 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_12 : i32
    %5 = arith.extsi %4 : i32 to i64
    %cst = arith.constant 1.500000e+00 : f64
    %c0_13 = arith.constant 0 : index
    %6 = memref.load %alloca_1[%c0_13] : memref<1xmemref<?xf64>>
    %c0_14 = arith.constant 0 : index
    memref.store %cst, %6[%c0_14] : memref<?xf64>
    memref.alloca_scope  {
      %c0_i32_15 = arith.constant 0 : i32
      %c0_16 = arith.constant 0 : index
      memref.store %c0_i32_15, %alloca_4[%c0_16] : memref<1xi32>
      scf.while : () -> () {
        %c0_17 = arith.constant 0 : index
        %7 = memref.load %alloca_4[%c0_17] : memref<1xi32>
        %c0_18 = arith.constant 0 : index
        %8 = memref.load %alloca[%c0_18] : memref<1xi32>
        %9 = arith.cmpi slt, %7, %8 : i32
        scf.condition(%9)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_i32_30 = arith.constant 0 : i32
            %c0_31 = arith.constant 0 : index
            memref.store %c0_i32_30, %alloca_5[%c0_31] : memref<1xi32>
            scf.while : () -> () {
              %c0_32 = arith.constant 0 : index
              %18 = memref.load %alloca_5[%c0_32] : memref<1xi32>
              %c0_33 = arith.constant 0 : index
              %19 = memref.load %alloca_4[%c0_33] : memref<1xi32>
              %20 = arith.cmpi slt, %18, %19 : i32
              scf.condition(%20)
            } do {
              memref.alloca_scope  {
                %c0_35 = arith.constant 0 : index
                %20 = memref.load %alloca_4[%c0_35] : memref<1xi32>
                %c0_36 = arith.constant 0 : index
                %21 = memref.load %alloca_5[%c0_36] : memref<1xi32>
                %22 = arith.addi %20, %21 : i32
                %c0_37 = arith.constant 0 : index
                %23 = memref.load %alloca[%c0_37] : memref<1xi32>
                %24 = arith.remsi %22, %23 : i32
                %25 = arith.sitofp %24 : i32 to f64
                %c0_38 = arith.constant 0 : index
                %26 = memref.load %alloca[%c0_38] : memref<1xi32>
                %27 = arith.sitofp %26 : i32 to f64
                %28 = arith.divf %25, %27 : f64
                %c0_39 = arith.constant 0 : index
                %29 = memref.load %alloca_2[%c0_39] : memref<1xmemref<?xf64>>
                %c0_40 = arith.constant 0 : index
                %30 = memref.load %alloca_4[%c0_40] : memref<1xi32>
                %31 = arith.extsi %30 : i32 to i64
                %32 = arith.muli %31, %2 : i64
                %33 = arith.index_cast %32 : i64 to index
                %c1_41 = arith.constant 1 : index
                %c0_42 = arith.constant 0 : index
                %c0_43 = arith.constant 0 : index
                %dim_44 = memref.dim %29, %c0_43 : memref<?xf64>
                %34 = arith.subi %dim_44, %33 : index
                %subview_45 = memref.subview %29[%33] [%34] [%c1_41] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_46 = memref.reinterpret_cast %subview_45 to offset: [0], sizes: [%34], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_47 = arith.constant 0 : index
                %35 = memref.load %alloca_5[%c0_47] : memref<1xi32>
                %36 = arith.index_cast %35 : i32 to index
                %c0_48 = arith.constant 0 : index
                %dim_49 = memref.dim %reinterpret_cast_46, %c0_48 : memref<?xf64>
                %37 = arith.subi %dim_49, %36 : index
                %c1_50 = arith.constant 1 : index
                %subview_51 = memref.subview %reinterpret_cast_46[%36] [%37] [%c1_50] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_52 = arith.constant 0 : index
                memref.store %28, %subview_51[%c0_52] : memref<?xf64, strided<[?], offset: ?>>
              }
              %c0_32 = arith.constant 0 : index
              %18 = memref.load %alloca_5[%c0_32] : memref<1xi32>
              %c1_i32_33 = arith.constant 1 : i32
              %19 = arith.addi %18, %c1_i32_33 : i32
              %c0_34 = arith.constant 0 : index
              memref.store %19, %alloca_5[%c0_34] : memref<1xi32>
              scf.yield
            }
          }
          %cst_19 = arith.constant 1.000000e+00 : f64
          %c0_20 = arith.constant 0 : index
          %9 = memref.load %alloca_2[%c0_20] : memref<1xmemref<?xf64>>
          %c0_21 = arith.constant 0 : index
          %10 = memref.load %alloca_4[%c0_21] : memref<1xi32>
          %11 = arith.extsi %10 : i32 to i64
          %12 = arith.muli %11, %2 : i64
          %13 = arith.index_cast %12 : i64 to index
          %c1 = arith.constant 1 : index
          %c0_22 = arith.constant 0 : index
          %c0_23 = arith.constant 0 : index
          %dim = memref.dim %9, %c0_23 : memref<?xf64>
          %14 = arith.subi %dim, %13 : index
          %subview = memref.subview %9[%13] [%14] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%14], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
          %c0_24 = arith.constant 0 : index
          %15 = memref.load %alloca_4[%c0_24] : memref<1xi32>
          %16 = arith.index_cast %15 : i32 to index
          %c0_25 = arith.constant 0 : index
          %dim_26 = memref.dim %reinterpret_cast, %c0_25 : memref<?xf64>
          %17 = arith.subi %dim_26, %16 : index
          %c1_27 = arith.constant 1 : index
          %subview_28 = memref.subview %reinterpret_cast[%16] [%17] [%c1_27] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_29 = arith.constant 0 : index
          memref.store %cst_19, %subview_28[%c0_29] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_i32_30 = arith.constant 0 : i32
            %c0_31 = arith.constant 0 : index
            memref.store %c0_i32_30, %alloca_5[%c0_31] : memref<1xi32>
            scf.while : () -> () {
              %c0_32 = arith.constant 0 : index
              %18 = memref.load %alloca_5[%c0_32] : memref<1xi32>
              %c0_33 = arith.constant 0 : index
              %19 = memref.load %alloca_0[%c0_33] : memref<1xi32>
              %20 = arith.cmpi slt, %18, %19 : i32
              scf.condition(%20)
            } do {
              memref.alloca_scope  {
                %c0_35 = arith.constant 0 : index
                %20 = memref.load %alloca_0[%c0_35] : memref<1xi32>
                %c0_36 = arith.constant 0 : index
                %21 = memref.load %alloca_4[%c0_36] : memref<1xi32>
                %c0_37 = arith.constant 0 : index
                %22 = memref.load %alloca_5[%c0_37] : memref<1xi32>
                %23 = arith.subi %21, %22 : i32
                %24 = arith.addi %20, %23 : i32
                %c0_38 = arith.constant 0 : index
                %25 = memref.load %alloca_0[%c0_38] : memref<1xi32>
                %26 = arith.remsi %24, %25 : i32
                %27 = arith.sitofp %26 : i32 to f64
                %c0_39 = arith.constant 0 : index
                %28 = memref.load %alloca_0[%c0_39] : memref<1xi32>
                %29 = arith.sitofp %28 : i32 to f64
                %30 = arith.divf %27, %29 : f64
                %c0_40 = arith.constant 0 : index
                %31 = memref.load %alloca_3[%c0_40] : memref<1xmemref<?xf64>>
                %c0_41 = arith.constant 0 : index
                %32 = memref.load %alloca_4[%c0_41] : memref<1xi32>
                %33 = arith.extsi %32 : i32 to i64
                %34 = arith.muli %33, %5 : i64
                %35 = arith.index_cast %34 : i64 to index
                %c1_42 = arith.constant 1 : index
                %c0_43 = arith.constant 0 : index
                %c0_44 = arith.constant 0 : index
                %dim_45 = memref.dim %31, %c0_44 : memref<?xf64>
                %36 = arith.subi %dim_45, %35 : index
                %subview_46 = memref.subview %31[%35] [%36] [%c1_42] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_47 = memref.reinterpret_cast %subview_46 to offset: [0], sizes: [%36], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_48 = arith.constant 0 : index
                %37 = memref.load %alloca_5[%c0_48] : memref<1xi32>
                %38 = arith.index_cast %37 : i32 to index
                %c0_49 = arith.constant 0 : index
                %dim_50 = memref.dim %reinterpret_cast_47, %c0_49 : memref<?xf64>
                %39 = arith.subi %dim_50, %38 : index
                %c1_51 = arith.constant 1 : index
                %subview_52 = memref.subview %reinterpret_cast_47[%38] [%39] [%c1_51] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_53 = arith.constant 0 : index
                memref.store %30, %subview_52[%c0_53] : memref<?xf64, strided<[?], offset: ?>>
              }
              %c0_32 = arith.constant 0 : index
              %18 = memref.load %alloca_5[%c0_32] : memref<1xi32>
              %c1_i32_33 = arith.constant 1 : i32
              %19 = arith.addi %18, %c1_i32_33 : i32
              %c0_34 = arith.constant 0 : index
              memref.store %19, %alloca_5[%c0_34] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_17 = arith.constant 0 : index
        %7 = memref.load %alloca_4[%c0_17] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %8 = arith.addi %7, %c1_i32 : i32
        %c0_18 = arith.constant 0 : index
        memref.store %8, %alloca_4[%c0_18] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xf64>
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
    memref.store %arg2, %alloca_1[%c0_8] : memref<1xf64>
    %c0_9 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_10] : memref<1xmemref<?xf64>>
    %c0_11 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_11] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_12 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_12] : memref<1xi32>
    %c0_i32_13 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_13 : i32
    %5 = arith.extsi %4 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_14 = arith.constant 0 : i32
      %c0_15 = arith.constant 0 : index
      memref.store %c0_i32_14, %alloca_4[%c0_15] : memref<1xi32>
      scf.while : () -> () {
        %c0_16 = arith.constant 0 : index
        %6 = memref.load %alloca_4[%c0_16] : memref<1xi32>
        %c0_17 = arith.constant 0 : index
        %7 = memref.load %alloca[%c0_17] : memref<1xi32>
        %8 = arith.cmpi slt, %6, %7 : i32
        scf.condition(%8)
      } do {
        memref.alloca_scope  {
          %c0_i32_18 = arith.constant 0 : i32
          %c0_19 = arith.constant 0 : index
          memref.store %c0_i32_18, %alloca_5[%c0_19] : memref<1xi32>
          scf.while : () -> () {
            %c0_20 = arith.constant 0 : index
            %8 = memref.load %alloca_5[%c0_20] : memref<1xi32>
            %c0_21 = arith.constant 0 : index
            %9 = memref.load %alloca_0[%c0_21] : memref<1xi32>
            %10 = arith.cmpi slt, %8, %9 : i32
            scf.condition(%10)
          } do {
            memref.alloca_scope  {
              memref.alloca_scope  {
                %c0_48 = arith.constant 0 : index
                %31 = memref.load %alloca_4[%c0_48] : memref<1xi32>
                %c1_i32_49 = arith.constant 1 : i32
                %32 = arith.addi %31, %c1_i32_49 : i32
                %c0_50 = arith.constant 0 : index
                memref.store %32, %alloca_6[%c0_50] : memref<1xi32>
                scf.while : () -> () {
                  %c0_51 = arith.constant 0 : index
                  %33 = memref.load %alloca_6[%c0_51] : memref<1xi32>
                  %c0_52 = arith.constant 0 : index
                  %34 = memref.load %alloca[%c0_52] : memref<1xi32>
                  %35 = arith.cmpi slt, %33, %34 : i32
                  scf.condition(%35)
                } do {
                  %c0_51 = arith.constant 0 : index
                  %33 = memref.load %alloca_2[%c0_51] : memref<1xmemref<?xf64>>
                  %c0_52 = arith.constant 0 : index
                  %34 = memref.load %alloca_6[%c0_52] : memref<1xi32>
                  %35 = arith.extsi %34 : i32 to i64
                  %36 = arith.muli %35, %2 : i64
                  %37 = arith.index_cast %36 : i64 to index
                  %c1_53 = arith.constant 1 : index
                  %c0_54 = arith.constant 0 : index
                  %c0_55 = arith.constant 0 : index
                  %dim_56 = memref.dim %33, %c0_55 : memref<?xf64>
                  %38 = arith.subi %dim_56, %37 : index
                  %subview_57 = memref.subview %33[%37] [%38] [%c1_53] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_58 = memref.reinterpret_cast %subview_57 to offset: [0], sizes: [%38], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_59 = arith.constant 0 : index
                  %39 = memref.load %alloca_4[%c0_59] : memref<1xi32>
                  %40 = arith.index_cast %39 : i32 to index
                  %c0_60 = arith.constant 0 : index
                  %dim_61 = memref.dim %reinterpret_cast_58, %c0_60 : memref<?xf64>
                  %41 = arith.subi %dim_61, %40 : index
                  %c1_62 = arith.constant 1 : index
                  %subview_63 = memref.subview %reinterpret_cast_58[%40] [%41] [%c1_62] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_64 = arith.constant 0 : index
                  %42 = memref.load %subview_63[%c0_64] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_65 = arith.constant 0 : index
                  %43 = memref.load %alloca_3[%c0_65] : memref<1xmemref<?xf64>>
                  %c0_66 = arith.constant 0 : index
                  %44 = memref.load %alloca_6[%c0_66] : memref<1xi32>
                  %45 = arith.extsi %44 : i32 to i64
                  %46 = arith.muli %45, %5 : i64
                  %47 = arith.index_cast %46 : i64 to index
                  %c1_67 = arith.constant 1 : index
                  %c0_68 = arith.constant 0 : index
                  %c0_69 = arith.constant 0 : index
                  %dim_70 = memref.dim %43, %c0_69 : memref<?xf64>
                  %48 = arith.subi %dim_70, %47 : index
                  %subview_71 = memref.subview %43[%47] [%48] [%c1_67] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_72 = memref.reinterpret_cast %subview_71 to offset: [0], sizes: [%48], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_73 = arith.constant 0 : index
                  %49 = memref.load %alloca_5[%c0_73] : memref<1xi32>
                  %50 = arith.index_cast %49 : i32 to index
                  %c0_74 = arith.constant 0 : index
                  %dim_75 = memref.dim %reinterpret_cast_72, %c0_74 : memref<?xf64>
                  %51 = arith.subi %dim_75, %50 : index
                  %c1_76 = arith.constant 1 : index
                  %subview_77 = memref.subview %reinterpret_cast_72[%50] [%51] [%c1_76] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_78 = arith.constant 0 : index
                  %52 = memref.load %subview_77[%c0_78] : memref<?xf64, strided<[?], offset: ?>>
                  %53 = arith.mulf %42, %52 : f64
                  %c0_79 = arith.constant 0 : index
                  %54 = memref.load %alloca_3[%c0_79] : memref<1xmemref<?xf64>>
                  %c0_80 = arith.constant 0 : index
                  %55 = memref.load %alloca_4[%c0_80] : memref<1xi32>
                  %56 = arith.extsi %55 : i32 to i64
                  %57 = arith.muli %56, %5 : i64
                  %58 = arith.index_cast %57 : i64 to index
                  %c1_81 = arith.constant 1 : index
                  %c0_82 = arith.constant 0 : index
                  %c0_83 = arith.constant 0 : index
                  %dim_84 = memref.dim %54, %c0_83 : memref<?xf64>
                  %59 = arith.subi %dim_84, %58 : index
                  %subview_85 = memref.subview %54[%58] [%59] [%c1_81] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_86 = memref.reinterpret_cast %subview_85 to offset: [0], sizes: [%59], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_87 = arith.constant 0 : index
                  %60 = memref.load %alloca_5[%c0_87] : memref<1xi32>
                  %61 = arith.index_cast %60 : i32 to index
                  %c0_88 = arith.constant 0 : index
                  %dim_89 = memref.dim %reinterpret_cast_86, %c0_88 : memref<?xf64>
                  %62 = arith.subi %dim_89, %61 : index
                  %c1_90 = arith.constant 1 : index
                  %subview_91 = memref.subview %reinterpret_cast_86[%61] [%62] [%c1_90] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_92 = arith.constant 0 : index
                  %63 = memref.load %subview_91[%c0_92] : memref<?xf64, strided<[?], offset: ?>>
                  %64 = arith.addf %63, %53 : f64
                  %c0_93 = arith.constant 0 : index
                  memref.store %64, %subview_91[%c0_93] : memref<?xf64, strided<[?], offset: ?>>
                  %c0_94 = arith.constant 0 : index
                  %65 = memref.load %alloca_6[%c0_94] : memref<1xi32>
                  %c1_i32_95 = arith.constant 1 : i32
                  %66 = arith.addi %65, %c1_i32_95 : i32
                  %c0_96 = arith.constant 0 : index
                  memref.store %66, %alloca_6[%c0_96] : memref<1xi32>
                  scf.yield
                }
              }
              %c0_23 = arith.constant 0 : index
              %10 = memref.load %alloca_1[%c0_23] : memref<1xf64>
              %c0_24 = arith.constant 0 : index
              %11 = memref.load %alloca_3[%c0_24] : memref<1xmemref<?xf64>>
              %c0_25 = arith.constant 0 : index
              %12 = memref.load %alloca_4[%c0_25] : memref<1xi32>
              %13 = arith.extsi %12 : i32 to i64
              %14 = arith.muli %13, %5 : i64
              %15 = arith.index_cast %14 : i64 to index
              %c1 = arith.constant 1 : index
              %c0_26 = arith.constant 0 : index
              %c0_27 = arith.constant 0 : index
              %dim = memref.dim %11, %c0_27 : memref<?xf64>
              %16 = arith.subi %dim, %15 : index
              %subview = memref.subview %11[%15] [%16] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%16], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_28 = arith.constant 0 : index
              %17 = memref.load %alloca_5[%c0_28] : memref<1xi32>
              %18 = arith.index_cast %17 : i32 to index
              %c0_29 = arith.constant 0 : index
              %dim_30 = memref.dim %reinterpret_cast, %c0_29 : memref<?xf64>
              %19 = arith.subi %dim_30, %18 : index
              %c1_31 = arith.constant 1 : index
              %subview_32 = memref.subview %reinterpret_cast[%18] [%19] [%c1_31] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_33 = arith.constant 0 : index
              %20 = memref.load %subview_32[%c0_33] : memref<?xf64, strided<[?], offset: ?>>
              %21 = arith.mulf %10, %20 : f64
              %c0_34 = arith.constant 0 : index
              %22 = memref.load %alloca_3[%c0_34] : memref<1xmemref<?xf64>>
              %c0_35 = arith.constant 0 : index
              %23 = memref.load %alloca_4[%c0_35] : memref<1xi32>
              %24 = arith.extsi %23 : i32 to i64
              %25 = arith.muli %24, %5 : i64
              %26 = arith.index_cast %25 : i64 to index
              %c1_36 = arith.constant 1 : index
              %c0_37 = arith.constant 0 : index
              %c0_38 = arith.constant 0 : index
              %dim_39 = memref.dim %22, %c0_38 : memref<?xf64>
              %27 = arith.subi %dim_39, %26 : index
              %subview_40 = memref.subview %22[%26] [%27] [%c1_36] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast_41 = memref.reinterpret_cast %subview_40 to offset: [0], sizes: [%27], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_42 = arith.constant 0 : index
              %28 = memref.load %alloca_5[%c0_42] : memref<1xi32>
              %29 = arith.index_cast %28 : i32 to index
              %c0_43 = arith.constant 0 : index
              %dim_44 = memref.dim %reinterpret_cast_41, %c0_43 : memref<?xf64>
              %30 = arith.subi %dim_44, %29 : index
              %c1_45 = arith.constant 1 : index
              %subview_46 = memref.subview %reinterpret_cast_41[%29] [%30] [%c1_45] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_47 = arith.constant 0 : index
              memref.store %21, %subview_46[%c0_47] : memref<?xf64, strided<[?], offset: ?>>
            }
            %c0_20 = arith.constant 0 : index
            %8 = memref.load %alloca_5[%c0_20] : memref<1xi32>
            %c1_i32_21 = arith.constant 1 : i32
            %9 = arith.addi %8, %c1_i32_21 : i32
            %c0_22 = arith.constant 0 : index
            memref.store %9, %alloca_5[%c0_22] : memref<1xi32>
            scf.yield
          }
        }
        %c0_16 = arith.constant 0 : index
        %6 = memref.load %alloca_4[%c0_16] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %7 = arith.addi %6, %c1_i32 : i32
        %c0_17 = arith.constant 0 : index
        memref.store %7, %alloca_4[%c0_17] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<2xi8> = dense<[66, 0]> {alignment = 1 : i64}
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
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_7] : memref<1xmemref<?xmemref<?xi8>>>
    %c1000_i32 = arith.constant 1000 : i32
    %c0_8 = arith.constant 0 : index
    memref.store %c1000_i32, %alloca_2[%c0_8] : memref<1xi32>
    %c1200_i32 = arith.constant 1200 : i32
    %c0_9 = arith.constant 0 : index
    memref.store %c1200_i32, %alloca_3[%c0_9] : memref<1xi32>
    %c0_10 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_10] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %c0_11 = arith.constant 0 : index
    %2 = memref.load %alloca_2[%c0_11] : memref<1xi32>
    %c0_i32_12 = arith.constant 0 : i32
    %3 = arith.addi %2, %c0_i32_12 : i32
    %4 = arith.muli %1, %3 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %6 = arith.trunci %c8_i64 : i64 to i32
    %7 = call @polybench_alloc_data(%5, %6) : (i64, i32) -> !llvm.ptr
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.ptr to memref<?xf64>
    %c0_13 = arith.constant 0 : index
    memref.store %8, %alloca_5[%c0_13] : memref<1xmemref<?xf64>>
    %c0_14 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_14] : memref<1xi32>
    %c0_i32_15 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_15 : i32
    %c0_16 = arith.constant 0 : index
    %11 = memref.load %alloca_3[%c0_16] : memref<1xi32>
    %c0_i32_17 = arith.constant 0 : i32
    %12 = arith.addi %11, %c0_i32_17 : i32
    %13 = arith.muli %10, %12 : i32
    %14 = arith.extsi %13 : i32 to i64
    %c8_i64_18 = arith.constant 8 : i64
    %15 = arith.trunci %c8_i64_18 : i64 to i32
    %16 = call @polybench_alloc_data(%14, %15) : (i64, i32) -> !llvm.ptr
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.ptr to memref<?xf64>
    %c0_19 = arith.constant 0 : index
    memref.store %17, %alloca_6[%c0_19] : memref<1xmemref<?xf64>>
    %c0_20 = arith.constant 0 : index
    %18 = memref.load %alloca_2[%c0_20] : memref<1xi32>
    %c0_21 = arith.constant 0 : index
    %19 = memref.load %alloca_3[%c0_21] : memref<1xi32>
    %c0_22 = arith.constant 0 : index
    %20 = memref.load %alloca_5[%c0_22] : memref<1xmemref<?xf64>>
    %c0_23 = arith.constant 0 : index
    %21 = memref.load %alloca_6[%c0_23] : memref<1xmemref<?xf64>>
    call @init_array(%18, %19, %cast, %20, %21) : (i32, i32, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %22 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %22() : !llvm.ptr, () -> ()
    %c0_24 = arith.constant 0 : index
    %23 = memref.load %alloca_2[%c0_24] : memref<1xi32>
    %c0_25 = arith.constant 0 : index
    %24 = memref.load %alloca_3[%c0_25] : memref<1xi32>
    %c0_26 = arith.constant 0 : index
    %25 = memref.load %alloca_4[%c0_26] : memref<1xf64>
    %c0_27 = arith.constant 0 : index
    %26 = memref.load %alloca_5[%c0_27] : memref<1xmemref<?xf64>>
    %c0_28 = arith.constant 0 : index
    %27 = memref.load %alloca_6[%c0_28] : memref<1xmemref<?xf64>>
    call @kernel_trmm(%23, %24, %25, %26, %27) : (i32, i32, f64, memref<?xf64>, memref<?xf64>) -> ()
    %28 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %28() : !llvm.ptr, () -> ()
    %29 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %29() : !llvm.ptr, () -> ()
    %c0_29 = arith.constant 0 : index
    %30 = memref.load %alloca_2[%c0_29] : memref<1xi32>
    %c0_30 = arith.constant 0 : index
    %31 = memref.load %alloca_3[%c0_30] : memref<1xi32>
    %c0_31 = arith.constant 0 : index
    %32 = memref.load %alloca_6[%c0_31] : memref<1xmemref<?xf64>>
    call @print_array(%30, %31, %32) : (i32, i32, memref<?xf64>) -> ()
    %c0_32 = arith.constant 0 : index
    %33 = memref.load %alloca_5[%c0_32] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %33 : memref<?xf64> -> index
    %34 = arith.index_castui %intptr : index to i64
    %35 = llvm.inttoptr %34 : i64 to !llvm.ptr
    call @free(%35) : (!llvm.ptr) -> ()
    %c0_33 = arith.constant 0 : index
    %36 = memref.load %alloca_6[%c0_33] : memref<1xmemref<?xf64>>
    %intptr_34 = memref.extract_aligned_pointer_as_index %36 : memref<?xf64> -> index
    %37 = arith.index_castui %intptr_34 : index to i64
    %38 = llvm.inttoptr %37 : i64 to !llvm.ptr
    call @free(%38) : (!llvm.ptr) -> ()
    %c0_i32_35 = arith.constant 0 : i32
    %c0_36 = arith.constant 0 : index
    memref.store %c0_i32_35, %alloca_1[%c0_36] : memref<1xi32>
    %c0_37 = arith.constant 0 : index
    %39 = memref.load %alloca_1[%c0_37] : memref<1xi32>
    return %39 : i32
  }
}

