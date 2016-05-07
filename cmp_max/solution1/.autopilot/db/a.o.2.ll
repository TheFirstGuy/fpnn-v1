; ModuleID = 'C:/Users/stevenlee/Documents/cmp_max/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@cmp_max.str = internal unnamed_addr constant [8 x i8] c"cmp_max\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @cmp_max(float %y0, float %y1, float %y2, float* %max, i1 zeroext %en) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float %y0) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(float %y1) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(float %y2) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(float* %max) nounwind, !map !28
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %en) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @cmp_max.str) nounwind
  call void @llvm.dbg.value(metadata !{float %y0}, i64 0, metadata !38), !dbg !39 ; [debug line = 3:21] [debug variable = y0]
  call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !40), !dbg !41 ; [debug line = 3:31] [debug variable = y1]
  call void @llvm.dbg.value(metadata !{float %y2}, i64 0, metadata !42), !dbg !43 ; [debug line = 3:41] [debug variable = y2]
  call void @llvm.dbg.value(metadata !{float* %max}, i64 0, metadata !44), !dbg !45 ; [debug line = 3:52] [debug variable = max]
  call void @llvm.dbg.value(metadata !{i1 %en}, i64 0, metadata !46), !dbg !47 ; [debug line = 3:63] [debug variable = en]
  br i1 %en, label %_ifconv, label %._crit_edge, !dbg !48 ; [debug line = 4:5]

