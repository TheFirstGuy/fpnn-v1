; ModuleID = 'C:/Users/stevenlee/Documents/cmp_max/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@cmp_max_str = internal unnamed_addr constant [8 x i8] c"cmp_max\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=10]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @cmp_max(float %y0, float %y1, float %y2, float* %max, i1 zeroext %en) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float %y0) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(float %y1) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(float %y2) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(float* %max) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %en) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @cmp_max_str) nounwind
  %en_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %en) nounwind ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %en_read}, i64 0, metadata !24), !dbg !34 ; [debug line = 3:63] [debug variable = en]
  %y2_read = call float @_ssdm_op_Read.ap_auto.float(float %y2) nounwind ; [#uses=4 type=float]
  call void @llvm.dbg.value(metadata !{float %y2_read}, i64 0, metadata !35), !dbg !36 ; [debug line = 3:41] [debug variable = y2]
  %y1_read = call float @_ssdm_op_Read.ap_auto.float(float %y1) nounwind ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %y1_read}, i64 0, metadata !37), !dbg !38 ; [debug line = 3:31] [debug variable = y1]
  %y0_read = call float @_ssdm_op_Read.ap_auto.float(float %y0) nounwind ; [#uses=5 type=float]
  call void @llvm.dbg.value(metadata !{float %y0_read}, i64 0, metadata !39), !dbg !40 ; [debug line = 3:21] [debug variable = y0]
  call void @llvm.dbg.value(metadata !{float %y0}, i64 0, metadata !39), !dbg !40 ; [debug line = 3:21] [debug variable = y0]
  call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !37), !dbg !38 ; [debug line = 3:31] [debug variable = y1]
  call void @llvm.dbg.value(metadata !{float %y2}, i64 0, metadata !35), !dbg !36 ; [debug line = 3:41] [debug variable = y2]
  call void @llvm.dbg.value(metadata !{float* %max}, i64 0, metadata !41), !dbg !42 ; [debug line = 3:52] [debug variable = max]
  call void @llvm.dbg.value(metadata !{i1 %en}, i64 0, metadata !24), !dbg !34 ; [debug line = 3:63] [debug variable = en]
  br i1 %en_read, label %_ifconv, label %._crit_edge, !dbg !43 ; [debug line = 4:5]

