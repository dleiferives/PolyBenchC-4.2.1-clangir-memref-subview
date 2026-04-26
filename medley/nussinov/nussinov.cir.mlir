module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/medley/nussinov/nussinov.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: memref<?xi8>, %arg2: memref<?xi32>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xi8>>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xi32>>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_4 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_4] : memref<1xmemref<?xi8>>
    %c0_5 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_5] : memref<1xmemref<?xi32>>
    %c0_6 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_6] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_7 = arith.constant 0 : i32
      %c0_8 = arith.constant 0 : index
      memref.store %c0_i32_7, %alloca_2[%c0_8] : memref<1xi32>
      scf.while : () -> () {
        %c0_9 = arith.constant 0 : index
        %3 = memref.load %alloca_2[%c0_9] : memref<1xi32>
        %c0_10 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_10] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %c0_11 = arith.constant 0 : index
          %5 = memref.load %alloca_2[%c0_11] : memref<1xi32>
          %c1_i32_12 = arith.constant 1 : i32
          %6 = arith.addi %5, %c1_i32_12 : i32
          %c4_i32 = arith.constant 4 : i32
          %7 = arith.remsi %6, %c4_i32 : i32
          %8 = arith.trunci %7 : i32 to i8
          %c0_13 = arith.constant 0 : index
          %9 = memref.load %alloca_0[%c0_13] : memref<1xmemref<?xi8>>
          %c0_14 = arith.constant 0 : index
          %10 = memref.load %alloca_2[%c0_14] : memref<1xi32>
          %11 = arith.index_cast %10 : i32 to index
          %c0_15 = arith.constant 0 : index
          %dim = memref.dim %9, %c0_15 : memref<?xi8>
          %12 = arith.subi %dim, %11 : index
          %c1 = arith.constant 1 : index
          %subview = memref.subview %9[%11] [%12] [%c1] : memref<?xi8> to memref<?xi8, strided<[?], offset: ?>>
          %c0_16 = arith.constant 0 : index
          memref.store %8, %subview[%c0_16] : memref<?xi8, strided<[?], offset: ?>>
        }
        %c0_9 = arith.constant 0 : index
        %3 = memref.load %alloca_2[%c0_9] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_10 = arith.constant 0 : index
        memref.store %4, %alloca_2[%c0_10] : memref<1xi32>
        scf.yield
      }
    }
    memref.alloca_scope  {
      %c0_i32_7 = arith.constant 0 : i32
      %c0_8 = arith.constant 0 : index
      memref.store %c0_i32_7, %alloca_2[%c0_8] : memref<1xi32>
      scf.while : () -> () {
        %c0_9 = arith.constant 0 : index
        %3 = memref.load %alloca_2[%c0_9] : memref<1xi32>
        %c0_10 = arith.constant 0 : index
        %4 = memref.load %alloca[%c0_10] : memref<1xi32>
        %5 = arith.cmpi slt, %3, %4 : i32
        scf.condition(%5)
      } do {
        memref.alloca_scope  {
          %c0_i32_11 = arith.constant 0 : i32
          %c0_12 = arith.constant 0 : index
          memref.store %c0_i32_11, %alloca_3[%c0_12] : memref<1xi32>
          scf.while : () -> () {
            %c0_13 = arith.constant 0 : index
            %5 = memref.load %alloca_3[%c0_13] : memref<1xi32>
            %c0_14 = arith.constant 0 : index
            %6 = memref.load %alloca[%c0_14] : memref<1xi32>
            %7 = arith.cmpi slt, %5, %6 : i32
            scf.condition(%7)
          } do {
            %c0_i32_13 = arith.constant 0 : i32
            %c0_14 = arith.constant 0 : index
            %5 = memref.load %alloca_1[%c0_14] : memref<1xmemref<?xi32>>
            %c0_15 = arith.constant 0 : index
            %6 = memref.load %alloca_2[%c0_15] : memref<1xi32>
            %7 = arith.extsi %6 : i32 to i64
            %8 = arith.muli %7, %2 : i64
            %9 = arith.index_cast %8 : i64 to index
            %c1 = arith.constant 1 : index
            %c0_16 = arith.constant 0 : index
            %c0_17 = arith.constant 0 : index
            %dim = memref.dim %5, %c0_17 : memref<?xi32>
            %10 = arith.subi %dim, %9 : index
            %subview = memref.subview %5[%9] [%10] [%c1] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%10], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
            %c0_18 = arith.constant 0 : index
            %11 = memref.load %alloca_3[%c0_18] : memref<1xi32>
            %12 = arith.index_cast %11 : i32 to index
            %c0_19 = arith.constant 0 : index
            %dim_20 = memref.dim %reinterpret_cast, %c0_19 : memref<?xi32>
            %13 = arith.subi %dim_20, %12 : index
            %c1_21 = arith.constant 1 : index
            %subview_22 = memref.subview %reinterpret_cast[%12] [%13] [%c1_21] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
            %c0_23 = arith.constant 0 : index
            memref.store %c0_i32_13, %subview_22[%c0_23] : memref<?xi32, strided<[?], offset: ?>>
            %c0_24 = arith.constant 0 : index
            %14 = memref.load %alloca_3[%c0_24] : memref<1xi32>
            %c1_i32_25 = arith.constant 1 : i32
            %15 = arith.addi %14, %c1_i32_25 : i32
            %c0_26 = arith.constant 0 : index
            memref.store %15, %alloca_3[%c0_26] : memref<1xi32>
            scf.yield
          }
        }
        %c0_9 = arith.constant 0 : index
        %3 = memref.load %alloca_2[%c0_9] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %4 = arith.addi %3, %c1_i32 : i32
        %c0_10 = arith.constant 0 : index
        memref.store %4, %alloca_2[%c0_10] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_nussinov(%arg0: i32, %arg1: memref<?xi8>, %arg2: memref<?xi32>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xi8>>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xi32>>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_5 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_5] : memref<1xmemref<?xi8>>
    %c0_6 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_6] : memref<1xmemref<?xi32>>
    %c0_7 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_7] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    memref.alloca_scope  {
      %c0_8 = arith.constant 0 : index
      %3 = memref.load %alloca[%c0_8] : memref<1xi32>
      %c1_i32 = arith.constant 1 : i32
      %4 = arith.subi %3, %c1_i32 : i32
      %c0_9 = arith.constant 0 : index
      memref.store %4, %alloca_2[%c0_9] : memref<1xi32>
      scf.while : () -> () {
        %c0_10 = arith.constant 0 : index
        %5 = memref.load %alloca_2[%c0_10] : memref<1xi32>
        %c0_i32_11 = arith.constant 0 : i32
        %6 = arith.cmpi sge, %5, %c0_i32_11 : i32
        scf.condition(%6)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_12 = arith.constant 0 : index
            %7 = memref.load %alloca_2[%c0_12] : memref<1xi32>
            %c1_i32_13 = arith.constant 1 : i32
            %8 = arith.addi %7, %c1_i32_13 : i32
            %c0_14 = arith.constant 0 : index
            memref.store %8, %alloca_3[%c0_14] : memref<1xi32>
            scf.while : () -> () {
              %c0_15 = arith.constant 0 : index
              %9 = memref.load %alloca_3[%c0_15] : memref<1xi32>
              %c0_16 = arith.constant 0 : index
              %10 = memref.load %alloca[%c0_16] : memref<1xi32>
              %11 = arith.cmpi slt, %9, %10 : i32
              scf.condition(%11)
            } do {
              memref.alloca_scope  {
                memref.alloca_scope  {
                  %c0_18 = arith.constant 0 : index
                  %11 = memref.load %alloca_3[%c0_18] : memref<1xi32>
                  %c1_i32_19 = arith.constant 1 : i32
                  %12 = arith.subi %11, %c1_i32_19 : i32
                  %c0_i32_20 = arith.constant 0 : i32
                  %13 = arith.cmpi sge, %12, %c0_i32_20 : i32
                  scf.if %13 {
                    %c0_21 = arith.constant 0 : index
                    %14 = memref.load %alloca_1[%c0_21] : memref<1xmemref<?xi32>>
                    %c0_22 = arith.constant 0 : index
                    %15 = memref.load %alloca_2[%c0_22] : memref<1xi32>
                    %16 = arith.extsi %15 : i32 to i64
                    %17 = arith.muli %16, %2 : i64
                    %18 = arith.index_cast %17 : i64 to index
                    %c1 = arith.constant 1 : index
                    %c0_23 = arith.constant 0 : index
                    %c0_24 = arith.constant 0 : index
                    %dim = memref.dim %14, %c0_24 : memref<?xi32>
                    %19 = arith.subi %dim, %18 : index
                    %subview = memref.subview %14[%18] [%19] [%c1] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%19], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                    %c0_25 = arith.constant 0 : index
                    %20 = memref.load %alloca_3[%c0_25] : memref<1xi32>
                    %21 = arith.index_cast %20 : i32 to index
                    %c0_26 = arith.constant 0 : index
                    %dim_27 = memref.dim %reinterpret_cast, %c0_26 : memref<?xi32>
                    %22 = arith.subi %dim_27, %21 : index
                    %c1_28 = arith.constant 1 : index
                    %subview_29 = memref.subview %reinterpret_cast[%21] [%22] [%c1_28] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %c0_30 = arith.constant 0 : index
                    %23 = memref.load %subview_29[%c0_30] : memref<?xi32, strided<[?], offset: ?>>
                    %c0_31 = arith.constant 0 : index
                    %24 = memref.load %alloca_1[%c0_31] : memref<1xmemref<?xi32>>
                    %c0_32 = arith.constant 0 : index
                    %25 = memref.load %alloca_2[%c0_32] : memref<1xi32>
                    %26 = arith.extsi %25 : i32 to i64
                    %27 = arith.muli %26, %2 : i64
                    %28 = arith.index_cast %27 : i64 to index
                    %c1_33 = arith.constant 1 : index
                    %c0_34 = arith.constant 0 : index
                    %c0_35 = arith.constant 0 : index
                    %dim_36 = memref.dim %24, %c0_35 : memref<?xi32>
                    %29 = arith.subi %dim_36, %28 : index
                    %subview_37 = memref.subview %24[%28] [%29] [%c1_33] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %reinterpret_cast_38 = memref.reinterpret_cast %subview_37 to offset: [0], sizes: [%29], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                    %c0_39 = arith.constant 0 : index
                    %30 = memref.load %alloca_3[%c0_39] : memref<1xi32>
                    %c1_i32_40 = arith.constant 1 : i32
                    %31 = arith.subi %30, %c1_i32_40 : i32
                    %32 = arith.index_cast %31 : i32 to index
                    %c0_41 = arith.constant 0 : index
                    %dim_42 = memref.dim %reinterpret_cast_38, %c0_41 : memref<?xi32>
                    %33 = arith.subi %dim_42, %32 : index
                    %c1_43 = arith.constant 1 : index
                    %subview_44 = memref.subview %reinterpret_cast_38[%32] [%33] [%c1_43] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %c0_45 = arith.constant 0 : index
                    %34 = memref.load %subview_44[%c0_45] : memref<?xi32, strided<[?], offset: ?>>
                    %35 = arith.cmpi sge, %23, %34 : i32
                    %36 = scf.if %35 -> (i32) {
                      %c0_60 = arith.constant 0 : index
                      %46 = memref.load %alloca_1[%c0_60] : memref<1xmemref<?xi32>>
                      %c0_61 = arith.constant 0 : index
                      %47 = memref.load %alloca_2[%c0_61] : memref<1xi32>
                      %48 = arith.extsi %47 : i32 to i64
                      %49 = arith.muli %48, %2 : i64
                      %50 = arith.index_cast %49 : i64 to index
                      %c1_62 = arith.constant 1 : index
                      %c0_63 = arith.constant 0 : index
                      %c0_64 = arith.constant 0 : index
                      %dim_65 = memref.dim %46, %c0_64 : memref<?xi32>
                      %51 = arith.subi %dim_65, %50 : index
                      %subview_66 = memref.subview %46[%50] [%51] [%c1_62] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %reinterpret_cast_67 = memref.reinterpret_cast %subview_66 to offset: [0], sizes: [%51], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                      %c0_68 = arith.constant 0 : index
                      %52 = memref.load %alloca_3[%c0_68] : memref<1xi32>
                      %53 = arith.index_cast %52 : i32 to index
                      %c0_69 = arith.constant 0 : index
                      %dim_70 = memref.dim %reinterpret_cast_67, %c0_69 : memref<?xi32>
                      %54 = arith.subi %dim_70, %53 : index
                      %c1_71 = arith.constant 1 : index
                      %subview_72 = memref.subview %reinterpret_cast_67[%53] [%54] [%c1_71] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %c0_73 = arith.constant 0 : index
                      %55 = memref.load %subview_72[%c0_73] : memref<?xi32, strided<[?], offset: ?>>
                      scf.yield %55 : i32
                    } else {
                      %c0_60 = arith.constant 0 : index
                      %46 = memref.load %alloca_1[%c0_60] : memref<1xmemref<?xi32>>
                      %c0_61 = arith.constant 0 : index
                      %47 = memref.load %alloca_2[%c0_61] : memref<1xi32>
                      %48 = arith.extsi %47 : i32 to i64
                      %49 = arith.muli %48, %2 : i64
                      %50 = arith.index_cast %49 : i64 to index
                      %c1_62 = arith.constant 1 : index
                      %c0_63 = arith.constant 0 : index
                      %c0_64 = arith.constant 0 : index
                      %dim_65 = memref.dim %46, %c0_64 : memref<?xi32>
                      %51 = arith.subi %dim_65, %50 : index
                      %subview_66 = memref.subview %46[%50] [%51] [%c1_62] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %reinterpret_cast_67 = memref.reinterpret_cast %subview_66 to offset: [0], sizes: [%51], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                      %c0_68 = arith.constant 0 : index
                      %52 = memref.load %alloca_3[%c0_68] : memref<1xi32>
                      %c1_i32_69 = arith.constant 1 : i32
                      %53 = arith.subi %52, %c1_i32_69 : i32
                      %54 = arith.index_cast %53 : i32 to index
                      %c0_70 = arith.constant 0 : index
                      %dim_71 = memref.dim %reinterpret_cast_67, %c0_70 : memref<?xi32>
                      %55 = arith.subi %dim_71, %54 : index
                      %c1_72 = arith.constant 1 : index
                      %subview_73 = memref.subview %reinterpret_cast_67[%54] [%55] [%c1_72] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %c0_74 = arith.constant 0 : index
                      %56 = memref.load %subview_73[%c0_74] : memref<?xi32, strided<[?], offset: ?>>
                      scf.yield %56 : i32
                    }
                    %c0_46 = arith.constant 0 : index
                    %37 = memref.load %alloca_1[%c0_46] : memref<1xmemref<?xi32>>
                    %c0_47 = arith.constant 0 : index
                    %38 = memref.load %alloca_2[%c0_47] : memref<1xi32>
                    %39 = arith.extsi %38 : i32 to i64
                    %40 = arith.muli %39, %2 : i64
                    %41 = arith.index_cast %40 : i64 to index
                    %c1_48 = arith.constant 1 : index
                    %c0_49 = arith.constant 0 : index
                    %c0_50 = arith.constant 0 : index
                    %dim_51 = memref.dim %37, %c0_50 : memref<?xi32>
                    %42 = arith.subi %dim_51, %41 : index
                    %subview_52 = memref.subview %37[%41] [%42] [%c1_48] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %reinterpret_cast_53 = memref.reinterpret_cast %subview_52 to offset: [0], sizes: [%42], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                    %c0_54 = arith.constant 0 : index
                    %43 = memref.load %alloca_3[%c0_54] : memref<1xi32>
                    %44 = arith.index_cast %43 : i32 to index
                    %c0_55 = arith.constant 0 : index
                    %dim_56 = memref.dim %reinterpret_cast_53, %c0_55 : memref<?xi32>
                    %45 = arith.subi %dim_56, %44 : index
                    %c1_57 = arith.constant 1 : index
                    %subview_58 = memref.subview %reinterpret_cast_53[%44] [%45] [%c1_57] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %c0_59 = arith.constant 0 : index
                    memref.store %36, %subview_58[%c0_59] : memref<?xi32, strided<[?], offset: ?>>
                  }
                }
                memref.alloca_scope  {
                  %c0_18 = arith.constant 0 : index
                  %11 = memref.load %alloca_2[%c0_18] : memref<1xi32>
                  %c1_i32_19 = arith.constant 1 : i32
                  %12 = arith.addi %11, %c1_i32_19 : i32
                  %c0_20 = arith.constant 0 : index
                  %13 = memref.load %alloca[%c0_20] : memref<1xi32>
                  %14 = arith.cmpi slt, %12, %13 : i32
                  scf.if %14 {
                    %c0_21 = arith.constant 0 : index
                    %15 = memref.load %alloca_1[%c0_21] : memref<1xmemref<?xi32>>
                    %c0_22 = arith.constant 0 : index
                    %16 = memref.load %alloca_2[%c0_22] : memref<1xi32>
                    %17 = arith.extsi %16 : i32 to i64
                    %18 = arith.muli %17, %2 : i64
                    %19 = arith.index_cast %18 : i64 to index
                    %c1 = arith.constant 1 : index
                    %c0_23 = arith.constant 0 : index
                    %c0_24 = arith.constant 0 : index
                    %dim = memref.dim %15, %c0_24 : memref<?xi32>
                    %20 = arith.subi %dim, %19 : index
                    %subview = memref.subview %15[%19] [%20] [%c1] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%20], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                    %c0_25 = arith.constant 0 : index
                    %21 = memref.load %alloca_3[%c0_25] : memref<1xi32>
                    %22 = arith.index_cast %21 : i32 to index
                    %c0_26 = arith.constant 0 : index
                    %dim_27 = memref.dim %reinterpret_cast, %c0_26 : memref<?xi32>
                    %23 = arith.subi %dim_27, %22 : index
                    %c1_28 = arith.constant 1 : index
                    %subview_29 = memref.subview %reinterpret_cast[%22] [%23] [%c1_28] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %c0_30 = arith.constant 0 : index
                    %24 = memref.load %subview_29[%c0_30] : memref<?xi32, strided<[?], offset: ?>>
                    %c0_31 = arith.constant 0 : index
                    %25 = memref.load %alloca_1[%c0_31] : memref<1xmemref<?xi32>>
                    %c0_32 = arith.constant 0 : index
                    %26 = memref.load %alloca_2[%c0_32] : memref<1xi32>
                    %c1_i32_33 = arith.constant 1 : i32
                    %27 = arith.addi %26, %c1_i32_33 : i32
                    %28 = arith.extsi %27 : i32 to i64
                    %29 = arith.muli %28, %2 : i64
                    %30 = arith.index_cast %29 : i64 to index
                    %c1_34 = arith.constant 1 : index
                    %c0_35 = arith.constant 0 : index
                    %c0_36 = arith.constant 0 : index
                    %dim_37 = memref.dim %25, %c0_36 : memref<?xi32>
                    %31 = arith.subi %dim_37, %30 : index
                    %subview_38 = memref.subview %25[%30] [%31] [%c1_34] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %reinterpret_cast_39 = memref.reinterpret_cast %subview_38 to offset: [0], sizes: [%31], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                    %c0_40 = arith.constant 0 : index
                    %32 = memref.load %alloca_3[%c0_40] : memref<1xi32>
                    %33 = arith.index_cast %32 : i32 to index
                    %c0_41 = arith.constant 0 : index
                    %dim_42 = memref.dim %reinterpret_cast_39, %c0_41 : memref<?xi32>
                    %34 = arith.subi %dim_42, %33 : index
                    %c1_43 = arith.constant 1 : index
                    %subview_44 = memref.subview %reinterpret_cast_39[%33] [%34] [%c1_43] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %c0_45 = arith.constant 0 : index
                    %35 = memref.load %subview_44[%c0_45] : memref<?xi32, strided<[?], offset: ?>>
                    %36 = arith.cmpi sge, %24, %35 : i32
                    %37 = scf.if %36 -> (i32) {
                      %c0_60 = arith.constant 0 : index
                      %47 = memref.load %alloca_1[%c0_60] : memref<1xmemref<?xi32>>
                      %c0_61 = arith.constant 0 : index
                      %48 = memref.load %alloca_2[%c0_61] : memref<1xi32>
                      %49 = arith.extsi %48 : i32 to i64
                      %50 = arith.muli %49, %2 : i64
                      %51 = arith.index_cast %50 : i64 to index
                      %c1_62 = arith.constant 1 : index
                      %c0_63 = arith.constant 0 : index
                      %c0_64 = arith.constant 0 : index
                      %dim_65 = memref.dim %47, %c0_64 : memref<?xi32>
                      %52 = arith.subi %dim_65, %51 : index
                      %subview_66 = memref.subview %47[%51] [%52] [%c1_62] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %reinterpret_cast_67 = memref.reinterpret_cast %subview_66 to offset: [0], sizes: [%52], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                      %c0_68 = arith.constant 0 : index
                      %53 = memref.load %alloca_3[%c0_68] : memref<1xi32>
                      %54 = arith.index_cast %53 : i32 to index
                      %c0_69 = arith.constant 0 : index
                      %dim_70 = memref.dim %reinterpret_cast_67, %c0_69 : memref<?xi32>
                      %55 = arith.subi %dim_70, %54 : index
                      %c1_71 = arith.constant 1 : index
                      %subview_72 = memref.subview %reinterpret_cast_67[%54] [%55] [%c1_71] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %c0_73 = arith.constant 0 : index
                      %56 = memref.load %subview_72[%c0_73] : memref<?xi32, strided<[?], offset: ?>>
                      scf.yield %56 : i32
                    } else {
                      %c0_60 = arith.constant 0 : index
                      %47 = memref.load %alloca_1[%c0_60] : memref<1xmemref<?xi32>>
                      %c0_61 = arith.constant 0 : index
                      %48 = memref.load %alloca_2[%c0_61] : memref<1xi32>
                      %c1_i32_62 = arith.constant 1 : i32
                      %49 = arith.addi %48, %c1_i32_62 : i32
                      %50 = arith.extsi %49 : i32 to i64
                      %51 = arith.muli %50, %2 : i64
                      %52 = arith.index_cast %51 : i64 to index
                      %c1_63 = arith.constant 1 : index
                      %c0_64 = arith.constant 0 : index
                      %c0_65 = arith.constant 0 : index
                      %dim_66 = memref.dim %47, %c0_65 : memref<?xi32>
                      %53 = arith.subi %dim_66, %52 : index
                      %subview_67 = memref.subview %47[%52] [%53] [%c1_63] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %reinterpret_cast_68 = memref.reinterpret_cast %subview_67 to offset: [0], sizes: [%53], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                      %c0_69 = arith.constant 0 : index
                      %54 = memref.load %alloca_3[%c0_69] : memref<1xi32>
                      %55 = arith.index_cast %54 : i32 to index
                      %c0_70 = arith.constant 0 : index
                      %dim_71 = memref.dim %reinterpret_cast_68, %c0_70 : memref<?xi32>
                      %56 = arith.subi %dim_71, %55 : index
                      %c1_72 = arith.constant 1 : index
                      %subview_73 = memref.subview %reinterpret_cast_68[%55] [%56] [%c1_72] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %c0_74 = arith.constant 0 : index
                      %57 = memref.load %subview_73[%c0_74] : memref<?xi32, strided<[?], offset: ?>>
                      scf.yield %57 : i32
                    }
                    %c0_46 = arith.constant 0 : index
                    %38 = memref.load %alloca_1[%c0_46] : memref<1xmemref<?xi32>>
                    %c0_47 = arith.constant 0 : index
                    %39 = memref.load %alloca_2[%c0_47] : memref<1xi32>
                    %40 = arith.extsi %39 : i32 to i64
                    %41 = arith.muli %40, %2 : i64
                    %42 = arith.index_cast %41 : i64 to index
                    %c1_48 = arith.constant 1 : index
                    %c0_49 = arith.constant 0 : index
                    %c0_50 = arith.constant 0 : index
                    %dim_51 = memref.dim %38, %c0_50 : memref<?xi32>
                    %43 = arith.subi %dim_51, %42 : index
                    %subview_52 = memref.subview %38[%42] [%43] [%c1_48] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %reinterpret_cast_53 = memref.reinterpret_cast %subview_52 to offset: [0], sizes: [%43], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                    %c0_54 = arith.constant 0 : index
                    %44 = memref.load %alloca_3[%c0_54] : memref<1xi32>
                    %45 = arith.index_cast %44 : i32 to index
                    %c0_55 = arith.constant 0 : index
                    %dim_56 = memref.dim %reinterpret_cast_53, %c0_55 : memref<?xi32>
                    %46 = arith.subi %dim_56, %45 : index
                    %c1_57 = arith.constant 1 : index
                    %subview_58 = memref.subview %reinterpret_cast_53[%45] [%46] [%c1_57] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                    %c0_59 = arith.constant 0 : index
                    memref.store %37, %subview_58[%c0_59] : memref<?xi32, strided<[?], offset: ?>>
                  }
                }
                memref.alloca_scope  {
                  %c0_18 = arith.constant 0 : index
                  %11 = memref.load %alloca_3[%c0_18] : memref<1xi32>
                  %c1_i32_19 = arith.constant 1 : i32
                  %12 = arith.subi %11, %c1_i32_19 : i32
                  %c0_i32_20 = arith.constant 0 : i32
                  %13 = arith.cmpi sge, %12, %c0_i32_20 : i32
                  %14 = scf.if %13 -> (i1) {
                    %c0_21 = arith.constant 0 : index
                    %15 = memref.load %alloca_2[%c0_21] : memref<1xi32>
                    %c1_i32_22 = arith.constant 1 : i32
                    %16 = arith.addi %15, %c1_i32_22 : i32
                    %c0_23 = arith.constant 0 : index
                    %17 = memref.load %alloca[%c0_23] : memref<1xi32>
                    %18 = arith.cmpi slt, %16, %17 : i32
                    scf.yield %18 : i1
                  } else {
                    %false = arith.constant false
                    scf.yield %false : i1
                  }
                  scf.if %14 {
                    memref.alloca_scope  {
                      %c0_21 = arith.constant 0 : index
                      %15 = memref.load %alloca_2[%c0_21] : memref<1xi32>
                      %c0_22 = arith.constant 0 : index
                      %16 = memref.load %alloca_3[%c0_22] : memref<1xi32>
                      %c1_i32_23 = arith.constant 1 : i32
                      %17 = arith.subi %16, %c1_i32_23 : i32
                      %18 = arith.cmpi slt, %15, %17 : i32
                      scf.if %18 {
                        %c0_24 = arith.constant 0 : index
                        %19 = memref.load %alloca_1[%c0_24] : memref<1xmemref<?xi32>>
                        %c0_25 = arith.constant 0 : index
                        %20 = memref.load %alloca_2[%c0_25] : memref<1xi32>
                        %21 = arith.extsi %20 : i32 to i64
                        %22 = arith.muli %21, %2 : i64
                        %23 = arith.index_cast %22 : i64 to index
                        %c1 = arith.constant 1 : index
                        %c0_26 = arith.constant 0 : index
                        %c0_27 = arith.constant 0 : index
                        %dim = memref.dim %19, %c0_27 : memref<?xi32>
                        %24 = arith.subi %dim, %23 : index
                        %subview = memref.subview %19[%23] [%24] [%c1] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%24], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                        %c0_28 = arith.constant 0 : index
                        %25 = memref.load %alloca_3[%c0_28] : memref<1xi32>
                        %26 = arith.index_cast %25 : i32 to index
                        %c0_29 = arith.constant 0 : index
                        %dim_30 = memref.dim %reinterpret_cast, %c0_29 : memref<?xi32>
                        %27 = arith.subi %dim_30, %26 : index
                        %c1_31 = arith.constant 1 : index
                        %subview_32 = memref.subview %reinterpret_cast[%26] [%27] [%c1_31] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %c0_33 = arith.constant 0 : index
                        %28 = memref.load %subview_32[%c0_33] : memref<?xi32, strided<[?], offset: ?>>
                        %c0_34 = arith.constant 0 : index
                        %29 = memref.load %alloca_1[%c0_34] : memref<1xmemref<?xi32>>
                        %c0_35 = arith.constant 0 : index
                        %30 = memref.load %alloca_2[%c0_35] : memref<1xi32>
                        %c1_i32_36 = arith.constant 1 : i32
                        %31 = arith.addi %30, %c1_i32_36 : i32
                        %32 = arith.extsi %31 : i32 to i64
                        %33 = arith.muli %32, %2 : i64
                        %34 = arith.index_cast %33 : i64 to index
                        %c1_37 = arith.constant 1 : index
                        %c0_38 = arith.constant 0 : index
                        %c0_39 = arith.constant 0 : index
                        %dim_40 = memref.dim %29, %c0_39 : memref<?xi32>
                        %35 = arith.subi %dim_40, %34 : index
                        %subview_41 = memref.subview %29[%34] [%35] [%c1_37] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %reinterpret_cast_42 = memref.reinterpret_cast %subview_41 to offset: [0], sizes: [%35], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                        %c0_43 = arith.constant 0 : index
                        %36 = memref.load %alloca_3[%c0_43] : memref<1xi32>
                        %c1_i32_44 = arith.constant 1 : i32
                        %37 = arith.subi %36, %c1_i32_44 : i32
                        %38 = arith.index_cast %37 : i32 to index
                        %c0_45 = arith.constant 0 : index
                        %dim_46 = memref.dim %reinterpret_cast_42, %c0_45 : memref<?xi32>
                        %39 = arith.subi %dim_46, %38 : index
                        %c1_47 = arith.constant 1 : index
                        %subview_48 = memref.subview %reinterpret_cast_42[%38] [%39] [%c1_47] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %c0_49 = arith.constant 0 : index
                        %40 = memref.load %subview_48[%c0_49] : memref<?xi32, strided<[?], offset: ?>>
                        %c0_50 = arith.constant 0 : index
                        %41 = memref.load %alloca_0[%c0_50] : memref<1xmemref<?xi8>>
                        %c0_51 = arith.constant 0 : index
                        %42 = memref.load %alloca_2[%c0_51] : memref<1xi32>
                        %43 = arith.index_cast %42 : i32 to index
                        %c0_52 = arith.constant 0 : index
                        %dim_53 = memref.dim %41, %c0_52 : memref<?xi8>
                        %44 = arith.subi %dim_53, %43 : index
                        %c1_54 = arith.constant 1 : index
                        %subview_55 = memref.subview %41[%43] [%44] [%c1_54] : memref<?xi8> to memref<?xi8, strided<[?], offset: ?>>
                        %c0_56 = arith.constant 0 : index
                        %45 = memref.load %subview_55[%c0_56] : memref<?xi8, strided<[?], offset: ?>>
                        %46 = arith.extsi %45 : i8 to i32
                        %c0_57 = arith.constant 0 : index
                        %47 = memref.load %alloca_0[%c0_57] : memref<1xmemref<?xi8>>
                        %c0_58 = arith.constant 0 : index
                        %48 = memref.load %alloca_3[%c0_58] : memref<1xi32>
                        %49 = arith.index_cast %48 : i32 to index
                        %c0_59 = arith.constant 0 : index
                        %dim_60 = memref.dim %47, %c0_59 : memref<?xi8>
                        %50 = arith.subi %dim_60, %49 : index
                        %c1_61 = arith.constant 1 : index
                        %subview_62 = memref.subview %47[%49] [%50] [%c1_61] : memref<?xi8> to memref<?xi8, strided<[?], offset: ?>>
                        %c0_63 = arith.constant 0 : index
                        %51 = memref.load %subview_62[%c0_63] : memref<?xi8, strided<[?], offset: ?>>
                        %52 = arith.extsi %51 : i8 to i32
                        %53 = arith.addi %46, %52 : i32
                        %c3_i32 = arith.constant 3 : i32
                        %54 = arith.cmpi eq, %53, %c3_i32 : i32
                        %c1_i32_64 = arith.constant 1 : i32
                        %c0_i32_65 = arith.constant 0 : i32
                        %55 = arith.select %54, %c1_i32_64, %c0_i32_65 : i32
                        %56 = arith.addi %40, %55 : i32
                        %57 = arith.cmpi sge, %28, %56 : i32
                        %58 = scf.if %57 -> (i32) {
                          %c0_80 = arith.constant 0 : index
                          %68 = memref.load %alloca_1[%c0_80] : memref<1xmemref<?xi32>>
                          %c0_81 = arith.constant 0 : index
                          %69 = memref.load %alloca_2[%c0_81] : memref<1xi32>
                          %70 = arith.extsi %69 : i32 to i64
                          %71 = arith.muli %70, %2 : i64
                          %72 = arith.index_cast %71 : i64 to index
                          %c1_82 = arith.constant 1 : index
                          %c0_83 = arith.constant 0 : index
                          %c0_84 = arith.constant 0 : index
                          %dim_85 = memref.dim %68, %c0_84 : memref<?xi32>
                          %73 = arith.subi %dim_85, %72 : index
                          %subview_86 = memref.subview %68[%72] [%73] [%c1_82] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                          %reinterpret_cast_87 = memref.reinterpret_cast %subview_86 to offset: [0], sizes: [%73], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                          %c0_88 = arith.constant 0 : index
                          %74 = memref.load %alloca_3[%c0_88] : memref<1xi32>
                          %75 = arith.index_cast %74 : i32 to index
                          %c0_89 = arith.constant 0 : index
                          %dim_90 = memref.dim %reinterpret_cast_87, %c0_89 : memref<?xi32>
                          %76 = arith.subi %dim_90, %75 : index
                          %c1_91 = arith.constant 1 : index
                          %subview_92 = memref.subview %reinterpret_cast_87[%75] [%76] [%c1_91] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                          %c0_93 = arith.constant 0 : index
                          %77 = memref.load %subview_92[%c0_93] : memref<?xi32, strided<[?], offset: ?>>
                          scf.yield %77 : i32
                        } else {
                          %c0_80 = arith.constant 0 : index
                          %68 = memref.load %alloca_1[%c0_80] : memref<1xmemref<?xi32>>
                          %c0_81 = arith.constant 0 : index
                          %69 = memref.load %alloca_2[%c0_81] : memref<1xi32>
                          %c1_i32_82 = arith.constant 1 : i32
                          %70 = arith.addi %69, %c1_i32_82 : i32
                          %71 = arith.extsi %70 : i32 to i64
                          %72 = arith.muli %71, %2 : i64
                          %73 = arith.index_cast %72 : i64 to index
                          %c1_83 = arith.constant 1 : index
                          %c0_84 = arith.constant 0 : index
                          %c0_85 = arith.constant 0 : index
                          %dim_86 = memref.dim %68, %c0_85 : memref<?xi32>
                          %74 = arith.subi %dim_86, %73 : index
                          %subview_87 = memref.subview %68[%73] [%74] [%c1_83] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                          %reinterpret_cast_88 = memref.reinterpret_cast %subview_87 to offset: [0], sizes: [%74], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                          %c0_89 = arith.constant 0 : index
                          %75 = memref.load %alloca_3[%c0_89] : memref<1xi32>
                          %c1_i32_90 = arith.constant 1 : i32
                          %76 = arith.subi %75, %c1_i32_90 : i32
                          %77 = arith.index_cast %76 : i32 to index
                          %c0_91 = arith.constant 0 : index
                          %dim_92 = memref.dim %reinterpret_cast_88, %c0_91 : memref<?xi32>
                          %78 = arith.subi %dim_92, %77 : index
                          %c1_93 = arith.constant 1 : index
                          %subview_94 = memref.subview %reinterpret_cast_88[%77] [%78] [%c1_93] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                          %c0_95 = arith.constant 0 : index
                          %79 = memref.load %subview_94[%c0_95] : memref<?xi32, strided<[?], offset: ?>>
                          %c0_96 = arith.constant 0 : index
                          %80 = memref.load %alloca_0[%c0_96] : memref<1xmemref<?xi8>>
                          %c0_97 = arith.constant 0 : index
                          %81 = memref.load %alloca_2[%c0_97] : memref<1xi32>
                          %82 = arith.index_cast %81 : i32 to index
                          %c0_98 = arith.constant 0 : index
                          %dim_99 = memref.dim %80, %c0_98 : memref<?xi8>
                          %83 = arith.subi %dim_99, %82 : index
                          %c1_100 = arith.constant 1 : index
                          %subview_101 = memref.subview %80[%82] [%83] [%c1_100] : memref<?xi8> to memref<?xi8, strided<[?], offset: ?>>
                          %c0_102 = arith.constant 0 : index
                          %84 = memref.load %subview_101[%c0_102] : memref<?xi8, strided<[?], offset: ?>>
                          %85 = arith.extsi %84 : i8 to i32
                          %c0_103 = arith.constant 0 : index
                          %86 = memref.load %alloca_0[%c0_103] : memref<1xmemref<?xi8>>
                          %c0_104 = arith.constant 0 : index
                          %87 = memref.load %alloca_3[%c0_104] : memref<1xi32>
                          %88 = arith.index_cast %87 : i32 to index
                          %c0_105 = arith.constant 0 : index
                          %dim_106 = memref.dim %86, %c0_105 : memref<?xi8>
                          %89 = arith.subi %dim_106, %88 : index
                          %c1_107 = arith.constant 1 : index
                          %subview_108 = memref.subview %86[%88] [%89] [%c1_107] : memref<?xi8> to memref<?xi8, strided<[?], offset: ?>>
                          %c0_109 = arith.constant 0 : index
                          %90 = memref.load %subview_108[%c0_109] : memref<?xi8, strided<[?], offset: ?>>
                          %91 = arith.extsi %90 : i8 to i32
                          %92 = arith.addi %85, %91 : i32
                          %c3_i32_110 = arith.constant 3 : i32
                          %93 = arith.cmpi eq, %92, %c3_i32_110 : i32
                          %c1_i32_111 = arith.constant 1 : i32
                          %c0_i32_112 = arith.constant 0 : i32
                          %94 = arith.select %93, %c1_i32_111, %c0_i32_112 : i32
                          %95 = arith.addi %79, %94 : i32
                          scf.yield %95 : i32
                        }
                        %c0_66 = arith.constant 0 : index
                        %59 = memref.load %alloca_1[%c0_66] : memref<1xmemref<?xi32>>
                        %c0_67 = arith.constant 0 : index
                        %60 = memref.load %alloca_2[%c0_67] : memref<1xi32>
                        %61 = arith.extsi %60 : i32 to i64
                        %62 = arith.muli %61, %2 : i64
                        %63 = arith.index_cast %62 : i64 to index
                        %c1_68 = arith.constant 1 : index
                        %c0_69 = arith.constant 0 : index
                        %c0_70 = arith.constant 0 : index
                        %dim_71 = memref.dim %59, %c0_70 : memref<?xi32>
                        %64 = arith.subi %dim_71, %63 : index
                        %subview_72 = memref.subview %59[%63] [%64] [%c1_68] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %reinterpret_cast_73 = memref.reinterpret_cast %subview_72 to offset: [0], sizes: [%64], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                        %c0_74 = arith.constant 0 : index
                        %65 = memref.load %alloca_3[%c0_74] : memref<1xi32>
                        %66 = arith.index_cast %65 : i32 to index
                        %c0_75 = arith.constant 0 : index
                        %dim_76 = memref.dim %reinterpret_cast_73, %c0_75 : memref<?xi32>
                        %67 = arith.subi %dim_76, %66 : index
                        %c1_77 = arith.constant 1 : index
                        %subview_78 = memref.subview %reinterpret_cast_73[%66] [%67] [%c1_77] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %c0_79 = arith.constant 0 : index
                        memref.store %58, %subview_78[%c0_79] : memref<?xi32, strided<[?], offset: ?>>
                      } else {
                        %c0_24 = arith.constant 0 : index
                        %19 = memref.load %alloca_1[%c0_24] : memref<1xmemref<?xi32>>
                        %c0_25 = arith.constant 0 : index
                        %20 = memref.load %alloca_2[%c0_25] : memref<1xi32>
                        %21 = arith.extsi %20 : i32 to i64
                        %22 = arith.muli %21, %2 : i64
                        %23 = arith.index_cast %22 : i64 to index
                        %c1 = arith.constant 1 : index
                        %c0_26 = arith.constant 0 : index
                        %c0_27 = arith.constant 0 : index
                        %dim = memref.dim %19, %c0_27 : memref<?xi32>
                        %24 = arith.subi %dim, %23 : index
                        %subview = memref.subview %19[%23] [%24] [%c1] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%24], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                        %c0_28 = arith.constant 0 : index
                        %25 = memref.load %alloca_3[%c0_28] : memref<1xi32>
                        %26 = arith.index_cast %25 : i32 to index
                        %c0_29 = arith.constant 0 : index
                        %dim_30 = memref.dim %reinterpret_cast, %c0_29 : memref<?xi32>
                        %27 = arith.subi %dim_30, %26 : index
                        %c1_31 = arith.constant 1 : index
                        %subview_32 = memref.subview %reinterpret_cast[%26] [%27] [%c1_31] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %c0_33 = arith.constant 0 : index
                        %28 = memref.load %subview_32[%c0_33] : memref<?xi32, strided<[?], offset: ?>>
                        %c0_34 = arith.constant 0 : index
                        %29 = memref.load %alloca_1[%c0_34] : memref<1xmemref<?xi32>>
                        %c0_35 = arith.constant 0 : index
                        %30 = memref.load %alloca_2[%c0_35] : memref<1xi32>
                        %c1_i32_36 = arith.constant 1 : i32
                        %31 = arith.addi %30, %c1_i32_36 : i32
                        %32 = arith.extsi %31 : i32 to i64
                        %33 = arith.muli %32, %2 : i64
                        %34 = arith.index_cast %33 : i64 to index
                        %c1_37 = arith.constant 1 : index
                        %c0_38 = arith.constant 0 : index
                        %c0_39 = arith.constant 0 : index
                        %dim_40 = memref.dim %29, %c0_39 : memref<?xi32>
                        %35 = arith.subi %dim_40, %34 : index
                        %subview_41 = memref.subview %29[%34] [%35] [%c1_37] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %reinterpret_cast_42 = memref.reinterpret_cast %subview_41 to offset: [0], sizes: [%35], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                        %c0_43 = arith.constant 0 : index
                        %36 = memref.load %alloca_3[%c0_43] : memref<1xi32>
                        %c1_i32_44 = arith.constant 1 : i32
                        %37 = arith.subi %36, %c1_i32_44 : i32
                        %38 = arith.index_cast %37 : i32 to index
                        %c0_45 = arith.constant 0 : index
                        %dim_46 = memref.dim %reinterpret_cast_42, %c0_45 : memref<?xi32>
                        %39 = arith.subi %dim_46, %38 : index
                        %c1_47 = arith.constant 1 : index
                        %subview_48 = memref.subview %reinterpret_cast_42[%38] [%39] [%c1_47] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %c0_49 = arith.constant 0 : index
                        %40 = memref.load %subview_48[%c0_49] : memref<?xi32, strided<[?], offset: ?>>
                        %41 = arith.cmpi sge, %28, %40 : i32
                        %42 = scf.if %41 -> (i32) {
                          %c0_64 = arith.constant 0 : index
                          %52 = memref.load %alloca_1[%c0_64] : memref<1xmemref<?xi32>>
                          %c0_65 = arith.constant 0 : index
                          %53 = memref.load %alloca_2[%c0_65] : memref<1xi32>
                          %54 = arith.extsi %53 : i32 to i64
                          %55 = arith.muli %54, %2 : i64
                          %56 = arith.index_cast %55 : i64 to index
                          %c1_66 = arith.constant 1 : index
                          %c0_67 = arith.constant 0 : index
                          %c0_68 = arith.constant 0 : index
                          %dim_69 = memref.dim %52, %c0_68 : memref<?xi32>
                          %57 = arith.subi %dim_69, %56 : index
                          %subview_70 = memref.subview %52[%56] [%57] [%c1_66] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                          %reinterpret_cast_71 = memref.reinterpret_cast %subview_70 to offset: [0], sizes: [%57], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                          %c0_72 = arith.constant 0 : index
                          %58 = memref.load %alloca_3[%c0_72] : memref<1xi32>
                          %59 = arith.index_cast %58 : i32 to index
                          %c0_73 = arith.constant 0 : index
                          %dim_74 = memref.dim %reinterpret_cast_71, %c0_73 : memref<?xi32>
                          %60 = arith.subi %dim_74, %59 : index
                          %c1_75 = arith.constant 1 : index
                          %subview_76 = memref.subview %reinterpret_cast_71[%59] [%60] [%c1_75] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                          %c0_77 = arith.constant 0 : index
                          %61 = memref.load %subview_76[%c0_77] : memref<?xi32, strided<[?], offset: ?>>
                          scf.yield %61 : i32
                        } else {
                          %c0_64 = arith.constant 0 : index
                          %52 = memref.load %alloca_1[%c0_64] : memref<1xmemref<?xi32>>
                          %c0_65 = arith.constant 0 : index
                          %53 = memref.load %alloca_2[%c0_65] : memref<1xi32>
                          %c1_i32_66 = arith.constant 1 : i32
                          %54 = arith.addi %53, %c1_i32_66 : i32
                          %55 = arith.extsi %54 : i32 to i64
                          %56 = arith.muli %55, %2 : i64
                          %57 = arith.index_cast %56 : i64 to index
                          %c1_67 = arith.constant 1 : index
                          %c0_68 = arith.constant 0 : index
                          %c0_69 = arith.constant 0 : index
                          %dim_70 = memref.dim %52, %c0_69 : memref<?xi32>
                          %58 = arith.subi %dim_70, %57 : index
                          %subview_71 = memref.subview %52[%57] [%58] [%c1_67] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                          %reinterpret_cast_72 = memref.reinterpret_cast %subview_71 to offset: [0], sizes: [%58], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                          %c0_73 = arith.constant 0 : index
                          %59 = memref.load %alloca_3[%c0_73] : memref<1xi32>
                          %c1_i32_74 = arith.constant 1 : i32
                          %60 = arith.subi %59, %c1_i32_74 : i32
                          %61 = arith.index_cast %60 : i32 to index
                          %c0_75 = arith.constant 0 : index
                          %dim_76 = memref.dim %reinterpret_cast_72, %c0_75 : memref<?xi32>
                          %62 = arith.subi %dim_76, %61 : index
                          %c1_77 = arith.constant 1 : index
                          %subview_78 = memref.subview %reinterpret_cast_72[%61] [%62] [%c1_77] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                          %c0_79 = arith.constant 0 : index
                          %63 = memref.load %subview_78[%c0_79] : memref<?xi32, strided<[?], offset: ?>>
                          scf.yield %63 : i32
                        }
                        %c0_50 = arith.constant 0 : index
                        %43 = memref.load %alloca_1[%c0_50] : memref<1xmemref<?xi32>>
                        %c0_51 = arith.constant 0 : index
                        %44 = memref.load %alloca_2[%c0_51] : memref<1xi32>
                        %45 = arith.extsi %44 : i32 to i64
                        %46 = arith.muli %45, %2 : i64
                        %47 = arith.index_cast %46 : i64 to index
                        %c1_52 = arith.constant 1 : index
                        %c0_53 = arith.constant 0 : index
                        %c0_54 = arith.constant 0 : index
                        %dim_55 = memref.dim %43, %c0_54 : memref<?xi32>
                        %48 = arith.subi %dim_55, %47 : index
                        %subview_56 = memref.subview %43[%47] [%48] [%c1_52] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %reinterpret_cast_57 = memref.reinterpret_cast %subview_56 to offset: [0], sizes: [%48], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                        %c0_58 = arith.constant 0 : index
                        %49 = memref.load %alloca_3[%c0_58] : memref<1xi32>
                        %50 = arith.index_cast %49 : i32 to index
                        %c0_59 = arith.constant 0 : index
                        %dim_60 = memref.dim %reinterpret_cast_57, %c0_59 : memref<?xi32>
                        %51 = arith.subi %dim_60, %50 : index
                        %c1_61 = arith.constant 1 : index
                        %subview_62 = memref.subview %reinterpret_cast_57[%50] [%51] [%c1_61] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %c0_63 = arith.constant 0 : index
                        memref.store %42, %subview_62[%c0_63] : memref<?xi32, strided<[?], offset: ?>>
                      }
                    }
                  }
                }
                memref.alloca_scope  {
                  %c0_18 = arith.constant 0 : index
                  %11 = memref.load %alloca_2[%c0_18] : memref<1xi32>
                  %c1_i32_19 = arith.constant 1 : i32
                  %12 = arith.addi %11, %c1_i32_19 : i32
                  %c0_20 = arith.constant 0 : index
                  memref.store %12, %alloca_4[%c0_20] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_21 = arith.constant 0 : index
                    %13 = memref.load %alloca_4[%c0_21] : memref<1xi32>
                    %c0_22 = arith.constant 0 : index
                    %14 = memref.load %alloca_3[%c0_22] : memref<1xi32>
                    %15 = arith.cmpi slt, %13, %14 : i32
                    scf.condition(%15)
                  } do {
                    memref.alloca_scope  {
                      %c0_24 = arith.constant 0 : index
                      %15 = memref.load %alloca_1[%c0_24] : memref<1xmemref<?xi32>>
                      %c0_25 = arith.constant 0 : index
                      %16 = memref.load %alloca_2[%c0_25] : memref<1xi32>
                      %17 = arith.extsi %16 : i32 to i64
                      %18 = arith.muli %17, %2 : i64
                      %19 = arith.index_cast %18 : i64 to index
                      %c1 = arith.constant 1 : index
                      %c0_26 = arith.constant 0 : index
                      %c0_27 = arith.constant 0 : index
                      %dim = memref.dim %15, %c0_27 : memref<?xi32>
                      %20 = arith.subi %dim, %19 : index
                      %subview = memref.subview %15[%19] [%20] [%c1] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%20], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                      %c0_28 = arith.constant 0 : index
                      %21 = memref.load %alloca_3[%c0_28] : memref<1xi32>
                      %22 = arith.index_cast %21 : i32 to index
                      %c0_29 = arith.constant 0 : index
                      %dim_30 = memref.dim %reinterpret_cast, %c0_29 : memref<?xi32>
                      %23 = arith.subi %dim_30, %22 : index
                      %c1_31 = arith.constant 1 : index
                      %subview_32 = memref.subview %reinterpret_cast[%22] [%23] [%c1_31] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %c0_33 = arith.constant 0 : index
                      %24 = memref.load %subview_32[%c0_33] : memref<?xi32, strided<[?], offset: ?>>
                      %c0_34 = arith.constant 0 : index
                      %25 = memref.load %alloca_1[%c0_34] : memref<1xmemref<?xi32>>
                      %c0_35 = arith.constant 0 : index
                      %26 = memref.load %alloca_2[%c0_35] : memref<1xi32>
                      %27 = arith.extsi %26 : i32 to i64
                      %28 = arith.muli %27, %2 : i64
                      %29 = arith.index_cast %28 : i64 to index
                      %c1_36 = arith.constant 1 : index
                      %c0_37 = arith.constant 0 : index
                      %c0_38 = arith.constant 0 : index
                      %dim_39 = memref.dim %25, %c0_38 : memref<?xi32>
                      %30 = arith.subi %dim_39, %29 : index
                      %subview_40 = memref.subview %25[%29] [%30] [%c1_36] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %reinterpret_cast_41 = memref.reinterpret_cast %subview_40 to offset: [0], sizes: [%30], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                      %c0_42 = arith.constant 0 : index
                      %31 = memref.load %alloca_4[%c0_42] : memref<1xi32>
                      %32 = arith.index_cast %31 : i32 to index
                      %c0_43 = arith.constant 0 : index
                      %dim_44 = memref.dim %reinterpret_cast_41, %c0_43 : memref<?xi32>
                      %33 = arith.subi %dim_44, %32 : index
                      %c1_45 = arith.constant 1 : index
                      %subview_46 = memref.subview %reinterpret_cast_41[%32] [%33] [%c1_45] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %c0_47 = arith.constant 0 : index
                      %34 = memref.load %subview_46[%c0_47] : memref<?xi32, strided<[?], offset: ?>>
                      %c0_48 = arith.constant 0 : index
                      %35 = memref.load %alloca_1[%c0_48] : memref<1xmemref<?xi32>>
                      %c0_49 = arith.constant 0 : index
                      %36 = memref.load %alloca_4[%c0_49] : memref<1xi32>
                      %c1_i32_50 = arith.constant 1 : i32
                      %37 = arith.addi %36, %c1_i32_50 : i32
                      %38 = arith.extsi %37 : i32 to i64
                      %39 = arith.muli %38, %2 : i64
                      %40 = arith.index_cast %39 : i64 to index
                      %c1_51 = arith.constant 1 : index
                      %c0_52 = arith.constant 0 : index
                      %c0_53 = arith.constant 0 : index
                      %dim_54 = memref.dim %35, %c0_53 : memref<?xi32>
                      %41 = arith.subi %dim_54, %40 : index
                      %subview_55 = memref.subview %35[%40] [%41] [%c1_51] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %reinterpret_cast_56 = memref.reinterpret_cast %subview_55 to offset: [0], sizes: [%41], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                      %c0_57 = arith.constant 0 : index
                      %42 = memref.load %alloca_3[%c0_57] : memref<1xi32>
                      %43 = arith.index_cast %42 : i32 to index
                      %c0_58 = arith.constant 0 : index
                      %dim_59 = memref.dim %reinterpret_cast_56, %c0_58 : memref<?xi32>
                      %44 = arith.subi %dim_59, %43 : index
                      %c1_60 = arith.constant 1 : index
                      %subview_61 = memref.subview %reinterpret_cast_56[%43] [%44] [%c1_60] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %c0_62 = arith.constant 0 : index
                      %45 = memref.load %subview_61[%c0_62] : memref<?xi32, strided<[?], offset: ?>>
                      %46 = arith.addi %34, %45 : i32
                      %47 = arith.cmpi sge, %24, %46 : i32
                      %48 = scf.if %47 -> (i32) {
                        %c0_77 = arith.constant 0 : index
                        %58 = memref.load %alloca_1[%c0_77] : memref<1xmemref<?xi32>>
                        %c0_78 = arith.constant 0 : index
                        %59 = memref.load %alloca_2[%c0_78] : memref<1xi32>
                        %60 = arith.extsi %59 : i32 to i64
                        %61 = arith.muli %60, %2 : i64
                        %62 = arith.index_cast %61 : i64 to index
                        %c1_79 = arith.constant 1 : index
                        %c0_80 = arith.constant 0 : index
                        %c0_81 = arith.constant 0 : index
                        %dim_82 = memref.dim %58, %c0_81 : memref<?xi32>
                        %63 = arith.subi %dim_82, %62 : index
                        %subview_83 = memref.subview %58[%62] [%63] [%c1_79] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %reinterpret_cast_84 = memref.reinterpret_cast %subview_83 to offset: [0], sizes: [%63], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                        %c0_85 = arith.constant 0 : index
                        %64 = memref.load %alloca_3[%c0_85] : memref<1xi32>
                        %65 = arith.index_cast %64 : i32 to index
                        %c0_86 = arith.constant 0 : index
                        %dim_87 = memref.dim %reinterpret_cast_84, %c0_86 : memref<?xi32>
                        %66 = arith.subi %dim_87, %65 : index
                        %c1_88 = arith.constant 1 : index
                        %subview_89 = memref.subview %reinterpret_cast_84[%65] [%66] [%c1_88] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %c0_90 = arith.constant 0 : index
                        %67 = memref.load %subview_89[%c0_90] : memref<?xi32, strided<[?], offset: ?>>
                        scf.yield %67 : i32
                      } else {
                        %c0_77 = arith.constant 0 : index
                        %58 = memref.load %alloca_1[%c0_77] : memref<1xmemref<?xi32>>
                        %c0_78 = arith.constant 0 : index
                        %59 = memref.load %alloca_2[%c0_78] : memref<1xi32>
                        %60 = arith.extsi %59 : i32 to i64
                        %61 = arith.muli %60, %2 : i64
                        %62 = arith.index_cast %61 : i64 to index
                        %c1_79 = arith.constant 1 : index
                        %c0_80 = arith.constant 0 : index
                        %c0_81 = arith.constant 0 : index
                        %dim_82 = memref.dim %58, %c0_81 : memref<?xi32>
                        %63 = arith.subi %dim_82, %62 : index
                        %subview_83 = memref.subview %58[%62] [%63] [%c1_79] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %reinterpret_cast_84 = memref.reinterpret_cast %subview_83 to offset: [0], sizes: [%63], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                        %c0_85 = arith.constant 0 : index
                        %64 = memref.load %alloca_4[%c0_85] : memref<1xi32>
                        %65 = arith.index_cast %64 : i32 to index
                        %c0_86 = arith.constant 0 : index
                        %dim_87 = memref.dim %reinterpret_cast_84, %c0_86 : memref<?xi32>
                        %66 = arith.subi %dim_87, %65 : index
                        %c1_88 = arith.constant 1 : index
                        %subview_89 = memref.subview %reinterpret_cast_84[%65] [%66] [%c1_88] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %c0_90 = arith.constant 0 : index
                        %67 = memref.load %subview_89[%c0_90] : memref<?xi32, strided<[?], offset: ?>>
                        %c0_91 = arith.constant 0 : index
                        %68 = memref.load %alloca_1[%c0_91] : memref<1xmemref<?xi32>>
                        %c0_92 = arith.constant 0 : index
                        %69 = memref.load %alloca_4[%c0_92] : memref<1xi32>
                        %c1_i32_93 = arith.constant 1 : i32
                        %70 = arith.addi %69, %c1_i32_93 : i32
                        %71 = arith.extsi %70 : i32 to i64
                        %72 = arith.muli %71, %2 : i64
                        %73 = arith.index_cast %72 : i64 to index
                        %c1_94 = arith.constant 1 : index
                        %c0_95 = arith.constant 0 : index
                        %c0_96 = arith.constant 0 : index
                        %dim_97 = memref.dim %68, %c0_96 : memref<?xi32>
                        %74 = arith.subi %dim_97, %73 : index
                        %subview_98 = memref.subview %68[%73] [%74] [%c1_94] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %reinterpret_cast_99 = memref.reinterpret_cast %subview_98 to offset: [0], sizes: [%74], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                        %c0_100 = arith.constant 0 : index
                        %75 = memref.load %alloca_3[%c0_100] : memref<1xi32>
                        %76 = arith.index_cast %75 : i32 to index
                        %c0_101 = arith.constant 0 : index
                        %dim_102 = memref.dim %reinterpret_cast_99, %c0_101 : memref<?xi32>
                        %77 = arith.subi %dim_102, %76 : index
                        %c1_103 = arith.constant 1 : index
                        %subview_104 = memref.subview %reinterpret_cast_99[%76] [%77] [%c1_103] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                        %c0_105 = arith.constant 0 : index
                        %78 = memref.load %subview_104[%c0_105] : memref<?xi32, strided<[?], offset: ?>>
                        %79 = arith.addi %67, %78 : i32
                        scf.yield %79 : i32
                      }
                      %c0_63 = arith.constant 0 : index
                      %49 = memref.load %alloca_1[%c0_63] : memref<1xmemref<?xi32>>
                      %c0_64 = arith.constant 0 : index
                      %50 = memref.load %alloca_2[%c0_64] : memref<1xi32>
                      %51 = arith.extsi %50 : i32 to i64
                      %52 = arith.muli %51, %2 : i64
                      %53 = arith.index_cast %52 : i64 to index
                      %c1_65 = arith.constant 1 : index
                      %c0_66 = arith.constant 0 : index
                      %c0_67 = arith.constant 0 : index
                      %dim_68 = memref.dim %49, %c0_67 : memref<?xi32>
                      %54 = arith.subi %dim_68, %53 : index
                      %subview_69 = memref.subview %49[%53] [%54] [%c1_65] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %reinterpret_cast_70 = memref.reinterpret_cast %subview_69 to offset: [0], sizes: [%54], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                      %c0_71 = arith.constant 0 : index
                      %55 = memref.load %alloca_3[%c0_71] : memref<1xi32>
                      %56 = arith.index_cast %55 : i32 to index
                      %c0_72 = arith.constant 0 : index
                      %dim_73 = memref.dim %reinterpret_cast_70, %c0_72 : memref<?xi32>
                      %57 = arith.subi %dim_73, %56 : index
                      %c1_74 = arith.constant 1 : index
                      %subview_75 = memref.subview %reinterpret_cast_70[%56] [%57] [%c1_74] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                      %c0_76 = arith.constant 0 : index
                      memref.store %48, %subview_75[%c0_76] : memref<?xi32, strided<[?], offset: ?>>
                    }
                    %c0_21 = arith.constant 0 : index
                    %13 = memref.load %alloca_4[%c0_21] : memref<1xi32>
                    %c1_i32_22 = arith.constant 1 : i32
                    %14 = arith.addi %13, %c1_i32_22 : i32
                    %c0_23 = arith.constant 0 : index
                    memref.store %14, %alloca_4[%c0_23] : memref<1xi32>
                    scf.yield
                  }
                }
              }
              %c0_15 = arith.constant 0 : index
              %9 = memref.load %alloca_3[%c0_15] : memref<1xi32>
              %c1_i32_16 = arith.constant 1 : i32
              %10 = arith.addi %9, %c1_i32_16 : i32
              %c0_17 = arith.constant 0 : index
              memref.store %10, %alloca_3[%c0_17] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_10 = arith.constant 0 : index
        %5 = memref.load %alloca_2[%c0_10] : memref<1xi32>
        %c-1_i32 = arith.constant -1 : i32
        %6 = arith.addi %5, %c-1_i32 : i32
        %c0_11 = arith.constant 0 : index
        memref.store %6, %alloca_2[%c0_11] : memref<1xi32>
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
  memref.global "private" constant @".str.2" : memref<6xi8> = dense<[116, 97, 98, 108, 101, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.3" : memref<2xi8> = dense<[10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.4" : memref<4xi8> = dense<[37, 100, 32, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.5" : memref<17xi8> = dense<[10, 101, 110, 100, 32, 32, 32, 100, 117, 109, 112, 58, 32, 37, 115, 10, 0]> {alignment = 1 : i64}
  memref.global "private" constant @".str.6" : memref<23xi8> = dense<[61, 61, 69, 78, 68, 32, 32, 32, 68, 85, 77, 80, 95, 65, 82, 82, 65, 89, 83, 61, 61, 10, 0]> {alignment = 1 : i64}
  func.func private @print_array(%arg0: i32, %arg1: memref<?xi32>) {
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
    %c0_i32_6 = arith.constant 0 : i32
    %c0_7 = arith.constant 0 : index
    memref.store %c0_i32_6, %alloca_3[%c0_7] : memref<1xi32>
    %3 = llvm.mlir.addressof @stderr : !llvm.ptr
    %4 = llvm.load %3 : !llvm.ptr -> !llvm.ptr
    %5 = memref.get_global @".str" : memref<23xi8>
    %c0_8 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c23 = arith.constant 23 : index
    %subview = memref.subview %5[%c0_8] [%c23] [%c1] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%c23], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr = memref.extract_aligned_pointer_as_index %reinterpret_cast : memref<?xi8> -> index
    %6 = arith.index_castui %intptr : index to i64
    %7 = llvm.inttoptr %6 : i64 to !llvm.ptr
    %8 = llvm.call @fprintf(%4, %7) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %9 = llvm.mlir.addressof @stderr : !llvm.ptr
    %10 = llvm.load %9 : !llvm.ptr -> !llvm.ptr
    %11 = memref.get_global @".str.1" : memref<15xi8>
    %c0_9 = arith.constant 0 : index
    %c1_10 = arith.constant 1 : index
    %c15 = arith.constant 15 : index
    %subview_11 = memref.subview %11[%c0_9] [%c15] [%c1_10] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_12 = memref.reinterpret_cast %subview_11 to offset: [0], sizes: [%c15], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %12 = memref.get_global @".str.2" : memref<6xi8>
    %c0_13 = arith.constant 0 : index
    %c1_14 = arith.constant 1 : index
    %c6 = arith.constant 6 : index
    %subview_15 = memref.subview %12[%c0_13] [%c6] [%c1_14] : memref<6xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_16 = memref.reinterpret_cast %subview_15 to offset: [0], sizes: [%c6], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_17 = memref.extract_aligned_pointer_as_index %reinterpret_cast_12 : memref<?xi8> -> index
    %13 = arith.index_castui %intptr_17 : index to i64
    %14 = llvm.inttoptr %13 : i64 to !llvm.ptr
    %intptr_18 = memref.extract_aligned_pointer_as_index %reinterpret_cast_16 : memref<?xi8> -> index
    %15 = arith.index_castui %intptr_18 : index to i64
    %16 = llvm.inttoptr %15 : i64 to !llvm.ptr
    %17 = llvm.call @fprintf(%10, %14, %16) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32_36 = arith.constant 0 : i32
      %c0_37 = arith.constant 0 : index
      memref.store %c0_i32_36, %alloca_1[%c0_37] : memref<1xi32>
      scf.while : () -> () {
        %c0_38 = arith.constant 0 : index
        %33 = memref.load %alloca_1[%c0_38] : memref<1xi32>
        %c0_39 = arith.constant 0 : index
        %34 = memref.load %alloca[%c0_39] : memref<1xi32>
        %35 = arith.cmpi slt, %33, %34 : i32
        scf.condition(%35)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c0_40 = arith.constant 0 : index
            %35 = memref.load %alloca_1[%c0_40] : memref<1xi32>
            %c0_41 = arith.constant 0 : index
            memref.store %35, %alloca_2[%c0_41] : memref<1xi32>
            scf.while : () -> () {
              %c0_42 = arith.constant 0 : index
              %36 = memref.load %alloca_2[%c0_42] : memref<1xi32>
              %c0_43 = arith.constant 0 : index
              %37 = memref.load %alloca[%c0_43] : memref<1xi32>
              %38 = arith.cmpi slt, %36, %37 : i32
              scf.condition(%38)
            } do {
              memref.alloca_scope  {
                memref.alloca_scope  {
                  %c0_66 = arith.constant 0 : index
                  %56 = memref.load %alloca_3[%c0_66] : memref<1xi32>
                  %c20_i32 = arith.constant 20 : i32
                  %57 = arith.remsi %56, %c20_i32 : i32
                  %c0_i32_67 = arith.constant 0 : i32
                  %58 = arith.cmpi eq, %57, %c0_i32_67 : i32
                  scf.if %58 {
                    %59 = llvm.mlir.addressof @stderr : !llvm.ptr
                    %60 = llvm.load %59 : !llvm.ptr -> !llvm.ptr
                    %61 = memref.get_global @".str.3" : memref<2xi8>
                    %c0_68 = arith.constant 0 : index
                    %c1_69 = arith.constant 1 : index
                    %c2 = arith.constant 2 : index
                    %subview_70 = memref.subview %61[%c0_68] [%c2] [%c1_69] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
                    %reinterpret_cast_71 = memref.reinterpret_cast %subview_70 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                    %intptr_72 = memref.extract_aligned_pointer_as_index %reinterpret_cast_71 : memref<?xi8> -> index
                    %62 = arith.index_castui %intptr_72 : index to i64
                    %63 = llvm.inttoptr %62 : i64 to !llvm.ptr
                    %64 = llvm.call @fprintf(%60, %63) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                  }
                }
                %38 = llvm.mlir.addressof @stderr : !llvm.ptr
                %39 = llvm.load %38 : !llvm.ptr -> !llvm.ptr
                %40 = memref.get_global @".str.4" : memref<4xi8>
                %c0_45 = arith.constant 0 : index
                %c1_46 = arith.constant 1 : index
                %c4 = arith.constant 4 : index
                %subview_47 = memref.subview %40[%c0_45] [%c4] [%c1_46] : memref<4xi8> to memref<?xi8, strided<[?], offset: ?>>
                %reinterpret_cast_48 = memref.reinterpret_cast %subview_47 to offset: [0], sizes: [%c4], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                %c0_49 = arith.constant 0 : index
                %41 = memref.load %alloca_0[%c0_49] : memref<1xmemref<?xi32>>
                %c0_50 = arith.constant 0 : index
                %42 = memref.load %alloca_1[%c0_50] : memref<1xi32>
                %43 = arith.extsi %42 : i32 to i64
                %44 = arith.muli %43, %2 : i64
                %45 = arith.index_cast %44 : i64 to index
                %c1_51 = arith.constant 1 : index
                %c0_52 = arith.constant 0 : index
                %c0_53 = arith.constant 0 : index
                %dim = memref.dim %41, %c0_53 : memref<?xi32>
                %46 = arith.subi %dim, %45 : index
                %subview_54 = memref.subview %41[%45] [%46] [%c1_51] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                %reinterpret_cast_55 = memref.reinterpret_cast %subview_54 to offset: [0], sizes: [%46], strides: [1] : memref<?xi32, strided<[?], offset: ?>> to memref<?xi32>
                %c0_56 = arith.constant 0 : index
                %47 = memref.load %alloca_2[%c0_56] : memref<1xi32>
                %48 = arith.index_cast %47 : i32 to index
                %c0_57 = arith.constant 0 : index
                %dim_58 = memref.dim %reinterpret_cast_55, %c0_57 : memref<?xi32>
                %49 = arith.subi %dim_58, %48 : index
                %c1_59 = arith.constant 1 : index
                %subview_60 = memref.subview %reinterpret_cast_55[%48] [%49] [%c1_59] : memref<?xi32> to memref<?xi32, strided<[?], offset: ?>>
                %c0_61 = arith.constant 0 : index
                %50 = memref.load %subview_60[%c0_61] : memref<?xi32, strided<[?], offset: ?>>
                %intptr_62 = memref.extract_aligned_pointer_as_index %reinterpret_cast_48 : memref<?xi8> -> index
                %51 = arith.index_castui %intptr_62 : index to i64
                %52 = llvm.inttoptr %51 : i64 to !llvm.ptr
                %53 = llvm.call @fprintf(%39, %52, %50) vararg(!llvm.func<i32 (ptr, ptr, i32, ...)>) : (!llvm.ptr, !llvm.ptr, i32) -> i32
                %c0_63 = arith.constant 0 : index
                %54 = memref.load %alloca_3[%c0_63] : memref<1xi32>
                %c1_i32_64 = arith.constant 1 : i32
                %55 = arith.addi %54, %c1_i32_64 : i32
                %c0_65 = arith.constant 0 : index
                memref.store %55, %alloca_3[%c0_65] : memref<1xi32>
              }
              %c0_42 = arith.constant 0 : index
              %36 = memref.load %alloca_2[%c0_42] : memref<1xi32>
              %c1_i32_43 = arith.constant 1 : i32
              %37 = arith.addi %36, %c1_i32_43 : i32
              %c0_44 = arith.constant 0 : index
              memref.store %37, %alloca_2[%c0_44] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_38 = arith.constant 0 : index
        %33 = memref.load %alloca_1[%c0_38] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %34 = arith.addi %33, %c1_i32 : i32
        %c0_39 = arith.constant 0 : index
        memref.store %34, %alloca_1[%c0_39] : memref<1xi32>
        scf.yield
      }
    }
    %18 = llvm.mlir.addressof @stderr : !llvm.ptr
    %19 = llvm.load %18 : !llvm.ptr -> !llvm.ptr
    %20 = memref.get_global @".str.5" : memref<17xi8>
    %c0_19 = arith.constant 0 : index
    %c1_20 = arith.constant 1 : index
    %c17 = arith.constant 17 : index
    %subview_21 = memref.subview %20[%c0_19] [%c17] [%c1_20] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_22 = memref.reinterpret_cast %subview_21 to offset: [0], sizes: [%c17], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %21 = memref.get_global @".str.2" : memref<6xi8>
    %c0_23 = arith.constant 0 : index
    %c1_24 = arith.constant 1 : index
    %c6_25 = arith.constant 6 : index
    %subview_26 = memref.subview %21[%c0_23] [%c6_25] [%c1_24] : memref<6xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_27 = memref.reinterpret_cast %subview_26 to offset: [0], sizes: [%c6_25], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_28 = memref.extract_aligned_pointer_as_index %reinterpret_cast_22 : memref<?xi8> -> index
    %22 = arith.index_castui %intptr_28 : index to i64
    %23 = llvm.inttoptr %22 : i64 to !llvm.ptr
    %intptr_29 = memref.extract_aligned_pointer_as_index %reinterpret_cast_27 : memref<?xi8> -> index
    %24 = arith.index_castui %intptr_29 : index to i64
    %25 = llvm.inttoptr %24 : i64 to !llvm.ptr
    %26 = llvm.call @fprintf(%19, %23, %25) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %27 = llvm.mlir.addressof @stderr : !llvm.ptr
    %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
    %29 = memref.get_global @".str.6" : memref<23xi8>
    %c0_30 = arith.constant 0 : index
    %c1_31 = arith.constant 1 : index
    %c23_32 = arith.constant 23 : index
    %subview_33 = memref.subview %29[%c0_30] [%c23_32] [%c1_31] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_34 = memref.reinterpret_cast %subview_33 to offset: [0], sizes: [%c23_32], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_35 = memref.extract_aligned_pointer_as_index %reinterpret_cast_34 : memref<?xi8> -> index
    %30 = arith.index_castui %intptr_35 : index to i64
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
    %alloca_3 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xi8>>
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_5 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_5] : memref<1xmemref<?xmemref<?xi8>>>
    %c2500_i32 = arith.constant 2500 : i32
    %c0_6 = arith.constant 0 : index
    memref.store %c2500_i32, %alloca_2[%c0_6] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    %0 = memref.load %alloca_2[%c0_7] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c1_i64 = arith.constant 1 : i64
    %3 = arith.trunci %c1_i64 : i64 to i32
    %4 = call @polybench_alloc_data(%2, %3) : (i64, i32) -> !llvm.ptr
    %5 = builtin.unrealized_conversion_cast %4 : !llvm.ptr to memref<?xi8>
    %c0_8 = arith.constant 0 : index
    memref.store %5, %alloca_3[%c0_8] : memref<1xmemref<?xi8>>
    %c0_9 = arith.constant 0 : index
    %6 = memref.load %alloca_2[%c0_9] : memref<1xi32>
    %c0_i32_10 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_10 : i32
    %c0_11 = arith.constant 0 : index
    %8 = memref.load %alloca_2[%c0_11] : memref<1xi32>
    %c0_i32_12 = arith.constant 0 : i32
    %9 = arith.addi %8, %c0_i32_12 : i32
    %10 = arith.muli %7, %9 : i32
    %11 = arith.extsi %10 : i32 to i64
    %c4_i64 = arith.constant 4 : i64
    %12 = arith.trunci %c4_i64 : i64 to i32
    %13 = call @polybench_alloc_data(%11, %12) : (i64, i32) -> !llvm.ptr
    %14 = builtin.unrealized_conversion_cast %13 : !llvm.ptr to memref<?xi32>
    %c0_13 = arith.constant 0 : index
    memref.store %14, %alloca_4[%c0_13] : memref<1xmemref<?xi32>>
    %c0_14 = arith.constant 0 : index
    %15 = memref.load %alloca_2[%c0_14] : memref<1xi32>
    %c0_15 = arith.constant 0 : index
    %16 = memref.load %alloca_3[%c0_15] : memref<1xmemref<?xi8>>
    %c0_16 = arith.constant 0 : index
    %17 = memref.load %alloca_4[%c0_16] : memref<1xmemref<?xi32>>
    call @init_array(%15, %16, %17) : (i32, memref<?xi8>, memref<?xi32>) -> ()
    %18 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %18() : !llvm.ptr, () -> ()
    %c0_17 = arith.constant 0 : index
    %19 = memref.load %alloca_2[%c0_17] : memref<1xi32>
    %c0_18 = arith.constant 0 : index
    %20 = memref.load %alloca_3[%c0_18] : memref<1xmemref<?xi8>>
    %c0_19 = arith.constant 0 : index
    %21 = memref.load %alloca_4[%c0_19] : memref<1xmemref<?xi32>>
    call @kernel_nussinov(%19, %20, %21) : (i32, memref<?xi8>, memref<?xi32>) -> ()
    %22 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %22() : !llvm.ptr, () -> ()
    %23 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %23() : !llvm.ptr, () -> ()
    %c0_20 = arith.constant 0 : index
    %24 = memref.load %alloca_2[%c0_20] : memref<1xi32>
    %c0_21 = arith.constant 0 : index
    %25 = memref.load %alloca_4[%c0_21] : memref<1xmemref<?xi32>>
    call @print_array(%24, %25) : (i32, memref<?xi32>) -> ()
    %c0_22 = arith.constant 0 : index
    %26 = memref.load %alloca_3[%c0_22] : memref<1xmemref<?xi8>>
    %intptr = memref.extract_aligned_pointer_as_index %26 : memref<?xi8> -> index
    %27 = arith.index_castui %intptr : index to i64
    %28 = llvm.inttoptr %27 : i64 to !llvm.ptr
    call @free(%28) : (!llvm.ptr) -> ()
    %c0_23 = arith.constant 0 : index
    %29 = memref.load %alloca_4[%c0_23] : memref<1xmemref<?xi32>>
    %intptr_24 = memref.extract_aligned_pointer_as_index %29 : memref<?xi32> -> index
    %30 = arith.index_castui %intptr_24 : index to i64
    %31 = llvm.inttoptr %30 : i64 to !llvm.ptr
    call @free(%31) : (!llvm.ptr) -> ()
    %c0_i32_25 = arith.constant 0 : i32
    %c0_26 = arith.constant 0 : index
    memref.store %c0_i32_25, %alloca_1[%c0_26] : memref<1xi32>
    %c0_27 = arith.constant 0 : index
    %32 = memref.load %alloca_1[%c0_27] : memref<1xi32>
    return %32 : i32
  }
}

