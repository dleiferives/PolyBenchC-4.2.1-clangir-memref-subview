module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/linear-algebra/kernels/mvt/mvt.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_7] : memref<1xmemref<?xf64>>
    %c0_8 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_8] : memref<1xmemref<?xf64>>
    %c0_9 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_10] : memref<1xmemref<?xf64>>
    %c0_11 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_12] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_13 = arith.constant 0 : i32
      %c0_14 = arith.constant 0 : index
      memref.store %c0_i32_13, %alloca_5[%c0_14] : memref<1xi32>
      scf.while : () -> () {
        %c0_15 = arith.constant 0 : index
        %3 = memref.load %alloca_5[%c0_15] : memref<1xi32>
        %c0_16 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_16] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %c0_17 = arith.constant 0 : index
          %5 = memref.load %alloca_5[%c0_17] : memref<1xi32>
          %c0_18 = arith.constant 0 : index
          %6 = memref.load %alloca[%c0_18] : memref<1xi32>
          %7 = arith.remsi %5, %6 : i32
          %8 = arith.sitofp %7 : i32 to f64
          %c0_19 = arith.constant 0 : index
          %9 = memref.load %alloca[%c0_19] : memref<1xi32>
          %10 = arith.sitofp %9 : i32 to f64
          %11 = arith.divf %8, %10 : f64
          %c0_20 = arith.constant 0 : index
          %12 = memref.load %alloca_0[%c0_20] : memref<1xmemref<?xf64>>
          %c0_21 = arith.constant 0 : index
          %13 = memref.load %alloca_5[%c0_21] : memref<1xi32>
          %14 = arith.index_cast %13 : i32 to index
          %c0_22 = arith.constant 0 : index
          %dim = memref.dim %12, %c0_22 : memref<?xf64>
          %15 = arith.subi %dim, %14 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %12[%14] [%15] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_23 = arith.constant 0 : index
          memref.store %11, %subview[%c0_23] : memref<?xf64, strided<[?], offset: ?>>
          %c0_24 = arith.constant 0 : index
          %16 = memref.load %alloca_5[%c0_24] : memref<1xi32>
          %c1_i32_25 = arith.constant 1 : i32
          %17 = arith.addi %16, %c1_i32_25 : i32
          %c0_26 = arith.constant 0 : index
          %18 = memref.load %alloca[%c0_26] : memref<1xi32>
          %19 = arith.remsi %17, %18 : i32
          %20 = arith.sitofp %19 : i32 to f64
          %c0_27 = arith.constant 0 : index
          %21 = memref.load %alloca[%c0_27] : memref<1xi32>
          %22 = arith.sitofp %21 : i32 to f64
          %23 = arith.divf %20, %22 : f64
          %c0_28 = arith.constant 0 : index
          %24 = memref.load %alloca_1[%c0_28] : memref<1xmemref<?xf64>>
          %c0_29 = arith.constant 0 : index
          %25 = memref.load %alloca_5[%c0_29] : memref<1xi32>
          %26 = arith.index_cast %25 : i32 to index
          %c0_30 = arith.constant 0 : index
          %dim_31 = memref.dim %24, %c0_30 : memref<?xf64>
          %27 = arith.subi %dim_31, %26 : index
          %c1_32 = arith.constant 1 : index
          %subview_33 = memref.subview %24[%26] [%27] [%c1_32] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_34 = arith.constant 0 : index
          memref.store %23, %subview_33[%c0_34] : memref<?xf64, strided<[?], offset: ?>>
          %c0_35 = arith.constant 0 : index
          %28 = memref.load %alloca_5[%c0_35] : memref<1xi32>
          %c3_i32 = arith.constant 3 : i32
          %29 = arith.addi %28, %c3_i32 : i32
          %c0_36 = arith.constant 0 : index
          %30 = memref.load %alloca[%c0_36] : memref<1xi32>
          %31 = arith.remsi %29, %30 : i32
          %32 = arith.sitofp %31 : i32 to f64
          %c0_37 = arith.constant 0 : index
          %33 = memref.load %alloca[%c0_37] : memref<1xi32>
          %34 = arith.sitofp %33 : i32 to f64
          %35 = arith.divf %32, %34 : f64
          %c0_38 = arith.constant 0 : index
          %36 = memref.load %alloca_2[%c0_38] : memref<1xmemref<?xf64>>
          %c0_39 = arith.constant 0 : index
          %37 = memref.load %alloca_5[%c0_39] : memref<1xi32>
          %38 = arith.index_cast %37 : i32 to index
          %c0_40 = arith.constant 0 : index
          %dim_41 = memref.dim %36, %c0_40 : memref<?xf64>
          %39 = arith.subi %dim_41, %38 : index
          %c1_42 = arith.constant 1 : index
          %subview_43 = memref.subview %36[%38] [%39] [%c1_42] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_44 = arith.constant 0 : index
          memref.store %35, %subview_43[%c0_44] : memref<?xf64, strided<[?], offset: ?>>
          %c0_45 = arith.constant 0 : index
          %40 = memref.load %alloca_5[%c0_45] : memref<1xi32>
          %c4_i32 = arith.constant 4 : i32
          %41 = arith.addi %40, %c4_i32 : i32
          %c0_46 = arith.constant 0 : index
          %42 = memref.load %alloca[%c0_46] : memref<1xi32>
          %43 = arith.remsi %41, %42 : i32
          %44 = arith.sitofp %43 : i32 to f64
          %c0_47 = arith.constant 0 : index
          %45 = memref.load %alloca[%c0_47] : memref<1xi32>
          %46 = arith.sitofp %45 : i32 to f64
          %47 = arith.divf %44, %46 : f64
          %c0_48 = arith.constant 0 : index
          %48 = memref.load %alloca_3[%c0_48] : memref<1xmemref<?xf64>>
          %c0_49 = arith.constant 0 : index
          %49 = memref.load %alloca_5[%c0_49] : memref<1xi32>
          %50 = arith.index_cast %49 : i32 to index
          %c0_50 = arith.constant 0 : index
          %dim_51 = memref.dim %48, %c0_50 : memref<?xf64>
          %51 = arith.subi %dim_51, %50 : index
          %c1_52 = arith.constant 1 : index
          %subview_53 = memref.subview %48[%50] [%51] [%c1_52] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_54 = arith.constant 0 : index
          memref.store %47, %subview_53[%c0_54] : memref<?xf64, strided<[?], offset: ?>>
          memref.alloca_scope  {
            %c0_i32_55 = arith.constant 0 : i32
            %c0_56 = arith.constant 0 : index
            memref.store %c0_i32_55, %alloca_6[%c0_56] : memref<1xi32>
            scf.while : () -> () {
              %c0_57 = arith.constant 0 : index
              %52 = memref.load %alloca_6[%c0_57] : memref<1xi32>
              %c0_58 = arith.constant 0 : index
              %53 = memref.load %alloca[%c0_58] : memref<1xi32>
              %54 = arith.cmpi slt, %52, %53 : i32
              scf.condition(%54)
            } do {
              %c0_57 = arith.constant 0 : index
              %52 = memref.load %alloca_5[%c0_57] : memref<1xi32>
              %c0_58 = arith.constant 0 : index
              %53 = memref.load %alloca_6[%c0_58] : memref<1xi32>
              %54 = arith.muli %52, %53 : i32
              %c0_59 = arith.constant 0 : index
              %55 = memref.load %alloca[%c0_59] : memref<1xi32>
              %56 = arith.remsi %54, %55 : i32
              %57 = arith.sitofp %56 : i32 to f64
              %c0_60 = arith.constant 0 : index
              %58 = memref.load %alloca[%c0_60] : memref<1xi32>
              %59 = arith.sitofp %58 : i32 to f64
              %60 = arith.divf %57, %59 : f64
              %c0_61 = arith.constant 0 : index
              %61 = memref.load %alloca_4[%c0_61] : memref<1xmemref<?xf64>>
              %c0_62 = arith.constant 0 : index
              %62 = memref.load %alloca_5[%c0_62] : memref<1xi32>
              %63 = arith.extsi %62 : i32 to i64
              %64 = arith.muli %63, %2 : i64
              %65 = arith.index_cast %64 : i64 to index
              %c1_63 = arith.constant 1 : index
              %c0_64 = arith.constant 0 : index
              %c0_65 = arith.constant 0 : index
              %dim_66 = memref.dim %61, %c0_65 : memref<?xf64>
              %66 = arith.subi %dim_66, %65 : index
              %subview_67 = memref.subview %61[%65] [%66] [%c1_63] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %reinterpret_cast = memref.reinterpret_cast %subview_67 to offset: [0], sizes: [%66], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
              %c0_68 = arith.constant 0 : index
              %67 = memref.load %alloca_6[%c0_68] : memref<1xi32>
              %68 = arith.index_cast %67 : i32 to index
              %c0_69 = arith.constant 0 : index
              %dim_70 = memref.dim %reinterpret_cast, %c0_69 : memref<?xf64>
              %69 = arith.subi %dim_70, %68 : index
              %c1_71 = arith.constant 1 : index
              %subview_72 = memref.subview %reinterpret_cast[%68] [%69] [%c1_71] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
              %c0_73 = arith.constant 0 : index
              memref.store %60, %subview_72[%c0_73] : memref<?xf64, strided<[?], offset: ?>>
              %c0_74 = arith.constant 0 : index
              %70 = memref.load %alloca_6[%c0_74] : memref<1xi32>
              %c1_i32_75 = arith.constant 1 : i32
              %71 = arith.addi %70, %c1_i32_75 : i32
              %c0_76 = arith.constant 0 : index
              memref.store %71, %alloca_6[%c0_76] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_15 = arith.constant 0 : index
        %3 = memref.load %alloca_5[%c0_15] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_16 = arith.constant 0 : index
        memref.store %4, %alloca_5[%c0_16] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_7] : memref<1xmemref<?xf64>>
    %c0_8 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_8] : memref<1xmemref<?xf64>>
    %c0_9 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    memref.store %arg4, %alloca_3[%c0_10] : memref<1xmemref<?xf64>>
    %c0_11 = arith.constant 0 : index
    memref.store %arg5, %alloca_4[%c0_11] : memref<1xmemref<?xf64>>
    %c0_12 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_12] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_13 = arith.constant 0 : i32
      %c0_14 = arith.constant 0 : index
      memref.store %c0_i32_13, %alloca_5[%c0_14] : memref<1xi32>
      scf.while : () -> () {
        %c0_15 = arith.constant 0 : index
        %3 = memref.load %alloca_5[%c0_15] : memref<1xi32>
        %c0_16 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_16] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %c0_i32_17 = arith.constant 0 : i32
          %c0_18 = arith.constant 0 : index
          memref.store %c0_i32_17, %alloca_6[%c0_18] : memref<1xi32>
          scf.while : () -> () {
            %c0_19 = arith.constant 0 : index
            %5 = memref.load %alloca_6[%c0_19] : memref<1xi32>
            %c0_20 = arith.constant 0 : index
            %6 = memref.load %alloca[%c0_20] : memref<1xi32>
            %7 = arith.cmpi slt, %5, %6 : i32
            scf.condition(%7)
          } do {
            %c0_19 = arith.constant 0 : index
            %5 = memref.load %alloca_0[%c0_19] : memref<1xmemref<?xf64>>
            %c0_20 = arith.constant 0 : index
            %6 = memref.load %alloca_5[%c0_20] : memref<1xi32>
            %7 = arith.index_cast %6 : i32 to index
            %c0_21 = arith.constant 0 : index
            %dim = memref.dim %5, %c0_21 : memref<?xf64>
            %8 = arith.subi %dim, %7 : index
            %c1 = arith.constant 1 : index
            %subview = memref.subview %5[%7] [%8] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_22 = arith.constant 0 : index
            %9 = memref.load %subview[%c0_22] : memref<?xf64, strided<[?], offset: ?>>
            %c0_23 = arith.constant 0 : index
            %10 = memref.load %alloca_4[%c0_23] : memref<1xmemref<?xf64>>
            %c0_24 = arith.constant 0 : index
            %11 = memref.load %alloca_5[%c0_24] : memref<1xi32>
            %12 = arith.extsi %11 : i32 to i64
            %13 = arith.muli %12, %2 : i64
            %14 = arith.index_cast %13 : i64 to index
            %c1_25 = arith.constant 1 : index
            %c0_26 = arith.constant 0 : index
            %c0_27 = arith.constant 0 : index
            %dim_28 = memref.dim %10, %c0_27 : memref<?xf64>
            %15 = arith.subi %dim_28, %14 : index
            %subview_29 = memref.subview %10[%14] [%15] [%c1_25] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview_29 to offset: [0], sizes: [%15], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_30 = arith.constant 0 : index
            %16 = memref.load %alloca_6[%c0_30] : memref<1xi32>
            %17 = arith.index_cast %16 : i32 to index
            %c0_31 = arith.constant 0 : index
            %dim_32 = memref.dim %reinterpret_cast, %c0_31 : memref<?xf64>
            %18 = arith.subi %dim_32, %17 : index
            %c1_33 = arith.constant 1 : index
            %subview_34 = memref.subview %reinterpret_cast[%17] [%18] [%c1_33] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_35 = arith.constant 0 : index
            %19 = memref.load %subview_34[%c0_35] : memref<?xf64, strided<[?], offset: ?>>
            %c0_36 = arith.constant 0 : index
            %20 = memref.load %alloca_2[%c0_36] : memref<1xmemref<?xf64>>
            %c0_37 = arith.constant 0 : index
            %21 = memref.load %alloca_6[%c0_37] : memref<1xi32>
            %22 = arith.index_cast %21 : i32 to index
            %c0_38 = arith.constant 0 : index
            %dim_39 = memref.dim %20, %c0_38 : memref<?xf64>
            %23 = arith.subi %dim_39, %22 : index
            %c1_40 = arith.constant 1 : index
            %subview_41 = memref.subview %20[%22] [%23] [%c1_40] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_42 = arith.constant 0 : index
            %24 = memref.load %subview_41[%c0_42] : memref<?xf64, strided<[?], offset: ?>>
            %25 = arith.mulf %19, %24 : f64
            %26 = arith.addf %9, %25 : f64
            %c0_43 = arith.constant 0 : index
            %27 = memref.load %alloca_0[%c0_43] : memref<1xmemref<?xf64>>
            %c0_44 = arith.constant 0 : index
            %28 = memref.load %alloca_5[%c0_44] : memref<1xi32>
            %29 = arith.index_cast %28 : i32 to index
            %c0_45 = arith.constant 0 : index
            %dim_46 = memref.dim %27, %c0_45 : memref<?xf64>
            %30 = arith.subi %dim_46, %29 : index
            %c1_47 = arith.constant 1 : index
            %subview_48 = memref.subview %27[%29] [%30] [%c1_47] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_49 = arith.constant 0 : index
            memref.store %26, %subview_48[%c0_49] : memref<?xf64, strided<[?], offset: ?>>
            %c0_50 = arith.constant 0 : index
            %31 = memref.load %alloca_6[%c0_50] : memref<1xi32>
            %c1_i32_51 = arith.constant 1 : i32
            %32 = arith.addi %31, %c1_i32_51 : i32
            %c0_52 = arith.constant 0 : index
            memref.store %32, %alloca_6[%c0_52] : memref<1xi32>
            scf.yield
          }
        }
        %c0_15 = arith.constant 0 : index
        %3 = memref.load %alloca_5[%c0_15] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_16 = arith.constant 0 : index
        memref.store %4, %alloca_5[%c0_16] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_13 = arith.constant 0 : i32
      %c0_14 = arith.constant 0 : index
      memref.store %c0_i32_13, %alloca_5[%c0_14] : memref<1xi32>
      scf.while : () -> () {
        %c0_15 = arith.constant 0 : index
        %3 = memref.load %alloca_5[%c0_15] : memref<1xi32>
        %c0_16 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_16] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %c0_i32_17 = arith.constant 0 : i32
          %c0_18 = arith.constant 0 : index
          memref.store %c0_i32_17, %alloca_6[%c0_18] : memref<1xi32>
          scf.while : () -> () {
            %c0_19 = arith.constant 0 : index
            %5 = memref.load %alloca_6[%c0_19] : memref<1xi32>
            %c0_20 = arith.constant 0 : index
            %6 = memref.load %alloca[%c0_20] : memref<1xi32>
            %7 = arith.cmpi slt, %5, %6 : i32
            scf.condition(%7)
          } do {
            %c0_19 = arith.constant 0 : index
            %5 = memref.load %alloca_1[%c0_19] : memref<1xmemref<?xf64>>
            %c0_20 = arith.constant 0 : index
            %6 = memref.load %alloca_5[%c0_20] : memref<1xi32>
            %7 = arith.index_cast %6 : i32 to index
            %c0_21 = arith.constant 0 : index
            %dim = memref.dim %5, %c0_21 : memref<?xf64>
            %8 = arith.subi %dim, %7 : index
            %c1 = arith.constant 1 : index
            %subview = memref.subview %5[%7] [%8] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_22 = arith.constant 0 : index
            %9 = memref.load %subview[%c0_22] : memref<?xf64, strided<[?], offset: ?>>
            %c0_23 = arith.constant 0 : index
            %10 = memref.load %alloca_4[%c0_23] : memref<1xmemref<?xf64>>
            %c0_24 = arith.constant 0 : index
            %11 = memref.load %alloca_6[%c0_24] : memref<1xi32>
            %12 = arith.extsi %11 : i32 to i64
            %13 = arith.muli %12, %2 : i64
            %14 = arith.index_cast %13 : i64 to index
            %c1_25 = arith.constant 1 : index
            %c0_26 = arith.constant 0 : index
            %c0_27 = arith.constant 0 : index
            %dim_28 = memref.dim %10, %c0_27 : memref<?xf64>
            %15 = arith.subi %dim_28, %14 : index
            %subview_29 = memref.subview %10[%14] [%15] [%c1_25] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview_29 to offset: [0], sizes: [%15], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
            %c0_30 = arith.constant 0 : index
            %16 = memref.load %alloca_5[%c0_30] : memref<1xi32>
            %17 = arith.index_cast %16 : i32 to index
            %c0_31 = arith.constant 0 : index
            %dim_32 = memref.dim %reinterpret_cast, %c0_31 : memref<?xf64>
            %18 = arith.subi %dim_32, %17 : index
            %c1_33 = arith.constant 1 : index
            %subview_34 = memref.subview %reinterpret_cast[%17] [%18] [%c1_33] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_35 = arith.constant 0 : index
            %19 = memref.load %subview_34[%c0_35] : memref<?xf64, strided<[?], offset: ?>>
            %c0_36 = arith.constant 0 : index
            %20 = memref.load %alloca_3[%c0_36] : memref<1xmemref<?xf64>>
            %c0_37 = arith.constant 0 : index
            %21 = memref.load %alloca_6[%c0_37] : memref<1xi32>
            %22 = arith.index_cast %21 : i32 to index
            %c0_38 = arith.constant 0 : index
            %dim_39 = memref.dim %20, %c0_38 : memref<?xf64>
            %23 = arith.subi %dim_39, %22 : index
            %c1_40 = arith.constant 1 : index
            %subview_41 = memref.subview %20[%22] [%23] [%c1_40] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_42 = arith.constant 0 : index
            %24 = memref.load %subview_41[%c0_42] : memref<?xf64, strided<[?], offset: ?>>
            %25 = arith.mulf %19, %24 : f64
            %26 = arith.addf %9, %25 : f64
            %c0_43 = arith.constant 0 : index
            %27 = memref.load %alloca_1[%c0_43] : memref<1xmemref<?xf64>>
            %c0_44 = arith.constant 0 : index
            %28 = memref.load %alloca_5[%c0_44] : memref<1xi32>
            %29 = arith.index_cast %28 : i32 to index
            %c0_45 = arith.constant 0 : index
            %dim_46 = memref.dim %27, %c0_45 : memref<?xf64>
            %30 = arith.subi %dim_46, %29 : index
            %c1_47 = arith.constant 1 : index
            %subview_48 = memref.subview %27[%29] [%30] [%c1_47] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
            %c0_49 = arith.constant 0 : index
            memref.store %26, %subview_48[%c0_49] : memref<?xf64, strided<[?], offset: ?>>
            %c0_50 = arith.constant 0 : index
            %31 = memref.load %alloca_6[%c0_50] : memref<1xi32>
            %c1_i32_51 = arith.constant 1 : i32
            %32 = arith.addi %31, %c1_i32_51 : i32
            %c0_52 = arith.constant 0 : index
            memref.store %32, %alloca_6[%c0_52] : memref<1xi32>
            scf.yield
          }
        }
        %c0_15 = arith.constant 0 : index
        %3 = memref.load %alloca_5[%c0_15] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_16 = arith.constant 0 : index
        memref.store %4, %alloca_5[%c0_16] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<3xi8> = dense<[120, 49, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.3" : memref<2xi8> = dense<[10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.4" : memref<8xi8> = dense<[37, 48, 46, 50, 108, 102, 32, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.5" : memref<17xi8> = dense<[10, 101, 110, 100, 32, 32, 32, 100, 117, 109, 112, 58, 32, 37, 115, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.6" : memref<3xi8> = dense<[120, 50, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.7" : memref<23xi8> = dense<[61, 61, 69, 78, 68, 32, 32, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  func.func private @print_array(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_3 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_3] : memref<1xmemref<?xf64>>
    %c0_4 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_4] : memref<1xmemref<?xf64>>
    %0 = llvm.mlir.addressof @stderr : !llvm.ptr
    %1 = llvm.load %0 : !llvm.ptr -> !llvm.ptr
    %2 = memref.get_global @".str" : memref<23xi8>
    %c0_5 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c23 = arith.constant 23 : index
    %subview = memref.subview %2[%c0_5] [%c23] [%c1] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%c23], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr = memref.extract_aligned_pointer_as_index %reinterpret_cast : memref<?xi8> -> index
    %3 = arith.index_castui %intptr : index to i64
    %4 = llvm.inttoptr %3 : i64 to !llvm.ptr
    %5 = llvm.call @fprintf(%1, %4) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %6 = llvm.mlir.addressof @stderr : !llvm.ptr
    %7 = llvm.load %6 : !llvm.ptr -> !llvm.ptr
    %8 = memref.get_global @".str.1" : memref<15xi8>
    %c0_6 = arith.constant 0 : index
    %c1_7 = arith.constant 1 : index
    %c15 = arith.constant 15 : index
    %subview_8 = memref.subview %8[%c0_6] [%c15] [%c1_7] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_9 = memref.reinterpret_cast %subview_8 to offset: [0], sizes: [%c15], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %9 = memref.get_global @".str.2" : memref<3xi8>
    %c0_10 = arith.constant 0 : index
    %c1_11 = arith.constant 1 : index
    %c3 = arith.constant 3 : index
    %subview_12 = memref.subview %9[%c0_10] [%c3] [%c1_11] : memref<3xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_13 = memref.reinterpret_cast %subview_12 to offset: [0], sizes: [%c3], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_14 = memref.extract_aligned_pointer_as_index %reinterpret_cast_9 : memref<?xi8> -> index
    %10 = arith.index_castui %intptr_14 : index to i64
    %11 = llvm.inttoptr %10 : i64 to !llvm.ptr
    %intptr_15 = memref.extract_aligned_pointer_as_index %reinterpret_cast_13 : memref<?xi8> -> index
    %12 = arith.index_castui %intptr_15 : index to i64
    %13 = llvm.inttoptr %12 : i64 to !llvm.ptr
    %14 = llvm.call @fprintf(%7, %11, %13) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32 = arith.constant 0 : i32
      %c0_57 = arith.constant 0 : index
      memref.store %c0_i32, %alloca_2[%c0_57] : memref<1xi32>
      scf.while : () -> () {
        %c0_58 = arith.constant 0 : index
        %48 = memref.load %alloca_2[%c0_58] : memref<1xi32>
        %c0_59 = arith.constant 0 : index
        %49 = memref.load %alloca[%c0_59] : memref<1xi32>
        %50 = arith.cmpi slt, %48, %49 : i32
        scf.condition(%50)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_71 = arith.constant 0 : index
            %61 = memref.load %alloca_2[%c0_71] : memref<1xi32>
            %c20_i32 = arith.constant 20 : i32
            %62 = arith.remsi %61, %c20_i32 : i32
            %c0_i32_72 = arith.constant 0 : i32
            %63 = arith.cmpi eq, %62, %c0_i32_72 : i32
            scf.if %63 {
              %64 = llvm.mlir.addressof @stderr : !llvm.ptr
              %65 = llvm.load %64 : !llvm.ptr -> !llvm.ptr
              %66 = memref.get_global @".str.3" : memref<2xi8>
              %c0_73 = arith.constant 0 : index
              %c1_74 = arith.constant 1 : index
              %c2 = arith.constant 2 : index
              %subview_75 = memref.subview %66[%c0_73] [%c2] [%c1_74] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_76 = memref.reinterpret_cast %subview_75 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %intptr_77 = memref.extract_aligned_pointer_as_index %reinterpret_cast_76 : memref<?xi8> -> index
              %67 = arith.index_castui %intptr_77 : index to i64
              %68 = llvm.inttoptr %67 : i64 to !llvm.ptr
              %69 = llvm.call @fprintf(%65, %68) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
            }
          }
          %50 = llvm.mlir.addressof @stderr : !llvm.ptr
          %51 = llvm.load %50 : !llvm.ptr -> !llvm.ptr
          %52 = memref.get_global @".str.4" : memref<8xi8>
          %c0_60 = arith.constant 0 : index
          %c1_61 = arith.constant 1 : index
          %c8 = arith.constant 8 : index
          %subview_62 = memref.subview %52[%c0_60] [%c8] [%c1_61] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
          %reinterpret_cast_63 = memref.reinterpret_cast %subview_62 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
          %c0_64 = arith.constant 0 : index
          %53 = memref.load %alloca_0[%c0_64] : memref<1xmemref<?xf64>>
          %c0_65 = arith.constant 0 : index
          %54 = memref.load %alloca_2[%c0_65] : memref<1xi32>
          %55 = arith.index_cast %54 : i32 to index
          %c0_66 = arith.constant 0 : index
          %dim = memref.dim %53, %c0_66 : memref<?xf64>
          %56 = arith.subi %dim, %55 : index
          %c1_67 = arith.constant 1 : index
          %subview_68 = memref.subview %53[%55] [%56] [%c1_67] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_69 = arith.constant 0 : index
          %57 = memref.load %subview_68[%c0_69] : memref<?xf64, strided<[?], offset: ?>>
          %intptr_70 = memref.extract_aligned_pointer_as_index %reinterpret_cast_63 : memref<?xi8> -> index
          %58 = arith.index_castui %intptr_70 : index to i64
          %59 = llvm.inttoptr %58 : i64 to !llvm.ptr
          %60 = llvm.call @fprintf(%51, %59, %57) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
        }
        %c0_58 = arith.constant 0 : index
        %48 = memref.load %alloca_2[%c0_58] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %49 = arith.addi %48, %c1_i32 : i32
        %c0_59 = arith.constant 0 : index
        memref.store %49, %alloca_2[%c0_59] : memref<1xi32>
        scf.yield
      }
    }
    %15 = llvm.mlir.addressof @stderr : !llvm.ptr
    %16 = llvm.load %15 : !llvm.ptr -> !llvm.ptr
    %17 = memref.get_global @".str.5" : memref<17xi8>
    %c0_16 = arith.constant 0 : index
    %c1_17 = arith.constant 1 : index
    %c17 = arith.constant 17 : index
    %subview_18 = memref.subview %17[%c0_16] [%c17] [%c1_17] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_19 = memref.reinterpret_cast %subview_18 to offset: [0], sizes: [%c17], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %18 = memref.get_global @".str.2" : memref<3xi8>
    %c0_20 = arith.constant 0 : index
    %c1_21 = arith.constant 1 : index
    %c3_22 = arith.constant 3 : index
    %subview_23 = memref.subview %18[%c0_20] [%c3_22] [%c1_21] : memref<3xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_24 = memref.reinterpret_cast %subview_23 to offset: [0], sizes: [%c3_22], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_25 = memref.extract_aligned_pointer_as_index %reinterpret_cast_19 : memref<?xi8> -> index
    %19 = arith.index_castui %intptr_25 : index to i64
    %20 = llvm.inttoptr %19 : i64 to !llvm.ptr
    %intptr_26 = memref.extract_aligned_pointer_as_index %reinterpret_cast_24 : memref<?xi8> -> index
    %21 = arith.index_castui %intptr_26 : index to i64
    %22 = llvm.inttoptr %21 : i64 to !llvm.ptr
    %23 = llvm.call @fprintf(%16, %20, %22) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %24 = llvm.mlir.addressof @stderr : !llvm.ptr
    %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
    %26 = memref.get_global @".str.1" : memref<15xi8>
    %c0_27 = arith.constant 0 : index
    %c1_28 = arith.constant 1 : index
    %c15_29 = arith.constant 15 : index
    %subview_30 = memref.subview %26[%c0_27] [%c15_29] [%c1_28] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_31 = memref.reinterpret_cast %subview_30 to offset: [0], sizes: [%c15_29], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %27 = memref.get_global @".str.6" : memref<3xi8>
    %c0_32 = arith.constant 0 : index
    %c1_33 = arith.constant 1 : index
    %c3_34 = arith.constant 3 : index
    %subview_35 = memref.subview %27[%c0_32] [%c3_34] [%c1_33] : memref<3xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_36 = memref.reinterpret_cast %subview_35 to offset: [0], sizes: [%c3_34], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_37 = memref.extract_aligned_pointer_as_index %reinterpret_cast_31 : memref<?xi8> -> index
    %28 = arith.index_castui %intptr_37 : index to i64
    %29 = llvm.inttoptr %28 : i64 to !llvm.ptr
    %intptr_38 = memref.extract_aligned_pointer_as_index %reinterpret_cast_36 : memref<?xi8> -> index
    %30 = arith.index_castui %intptr_38 : index to i64
    %31 = llvm.inttoptr %30 : i64 to !llvm.ptr
    %32 = llvm.call @fprintf(%25, %29, %31) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32 = arith.constant 0 : i32
      %c0_57 = arith.constant 0 : index
      memref.store %c0_i32, %alloca_2[%c0_57] : memref<1xi32>
      scf.while : () -> () {
        %c0_58 = arith.constant 0 : index
        %48 = memref.load %alloca_2[%c0_58] : memref<1xi32>
        %c0_59 = arith.constant 0 : index
        %49 = memref.load %alloca[%c0_59] : memref<1xi32>
        %50 = arith.cmpi slt, %48, %49 : i32
        scf.condition(%50)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_71 = arith.constant 0 : index
            %61 = memref.load %alloca_2[%c0_71] : memref<1xi32>
            %c20_i32 = arith.constant 20 : i32
            %62 = arith.remsi %61, %c20_i32 : i32
            %c0_i32_72 = arith.constant 0 : i32
            %63 = arith.cmpi eq, %62, %c0_i32_72 : i32
            scf.if %63 {
              %64 = llvm.mlir.addressof @stderr : !llvm.ptr
              %65 = llvm.load %64 : !llvm.ptr -> !llvm.ptr
              %66 = memref.get_global @".str.3" : memref<2xi8>
              %c0_73 = arith.constant 0 : index
              %c1_74 = arith.constant 1 : index
              %c2 = arith.constant 2 : index
              %subview_75 = memref.subview %66[%c0_73] [%c2] [%c1_74] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
              %reinterpret_cast_76 = memref.reinterpret_cast %subview_75 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
              %intptr_77 = memref.extract_aligned_pointer_as_index %reinterpret_cast_76 : memref<?xi8> -> index
              %67 = arith.index_castui %intptr_77 : index to i64
              %68 = llvm.inttoptr %67 : i64 to !llvm.ptr
              %69 = llvm.call @fprintf(%65, %68) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
            }
          }
          %50 = llvm.mlir.addressof @stderr : !llvm.ptr
          %51 = llvm.load %50 : !llvm.ptr -> !llvm.ptr
          %52 = memref.get_global @".str.4" : memref<8xi8>
          %c0_60 = arith.constant 0 : index
          %c1_61 = arith.constant 1 : index
          %c8 = arith.constant 8 : index
          %subview_62 = memref.subview %52[%c0_60] [%c8] [%c1_61] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
          %reinterpret_cast_63 = memref.reinterpret_cast %subview_62 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
          %c0_64 = arith.constant 0 : index
          %53 = memref.load %alloca_1[%c0_64] : memref<1xmemref<?xf64>>
          %c0_65 = arith.constant 0 : index
          %54 = memref.load %alloca_2[%c0_65] : memref<1xi32>
          %55 = arith.index_cast %54 : i32 to index
          %c0_66 = arith.constant 0 : index
          %dim = memref.dim %53, %c0_66 : memref<?xf64>
          %56 = arith.subi %dim, %55 : index
          %c1_67 = arith.constant 1 : index
          %subview_68 = memref.subview %53[%55] [%56] [%c1_67] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
          %c0_69 = arith.constant 0 : index
          %57 = memref.load %subview_68[%c0_69] : memref<?xf64, strided<[?], offset: ?>>
          %intptr_70 = memref.extract_aligned_pointer_as_index %reinterpret_cast_63 : memref<?xi8> -> index
          %58 = arith.index_castui %intptr_70 : index to i64
          %59 = llvm.inttoptr %58 : i64 to !llvm.ptr
          %60 = llvm.call @fprintf(%51, %59, %57) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
        }
        %c0_58 = arith.constant 0 : index
        %48 = memref.load %alloca_2[%c0_58] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %49 = arith.addi %48, %c1_i32 : i32
        %c0_59 = arith.constant 0 : index
        memref.store %49, %alloca_2[%c0_59] : memref<1xi32>
        scf.yield
      }
    }
    %33 = llvm.mlir.addressof @stderr : !llvm.ptr
    %34 = llvm.load %33 : !llvm.ptr -> !llvm.ptr
    %35 = memref.get_global @".str.5" : memref<17xi8>
    %c0_39 = arith.constant 0 : index
    %c1_40 = arith.constant 1 : index
    %c17_41 = arith.constant 17 : index
    %subview_42 = memref.subview %35[%c0_39] [%c17_41] [%c1_40] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_43 = memref.reinterpret_cast %subview_42 to offset: [0], sizes: [%c17_41], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %36 = memref.get_global @".str.6" : memref<3xi8>
    %c0_44 = arith.constant 0 : index
    %c1_45 = arith.constant 1 : index
    %c3_46 = arith.constant 3 : index
    %subview_47 = memref.subview %36[%c0_44] [%c3_46] [%c1_45] : memref<3xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_48 = memref.reinterpret_cast %subview_47 to offset: [0], sizes: [%c3_46], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_49 = memref.extract_aligned_pointer_as_index %reinterpret_cast_43 : memref<?xi8> -> index
    %37 = arith.index_castui %intptr_49 : index to i64
    %38 = llvm.inttoptr %37 : i64 to !llvm.ptr
    %intptr_50 = memref.extract_aligned_pointer_as_index %reinterpret_cast_48 : memref<?xi8> -> index
    %39 = arith.index_castui %intptr_50 : index to i64
    %40 = llvm.inttoptr %39 : i64 to !llvm.ptr
    %41 = llvm.call @fprintf(%34, %38, %40) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %42 = llvm.mlir.addressof @stderr : !llvm.ptr
    %43 = llvm.load %42 : !llvm.ptr -> !llvm.ptr
    %44 = memref.get_global @".str.7" : memref<23xi8>
    %c0_51 = arith.constant 0 : index
    %c1_52 = arith.constant 1 : index
    %c23_53 = arith.constant 23 : index
    %subview_54 = memref.subview %44[%c0_51] [%c23_53] [%c1_52] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_55 = memref.reinterpret_cast %subview_54 to offset: [0], sizes: [%c23_53], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_56 = memref.extract_aligned_pointer_as_index %reinterpret_cast_55 : memref<?xi8> -> index
    %45 = arith.index_castui %intptr_56 : index to i64
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
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_6 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_7 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_8] : memref<1xmemref<?xmemref<?xi8>>>
    %c2000_i32 = arith.constant 2000 : i32
    %c0_9 = arith.constant 0 : index
    memref.store %c2000_i32, %alloca_2[%c0_9] : memref<1xi32>
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
    memref.store %8, %alloca_3[%c0_13] : memref<1xmemref<?xf64>>
    %c0_14 = arith.constant 0 : index
    %9 = memref.load %alloca_2[%c0_14] : memref<1xi32>
    %c0_i32_15 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_15 : i32
    %11 = arith.extsi %10 : i32 to i64
    %c8_i64_16 = arith.constant 8 : i64
    %12 = arith.trunci %c8_i64_16 : i64 to i32
    %13 = call @polybench_alloc_data(%11, %12) : (i64, i32) -> !llvm.ptr
    %14 = builtin.unrealized_conversion_cast %13 : !llvm.ptr to memref<?xf64>
    %c0_17 = arith.constant 0 : index
    memref.store %14, %alloca_4[%c0_17] : memref<1xmemref<?xf64>>
    %c0_18 = arith.constant 0 : index
    %15 = memref.load %alloca_2[%c0_18] : memref<1xi32>
    %c0_i32_19 = arith.constant 0 : i32
    %16 = arith.addi %15, %c0_i32_19 : i32
    %17 = arith.extsi %16 : i32 to i64
    %c8_i64_20 = arith.constant 8 : i64
    %18 = arith.trunci %c8_i64_20 : i64 to i32
    %19 = call @polybench_alloc_data(%17, %18) : (i64, i32) -> !llvm.ptr
    %20 = builtin.unrealized_conversion_cast %19 : !llvm.ptr to memref<?xf64>
    %c0_21 = arith.constant 0 : index
    memref.store %20, %alloca_5[%c0_21] : memref<1xmemref<?xf64>>
    %c0_22 = arith.constant 0 : index
    %21 = memref.load %alloca_2[%c0_22] : memref<1xi32>
    %c0_i32_23 = arith.constant 0 : i32
    %22 = arith.addi %21, %c0_i32_23 : i32
    %23 = arith.extsi %22 : i32 to i64
    %c8_i64_24 = arith.constant 8 : i64
    %24 = arith.trunci %c8_i64_24 : i64 to i32
    %25 = call @polybench_alloc_data(%23, %24) : (i64, i32) -> !llvm.ptr
    %26 = builtin.unrealized_conversion_cast %25 : !llvm.ptr to memref<?xf64>
    %c0_25 = arith.constant 0 : index
    memref.store %26, %alloca_6[%c0_25] : memref<1xmemref<?xf64>>
    %c0_26 = arith.constant 0 : index
    %27 = memref.load %alloca_2[%c0_26] : memref<1xi32>
    %c0_i32_27 = arith.constant 0 : i32
    %28 = arith.addi %27, %c0_i32_27 : i32
    %29 = arith.extsi %28 : i32 to i64
    %c8_i64_28 = arith.constant 8 : i64
    %30 = arith.trunci %c8_i64_28 : i64 to i32
    %31 = call @polybench_alloc_data(%29, %30) : (i64, i32) -> !llvm.ptr
    %32 = builtin.unrealized_conversion_cast %31 : !llvm.ptr to memref<?xf64>
    %c0_29 = arith.constant 0 : index
    memref.store %32, %alloca_7[%c0_29] : memref<1xmemref<?xf64>>
    %c0_30 = arith.constant 0 : index
    %33 = memref.load %alloca_2[%c0_30] : memref<1xi32>
    %c0_31 = arith.constant 0 : index
    %34 = memref.load %alloca_4[%c0_31] : memref<1xmemref<?xf64>>
    %c0_32 = arith.constant 0 : index
    %35 = memref.load %alloca_5[%c0_32] : memref<1xmemref<?xf64>>
    %c0_33 = arith.constant 0 : index
    %36 = memref.load %alloca_6[%c0_33] : memref<1xmemref<?xf64>>
    %c0_34 = arith.constant 0 : index
    %37 = memref.load %alloca_7[%c0_34] : memref<1xmemref<?xf64>>
    %c0_35 = arith.constant 0 : index
    %38 = memref.load %alloca_3[%c0_35] : memref<1xmemref<?xf64>>
    call @init_array(%33, %34, %35, %36, %37, %38) : (i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %39 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %39() : !llvm.ptr, () -> ()
    %c0_36 = arith.constant 0 : index
    %40 = memref.load %alloca_2[%c0_36] : memref<1xi32>
    %c0_37 = arith.constant 0 : index
    %41 = memref.load %alloca_4[%c0_37] : memref<1xmemref<?xf64>>
    %c0_38 = arith.constant 0 : index
    %42 = memref.load %alloca_5[%c0_38] : memref<1xmemref<?xf64>>
    %c0_39 = arith.constant 0 : index
    %43 = memref.load %alloca_6[%c0_39] : memref<1xmemref<?xf64>>
    %c0_40 = arith.constant 0 : index
    %44 = memref.load %alloca_7[%c0_40] : memref<1xmemref<?xf64>>
    %c0_41 = arith.constant 0 : index
    %45 = memref.load %alloca_3[%c0_41] : memref<1xmemref<?xf64>>
    call @kernel_mvt(%40, %41, %42, %43, %44, %45) : (i32, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
    %46 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %46() : !llvm.ptr, () -> ()
    %47 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %47() : !llvm.ptr, () -> ()
    %c0_42 = arith.constant 0 : index
    %48 = memref.load %alloca_2[%c0_42] : memref<1xi32>
    %c0_43 = arith.constant 0 : index
    %49 = memref.load %alloca_4[%c0_43] : memref<1xmemref<?xf64>>
    %c0_44 = arith.constant 0 : index
    %50 = memref.load %alloca_5[%c0_44] : memref<1xmemref<?xf64>>
    call @print_array(%48, %49, %50) : (i32, memref<?xf64>, memref<?xf64>) -> ()
    %c0_45 = arith.constant 0 : index
    %51 = memref.load %alloca_3[%c0_45] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %51 : memref<?xf64> -> index
    %52 = arith.index_castui %intptr : index to i64
    %53 = llvm.inttoptr %52 : i64 to !llvm.ptr
    call @free(%53) : (!llvm.ptr) -> ()
    %c0_46 = arith.constant 0 : index
    %54 = memref.load %alloca_4[%c0_46] : memref<1xmemref<?xf64>>
    %intptr_47 = memref.extract_aligned_pointer_as_index %54 : memref<?xf64> -> index
    %55 = arith.index_castui %intptr_47 : index to i64
    %56 = llvm.inttoptr %55 : i64 to !llvm.ptr
    call @free(%56) : (!llvm.ptr) -> ()
    %c0_48 = arith.constant 0 : index
    %57 = memref.load %alloca_5[%c0_48] : memref<1xmemref<?xf64>>
    %intptr_49 = memref.extract_aligned_pointer_as_index %57 : memref<?xf64> -> index
    %58 = arith.index_castui %intptr_49 : index to i64
    %59 = llvm.inttoptr %58 : i64 to !llvm.ptr
    call @free(%59) : (!llvm.ptr) -> ()
    %c0_50 = arith.constant 0 : index
    %60 = memref.load %alloca_6[%c0_50] : memref<1xmemref<?xf64>>
    %intptr_51 = memref.extract_aligned_pointer_as_index %60 : memref<?xf64> -> index
    %61 = arith.index_castui %intptr_51 : index to i64
    %62 = llvm.inttoptr %61 : i64 to !llvm.ptr
    call @free(%62) : (!llvm.ptr) -> ()
    %c0_52 = arith.constant 0 : index
    %63 = memref.load %alloca_7[%c0_52] : memref<1xmemref<?xf64>>
    %intptr_53 = memref.extract_aligned_pointer_as_index %63 : memref<?xf64> -> index
    %64 = arith.index_castui %intptr_53 : index to i64
    %65 = llvm.inttoptr %64 : i64 to !llvm.ptr
    call @free(%65) : (!llvm.ptr) -> ()
    %c0_i32_54 = arith.constant 0 : i32
    %c0_55 = arith.constant 0 : index
    memref.store %c0_i32_54, %alloca_1[%c0_55] : memref<1xi32>
    %c0_56 = arith.constant 0 : index
    %66 = memref.load %alloca_1[%c0_56] : memref<1xi32>
    return %66 : i32
  }
}