_ifconv:                                          ; preds = %0
  %y0_to_int = bitcast float %y0_read to i32      ; [#uses=2 type=i32]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %y0_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_1 = trunc i32 %y0_to_int to i23            ; [#uses=1 type=i23]
  %y1_to_int = bitcast float %y1_read to i32      ; [#uses=2 type=i32]
  %tmp_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %y1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_3 = trunc i32 %y1_to_int to i23            ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp, -1                   ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_1, 0                 ; [#uses=1 type=i1]
  %tmp_4 = or i1 %notrhs, %notlhs                 ; [#uses=2 type=i1]
  %notlhs6 = icmp ne i8 %tmp_2, -1                ; [#uses=1 type=i1]
  %notrhs7 = icmp eq i23 %tmp_3, 0                ; [#uses=1 type=i1]
  %tmp_5 = or i1 %notrhs7, %notlhs6               ; [#uses=2 type=i1]
  %tmp_6 = and i1 %tmp_4, %tmp_5                  ; [#uses=2 type=i1]
  %tmp_7 = fcmp ogt float %y0_read, %y1_read, !dbg !45 ; [#uses=1 type=i1] [debug line = 5:9]
  %tmp_8 = and i1 %tmp_6, %tmp_7, !dbg !45        ; [#uses=1 type=i1] [debug line = 5:9]
  %y2_to_int = bitcast float %y2_read to i32      ; [#uses=2 type=i32]
  %tmp_s = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %y2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_9 = trunc i32 %y2_to_int to i23            ; [#uses=1 type=i23]
  %notlhs1 = icmp ne i8 %tmp_s, -1                ; [#uses=1 type=i1]
  %notrhs1 = icmp eq i23 %tmp_9, 0                ; [#uses=1 type=i1]
  %tmp_10 = or i1 %notrhs1, %notlhs1              ; [#uses=2 type=i1]
  %tmp_11 = and i1 %tmp_4, %tmp_10                ; [#uses=1 type=i1]
  %tmp_12 = fcmp ogt float %y0_read, %y2_read, !dbg !45 ; [#uses=1 type=i1] [debug line = 5:9]
  %tmp_13 = and i1 %tmp_11, %tmp_12, !dbg !45     ; [#uses=1 type=i1] [debug line = 5:9]
  %or_cond = and i1 %tmp_8, %tmp_13, !dbg !45     ; [#uses=1 type=i1] [debug line = 5:9]
  %tmp_14 = fcmp ogt float %y1_read, %y0_read, !dbg !47 ; [#uses=1 type=i1] [debug line = 8:14]
  %tmp_15 = and i1 %tmp_6, %tmp_14, !dbg !47      ; [#uses=1 type=i1] [debug line = 8:14]
  %tmp_16 = and i1 %tmp_5, %tmp_10                ; [#uses=1 type=i1]
  %tmp_17 = fcmp ogt float %y1_read, %y2_read, !dbg !47 ; [#uses=1 type=i1] [debug line = 8:14]
  %tmp_18 = and i1 %tmp_16, %tmp_17, !dbg !47     ; [#uses=1 type=i1] [debug line = 8:14]
  %or_cond2 = and i1 %tmp_15, %tmp_18, !dbg !47   ; [#uses=1 type=i1] [debug line = 8:14]
  %y1_assign = select i1 %or_cond2, float %y1_read, float %y2_read, !dbg !47 ; [#uses=1 type=float] [debug line = 8:14]
  call void @llvm.dbg.value(metadata !{float %y1_assign}, i64 0, metadata !37), !dbg !47 ; [debug line = 8:14] [debug variable = y1]
  %storemerge1 = select i1 %or_cond, float %y0_read, float %y1_assign ; [#uses=1 type=float]
  call void @_ssdm_op_Write.ap_auto.floatP(float* %max, float %storemerge1) nounwind, !dbg !48 ; [debug line = 6:13]
  br label %._crit_edge, !dbg !50                 ; [debug line = 14:5]

._crit_edge:                                      ; preds = %_ifconv, %0
  ret void, !dbg !51                              ; [debug line = 15:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

; [#uses=3]
define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_4 = trunc i32 %empty to i8               ; [#uses=1 type=i8]
  ret i8 %empty_4
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"y0", metadata !4, metadata !"float", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 0}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"y1", metadata !4, metadata !"float", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"y2", metadata !4, metadata !"float", i32 0, i32 31}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"max", metadata !18, metadata !"float", i32 0, i32 31}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 0, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 0, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"en", metadata !4, metadata !"_Bool", i32 0, i32 0}
!24 = metadata !{i32 786689, metadata !25, metadata !"en", metadata !26, i32 83886083, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!25 = metadata !{i32 786478, i32 0, metadata !26, metadata !"cmp_max", metadata !"cmp_max", metadata !"", metadata !26, i32 3, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float, float, float, float*, i1)* @cmp_max, null, null, metadata !32, i32 3} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786473, metadata !"cmp_max/cmp_max.c", metadata !"c:/Users/stevenlee/Documents", null} ; [ DW_TAG_file_type ]
!27 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!28 = metadata !{null, metadata !29, metadata !29, metadata !29, metadata !30, metadata !31}
!29 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!31 = metadata !{i32 786468, null, metadata !"_Bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!34 = metadata !{i32 3, i32 63, metadata !25, null}
!35 = metadata !{i32 786689, metadata !25, metadata !"y2", metadata !26, i32 50331651, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 3, i32 41, metadata !25, null}
!37 = metadata !{i32 786689, metadata !25, metadata !"y1", metadata !26, i32 33554435, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 3, i32 31, metadata !25, null}
!39 = metadata !{i32 786689, metadata !25, metadata !"y0", metadata !26, i32 16777219, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 3, i32 21, metadata !25, null}
!41 = metadata !{i32 786689, metadata !25, metadata !"max", metadata !26, i32 67108867, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 3, i32 52, metadata !25, null}
!43 = metadata !{i32 4, i32 5, metadata !44, null}
!44 = metadata !{i32 786443, metadata !25, i32 3, i32 67, metadata !26, i32 0} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 5, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !44, i32 4, i32 13, metadata !26, i32 1} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 8, i32 14, metadata !46, null}
!48 = metadata !{i32 6, i32 13, metadata !49, null}
!49 = metadata !{i32 786443, metadata !46, i32 5, i32 33, metadata !26, i32 2} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 14, i32 5, metadata !46, null}
!51 = metadata !{i32 15, i32 1, metadata !44, null}
