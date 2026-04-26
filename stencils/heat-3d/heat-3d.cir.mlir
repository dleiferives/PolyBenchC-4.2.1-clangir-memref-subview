module @"/home/dleiferives/school/grad/shrav/test_clang_ir/PolyBenchC-4.2.1/stencils/heat-3d/heat-3d.c" attributes {cir.lang = #cir.lang<c>, cir.module_asm = [], cir.opt_info = #cir.opt_info<level = 2, size = 0>, cir.sob = #cir.signed_overflow_behavior<undefined>, cir.triple = "x86_64-unknown-linux-gnu", cir.type_size_info = #cir.type_size_info<char = 8, int = 32, size_t = 64>, cir.uwtable = #cir.uwtable<async>, dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "e", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>} {
  func.func private @polybench_alloc_data(i64, i32) -> !llvm.ptr
  func.func private @init_array(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_5 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_5] : memref<1xmemref<?xf64>>
    %c0_6 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_6] : memref<1xmemref<?xf64>>
    %c0_7 = arith.constant 0 : index
    %0 = memref.load %alloca[%c0_7] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_8 = arith.constant 0 : index
    %3 = memref.load %alloca[%c0_8] : memref<1xi32>
    %c0_i32_9 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_9 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_10 = arith.constant 0 : index
    %6 = memref.load %alloca[%c0_10] : memref<1xi32>
    %c0_i32_11 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_11 : i32
    %8 = arith.extsi %7 : i32 to i64
    %c0_12 = arith.constant 0 : index
    %9 = memref.load %alloca[%c0_12] : memref<1xi32>
    %c0_i32_13 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_13 : i32
    %11 = arith.extsi %10 : i32 to i64
    memref.alloca_scope  {
      %c0_i32_14 = arith.constant 0 : i32
      %c0_15 = arith.constant 0 : index
      memref.store %c0_i32_14, %alloca_2[%c0_15] : memref<1xi32>
      scf.while : () -> () {
        %c0_16 = arith.constant 0 : index
        %12 = memref.load %alloca_2[%c0_16] : memref<1xi32>
        %c0_17 = arith.constant 0 : index
        %13 = memref.load %alloca[%c0_17] : memref<1xi32>
        %14 = arith.cmpi slt, %12, %13 : i32
        scf.condition(%14)
      } do {
        memref.alloca_scope  {
          %c0_i32_18 = arith.constant 0 : i32
          %c0_19 = arith.constant 0 : index
          memref.store %c0_i32_18, %alloca_3[%c0_19] : memref<1xi32>
          scf.while : () -> () {
            %c0_20 = arith.constant 0 : index
            %14 = memref.load %alloca_3[%c0_20] : memref<1xi32>
            %c0_21 = arith.constant 0 : index
            %15 = memref.load %alloca[%c0_21] : memref<1xi32>
            %16 = arith.cmpi slt, %14, %15 : i32
            scf.condition(%16)
          } do {
            memref.alloca_scope  {
              %c0_i32_23 = arith.constant 0 : i32
              %c0_24 = arith.constant 0 : index
              memref.store %c0_i32_23, %alloca_4[%c0_24] : memref<1xi32>
              scf.while : () -> () {
                %c0_25 = arith.constant 0 : index
                %16 = memref.load %alloca_4[%c0_25] : memref<1xi32>
                %c0_26 = arith.constant 0 : index
                %17 = memref.load %alloca[%c0_26] : memref<1xi32>
                %18 = arith.cmpi slt, %16, %17 : i32
                scf.condition(%18)
              } do {
                %c0_25 = arith.constant 0 : index
                %16 = memref.load %alloca_2[%c0_25] : memref<1xi32>
                %c0_26 = arith.constant 0 : index
                %17 = memref.load %alloca_3[%c0_26] : memref<1xi32>
                %18 = arith.addi %16, %17 : i32
                %c0_27 = arith.constant 0 : index
                %19 = memref.load %alloca[%c0_27] : memref<1xi32>
                %c0_28 = arith.constant 0 : index
                %20 = memref.load %alloca_4[%c0_28] : memref<1xi32>
                %21 = arith.subi %19, %20 : i32
                %22 = arith.addi %18, %21 : i32
                %23 = arith.sitofp %22 : i32 to f64
                %c10_i32 = arith.constant 10 : i32
                %24 = arith.sitofp %c10_i32 : i32 to f64
                %25 = arith.mulf %23, %24 : f64
                %c0_29 = arith.constant 0 : index
                %26 = memref.load %alloca[%c0_29] : memref<1xi32>
                %27 = arith.sitofp %26 : i32 to f64
                %28 = arith.divf %25, %27 : f64
                %c0_30 = arith.constant 0 : index
                %29 = memref.load %alloca_1[%c0_30] : memref<1xmemref<?xf64>>
                %c0_31 = arith.constant 0 : index
                %30 = memref.load %alloca_2[%c0_31] : memref<1xi32>
                %31 = arith.muli %8, %11 : i64
                %32 = arith.extsi %30 : i32 to i64
                %33 = arith.muli %32, %31 : i64
                %34 = arith.index_cast %33 : i64 to index
                %c1 = arith.constant 1 : index
                %c0_32 = arith.constant 0 : index
                %c0_33 = arith.constant 0 : index
                %dim = memref.dim %29, %c0_33 : memref<?xf64>
                %35 = arith.subi %dim, %34 : index
                %subview = memref.subview %29[%34] [%35] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%35], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_34 = arith.constant 0 : index
                %36 = memref.load %alloca_3[%c0_34] : memref<1xi32>
                %37 = arith.extsi %36 : i32 to i64
                %38 = arith.muli %37, %11 : i64
                %39 = arith.index_cast %38 : i64 to index
                %c1_35 = arith.constant 1 : index
                %c0_36 = arith.constant 0 : index
                %c0_37 = arith.constant 0 : index
                %dim_38 = memref.dim %reinterpret_cast, %c0_37 : memref<?xf64>
                %40 = arith.subi %dim_38, %39 : index
                %subview_39 = memref.subview %reinterpret_cast[%39] [%40] [%c1_35] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_40 = memref.reinterpret_cast %subview_39 to offset: [0], sizes: [%40], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_41 = arith.constant 0 : index
                %41 = memref.load %alloca_4[%c0_41] : memref<1xi32>
                %42 = arith.index_cast %41 : i32 to index
                %c0_42 = arith.constant 0 : index
                %dim_43 = memref.dim %reinterpret_cast_40, %c0_42 : memref<?xf64>
                %43 = arith.subi %dim_43, %42 : index
                %c1_44 = arith.constant 1 : index
                %subview_45 = memref.subview %reinterpret_cast_40[%42] [%43] [%c1_44] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_46 = arith.constant 0 : index
                memref.store %28, %subview_45[%c0_46] : memref<?xf64, strided<[?], offset: ?>>
                %c0_47 = arith.constant 0 : index
                %44 = memref.load %alloca_0[%c0_47] : memref<1xmemref<?xf64>>
                %c0_48 = arith.constant 0 : index
                %45 = memref.load %alloca_2[%c0_48] : memref<1xi32>
                %46 = arith.muli %2, %5 : i64
                %47 = arith.extsi %45 : i32 to i64
                %48 = arith.muli %47, %46 : i64
                %49 = arith.index_cast %48 : i64 to index
                %c1_49 = arith.constant 1 : index
                %c0_50 = arith.constant 0 : index
                %c0_51 = arith.constant 0 : index
                %dim_52 = memref.dim %44, %c0_51 : memref<?xf64>
                %50 = arith.subi %dim_52, %49 : index
                %subview_53 = memref.subview %44[%49] [%50] [%c1_49] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_54 = memref.reinterpret_cast %subview_53 to offset: [0], sizes: [%50], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_55 = arith.constant 0 : index
                %51 = memref.load %alloca_3[%c0_55] : memref<1xi32>
                %52 = arith.extsi %51 : i32 to i64
                %53 = arith.muli %52, %5 : i64
                %54 = arith.index_cast %53 : i64 to index
                %c1_56 = arith.constant 1 : index
                %c0_57 = arith.constant 0 : index
                %c0_58 = arith.constant 0 : index
                %dim_59 = memref.dim %reinterpret_cast_54, %c0_58 : memref<?xf64>
                %55 = arith.subi %dim_59, %54 : index
                %subview_60 = memref.subview %reinterpret_cast_54[%54] [%55] [%c1_56] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %reinterpret_cast_61 = memref.reinterpret_cast %subview_60 to offset: [0], sizes: [%55], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                %c0_62 = arith.constant 0 : index
                %56 = memref.load %alloca_4[%c0_62] : memref<1xi32>
                %57 = arith.index_cast %56 : i32 to index
                %c0_63 = arith.constant 0 : index
                %dim_64 = memref.dim %reinterpret_cast_61, %c0_63 : memref<?xf64>
                %58 = arith.subi %dim_64, %57 : index
                %c1_65 = arith.constant 1 : index
                %subview_66 = memref.subview %reinterpret_cast_61[%57] [%58] [%c1_65] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                %c0_67 = arith.constant 0 : index
                memref.store %28, %subview_66[%c0_67] : memref<?xf64, strided<[?], offset: ?>>
                %c0_68 = arith.constant 0 : index
                %59 = memref.load %alloca_4[%c0_68] : memref<1xi32>
                %c1_i32_69 = arith.constant 1 : i32
                %60 = arith.addi %59, %c1_i32_69 : i32
                %c0_70 = arith.constant 0 : index
                memref.store %60, %alloca_4[%c0_70] : memref<1xi32>
                scf.yield
              }
            }
            %c0_20 = arith.constant 0 : index
            %14 = memref.load %alloca_3[%c0_20] : memref<1xi32>
            %c1_i32_21 = arith.constant 1 : i32
            %15 = arith.addi %14, %c1_i32_21 : i32
            %c0_22 = arith.constant 0 : index
            memref.store %15, %alloca_3[%c0_22] : memref<1xi32>
            scf.yield
          }
        }
        %c0_16 = arith.constant 0 : index
        %12 = memref.load %alloca_2[%c0_16] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %13 = arith.addi %12, %c1_i32 : i32
        %c0_17 = arith.constant 0 : index
        memref.store %13, %alloca_2[%c0_17] : memref<1xi32>
        scf.yield
      }
    }
    return
  }
  llvm.func @polybench_timer_start(...)
  func.func private @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %alloca = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_0 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_1 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_2 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_3 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_4 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_5 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %alloca_6 = memref.alloca() {alignment = 4 : i64} : memref<1xi32>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_7 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_7] : memref<1xi32>
    %c0_8 = arith.constant 0 : index
    memref.store %arg2, %alloca_1[%c0_8] : memref<1xmemref<?xf64>>
    %c0_9 = arith.constant 0 : index
    memref.store %arg3, %alloca_2[%c0_9] : memref<1xmemref<?xf64>>
    %c0_10 = arith.constant 0 : index
    %0 = memref.load %alloca_0[%c0_10] : memref<1xi32>
    %c0_i32 = arith.constant 0 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.extsi %1 : i32 to i64
    %c0_11 = arith.constant 0 : index
    %3 = memref.load %alloca_0[%c0_11] : memref<1xi32>
    %c0_i32_12 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_12 : i32
    %5 = arith.extsi %4 : i32 to i64
    %c0_13 = arith.constant 0 : index
    %6 = memref.load %alloca_0[%c0_13] : memref<1xi32>
    %c0_i32_14 = arith.constant 0 : i32
    %7 = arith.addi %6, %c0_i32_14 : i32
    %8 = arith.extsi %7 : i32 to i64
    %c0_15 = arith.constant 0 : index
    %9 = memref.load %alloca_0[%c0_15] : memref<1xi32>
    %c0_i32_16 = arith.constant 0 : i32
    %10 = arith.addi %9, %c0_i32_16 : i32
    %11 = arith.extsi %10 : i32 to i64
    memref.alloca_scope  {
      %c1_i32 = arith.constant 1 : i32
      %c0_17 = arith.constant 0 : index
      memref.store %c1_i32, %alloca_3[%c0_17] : memref<1xi32>
      scf.while : () -> () {
        %c0_18 = arith.constant 0 : index
        %12 = memref.load %alloca_3[%c0_18] : memref<1xi32>
        %c500_i32 = arith.constant 500 : i32
        %13 = arith.cmpi sle, %12, %c500_i32 : i32
        scf.condition(%13)
      } do {
        memref.alloca_scope  {
          memref.alloca_scope  {
            %c1_i32_21 = arith.constant 1 : i32
            %c0_22 = arith.constant 0 : index
            memref.store %c1_i32_21, %alloca_4[%c0_22] : memref<1xi32>
            scf.while : () -> () {
              %c0_23 = arith.constant 0 : index
              %14 = memref.load %alloca_4[%c0_23] : memref<1xi32>
              %c0_24 = arith.constant 0 : index
              %15 = memref.load %alloca_0[%c0_24] : memref<1xi32>
              %c1_i32_25 = arith.constant 1 : i32
              %16 = arith.subi %15, %c1_i32_25 : i32
              %17 = arith.cmpi slt, %14, %16 : i32
              scf.condition(%17)
            } do {
              memref.alloca_scope  {
                memref.alloca_scope  {
                  %c1_i32_26 = arith.constant 1 : i32
                  %c0_27 = arith.constant 0 : index
                  memref.store %c1_i32_26, %alloca_5[%c0_27] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_28 = arith.constant 0 : index
                    %16 = memref.load %alloca_5[%c0_28] : memref<1xi32>
                    %c0_29 = arith.constant 0 : index
                    %17 = memref.load %alloca_0[%c0_29] : memref<1xi32>
                    %c1_i32_30 = arith.constant 1 : i32
                    %18 = arith.subi %17, %c1_i32_30 : i32
                    %19 = arith.cmpi slt, %16, %18 : i32
                    scf.condition(%19)
                  } do {
                    memref.alloca_scope  {
                      memref.alloca_scope  {
                        %c1_i32_31 = arith.constant 1 : i32
                        %c0_32 = arith.constant 0 : index
                        memref.store %c1_i32_31, %alloca_6[%c0_32] : memref<1xi32>
                        scf.while : () -> () {
                          %c0_33 = arith.constant 0 : index
                          %18 = memref.load %alloca_6[%c0_33] : memref<1xi32>
                          %c0_34 = arith.constant 0 : index
                          %19 = memref.load %alloca_0[%c0_34] : memref<1xi32>
                          %c1_i32_35 = arith.constant 1 : i32
                          %20 = arith.subi %19, %c1_i32_35 : i32
                          %21 = arith.cmpi slt, %18, %20 : i32
                          scf.condition(%21)
                        } do {
                          memref.alloca_scope  {
                            %cst = arith.constant 1.250000e-01 : f64
                            %c0_36 = arith.constant 0 : index
                            %20 = memref.load %alloca_1[%c0_36] : memref<1xmemref<?xf64>>
                            %c0_37 = arith.constant 0 : index
                            %21 = memref.load %alloca_4[%c0_37] : memref<1xi32>
                            %c1_i32_38 = arith.constant 1 : i32
                            %22 = arith.addi %21, %c1_i32_38 : i32
                            %23 = arith.muli %2, %5 : i64
                            %24 = arith.extsi %22 : i32 to i64
                            %25 = arith.muli %24, %23 : i64
                            %26 = arith.index_cast %25 : i64 to index
                            %c1 = arith.constant 1 : index
                            %c0_39 = arith.constant 0 : index
                            %c0_40 = arith.constant 0 : index
                            %dim = memref.dim %20, %c0_40 : memref<?xf64>
                            %27 = arith.subi %dim, %26 : index
                            %subview = memref.subview %20[%26] [%27] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%27], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_41 = arith.constant 0 : index
                            %28 = memref.load %alloca_5[%c0_41] : memref<1xi32>
                            %29 = arith.extsi %28 : i32 to i64
                            %30 = arith.muli %29, %5 : i64
                            %31 = arith.index_cast %30 : i64 to index
                            %c1_42 = arith.constant 1 : index
                            %c0_43 = arith.constant 0 : index
                            %c0_44 = arith.constant 0 : index
                            %dim_45 = memref.dim %reinterpret_cast, %c0_44 : memref<?xf64>
                            %32 = arith.subi %dim_45, %31 : index
                            %subview_46 = memref.subview %reinterpret_cast[%31] [%32] [%c1_42] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_47 = memref.reinterpret_cast %subview_46 to offset: [0], sizes: [%32], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_48 = arith.constant 0 : index
                            %33 = memref.load %alloca_6[%c0_48] : memref<1xi32>
                            %34 = arith.index_cast %33 : i32 to index
                            %c0_49 = arith.constant 0 : index
                            %dim_50 = memref.dim %reinterpret_cast_47, %c0_49 : memref<?xf64>
                            %35 = arith.subi %dim_50, %34 : index
                            %c1_51 = arith.constant 1 : index
                            %subview_52 = memref.subview %reinterpret_cast_47[%34] [%35] [%c1_51] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_53 = arith.constant 0 : index
                            %36 = memref.load %subview_52[%c0_53] : memref<?xf64, strided<[?], offset: ?>>
                            %cst_54 = arith.constant 2.000000e+00 : f64
                            %c0_55 = arith.constant 0 : index
                            %37 = memref.load %alloca_1[%c0_55] : memref<1xmemref<?xf64>>
                            %c0_56 = arith.constant 0 : index
                            %38 = memref.load %alloca_4[%c0_56] : memref<1xi32>
                            %39 = arith.muli %2, %5 : i64
                            %40 = arith.extsi %38 : i32 to i64
                            %41 = arith.muli %40, %39 : i64
                            %42 = arith.index_cast %41 : i64 to index
                            %c1_57 = arith.constant 1 : index
                            %c0_58 = arith.constant 0 : index
                            %c0_59 = arith.constant 0 : index
                            %dim_60 = memref.dim %37, %c0_59 : memref<?xf64>
                            %43 = arith.subi %dim_60, %42 : index
                            %subview_61 = memref.subview %37[%42] [%43] [%c1_57] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_62 = memref.reinterpret_cast %subview_61 to offset: [0], sizes: [%43], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_63 = arith.constant 0 : index
                            %44 = memref.load %alloca_5[%c0_63] : memref<1xi32>
                            %45 = arith.extsi %44 : i32 to i64
                            %46 = arith.muli %45, %5 : i64
                            %47 = arith.index_cast %46 : i64 to index
                            %c1_64 = arith.constant 1 : index
                            %c0_65 = arith.constant 0 : index
                            %c0_66 = arith.constant 0 : index
                            %dim_67 = memref.dim %reinterpret_cast_62, %c0_66 : memref<?xf64>
                            %48 = arith.subi %dim_67, %47 : index
                            %subview_68 = memref.subview %reinterpret_cast_62[%47] [%48] [%c1_64] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_69 = memref.reinterpret_cast %subview_68 to offset: [0], sizes: [%48], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_70 = arith.constant 0 : index
                            %49 = memref.load %alloca_6[%c0_70] : memref<1xi32>
                            %50 = arith.index_cast %49 : i32 to index
                            %c0_71 = arith.constant 0 : index
                            %dim_72 = memref.dim %reinterpret_cast_69, %c0_71 : memref<?xf64>
                            %51 = arith.subi %dim_72, %50 : index
                            %c1_73 = arith.constant 1 : index
                            %subview_74 = memref.subview %reinterpret_cast_69[%50] [%51] [%c1_73] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_75 = arith.constant 0 : index
                            %52 = memref.load %subview_74[%c0_75] : memref<?xf64, strided<[?], offset: ?>>
                            %53 = arith.mulf %cst_54, %52 : f64
                            %54 = arith.subf %36, %53 : f64
                            %c0_76 = arith.constant 0 : index
                            %55 = memref.load %alloca_1[%c0_76] : memref<1xmemref<?xf64>>
                            %c0_77 = arith.constant 0 : index
                            %56 = memref.load %alloca_4[%c0_77] : memref<1xi32>
                            %c1_i32_78 = arith.constant 1 : i32
                            %57 = arith.subi %56, %c1_i32_78 : i32
                            %58 = arith.muli %2, %5 : i64
                            %59 = arith.extsi %57 : i32 to i64
                            %60 = arith.muli %59, %58 : i64
                            %61 = arith.index_cast %60 : i64 to index
                            %c1_79 = arith.constant 1 : index
                            %c0_80 = arith.constant 0 : index
                            %c0_81 = arith.constant 0 : index
                            %dim_82 = memref.dim %55, %c0_81 : memref<?xf64>
                            %62 = arith.subi %dim_82, %61 : index
                            %subview_83 = memref.subview %55[%61] [%62] [%c1_79] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_84 = memref.reinterpret_cast %subview_83 to offset: [0], sizes: [%62], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_85 = arith.constant 0 : index
                            %63 = memref.load %alloca_5[%c0_85] : memref<1xi32>
                            %64 = arith.extsi %63 : i32 to i64
                            %65 = arith.muli %64, %5 : i64
                            %66 = arith.index_cast %65 : i64 to index
                            %c1_86 = arith.constant 1 : index
                            %c0_87 = arith.constant 0 : index
                            %c0_88 = arith.constant 0 : index
                            %dim_89 = memref.dim %reinterpret_cast_84, %c0_88 : memref<?xf64>
                            %67 = arith.subi %dim_89, %66 : index
                            %subview_90 = memref.subview %reinterpret_cast_84[%66] [%67] [%c1_86] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_91 = memref.reinterpret_cast %subview_90 to offset: [0], sizes: [%67], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_92 = arith.constant 0 : index
                            %68 = memref.load %alloca_6[%c0_92] : memref<1xi32>
                            %69 = arith.index_cast %68 : i32 to index
                            %c0_93 = arith.constant 0 : index
                            %dim_94 = memref.dim %reinterpret_cast_91, %c0_93 : memref<?xf64>
                            %70 = arith.subi %dim_94, %69 : index
                            %c1_95 = arith.constant 1 : index
                            %subview_96 = memref.subview %reinterpret_cast_91[%69] [%70] [%c1_95] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_97 = arith.constant 0 : index
                            %71 = memref.load %subview_96[%c0_97] : memref<?xf64, strided<[?], offset: ?>>
                            %72 = arith.addf %54, %71 : f64
                            %73 = arith.mulf %cst, %72 : f64
                            %cst_98 = arith.constant 1.250000e-01 : f64
                            %c0_99 = arith.constant 0 : index
                            %74 = memref.load %alloca_1[%c0_99] : memref<1xmemref<?xf64>>
                            %c0_100 = arith.constant 0 : index
                            %75 = memref.load %alloca_4[%c0_100] : memref<1xi32>
                            %76 = arith.muli %2, %5 : i64
                            %77 = arith.extsi %75 : i32 to i64
                            %78 = arith.muli %77, %76 : i64
                            %79 = arith.index_cast %78 : i64 to index
                            %c1_101 = arith.constant 1 : index
                            %c0_102 = arith.constant 0 : index
                            %c0_103 = arith.constant 0 : index
                            %dim_104 = memref.dim %74, %c0_103 : memref<?xf64>
                            %80 = arith.subi %dim_104, %79 : index
                            %subview_105 = memref.subview %74[%79] [%80] [%c1_101] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_106 = memref.reinterpret_cast %subview_105 to offset: [0], sizes: [%80], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_107 = arith.constant 0 : index
                            %81 = memref.load %alloca_5[%c0_107] : memref<1xi32>
                            %c1_i32_108 = arith.constant 1 : i32
                            %82 = arith.addi %81, %c1_i32_108 : i32
                            %83 = arith.extsi %82 : i32 to i64
                            %84 = arith.muli %83, %5 : i64
                            %85 = arith.index_cast %84 : i64 to index
                            %c1_109 = arith.constant 1 : index
                            %c0_110 = arith.constant 0 : index
                            %c0_111 = arith.constant 0 : index
                            %dim_112 = memref.dim %reinterpret_cast_106, %c0_111 : memref<?xf64>
                            %86 = arith.subi %dim_112, %85 : index
                            %subview_113 = memref.subview %reinterpret_cast_106[%85] [%86] [%c1_109] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_114 = memref.reinterpret_cast %subview_113 to offset: [0], sizes: [%86], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_115 = arith.constant 0 : index
                            %87 = memref.load %alloca_6[%c0_115] : memref<1xi32>
                            %88 = arith.index_cast %87 : i32 to index
                            %c0_116 = arith.constant 0 : index
                            %dim_117 = memref.dim %reinterpret_cast_114, %c0_116 : memref<?xf64>
                            %89 = arith.subi %dim_117, %88 : index
                            %c1_118 = arith.constant 1 : index
                            %subview_119 = memref.subview %reinterpret_cast_114[%88] [%89] [%c1_118] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_120 = arith.constant 0 : index
                            %90 = memref.load %subview_119[%c0_120] : memref<?xf64, strided<[?], offset: ?>>
                            %cst_121 = arith.constant 2.000000e+00 : f64
                            %c0_122 = arith.constant 0 : index
                            %91 = memref.load %alloca_1[%c0_122] : memref<1xmemref<?xf64>>
                            %c0_123 = arith.constant 0 : index
                            %92 = memref.load %alloca_4[%c0_123] : memref<1xi32>
                            %93 = arith.muli %2, %5 : i64
                            %94 = arith.extsi %92 : i32 to i64
                            %95 = arith.muli %94, %93 : i64
                            %96 = arith.index_cast %95 : i64 to index
                            %c1_124 = arith.constant 1 : index
                            %c0_125 = arith.constant 0 : index
                            %c0_126 = arith.constant 0 : index
                            %dim_127 = memref.dim %91, %c0_126 : memref<?xf64>
                            %97 = arith.subi %dim_127, %96 : index
                            %subview_128 = memref.subview %91[%96] [%97] [%c1_124] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_129 = memref.reinterpret_cast %subview_128 to offset: [0], sizes: [%97], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_130 = arith.constant 0 : index
                            %98 = memref.load %alloca_5[%c0_130] : memref<1xi32>
                            %99 = arith.extsi %98 : i32 to i64
                            %100 = arith.muli %99, %5 : i64
                            %101 = arith.index_cast %100 : i64 to index
                            %c1_131 = arith.constant 1 : index
                            %c0_132 = arith.constant 0 : index
                            %c0_133 = arith.constant 0 : index
                            %dim_134 = memref.dim %reinterpret_cast_129, %c0_133 : memref<?xf64>
                            %102 = arith.subi %dim_134, %101 : index
                            %subview_135 = memref.subview %reinterpret_cast_129[%101] [%102] [%c1_131] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_136 = memref.reinterpret_cast %subview_135 to offset: [0], sizes: [%102], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_137 = arith.constant 0 : index
                            %103 = memref.load %alloca_6[%c0_137] : memref<1xi32>
                            %104 = arith.index_cast %103 : i32 to index
                            %c0_138 = arith.constant 0 : index
                            %dim_139 = memref.dim %reinterpret_cast_136, %c0_138 : memref<?xf64>
                            %105 = arith.subi %dim_139, %104 : index
                            %c1_140 = arith.constant 1 : index
                            %subview_141 = memref.subview %reinterpret_cast_136[%104] [%105] [%c1_140] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_142 = arith.constant 0 : index
                            %106 = memref.load %subview_141[%c0_142] : memref<?xf64, strided<[?], offset: ?>>
                            %107 = arith.mulf %cst_121, %106 : f64
                            %108 = arith.subf %90, %107 : f64
                            %c0_143 = arith.constant 0 : index
                            %109 = memref.load %alloca_1[%c0_143] : memref<1xmemref<?xf64>>
                            %c0_144 = arith.constant 0 : index
                            %110 = memref.load %alloca_4[%c0_144] : memref<1xi32>
                            %111 = arith.muli %2, %5 : i64
                            %112 = arith.extsi %110 : i32 to i64
                            %113 = arith.muli %112, %111 : i64
                            %114 = arith.index_cast %113 : i64 to index
                            %c1_145 = arith.constant 1 : index
                            %c0_146 = arith.constant 0 : index
                            %c0_147 = arith.constant 0 : index
                            %dim_148 = memref.dim %109, %c0_147 : memref<?xf64>
                            %115 = arith.subi %dim_148, %114 : index
                            %subview_149 = memref.subview %109[%114] [%115] [%c1_145] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_150 = memref.reinterpret_cast %subview_149 to offset: [0], sizes: [%115], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_151 = arith.constant 0 : index
                            %116 = memref.load %alloca_5[%c0_151] : memref<1xi32>
                            %c1_i32_152 = arith.constant 1 : i32
                            %117 = arith.subi %116, %c1_i32_152 : i32
                            %118 = arith.extsi %117 : i32 to i64
                            %119 = arith.muli %118, %5 : i64
                            %120 = arith.index_cast %119 : i64 to index
                            %c1_153 = arith.constant 1 : index
                            %c0_154 = arith.constant 0 : index
                            %c0_155 = arith.constant 0 : index
                            %dim_156 = memref.dim %reinterpret_cast_150, %c0_155 : memref<?xf64>
                            %121 = arith.subi %dim_156, %120 : index
                            %subview_157 = memref.subview %reinterpret_cast_150[%120] [%121] [%c1_153] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_158 = memref.reinterpret_cast %subview_157 to offset: [0], sizes: [%121], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_159 = arith.constant 0 : index
                            %122 = memref.load %alloca_6[%c0_159] : memref<1xi32>
                            %123 = arith.index_cast %122 : i32 to index
                            %c0_160 = arith.constant 0 : index
                            %dim_161 = memref.dim %reinterpret_cast_158, %c0_160 : memref<?xf64>
                            %124 = arith.subi %dim_161, %123 : index
                            %c1_162 = arith.constant 1 : index
                            %subview_163 = memref.subview %reinterpret_cast_158[%123] [%124] [%c1_162] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_164 = arith.constant 0 : index
                            %125 = memref.load %subview_163[%c0_164] : memref<?xf64, strided<[?], offset: ?>>
                            %126 = arith.addf %108, %125 : f64
                            %127 = arith.mulf %cst_98, %126 : f64
                            %128 = arith.addf %73, %127 : f64
                            %cst_165 = arith.constant 1.250000e-01 : f64
                            %c0_166 = arith.constant 0 : index
                            %129 = memref.load %alloca_1[%c0_166] : memref<1xmemref<?xf64>>
                            %c0_167 = arith.constant 0 : index
                            %130 = memref.load %alloca_4[%c0_167] : memref<1xi32>
                            %131 = arith.muli %2, %5 : i64
                            %132 = arith.extsi %130 : i32 to i64
                            %133 = arith.muli %132, %131 : i64
                            %134 = arith.index_cast %133 : i64 to index
                            %c1_168 = arith.constant 1 : index
                            %c0_169 = arith.constant 0 : index
                            %c0_170 = arith.constant 0 : index
                            %dim_171 = memref.dim %129, %c0_170 : memref<?xf64>
                            %135 = arith.subi %dim_171, %134 : index
                            %subview_172 = memref.subview %129[%134] [%135] [%c1_168] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_173 = memref.reinterpret_cast %subview_172 to offset: [0], sizes: [%135], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_174 = arith.constant 0 : index
                            %136 = memref.load %alloca_5[%c0_174] : memref<1xi32>
                            %137 = arith.extsi %136 : i32 to i64
                            %138 = arith.muli %137, %5 : i64
                            %139 = arith.index_cast %138 : i64 to index
                            %c1_175 = arith.constant 1 : index
                            %c0_176 = arith.constant 0 : index
                            %c0_177 = arith.constant 0 : index
                            %dim_178 = memref.dim %reinterpret_cast_173, %c0_177 : memref<?xf64>
                            %140 = arith.subi %dim_178, %139 : index
                            %subview_179 = memref.subview %reinterpret_cast_173[%139] [%140] [%c1_175] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_180 = memref.reinterpret_cast %subview_179 to offset: [0], sizes: [%140], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_181 = arith.constant 0 : index
                            %141 = memref.load %alloca_6[%c0_181] : memref<1xi32>
                            %c1_i32_182 = arith.constant 1 : i32
                            %142 = arith.addi %141, %c1_i32_182 : i32
                            %143 = arith.index_cast %142 : i32 to index
                            %c0_183 = arith.constant 0 : index
                            %dim_184 = memref.dim %reinterpret_cast_180, %c0_183 : memref<?xf64>
                            %144 = arith.subi %dim_184, %143 : index
                            %c1_185 = arith.constant 1 : index
                            %subview_186 = memref.subview %reinterpret_cast_180[%143] [%144] [%c1_185] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_187 = arith.constant 0 : index
                            %145 = memref.load %subview_186[%c0_187] : memref<?xf64, strided<[?], offset: ?>>
                            %cst_188 = arith.constant 2.000000e+00 : f64
                            %c0_189 = arith.constant 0 : index
                            %146 = memref.load %alloca_1[%c0_189] : memref<1xmemref<?xf64>>
                            %c0_190 = arith.constant 0 : index
                            %147 = memref.load %alloca_4[%c0_190] : memref<1xi32>
                            %148 = arith.muli %2, %5 : i64
                            %149 = arith.extsi %147 : i32 to i64
                            %150 = arith.muli %149, %148 : i64
                            %151 = arith.index_cast %150 : i64 to index
                            %c1_191 = arith.constant 1 : index
                            %c0_192 = arith.constant 0 : index
                            %c0_193 = arith.constant 0 : index
                            %dim_194 = memref.dim %146, %c0_193 : memref<?xf64>
                            %152 = arith.subi %dim_194, %151 : index
                            %subview_195 = memref.subview %146[%151] [%152] [%c1_191] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_196 = memref.reinterpret_cast %subview_195 to offset: [0], sizes: [%152], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_197 = arith.constant 0 : index
                            %153 = memref.load %alloca_5[%c0_197] : memref<1xi32>
                            %154 = arith.extsi %153 : i32 to i64
                            %155 = arith.muli %154, %5 : i64
                            %156 = arith.index_cast %155 : i64 to index
                            %c1_198 = arith.constant 1 : index
                            %c0_199 = arith.constant 0 : index
                            %c0_200 = arith.constant 0 : index
                            %dim_201 = memref.dim %reinterpret_cast_196, %c0_200 : memref<?xf64>
                            %157 = arith.subi %dim_201, %156 : index
                            %subview_202 = memref.subview %reinterpret_cast_196[%156] [%157] [%c1_198] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_203 = memref.reinterpret_cast %subview_202 to offset: [0], sizes: [%157], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_204 = arith.constant 0 : index
                            %158 = memref.load %alloca_6[%c0_204] : memref<1xi32>
                            %159 = arith.index_cast %158 : i32 to index
                            %c0_205 = arith.constant 0 : index
                            %dim_206 = memref.dim %reinterpret_cast_203, %c0_205 : memref<?xf64>
                            %160 = arith.subi %dim_206, %159 : index
                            %c1_207 = arith.constant 1 : index
                            %subview_208 = memref.subview %reinterpret_cast_203[%159] [%160] [%c1_207] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_209 = arith.constant 0 : index
                            %161 = memref.load %subview_208[%c0_209] : memref<?xf64, strided<[?], offset: ?>>
                            %162 = arith.mulf %cst_188, %161 : f64
                            %163 = arith.subf %145, %162 : f64
                            %c0_210 = arith.constant 0 : index
                            %164 = memref.load %alloca_1[%c0_210] : memref<1xmemref<?xf64>>
                            %c0_211 = arith.constant 0 : index
                            %165 = memref.load %alloca_4[%c0_211] : memref<1xi32>
                            %166 = arith.muli %2, %5 : i64
                            %167 = arith.extsi %165 : i32 to i64
                            %168 = arith.muli %167, %166 : i64
                            %169 = arith.index_cast %168 : i64 to index
                            %c1_212 = arith.constant 1 : index
                            %c0_213 = arith.constant 0 : index
                            %c0_214 = arith.constant 0 : index
                            %dim_215 = memref.dim %164, %c0_214 : memref<?xf64>
                            %170 = arith.subi %dim_215, %169 : index
                            %subview_216 = memref.subview %164[%169] [%170] [%c1_212] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_217 = memref.reinterpret_cast %subview_216 to offset: [0], sizes: [%170], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_218 = arith.constant 0 : index
                            %171 = memref.load %alloca_5[%c0_218] : memref<1xi32>
                            %172 = arith.extsi %171 : i32 to i64
                            %173 = arith.muli %172, %5 : i64
                            %174 = arith.index_cast %173 : i64 to index
                            %c1_219 = arith.constant 1 : index
                            %c0_220 = arith.constant 0 : index
                            %c0_221 = arith.constant 0 : index
                            %dim_222 = memref.dim %reinterpret_cast_217, %c0_221 : memref<?xf64>
                            %175 = arith.subi %dim_222, %174 : index
                            %subview_223 = memref.subview %reinterpret_cast_217[%174] [%175] [%c1_219] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_224 = memref.reinterpret_cast %subview_223 to offset: [0], sizes: [%175], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_225 = arith.constant 0 : index
                            %176 = memref.load %alloca_6[%c0_225] : memref<1xi32>
                            %c1_i32_226 = arith.constant 1 : i32
                            %177 = arith.subi %176, %c1_i32_226 : i32
                            %178 = arith.index_cast %177 : i32 to index
                            %c0_227 = arith.constant 0 : index
                            %dim_228 = memref.dim %reinterpret_cast_224, %c0_227 : memref<?xf64>
                            %179 = arith.subi %dim_228, %178 : index
                            %c1_229 = arith.constant 1 : index
                            %subview_230 = memref.subview %reinterpret_cast_224[%178] [%179] [%c1_229] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_231 = arith.constant 0 : index
                            %180 = memref.load %subview_230[%c0_231] : memref<?xf64, strided<[?], offset: ?>>
                            %181 = arith.addf %163, %180 : f64
                            %182 = arith.mulf %cst_165, %181 : f64
                            %183 = arith.addf %128, %182 : f64
                            %c0_232 = arith.constant 0 : index
                            %184 = memref.load %alloca_1[%c0_232] : memref<1xmemref<?xf64>>
                            %c0_233 = arith.constant 0 : index
                            %185 = memref.load %alloca_4[%c0_233] : memref<1xi32>
                            %186 = arith.muli %2, %5 : i64
                            %187 = arith.extsi %185 : i32 to i64
                            %188 = arith.muli %187, %186 : i64
                            %189 = arith.index_cast %188 : i64 to index
                            %c1_234 = arith.constant 1 : index
                            %c0_235 = arith.constant 0 : index
                            %c0_236 = arith.constant 0 : index
                            %dim_237 = memref.dim %184, %c0_236 : memref<?xf64>
                            %190 = arith.subi %dim_237, %189 : index
                            %subview_238 = memref.subview %184[%189] [%190] [%c1_234] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_239 = memref.reinterpret_cast %subview_238 to offset: [0], sizes: [%190], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_240 = arith.constant 0 : index
                            %191 = memref.load %alloca_5[%c0_240] : memref<1xi32>
                            %192 = arith.extsi %191 : i32 to i64
                            %193 = arith.muli %192, %5 : i64
                            %194 = arith.index_cast %193 : i64 to index
                            %c1_241 = arith.constant 1 : index
                            %c0_242 = arith.constant 0 : index
                            %c0_243 = arith.constant 0 : index
                            %dim_244 = memref.dim %reinterpret_cast_239, %c0_243 : memref<?xf64>
                            %195 = arith.subi %dim_244, %194 : index
                            %subview_245 = memref.subview %reinterpret_cast_239[%194] [%195] [%c1_241] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_246 = memref.reinterpret_cast %subview_245 to offset: [0], sizes: [%195], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_247 = arith.constant 0 : index
                            %196 = memref.load %alloca_6[%c0_247] : memref<1xi32>
                            %197 = arith.index_cast %196 : i32 to index
                            %c0_248 = arith.constant 0 : index
                            %dim_249 = memref.dim %reinterpret_cast_246, %c0_248 : memref<?xf64>
                            %198 = arith.subi %dim_249, %197 : index
                            %c1_250 = arith.constant 1 : index
                            %subview_251 = memref.subview %reinterpret_cast_246[%197] [%198] [%c1_250] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_252 = arith.constant 0 : index
                            %199 = memref.load %subview_251[%c0_252] : memref<?xf64, strided<[?], offset: ?>>
                            %200 = arith.addf %183, %199 : f64
                            %c0_253 = arith.constant 0 : index
                            %201 = memref.load %alloca_2[%c0_253] : memref<1xmemref<?xf64>>
                            %c0_254 = arith.constant 0 : index
                            %202 = memref.load %alloca_4[%c0_254] : memref<1xi32>
                            %203 = arith.muli %8, %11 : i64
                            %204 = arith.extsi %202 : i32 to i64
                            %205 = arith.muli %204, %203 : i64
                            %206 = arith.index_cast %205 : i64 to index
                            %c1_255 = arith.constant 1 : index
                            %c0_256 = arith.constant 0 : index
                            %c0_257 = arith.constant 0 : index
                            %dim_258 = memref.dim %201, %c0_257 : memref<?xf64>
                            %207 = arith.subi %dim_258, %206 : index
                            %subview_259 = memref.subview %201[%206] [%207] [%c1_255] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_260 = memref.reinterpret_cast %subview_259 to offset: [0], sizes: [%207], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_261 = arith.constant 0 : index
                            %208 = memref.load %alloca_5[%c0_261] : memref<1xi32>
                            %209 = arith.extsi %208 : i32 to i64
                            %210 = arith.muli %209, %11 : i64
                            %211 = arith.index_cast %210 : i64 to index
                            %c1_262 = arith.constant 1 : index
                            %c0_263 = arith.constant 0 : index
                            %c0_264 = arith.constant 0 : index
                            %dim_265 = memref.dim %reinterpret_cast_260, %c0_264 : memref<?xf64>
                            %212 = arith.subi %dim_265, %211 : index
                            %subview_266 = memref.subview %reinterpret_cast_260[%211] [%212] [%c1_262] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_267 = memref.reinterpret_cast %subview_266 to offset: [0], sizes: [%212], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_268 = arith.constant 0 : index
                            %213 = memref.load %alloca_6[%c0_268] : memref<1xi32>
                            %214 = arith.index_cast %213 : i32 to index
                            %c0_269 = arith.constant 0 : index
                            %dim_270 = memref.dim %reinterpret_cast_267, %c0_269 : memref<?xf64>
                            %215 = arith.subi %dim_270, %214 : index
                            %c1_271 = arith.constant 1 : index
                            %subview_272 = memref.subview %reinterpret_cast_267[%214] [%215] [%c1_271] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_273 = arith.constant 0 : index
                            memref.store %200, %subview_272[%c0_273] : memref<?xf64, strided<[?], offset: ?>>
                          }
                          %c0_33 = arith.constant 0 : index
                          %18 = memref.load %alloca_6[%c0_33] : memref<1xi32>
                          %c1_i32_34 = arith.constant 1 : i32
                          %19 = arith.addi %18, %c1_i32_34 : i32
                          %c0_35 = arith.constant 0 : index
                          memref.store %19, %alloca_6[%c0_35] : memref<1xi32>
                          scf.yield
                        }
                      }
                    }
                    %c0_28 = arith.constant 0 : index
                    %16 = memref.load %alloca_5[%c0_28] : memref<1xi32>
                    %c1_i32_29 = arith.constant 1 : i32
                    %17 = arith.addi %16, %c1_i32_29 : i32
                    %c0_30 = arith.constant 0 : index
                    memref.store %17, %alloca_5[%c0_30] : memref<1xi32>
                    scf.yield
                  }
                }
              }
              %c0_23 = arith.constant 0 : index
              %14 = memref.load %alloca_4[%c0_23] : memref<1xi32>
              %c1_i32_24 = arith.constant 1 : i32
              %15 = arith.addi %14, %c1_i32_24 : i32
              %c0_25 = arith.constant 0 : index
              memref.store %15, %alloca_4[%c0_25] : memref<1xi32>
              scf.yield
            }
          }
          memref.alloca_scope  {
            %c1_i32_21 = arith.constant 1 : i32
            %c0_22 = arith.constant 0 : index
            memref.store %c1_i32_21, %alloca_4[%c0_22] : memref<1xi32>
            scf.while : () -> () {
              %c0_23 = arith.constant 0 : index
              %14 = memref.load %alloca_4[%c0_23] : memref<1xi32>
              %c0_24 = arith.constant 0 : index
              %15 = memref.load %alloca_0[%c0_24] : memref<1xi32>
              %c1_i32_25 = arith.constant 1 : i32
              %16 = arith.subi %15, %c1_i32_25 : i32
              %17 = arith.cmpi slt, %14, %16 : i32
              scf.condition(%17)
            } do {
              memref.alloca_scope  {
                memref.alloca_scope  {
                  %c1_i32_26 = arith.constant 1 : i32
                  %c0_27 = arith.constant 0 : index
                  memref.store %c1_i32_26, %alloca_5[%c0_27] : memref<1xi32>
                  scf.while : () -> () {
                    %c0_28 = arith.constant 0 : index
                    %16 = memref.load %alloca_5[%c0_28] : memref<1xi32>
                    %c0_29 = arith.constant 0 : index
                    %17 = memref.load %alloca_0[%c0_29] : memref<1xi32>
                    %c1_i32_30 = arith.constant 1 : i32
                    %18 = arith.subi %17, %c1_i32_30 : i32
                    %19 = arith.cmpi slt, %16, %18 : i32
                    scf.condition(%19)
                  } do {
                    memref.alloca_scope  {
                      memref.alloca_scope  {
                        %c1_i32_31 = arith.constant 1 : i32
                        %c0_32 = arith.constant 0 : index
                        memref.store %c1_i32_31, %alloca_6[%c0_32] : memref<1xi32>
                        scf.while : () -> () {
                          %c0_33 = arith.constant 0 : index
                          %18 = memref.load %alloca_6[%c0_33] : memref<1xi32>
                          %c0_34 = arith.constant 0 : index
                          %19 = memref.load %alloca_0[%c0_34] : memref<1xi32>
                          %c1_i32_35 = arith.constant 1 : i32
                          %20 = arith.subi %19, %c1_i32_35 : i32
                          %21 = arith.cmpi slt, %18, %20 : i32
                          scf.condition(%21)
                        } do {
                          memref.alloca_scope  {
                            %cst = arith.constant 1.250000e-01 : f64
                            %c0_36 = arith.constant 0 : index
                            %20 = memref.load %alloca_2[%c0_36] : memref<1xmemref<?xf64>>
                            %c0_37 = arith.constant 0 : index
                            %21 = memref.load %alloca_4[%c0_37] : memref<1xi32>
                            %c1_i32_38 = arith.constant 1 : i32
                            %22 = arith.addi %21, %c1_i32_38 : i32
                            %23 = arith.muli %8, %11 : i64
                            %24 = arith.extsi %22 : i32 to i64
                            %25 = arith.muli %24, %23 : i64
                            %26 = arith.index_cast %25 : i64 to index
                            %c1 = arith.constant 1 : index
                            %c0_39 = arith.constant 0 : index
                            %c0_40 = arith.constant 0 : index
                            %dim = memref.dim %20, %c0_40 : memref<?xf64>
                            %27 = arith.subi %dim, %26 : index
                            %subview = memref.subview %20[%26] [%27] [%c1] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%27], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_41 = arith.constant 0 : index
                            %28 = memref.load %alloca_5[%c0_41] : memref<1xi32>
                            %29 = arith.extsi %28 : i32 to i64
                            %30 = arith.muli %29, %11 : i64
                            %31 = arith.index_cast %30 : i64 to index
                            %c1_42 = arith.constant 1 : index
                            %c0_43 = arith.constant 0 : index
                            %c0_44 = arith.constant 0 : index
                            %dim_45 = memref.dim %reinterpret_cast, %c0_44 : memref<?xf64>
                            %32 = arith.subi %dim_45, %31 : index
                            %subview_46 = memref.subview %reinterpret_cast[%31] [%32] [%c1_42] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_47 = memref.reinterpret_cast %subview_46 to offset: [0], sizes: [%32], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_48 = arith.constant 0 : index
                            %33 = memref.load %alloca_6[%c0_48] : memref<1xi32>
                            %34 = arith.index_cast %33 : i32 to index
                            %c0_49 = arith.constant 0 : index
                            %dim_50 = memref.dim %reinterpret_cast_47, %c0_49 : memref<?xf64>
                            %35 = arith.subi %dim_50, %34 : index
                            %c1_51 = arith.constant 1 : index
                            %subview_52 = memref.subview %reinterpret_cast_47[%34] [%35] [%c1_51] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_53 = arith.constant 0 : index
                            %36 = memref.load %subview_52[%c0_53] : memref<?xf64, strided<[?], offset: ?>>
                            %cst_54 = arith.constant 2.000000e+00 : f64
                            %c0_55 = arith.constant 0 : index
                            %37 = memref.load %alloca_2[%c0_55] : memref<1xmemref<?xf64>>
                            %c0_56 = arith.constant 0 : index
                            %38 = memref.load %alloca_4[%c0_56] : memref<1xi32>
                            %39 = arith.muli %8, %11 : i64
                            %40 = arith.extsi %38 : i32 to i64
                            %41 = arith.muli %40, %39 : i64
                            %42 = arith.index_cast %41 : i64 to index
                            %c1_57 = arith.constant 1 : index
                            %c0_58 = arith.constant 0 : index
                            %c0_59 = arith.constant 0 : index
                            %dim_60 = memref.dim %37, %c0_59 : memref<?xf64>
                            %43 = arith.subi %dim_60, %42 : index
                            %subview_61 = memref.subview %37[%42] [%43] [%c1_57] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_62 = memref.reinterpret_cast %subview_61 to offset: [0], sizes: [%43], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_63 = arith.constant 0 : index
                            %44 = memref.load %alloca_5[%c0_63] : memref<1xi32>
                            %45 = arith.extsi %44 : i32 to i64
                            %46 = arith.muli %45, %11 : i64
                            %47 = arith.index_cast %46 : i64 to index
                            %c1_64 = arith.constant 1 : index
                            %c0_65 = arith.constant 0 : index
                            %c0_66 = arith.constant 0 : index
                            %dim_67 = memref.dim %reinterpret_cast_62, %c0_66 : memref<?xf64>
                            %48 = arith.subi %dim_67, %47 : index
                            %subview_68 = memref.subview %reinterpret_cast_62[%47] [%48] [%c1_64] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_69 = memref.reinterpret_cast %subview_68 to offset: [0], sizes: [%48], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_70 = arith.constant 0 : index
                            %49 = memref.load %alloca_6[%c0_70] : memref<1xi32>
                            %50 = arith.index_cast %49 : i32 to index
                            %c0_71 = arith.constant 0 : index
                            %dim_72 = memref.dim %reinterpret_cast_69, %c0_71 : memref<?xf64>
                            %51 = arith.subi %dim_72, %50 : index
                            %c1_73 = arith.constant 1 : index
                            %subview_74 = memref.subview %reinterpret_cast_69[%50] [%51] [%c1_73] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_75 = arith.constant 0 : index
                            %52 = memref.load %subview_74[%c0_75] : memref<?xf64, strided<[?], offset: ?>>
                            %53 = arith.mulf %cst_54, %52 : f64
                            %54 = arith.subf %36, %53 : f64
                            %c0_76 = arith.constant 0 : index
                            %55 = memref.load %alloca_2[%c0_76] : memref<1xmemref<?xf64>>
                            %c0_77 = arith.constant 0 : index
                            %56 = memref.load %alloca_4[%c0_77] : memref<1xi32>
                            %c1_i32_78 = arith.constant 1 : i32
                            %57 = arith.subi %56, %c1_i32_78 : i32
                            %58 = arith.muli %8, %11 : i64
                            %59 = arith.extsi %57 : i32 to i64
                            %60 = arith.muli %59, %58 : i64
                            %61 = arith.index_cast %60 : i64 to index
                            %c1_79 = arith.constant 1 : index
                            %c0_80 = arith.constant 0 : index
                            %c0_81 = arith.constant 0 : index
                            %dim_82 = memref.dim %55, %c0_81 : memref<?xf64>
                            %62 = arith.subi %dim_82, %61 : index
                            %subview_83 = memref.subview %55[%61] [%62] [%c1_79] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_84 = memref.reinterpret_cast %subview_83 to offset: [0], sizes: [%62], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_85 = arith.constant 0 : index
                            %63 = memref.load %alloca_5[%c0_85] : memref<1xi32>
                            %64 = arith.extsi %63 : i32 to i64
                            %65 = arith.muli %64, %11 : i64
                            %66 = arith.index_cast %65 : i64 to index
                            %c1_86 = arith.constant 1 : index
                            %c0_87 = arith.constant 0 : index
                            %c0_88 = arith.constant 0 : index
                            %dim_89 = memref.dim %reinterpret_cast_84, %c0_88 : memref<?xf64>
                            %67 = arith.subi %dim_89, %66 : index
                            %subview_90 = memref.subview %reinterpret_cast_84[%66] [%67] [%c1_86] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_91 = memref.reinterpret_cast %subview_90 to offset: [0], sizes: [%67], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_92 = arith.constant 0 : index
                            %68 = memref.load %alloca_6[%c0_92] : memref<1xi32>
                            %69 = arith.index_cast %68 : i32 to index
                            %c0_93 = arith.constant 0 : index
                            %dim_94 = memref.dim %reinterpret_cast_91, %c0_93 : memref<?xf64>
                            %70 = arith.subi %dim_94, %69 : index
                            %c1_95 = arith.constant 1 : index
                            %subview_96 = memref.subview %reinterpret_cast_91[%69] [%70] [%c1_95] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_97 = arith.constant 0 : index
                            %71 = memref.load %subview_96[%c0_97] : memref<?xf64, strided<[?], offset: ?>>
                            %72 = arith.addf %54, %71 : f64
                            %73 = arith.mulf %cst, %72 : f64
                            %cst_98 = arith.constant 1.250000e-01 : f64
                            %c0_99 = arith.constant 0 : index
                            %74 = memref.load %alloca_2[%c0_99] : memref<1xmemref<?xf64>>
                            %c0_100 = arith.constant 0 : index
                            %75 = memref.load %alloca_4[%c0_100] : memref<1xi32>
                            %76 = arith.muli %8, %11 : i64
                            %77 = arith.extsi %75 : i32 to i64
                            %78 = arith.muli %77, %76 : i64
                            %79 = arith.index_cast %78 : i64 to index
                            %c1_101 = arith.constant 1 : index
                            %c0_102 = arith.constant 0 : index
                            %c0_103 = arith.constant 0 : index
                            %dim_104 = memref.dim %74, %c0_103 : memref<?xf64>
                            %80 = arith.subi %dim_104, %79 : index
                            %subview_105 = memref.subview %74[%79] [%80] [%c1_101] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_106 = memref.reinterpret_cast %subview_105 to offset: [0], sizes: [%80], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_107 = arith.constant 0 : index
                            %81 = memref.load %alloca_5[%c0_107] : memref<1xi32>
                            %c1_i32_108 = arith.constant 1 : i32
                            %82 = arith.addi %81, %c1_i32_108 : i32
                            %83 = arith.extsi %82 : i32 to i64
                            %84 = arith.muli %83, %11 : i64
                            %85 = arith.index_cast %84 : i64 to index
                            %c1_109 = arith.constant 1 : index
                            %c0_110 = arith.constant 0 : index
                            %c0_111 = arith.constant 0 : index
                            %dim_112 = memref.dim %reinterpret_cast_106, %c0_111 : memref<?xf64>
                            %86 = arith.subi %dim_112, %85 : index
                            %subview_113 = memref.subview %reinterpret_cast_106[%85] [%86] [%c1_109] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_114 = memref.reinterpret_cast %subview_113 to offset: [0], sizes: [%86], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_115 = arith.constant 0 : index
                            %87 = memref.load %alloca_6[%c0_115] : memref<1xi32>
                            %88 = arith.index_cast %87 : i32 to index
                            %c0_116 = arith.constant 0 : index
                            %dim_117 = memref.dim %reinterpret_cast_114, %c0_116 : memref<?xf64>
                            %89 = arith.subi %dim_117, %88 : index
                            %c1_118 = arith.constant 1 : index
                            %subview_119 = memref.subview %reinterpret_cast_114[%88] [%89] [%c1_118] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_120 = arith.constant 0 : index
                            %90 = memref.load %subview_119[%c0_120] : memref<?xf64, strided<[?], offset: ?>>
                            %cst_121 = arith.constant 2.000000e+00 : f64
                            %c0_122 = arith.constant 0 : index
                            %91 = memref.load %alloca_2[%c0_122] : memref<1xmemref<?xf64>>
                            %c0_123 = arith.constant 0 : index
                            %92 = memref.load %alloca_4[%c0_123] : memref<1xi32>
                            %93 = arith.muli %8, %11 : i64
                            %94 = arith.extsi %92 : i32 to i64
                            %95 = arith.muli %94, %93 : i64
                            %96 = arith.index_cast %95 : i64 to index
                            %c1_124 = arith.constant 1 : index
                            %c0_125 = arith.constant 0 : index
                            %c0_126 = arith.constant 0 : index
                            %dim_127 = memref.dim %91, %c0_126 : memref<?xf64>
                            %97 = arith.subi %dim_127, %96 : index
                            %subview_128 = memref.subview %91[%96] [%97] [%c1_124] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_129 = memref.reinterpret_cast %subview_128 to offset: [0], sizes: [%97], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_130 = arith.constant 0 : index
                            %98 = memref.load %alloca_5[%c0_130] : memref<1xi32>
                            %99 = arith.extsi %98 : i32 to i64
                            %100 = arith.muli %99, %11 : i64
                            %101 = arith.index_cast %100 : i64 to index
                            %c1_131 = arith.constant 1 : index
                            %c0_132 = arith.constant 0 : index
                            %c0_133 = arith.constant 0 : index
                            %dim_134 = memref.dim %reinterpret_cast_129, %c0_133 : memref<?xf64>
                            %102 = arith.subi %dim_134, %101 : index
                            %subview_135 = memref.subview %reinterpret_cast_129[%101] [%102] [%c1_131] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_136 = memref.reinterpret_cast %subview_135 to offset: [0], sizes: [%102], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_137 = arith.constant 0 : index
                            %103 = memref.load %alloca_6[%c0_137] : memref<1xi32>
                            %104 = arith.index_cast %103 : i32 to index
                            %c0_138 = arith.constant 0 : index
                            %dim_139 = memref.dim %reinterpret_cast_136, %c0_138 : memref<?xf64>
                            %105 = arith.subi %dim_139, %104 : index
                            %c1_140 = arith.constant 1 : index
                            %subview_141 = memref.subview %reinterpret_cast_136[%104] [%105] [%c1_140] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_142 = arith.constant 0 : index
                            %106 = memref.load %subview_141[%c0_142] : memref<?xf64, strided<[?], offset: ?>>
                            %107 = arith.mulf %cst_121, %106 : f64
                            %108 = arith.subf %90, %107 : f64
                            %c0_143 = arith.constant 0 : index
                            %109 = memref.load %alloca_2[%c0_143] : memref<1xmemref<?xf64>>
                            %c0_144 = arith.constant 0 : index
                            %110 = memref.load %alloca_4[%c0_144] : memref<1xi32>
                            %111 = arith.muli %8, %11 : i64
                            %112 = arith.extsi %110 : i32 to i64
                            %113 = arith.muli %112, %111 : i64
                            %114 = arith.index_cast %113 : i64 to index
                            %c1_145 = arith.constant 1 : index
                            %c0_146 = arith.constant 0 : index
                            %c0_147 = arith.constant 0 : index
                            %dim_148 = memref.dim %109, %c0_147 : memref<?xf64>
                            %115 = arith.subi %dim_148, %114 : index
                            %subview_149 = memref.subview %109[%114] [%115] [%c1_145] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_150 = memref.reinterpret_cast %subview_149 to offset: [0], sizes: [%115], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_151 = arith.constant 0 : index
                            %116 = memref.load %alloca_5[%c0_151] : memref<1xi32>
                            %c1_i32_152 = arith.constant 1 : i32
                            %117 = arith.subi %116, %c1_i32_152 : i32
                            %118 = arith.extsi %117 : i32 to i64
                            %119 = arith.muli %118, %11 : i64
                            %120 = arith.index_cast %119 : i64 to index
                            %c1_153 = arith.constant 1 : index
                            %c0_154 = arith.constant 0 : index
                            %c0_155 = arith.constant 0 : index
                            %dim_156 = memref.dim %reinterpret_cast_150, %c0_155 : memref<?xf64>
                            %121 = arith.subi %dim_156, %120 : index
                            %subview_157 = memref.subview %reinterpret_cast_150[%120] [%121] [%c1_153] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_158 = memref.reinterpret_cast %subview_157 to offset: [0], sizes: [%121], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_159 = arith.constant 0 : index
                            %122 = memref.load %alloca_6[%c0_159] : memref<1xi32>
                            %123 = arith.index_cast %122 : i32 to index
                            %c0_160 = arith.constant 0 : index
                            %dim_161 = memref.dim %reinterpret_cast_158, %c0_160 : memref<?xf64>
                            %124 = arith.subi %dim_161, %123 : index
                            %c1_162 = arith.constant 1 : index
                            %subview_163 = memref.subview %reinterpret_cast_158[%123] [%124] [%c1_162] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_164 = arith.constant 0 : index
                            %125 = memref.load %subview_163[%c0_164] : memref<?xf64, strided<[?], offset: ?>>
                            %126 = arith.addf %108, %125 : f64
                            %127 = arith.mulf %cst_98, %126 : f64
                            %128 = arith.addf %73, %127 : f64
                            %cst_165 = arith.constant 1.250000e-01 : f64
                            %c0_166 = arith.constant 0 : index
                            %129 = memref.load %alloca_2[%c0_166] : memref<1xmemref<?xf64>>
                            %c0_167 = arith.constant 0 : index
                            %130 = memref.load %alloca_4[%c0_167] : memref<1xi32>
                            %131 = arith.muli %8, %11 : i64
                            %132 = arith.extsi %130 : i32 to i64
                            %133 = arith.muli %132, %131 : i64
                            %134 = arith.index_cast %133 : i64 to index
                            %c1_168 = arith.constant 1 : index
                            %c0_169 = arith.constant 0 : index
                            %c0_170 = arith.constant 0 : index
                            %dim_171 = memref.dim %129, %c0_170 : memref<?xf64>
                            %135 = arith.subi %dim_171, %134 : index
                            %subview_172 = memref.subview %129[%134] [%135] [%c1_168] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_173 = memref.reinterpret_cast %subview_172 to offset: [0], sizes: [%135], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_174 = arith.constant 0 : index
                            %136 = memref.load %alloca_5[%c0_174] : memref<1xi32>
                            %137 = arith.extsi %136 : i32 to i64
                            %138 = arith.muli %137, %11 : i64
                            %139 = arith.index_cast %138 : i64 to index
                            %c1_175 = arith.constant 1 : index
                            %c0_176 = arith.constant 0 : index
                            %c0_177 = arith.constant 0 : index
                            %dim_178 = memref.dim %reinterpret_cast_173, %c0_177 : memref<?xf64>
                            %140 = arith.subi %dim_178, %139 : index
                            %subview_179 = memref.subview %reinterpret_cast_173[%139] [%140] [%c1_175] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_180 = memref.reinterpret_cast %subview_179 to offset: [0], sizes: [%140], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_181 = arith.constant 0 : index
                            %141 = memref.load %alloca_6[%c0_181] : memref<1xi32>
                            %c1_i32_182 = arith.constant 1 : i32
                            %142 = arith.addi %141, %c1_i32_182 : i32
                            %143 = arith.index_cast %142 : i32 to index
                            %c0_183 = arith.constant 0 : index
                            %dim_184 = memref.dim %reinterpret_cast_180, %c0_183 : memref<?xf64>
                            %144 = arith.subi %dim_184, %143 : index
                            %c1_185 = arith.constant 1 : index
                            %subview_186 = memref.subview %reinterpret_cast_180[%143] [%144] [%c1_185] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_187 = arith.constant 0 : index
                            %145 = memref.load %subview_186[%c0_187] : memref<?xf64, strided<[?], offset: ?>>
                            %cst_188 = arith.constant 2.000000e+00 : f64
                            %c0_189 = arith.constant 0 : index
                            %146 = memref.load %alloca_2[%c0_189] : memref<1xmemref<?xf64>>
                            %c0_190 = arith.constant 0 : index
                            %147 = memref.load %alloca_4[%c0_190] : memref<1xi32>
                            %148 = arith.muli %8, %11 : i64
                            %149 = arith.extsi %147 : i32 to i64
                            %150 = arith.muli %149, %148 : i64
                            %151 = arith.index_cast %150 : i64 to index
                            %c1_191 = arith.constant 1 : index
                            %c0_192 = arith.constant 0 : index
                            %c0_193 = arith.constant 0 : index
                            %dim_194 = memref.dim %146, %c0_193 : memref<?xf64>
                            %152 = arith.subi %dim_194, %151 : index
                            %subview_195 = memref.subview %146[%151] [%152] [%c1_191] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_196 = memref.reinterpret_cast %subview_195 to offset: [0], sizes: [%152], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_197 = arith.constant 0 : index
                            %153 = memref.load %alloca_5[%c0_197] : memref<1xi32>
                            %154 = arith.extsi %153 : i32 to i64
                            %155 = arith.muli %154, %11 : i64
                            %156 = arith.index_cast %155 : i64 to index
                            %c1_198 = arith.constant 1 : index
                            %c0_199 = arith.constant 0 : index
                            %c0_200 = arith.constant 0 : index
                            %dim_201 = memref.dim %reinterpret_cast_196, %c0_200 : memref<?xf64>
                            %157 = arith.subi %dim_201, %156 : index
                            %subview_202 = memref.subview %reinterpret_cast_196[%156] [%157] [%c1_198] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_203 = memref.reinterpret_cast %subview_202 to offset: [0], sizes: [%157], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_204 = arith.constant 0 : index
                            %158 = memref.load %alloca_6[%c0_204] : memref<1xi32>
                            %159 = arith.index_cast %158 : i32 to index
                            %c0_205 = arith.constant 0 : index
                            %dim_206 = memref.dim %reinterpret_cast_203, %c0_205 : memref<?xf64>
                            %160 = arith.subi %dim_206, %159 : index
                            %c1_207 = arith.constant 1 : index
                            %subview_208 = memref.subview %reinterpret_cast_203[%159] [%160] [%c1_207] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_209 = arith.constant 0 : index
                            %161 = memref.load %subview_208[%c0_209] : memref<?xf64, strided<[?], offset: ?>>
                            %162 = arith.mulf %cst_188, %161 : f64
                            %163 = arith.subf %145, %162 : f64
                            %c0_210 = arith.constant 0 : index
                            %164 = memref.load %alloca_2[%c0_210] : memref<1xmemref<?xf64>>
                            %c0_211 = arith.constant 0 : index
                            %165 = memref.load %alloca_4[%c0_211] : memref<1xi32>
                            %166 = arith.muli %8, %11 : i64
                            %167 = arith.extsi %165 : i32 to i64
                            %168 = arith.muli %167, %166 : i64
                            %169 = arith.index_cast %168 : i64 to index
                            %c1_212 = arith.constant 1 : index
                            %c0_213 = arith.constant 0 : index
                            %c0_214 = arith.constant 0 : index
                            %dim_215 = memref.dim %164, %c0_214 : memref<?xf64>
                            %170 = arith.subi %dim_215, %169 : index
                            %subview_216 = memref.subview %164[%169] [%170] [%c1_212] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_217 = memref.reinterpret_cast %subview_216 to offset: [0], sizes: [%170], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_218 = arith.constant 0 : index
                            %171 = memref.load %alloca_5[%c0_218] : memref<1xi32>
                            %172 = arith.extsi %171 : i32 to i64
                            %173 = arith.muli %172, %11 : i64
                            %174 = arith.index_cast %173 : i64 to index
                            %c1_219 = arith.constant 1 : index
                            %c0_220 = arith.constant 0 : index
                            %c0_221 = arith.constant 0 : index
                            %dim_222 = memref.dim %reinterpret_cast_217, %c0_221 : memref<?xf64>
                            %175 = arith.subi %dim_222, %174 : index
                            %subview_223 = memref.subview %reinterpret_cast_217[%174] [%175] [%c1_219] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_224 = memref.reinterpret_cast %subview_223 to offset: [0], sizes: [%175], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_225 = arith.constant 0 : index
                            %176 = memref.load %alloca_6[%c0_225] : memref<1xi32>
                            %c1_i32_226 = arith.constant 1 : i32
                            %177 = arith.subi %176, %c1_i32_226 : i32
                            %178 = arith.index_cast %177 : i32 to index
                            %c0_227 = arith.constant 0 : index
                            %dim_228 = memref.dim %reinterpret_cast_224, %c0_227 : memref<?xf64>
                            %179 = arith.subi %dim_228, %178 : index
                            %c1_229 = arith.constant 1 : index
                            %subview_230 = memref.subview %reinterpret_cast_224[%178] [%179] [%c1_229] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_231 = arith.constant 0 : index
                            %180 = memref.load %subview_230[%c0_231] : memref<?xf64, strided<[?], offset: ?>>
                            %181 = arith.addf %163, %180 : f64
                            %182 = arith.mulf %cst_165, %181 : f64
                            %183 = arith.addf %128, %182 : f64
                            %c0_232 = arith.constant 0 : index
                            %184 = memref.load %alloca_2[%c0_232] : memref<1xmemref<?xf64>>
                            %c0_233 = arith.constant 0 : index
                            %185 = memref.load %alloca_4[%c0_233] : memref<1xi32>
                            %186 = arith.muli %8, %11 : i64
                            %187 = arith.extsi %185 : i32 to i64
                            %188 = arith.muli %187, %186 : i64
                            %189 = arith.index_cast %188 : i64 to index
                            %c1_234 = arith.constant 1 : index
                            %c0_235 = arith.constant 0 : index
                            %c0_236 = arith.constant 0 : index
                            %dim_237 = memref.dim %184, %c0_236 : memref<?xf64>
                            %190 = arith.subi %dim_237, %189 : index
                            %subview_238 = memref.subview %184[%189] [%190] [%c1_234] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_239 = memref.reinterpret_cast %subview_238 to offset: [0], sizes: [%190], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_240 = arith.constant 0 : index
                            %191 = memref.load %alloca_5[%c0_240] : memref<1xi32>
                            %192 = arith.extsi %191 : i32 to i64
                            %193 = arith.muli %192, %11 : i64
                            %194 = arith.index_cast %193 : i64 to index
                            %c1_241 = arith.constant 1 : index
                            %c0_242 = arith.constant 0 : index
                            %c0_243 = arith.constant 0 : index
                            %dim_244 = memref.dim %reinterpret_cast_239, %c0_243 : memref<?xf64>
                            %195 = arith.subi %dim_244, %194 : index
                            %subview_245 = memref.subview %reinterpret_cast_239[%194] [%195] [%c1_241] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_246 = memref.reinterpret_cast %subview_245 to offset: [0], sizes: [%195], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_247 = arith.constant 0 : index
                            %196 = memref.load %alloca_6[%c0_247] : memref<1xi32>
                            %197 = arith.index_cast %196 : i32 to index
                            %c0_248 = arith.constant 0 : index
                            %dim_249 = memref.dim %reinterpret_cast_246, %c0_248 : memref<?xf64>
                            %198 = arith.subi %dim_249, %197 : index
                            %c1_250 = arith.constant 1 : index
                            %subview_251 = memref.subview %reinterpret_cast_246[%197] [%198] [%c1_250] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_252 = arith.constant 0 : index
                            %199 = memref.load %subview_251[%c0_252] : memref<?xf64, strided<[?], offset: ?>>
                            %200 = arith.addf %183, %199 : f64
                            %c0_253 = arith.constant 0 : index
                            %201 = memref.load %alloca_1[%c0_253] : memref<1xmemref<?xf64>>
                            %c0_254 = arith.constant 0 : index
                            %202 = memref.load %alloca_4[%c0_254] : memref<1xi32>
                            %203 = arith.muli %2, %5 : i64
                            %204 = arith.extsi %202 : i32 to i64
                            %205 = arith.muli %204, %203 : i64
                            %206 = arith.index_cast %205 : i64 to index
                            %c1_255 = arith.constant 1 : index
                            %c0_256 = arith.constant 0 : index
                            %c0_257 = arith.constant 0 : index
                            %dim_258 = memref.dim %201, %c0_257 : memref<?xf64>
                            %207 = arith.subi %dim_258, %206 : index
                            %subview_259 = memref.subview %201[%206] [%207] [%c1_255] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_260 = memref.reinterpret_cast %subview_259 to offset: [0], sizes: [%207], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_261 = arith.constant 0 : index
                            %208 = memref.load %alloca_5[%c0_261] : memref<1xi32>
                            %209 = arith.extsi %208 : i32 to i64
                            %210 = arith.muli %209, %5 : i64
                            %211 = arith.index_cast %210 : i64 to index
                            %c1_262 = arith.constant 1 : index
                            %c0_263 = arith.constant 0 : index
                            %c0_264 = arith.constant 0 : index
                            %dim_265 = memref.dim %reinterpret_cast_260, %c0_264 : memref<?xf64>
                            %212 = arith.subi %dim_265, %211 : index
                            %subview_266 = memref.subview %reinterpret_cast_260[%211] [%212] [%c1_262] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %reinterpret_cast_267 = memref.reinterpret_cast %subview_266 to offset: [0], sizes: [%212], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                            %c0_268 = arith.constant 0 : index
                            %213 = memref.load %alloca_6[%c0_268] : memref<1xi32>
                            %214 = arith.index_cast %213 : i32 to index
                            %c0_269 = arith.constant 0 : index
                            %dim_270 = memref.dim %reinterpret_cast_267, %c0_269 : memref<?xf64>
                            %215 = arith.subi %dim_270, %214 : index
                            %c1_271 = arith.constant 1 : index
                            %subview_272 = memref.subview %reinterpret_cast_267[%214] [%215] [%c1_271] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                            %c0_273 = arith.constant 0 : index
                            memref.store %200, %subview_272[%c0_273] : memref<?xf64, strided<[?], offset: ?>>
                          }
                          %c0_33 = arith.constant 0 : index
                          %18 = memref.load %alloca_6[%c0_33] : memref<1xi32>
                          %c1_i32_34 = arith.constant 1 : i32
                          %19 = arith.addi %18, %c1_i32_34 : i32
                          %c0_35 = arith.constant 0 : index
                          memref.store %19, %alloca_6[%c0_35] : memref<1xi32>
                          scf.yield
                        }
                      }
                    }
                    %c0_28 = arith.constant 0 : index
                    %16 = memref.load %alloca_5[%c0_28] : memref<1xi32>
                    %c1_i32_29 = arith.constant 1 : i32
                    %17 = arith.addi %16, %c1_i32_29 : i32
                    %c0_30 = arith.constant 0 : index
                    memref.store %17, %alloca_5[%c0_30] : memref<1xi32>
                    scf.yield
                  }
                }
              }
              %c0_23 = arith.constant 0 : index
              %14 = memref.load %alloca_4[%c0_23] : memref<1xi32>
              %c1_i32_24 = arith.constant 1 : i32
              %15 = arith.addi %14, %c1_i32_24 : i32
              %c0_25 = arith.constant 0 : index
              memref.store %15, %alloca_4[%c0_25] : memref<1xi32>
              scf.yield
            }
          }
        }
        %c0_18 = arith.constant 0 : index
        %12 = memref.load %alloca_3[%c0_18] : memref<1xi32>
        %c1_i32_19 = arith.constant 1 : i32
        %13 = arith.addi %12, %c1_i32_19 : i32
        %c0_20 = arith.constant 0 : index
        memref.store %13, %alloca_3[%c0_20] : memref<1xi32>
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
    %c0_6 = arith.constant 0 : index
    %3 = memref.load %alloca[%c0_6] : memref<1xi32>
    %c0_i32_7 = arith.constant 0 : i32
    %4 = arith.addi %3, %c0_i32_7 : i32
    %5 = arith.extsi %4 : i32 to i64
    %6 = llvm.mlir.addressof @stderr : !llvm.ptr
    %7 = llvm.load %6 : !llvm.ptr -> !llvm.ptr
    %8 = memref.get_global @".str" : memref<23xi8>
    %c0_8 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c23 = arith.constant 23 : index
    %subview = memref.subview %8[%c0_8] [%c23] [%c1] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast = memref.reinterpret_cast %subview to offset: [0], sizes: [%c23], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr = memref.extract_aligned_pointer_as_index %reinterpret_cast : memref<?xi8> -> index
    %9 = arith.index_castui %intptr : index to i64
    %10 = llvm.inttoptr %9 : i64 to !llvm.ptr
    %11 = llvm.call @fprintf(%7, %10) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
    %12 = llvm.mlir.addressof @stderr : !llvm.ptr
    %13 = llvm.load %12 : !llvm.ptr -> !llvm.ptr
    %14 = memref.get_global @".str.1" : memref<15xi8>
    %c0_9 = arith.constant 0 : index
    %c1_10 = arith.constant 1 : index
    %c15 = arith.constant 15 : index
    %subview_11 = memref.subview %14[%c0_9] [%c15] [%c1_10] : memref<15xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_12 = memref.reinterpret_cast %subview_11 to offset: [0], sizes: [%c15], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %15 = memref.get_global @".str.2" : memref<2xi8>
    %c0_13 = arith.constant 0 : index
    %c1_14 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %subview_15 = memref.subview %15[%c0_13] [%c2] [%c1_14] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_16 = memref.reinterpret_cast %subview_15 to offset: [0], sizes: [%c2], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_17 = memref.extract_aligned_pointer_as_index %reinterpret_cast_12 : memref<?xi8> -> index
    %16 = arith.index_castui %intptr_17 : index to i64
    %17 = llvm.inttoptr %16 : i64 to !llvm.ptr
    %intptr_18 = memref.extract_aligned_pointer_as_index %reinterpret_cast_16 : memref<?xi8> -> index
    %18 = arith.index_castui %intptr_18 : index to i64
    %19 = llvm.inttoptr %18 : i64 to !llvm.ptr
    %20 = llvm.call @fprintf(%13, %17, %19) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    memref.alloca_scope  {
      %c0_i32_36 = arith.constant 0 : i32
      %c0_37 = arith.constant 0 : index
      memref.store %c0_i32_36, %alloca_1[%c0_37] : memref<1xi32>
      scf.while : () -> () {
        %c0_38 = arith.constant 0 : index
        %36 = memref.load %alloca_1[%c0_38] : memref<1xi32>
        %c0_39 = arith.constant 0 : index
        %37 = memref.load %alloca[%c0_39] : memref<1xi32>
        %38 = arith.cmpi slt, %36, %37 : i32
        scf.condition(%38)
      } do {
        memref.alloca_scope  {
          %c0_i32_40 = arith.constant 0 : i32
          %c0_41 = arith.constant 0 : index
          memref.store %c0_i32_40, %alloca_2[%c0_41] : memref<1xi32>
          scf.while : () -> () {
            %c0_42 = arith.constant 0 : index
            %38 = memref.load %alloca_2[%c0_42] : memref<1xi32>
            %c0_43 = arith.constant 0 : index
            %39 = memref.load %alloca[%c0_43] : memref<1xi32>
            %40 = arith.cmpi slt, %38, %39 : i32
            scf.condition(%40)
          } do {
            memref.alloca_scope  {
              %c0_i32_45 = arith.constant 0 : i32
              %c0_46 = arith.constant 0 : index
              memref.store %c0_i32_45, %alloca_3[%c0_46] : memref<1xi32>
              scf.while : () -> () {
                %c0_47 = arith.constant 0 : index
                %40 = memref.load %alloca_3[%c0_47] : memref<1xi32>
                %c0_48 = arith.constant 0 : index
                %41 = memref.load %alloca[%c0_48] : memref<1xi32>
                %42 = arith.cmpi slt, %40, %41 : i32
                scf.condition(%42)
              } do {
                memref.alloca_scope  {
                  memref.alloca_scope  {
                    %c0_75 = arith.constant 0 : index
                    %64 = memref.load %alloca_1[%c0_75] : memref<1xi32>
                    %c0_76 = arith.constant 0 : index
                    %65 = memref.load %alloca[%c0_76] : memref<1xi32>
                    %66 = arith.muli %64, %65 : i32
                    %c0_77 = arith.constant 0 : index
                    %67 = memref.load %alloca[%c0_77] : memref<1xi32>
                    %68 = arith.muli %66, %67 : i32
                    %c0_78 = arith.constant 0 : index
                    %69 = memref.load %alloca_2[%c0_78] : memref<1xi32>
                    %c0_79 = arith.constant 0 : index
                    %70 = memref.load %alloca[%c0_79] : memref<1xi32>
                    %71 = arith.muli %69, %70 : i32
                    %72 = arith.addi %68, %71 : i32
                    %c0_80 = arith.constant 0 : index
                    %73 = memref.load %alloca_3[%c0_80] : memref<1xi32>
                    %74 = arith.addi %72, %73 : i32
                    %c20_i32 = arith.constant 20 : i32
                    %75 = arith.remsi %74, %c20_i32 : i32
                    %c0_i32_81 = arith.constant 0 : i32
                    %76 = arith.cmpi eq, %75, %c0_i32_81 : i32
                    scf.if %76 {
                      %77 = llvm.mlir.addressof @stderr : !llvm.ptr
                      %78 = llvm.load %77 : !llvm.ptr -> !llvm.ptr
                      %79 = memref.get_global @".str.3" : memref<2xi8>
                      %c0_82 = arith.constant 0 : index
                      %c1_83 = arith.constant 1 : index
                      %c2_84 = arith.constant 2 : index
                      %subview_85 = memref.subview %79[%c0_82] [%c2_84] [%c1_83] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
                      %reinterpret_cast_86 = memref.reinterpret_cast %subview_85 to offset: [0], sizes: [%c2_84], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                      %intptr_87 = memref.extract_aligned_pointer_as_index %reinterpret_cast_86 : memref<?xi8> -> index
                      %80 = arith.index_castui %intptr_87 : index to i64
                      %81 = llvm.inttoptr %80 : i64 to !llvm.ptr
                      %82 = llvm.call @fprintf(%78, %81) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
                    }
                  }
                  %42 = llvm.mlir.addressof @stderr : !llvm.ptr
                  %43 = llvm.load %42 : !llvm.ptr -> !llvm.ptr
                  %44 = memref.get_global @".str.4" : memref<8xi8>
                  %c0_50 = arith.constant 0 : index
                  %c1_51 = arith.constant 1 : index
                  %c8 = arith.constant 8 : index
                  %subview_52 = memref.subview %44[%c0_50] [%c8] [%c1_51] : memref<8xi8> to memref<?xi8, strided<[?], offset: ?>>
                  %reinterpret_cast_53 = memref.reinterpret_cast %subview_52 to offset: [0], sizes: [%c8], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
                  %c0_54 = arith.constant 0 : index
                  %45 = memref.load %alloca_0[%c0_54] : memref<1xmemref<?xf64>>
                  %c0_55 = arith.constant 0 : index
                  %46 = memref.load %alloca_1[%c0_55] : memref<1xi32>
                  %47 = arith.muli %2, %5 : i64
                  %48 = arith.extsi %46 : i32 to i64
                  %49 = arith.muli %48, %47 : i64
                  %50 = arith.index_cast %49 : i64 to index
                  %c1_56 = arith.constant 1 : index
                  %c0_57 = arith.constant 0 : index
                  %c0_58 = arith.constant 0 : index
                  %dim = memref.dim %45, %c0_58 : memref<?xf64>
                  %51 = arith.subi %dim, %50 : index
                  %subview_59 = memref.subview %45[%50] [%51] [%c1_56] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_60 = memref.reinterpret_cast %subview_59 to offset: [0], sizes: [%51], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_61 = arith.constant 0 : index
                  %52 = memref.load %alloca_2[%c0_61] : memref<1xi32>
                  %53 = arith.extsi %52 : i32 to i64
                  %54 = arith.muli %53, %5 : i64
                  %55 = arith.index_cast %54 : i64 to index
                  %c1_62 = arith.constant 1 : index
                  %c0_63 = arith.constant 0 : index
                  %c0_64 = arith.constant 0 : index
                  %dim_65 = memref.dim %reinterpret_cast_60, %c0_64 : memref<?xf64>
                  %56 = arith.subi %dim_65, %55 : index
                  %subview_66 = memref.subview %reinterpret_cast_60[%55] [%56] [%c1_62] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %reinterpret_cast_67 = memref.reinterpret_cast %subview_66 to offset: [0], sizes: [%56], strides: [1] : memref<?xf64, strided<[?], offset: ?>> to memref<?xf64>
                  %c0_68 = arith.constant 0 : index
                  %57 = memref.load %alloca_3[%c0_68] : memref<1xi32>
                  %58 = arith.index_cast %57 : i32 to index
                  %c0_69 = arith.constant 0 : index
                  %dim_70 = memref.dim %reinterpret_cast_67, %c0_69 : memref<?xf64>
                  %59 = arith.subi %dim_70, %58 : index
                  %c1_71 = arith.constant 1 : index
                  %subview_72 = memref.subview %reinterpret_cast_67[%58] [%59] [%c1_71] : memref<?xf64> to memref<?xf64, strided<[?], offset: ?>>
                  %c0_73 = arith.constant 0 : index
                  %60 = memref.load %subview_72[%c0_73] : memref<?xf64, strided<[?], offset: ?>>
                  %intptr_74 = memref.extract_aligned_pointer_as_index %reinterpret_cast_53 : memref<?xi8> -> index
                  %61 = arith.index_castui %intptr_74 : index to i64
                  %62 = llvm.inttoptr %61 : i64 to !llvm.ptr
                  %63 = llvm.call @fprintf(%43, %62, %60) vararg(!llvm.func<i32 (ptr, ptr, f64, ...)>) : (!llvm.ptr, !llvm.ptr, f64) -> i32
                }
                %c0_47 = arith.constant 0 : index
                %40 = memref.load %alloca_3[%c0_47] : memref<1xi32>
                %c1_i32_48 = arith.constant 1 : i32
                %41 = arith.addi %40, %c1_i32_48 : i32
                %c0_49 = arith.constant 0 : index
                memref.store %41, %alloca_3[%c0_49] : memref<1xi32>
                scf.yield
              }
            }
            %c0_42 = arith.constant 0 : index
            %38 = memref.load %alloca_2[%c0_42] : memref<1xi32>
            %c1_i32_43 = arith.constant 1 : i32
            %39 = arith.addi %38, %c1_i32_43 : i32
            %c0_44 = arith.constant 0 : index
            memref.store %39, %alloca_2[%c0_44] : memref<1xi32>
            scf.yield
          }
        }
        %c0_38 = arith.constant 0 : index
        %36 = memref.load %alloca_1[%c0_38] : memref<1xi32>
        %c1_i32 = arith.constant 1 : i32
        %37 = arith.addi %36, %c1_i32 : i32
        %c0_39 = arith.constant 0 : index
        memref.store %37, %alloca_1[%c0_39] : memref<1xi32>
        scf.yield
      }
    }
    %21 = llvm.mlir.addressof @stderr : !llvm.ptr
    %22 = llvm.load %21 : !llvm.ptr -> !llvm.ptr
    %23 = memref.get_global @".str.5" : memref<17xi8>
    %c0_19 = arith.constant 0 : index
    %c1_20 = arith.constant 1 : index
    %c17 = arith.constant 17 : index
    %subview_21 = memref.subview %23[%c0_19] [%c17] [%c1_20] : memref<17xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_22 = memref.reinterpret_cast %subview_21 to offset: [0], sizes: [%c17], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %24 = memref.get_global @".str.2" : memref<2xi8>
    %c0_23 = arith.constant 0 : index
    %c1_24 = arith.constant 1 : index
    %c2_25 = arith.constant 2 : index
    %subview_26 = memref.subview %24[%c0_23] [%c2_25] [%c1_24] : memref<2xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_27 = memref.reinterpret_cast %subview_26 to offset: [0], sizes: [%c2_25], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_28 = memref.extract_aligned_pointer_as_index %reinterpret_cast_22 : memref<?xi8> -> index
    %25 = arith.index_castui %intptr_28 : index to i64
    %26 = llvm.inttoptr %25 : i64 to !llvm.ptr
    %intptr_29 = memref.extract_aligned_pointer_as_index %reinterpret_cast_27 : memref<?xi8> -> index
    %27 = arith.index_castui %intptr_29 : index to i64
    %28 = llvm.inttoptr %27 : i64 to !llvm.ptr
    %29 = llvm.call @fprintf(%22, %26, %28) vararg(!llvm.func<i32 (ptr, ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
    %30 = llvm.mlir.addressof @stderr : !llvm.ptr
    %31 = llvm.load %30 : !llvm.ptr -> !llvm.ptr
    %32 = memref.get_global @".str.6" : memref<23xi8>
    %c0_30 = arith.constant 0 : index
    %c1_31 = arith.constant 1 : index
    %c23_32 = arith.constant 23 : index
    %subview_33 = memref.subview %32[%c0_30] [%c23_32] [%c1_31] : memref<23xi8> to memref<?xi8, strided<[?], offset: ?>>
    %reinterpret_cast_34 = memref.reinterpret_cast %subview_33 to offset: [0], sizes: [%c23_32], strides: [1] : memref<?xi8, strided<[?], offset: ?>> to memref<?xi8>
    %intptr_35 = memref.extract_aligned_pointer_as_index %reinterpret_cast_34 : memref<?xi8> -> index
    %33 = arith.index_castui %intptr_35 : index to i64
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
    %alloca_4 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %alloca_5 = memref.alloca() {alignment = 8 : i64} : memref<1xmemref<?xf64>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %alloca[%c0] : memref<1xi32>
    %c0_6 = arith.constant 0 : index
    memref.store %arg1, %alloca_0[%c0_6] : memref<1xmemref<?xmemref<?xi8>>>
    %c120_i32 = arith.constant 120 : i32
    %c0_7 = arith.constant 0 : index
    memref.store %c120_i32, %alloca_2[%c0_7] : memref<1xi32>
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
    %c0_12 = arith.constant 0 : index
    %5 = memref.load %alloca_2[%c0_12] : memref<1xi32>
    %c0_i32_13 = arith.constant 0 : i32
    %6 = arith.addi %5, %c0_i32_13 : i32
    %7 = arith.muli %4, %6 : i32
    %8 = arith.extsi %7 : i32 to i64
    %c8_i64 = arith.constant 8 : i64
    %9 = arith.trunci %c8_i64 : i64 to i32
    %10 = call @polybench_alloc_data(%8, %9) : (i64, i32) -> !llvm.ptr
    %11 = builtin.unrealized_conversion_cast %10 : !llvm.ptr to memref<?xf64>
    %c0_14 = arith.constant 0 : index
    memref.store %11, %alloca_4[%c0_14] : memref<1xmemref<?xf64>>
    %c0_15 = arith.constant 0 : index
    %12 = memref.load %alloca_2[%c0_15] : memref<1xi32>
    %c0_i32_16 = arith.constant 0 : i32
    %13 = arith.addi %12, %c0_i32_16 : i32
    %c0_17 = arith.constant 0 : index
    %14 = memref.load %alloca_2[%c0_17] : memref<1xi32>
    %c0_i32_18 = arith.constant 0 : i32
    %15 = arith.addi %14, %c0_i32_18 : i32
    %16 = arith.muli %13, %15 : i32
    %c0_19 = arith.constant 0 : index
    %17 = memref.load %alloca_2[%c0_19] : memref<1xi32>
    %c0_i32_20 = arith.constant 0 : i32
    %18 = arith.addi %17, %c0_i32_20 : i32
    %19 = arith.muli %16, %18 : i32
    %20 = arith.extsi %19 : i32 to i64
    %c8_i64_21 = arith.constant 8 : i64
    %21 = arith.trunci %c8_i64_21 : i64 to i32
    %22 = call @polybench_alloc_data(%20, %21) : (i64, i32) -> !llvm.ptr
    %23 = builtin.unrealized_conversion_cast %22 : !llvm.ptr to memref<?xf64>
    %c0_22 = arith.constant 0 : index
    memref.store %23, %alloca_5[%c0_22] : memref<1xmemref<?xf64>>
    %c0_23 = arith.constant 0 : index
    %24 = memref.load %alloca_2[%c0_23] : memref<1xi32>
    %c0_24 = arith.constant 0 : index
    %25 = memref.load %alloca_4[%c0_24] : memref<1xmemref<?xf64>>
    %c0_25 = arith.constant 0 : index
    %26 = memref.load %alloca_5[%c0_25] : memref<1xmemref<?xf64>>
    call @init_array(%24, %25, %26) : (i32, memref<?xf64>, memref<?xf64>) -> ()
    %27 = llvm.mlir.addressof @polybench_timer_start : !llvm.ptr
    llvm.call %27() : !llvm.ptr, () -> ()
    %c0_26 = arith.constant 0 : index
    %28 = memref.load %alloca_3[%c0_26] : memref<1xi32>
    %c0_27 = arith.constant 0 : index
    %29 = memref.load %alloca_2[%c0_27] : memref<1xi32>
    %c0_28 = arith.constant 0 : index
    %30 = memref.load %alloca_4[%c0_28] : memref<1xmemref<?xf64>>
    %c0_29 = arith.constant 0 : index
    %31 = memref.load %alloca_5[%c0_29] : memref<1xmemref<?xf64>>
    call @kernel_heat_3d(%28, %29, %30, %31) : (i32, i32, memref<?xf64>, memref<?xf64>) -> ()
    %32 = llvm.mlir.addressof @polybench_timer_stop : !llvm.ptr
    llvm.call %32() : !llvm.ptr, () -> ()
    %33 = llvm.mlir.addressof @polybench_timer_print : !llvm.ptr
    llvm.call %33() : !llvm.ptr, () -> ()
    %c0_30 = arith.constant 0 : index
    %34 = memref.load %alloca_2[%c0_30] : memref<1xi32>
    %c0_31 = arith.constant 0 : index
    %35 = memref.load %alloca_4[%c0_31] : memref<1xmemref<?xf64>>
    call @print_array(%34, %35) : (i32, memref<?xf64>) -> ()
    %c0_32 = arith.constant 0 : index
    %36 = memref.load %alloca_4[%c0_32] : memref<1xmemref<?xf64>>
    %intptr = memref.extract_aligned_pointer_as_index %36 : memref<?xf64> -> index
    %37 = arith.index_castui %intptr : index to i64
    %38 = llvm.inttoptr %37 : i64 to !llvm.ptr
    call @free(%38) : (!llvm.ptr) -> ()
    %c0_i32_33 = arith.constant 0 : i32
    %c0_34 = arith.constant 0 : index
    memref.store %c0_i32_33, %alloca_1[%c0_34] : memref<1xi32>
    %c0_35 = arith.constant 0 : index
    %39 = memref.load %alloca_1[%c0_35] : memref<1xi32>
    return %39 : i32
  }
}