_ifconv:                                          ; preds = %0
  %y0_to_int = bitcast float %y0 to i32           ; [#uses=2 type=i32]
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %y0_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.1 = trunc i32 %y0_to_int to i23            ; [#uses=1 type=i23]
  %y1_to_int = bitcast float %y1 to i32           ; [#uses=2 type=i32]
  %tmp.2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %y1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.3 = trunc i32 %y1_to_int to i23            ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp, -1                   ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.1, 0                 ; [#uses=1 type=i1]
  %tmp.4 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %notlhs6 = icmp ne i8 %tmp.2, -1                ; [#uses=1 type=i1]
  %notrhs7 = icmp eq i23 %tmp.3, 0                ; [#uses=1 type=i1]
  %tmp.5 = or i1 %notrhs7, %notlhs6               ; [#uses=1 type=i1]
  %tmp.6 = and i1 %tmp.4, %tmp.5                  ; [#uses=1 type=i1]
  %tmp.7 = fcmp ogt float %y0, %y1, !dbg !50      ; [#uses=1 type=i1] [debug line = 5:9]
  %tmp.8 = and i1 %tmp.6, %tmp.7, !dbg !50        ; [#uses=1 type=i1] [debug line = 5:9]
  %y0_to_int1 = bitcast float %y0 to i32          ; [#uses=2 type=i32]
  %tmp.9 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %y0_to_int1, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.10 = trunc i32 %y0_to_int1 to i23          ; [#uses=1 type=i23]
  %y2_to_int = bitcast float %y2 to i32           ; [#uses=2 type=i32]
  %tmp.11 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %y2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.12 = trunc i32 %y2_to_int to i23           ; [#uses=1 type=i23]
  %notlhs8 = icmp ne i8 %tmp.9, -1                ; [#uses=1 type=i1]
  %notrhs9 = icmp eq i23 %tmp.10, 0               ; [#uses=1 type=i1]
  %tmp.13 = or i1 %notrhs9, %notlhs8              ; [#uses=1 type=i1]
  %notlhs1 = icmp ne i8 %tmp.11, -1               ; [#uses=1 type=i1]
  %notrhs1 = icmp eq i23 %tmp.12, 0               ; [#uses=1 type=i1]
  %tmp.14 = or i1 %notrhs1, %notlhs1              ; [#uses=1 type=i1]
  %tmp.15 = and i1 %tmp.13, %tmp.14               ; [#uses=1 type=i1]
  %tmp.16 = fcmp ogt float %y0, %y2, !dbg !50     ; [#uses=1 type=i1] [debug line = 5:9]
  %tmp.17 = and i1 %tmp.15, %tmp.16, !dbg !50     ; [#uses=1 type=i1] [debug line = 5:9]
  %or.cond = and i1 %tmp.8, %tmp.17, !dbg !50     ; [#uses=1 type=i1] [debug line = 5:9]
  %y1_to_int2 = bitcast float %y1 to i32          ; [#uses=2 type=i32]
  %tmp.18 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %y1_to_int2, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.19 = trunc i32 %y1_to_int2 to i23          ; [#uses=1 type=i23]
  %y0_to_int3 = bitcast float %y0 to i32          ; [#uses=2 type=i32]
  %tmp.20 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %y0_to_int3, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.21 = trunc i32 %y0_to_int3 to i23          ; [#uses=1 type=i23]
  %notlhs2 = icmp ne i8 %tmp.18, -1               ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp.19, 0               ; [#uses=1 type=i1]
  %tmp.22 = or i1 %notrhs2, %notlhs2              ; [#uses=1 type=i1]
  %notlhs3 = icmp ne i8 %tmp.20, -1               ; [#uses=1 type=i1]
  %notrhs3 = icmp eq i23 %tmp.21, 0               ; [#uses=1 type=i1]
  %tmp.23 = or i1 %notrhs3, %notlhs3              ; [#uses=1 type=i1]
  %tmp.24 = and i1 %tmp.22, %tmp.23               ; [#uses=1 type=i1]
  %tmp.25 = fcmp ogt float %y1, %y0, !dbg !52     ; [#uses=1 type=i1] [debug line = 8:14]
  %tmp.26 = and i1 %tmp.24, %tmp.25, !dbg !52     ; [#uses=1 type=i1] [debug line = 8:14]
  %y1_to_int4 = bitcast float %y1 to i32          ; [#uses=2 type=i32]
  %tmp.27 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %y1_to_int4, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.28 = trunc i32 %y1_to_int4 to i23          ; [#uses=1 type=i23]
  %y2_to_int5 = bitcast float %y2 to i32          ; [#uses=2 type=i32]
  %tmp.29 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %y2_to_int5, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.30 = trunc i32 %y2_to_int5 to i23          ; [#uses=1 type=i23]
  %notlhs4 = icmp ne i8 %tmp.27, -1               ; [#uses=1 type=i1]
  %notrhs4 = icmp eq i23 %tmp.28, 0               ; [#uses=1 type=i1]
  %tmp.31 = or i1 %notrhs4, %notlhs4              ; [#uses=1 type=i1]
  %notlhs5 = icmp ne i8 %tmp.29, -1               ; [#uses=1 type=i1]
  %notrhs5 = icmp eq i23 %tmp.30, 0               ; [#uses=1 type=i1]
  %tmp.32 = or i1 %notrhs5, %notlhs5              ; [#uses=1 type=i1]
  %tmp.33 = and i1 %tmp.31, %tmp.32               ; [#uses=1 type=i1]
  %tmp.34 = fcmp ogt float %y1, %y2, !dbg !52     ; [#uses=1 type=i1] [debug line = 8:14]
  %tmp.35 = and i1 %tmp.33, %tmp.34, !dbg !52     ; [#uses=1 type=i1] [debug line = 8:14]
  %or.cond2 = and i1 %tmp.26, %tmp.35, !dbg !52   ; [#uses=1 type=i1] [debug line = 8:14]
  %y1.assign = select i1 %or.cond2, float %y1, float %y2, !dbg !52 ; [#uses=1 type=float] [debug line = 8:14]
  call void @llvm.dbg.value(metadata !{float %y1.assign}, i64 0, metadata !40), !dbg !52 ; [debug line = 8:14] [debug variable = y1]
  %storemerge1 = select i1 %or.cond, float %y0, float %y1.assign ; [#uses=1 type=float]
  store float %storemerge1, float* %max, align 4, !dbg !53 ; [debug line = 6:13]
  br label %._crit_edge, !dbg !55                 ; [debug line = 14:5]

._crit_edge:                                      ; preds = %_ifconv, %0
  ret void, !dbg !56                              ; [debug line = 15:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=8]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/stevenlee/Documents/cmp_max/solution1/.autopilot/db/cmp_max.pragma.2.c", metadata !"c:/Users/stevenlee/Documents", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"cmp_max", metadata !"cmp_max", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float, float, float, float*, i1)* @cmp_max, null, null, metadata !12, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"cmp_max/cmp_max.c", metadata !"c:/Users/stevenlee/Documents", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9, metadata !10, metadata !11}
!9 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786468, null, metadata !"_Bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"y0", metadata !18, metadata !"float", i32 0, i32 31}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 0, i32 0}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"y1", metadata !18, metadata !"float", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 31, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"y2", metadata !18, metadata !"float", i32 0, i32 31}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 31, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"max", metadata !32, metadata !"float", i32 0, i32 31}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 0, i32 1}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 0, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"en", metadata !18, metadata !"_Bool", i32 0, i32 0}
!38 = metadata !{i32 786689, metadata !5, metadata !"y0", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 3, i32 21, metadata !5, null}
!40 = metadata !{i32 786689, metadata !5, metadata !"y1", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 3, i32 31, metadata !5, null}
!42 = metadata !{i32 786689, metadata !5, metadata !"y2", metadata !6, i32 50331651, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 3, i32 41, metadata !5, null}
!44 = metadata !{i32 786689, metadata !5, metadata !"max", metadata !6, i32 67108867, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 3, i32 52, metadata !5, null}
!46 = metadata !{i32 786689, metadata !5, metadata !"en", metadata !6, i32 83886083, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!47 = metadata !{i32 3, i32 63, metadata !5, null}
!48 = metadata !{i32 4, i32 5, metadata !49, null}
!49 = metadata !{i32 786443, metadata !5, i32 3, i32 67, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 5, i32 9, metadata !51, null}
!51 = metadata !{i32 786443, metadata !49, i32 4, i32 13, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 8, i32 14, metadata !51, null}
!53 = metadata !{i32 6, i32 13, metadata !54, null}
!54 = metadata !{i32 786443, metadata !51, i32 5, i32 33, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 14, i32 5, metadata !51, null}
!56 = metadata !{i32 15, i32 1, metadata !49, null}
