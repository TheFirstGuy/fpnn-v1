; ModuleID = 'C:/Users/stevenlee/Documents/cmp_max/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@cmp_max.str = internal unnamed_addr constant [8 x i8] c"cmp_max\00" ; [#uses=1 type=[8 x i8]*]

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @cmp_max(float %y0, float %y1, float %y2, float* %max, i1 zeroext %en) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @cmp_max.str) nounwind
  call void @llvm.dbg.value(metadata !{float %y0}, i64 0, metadata !14), !dbg !15 ; [debug line = 3:21] [debug variable = y0]
  call void @llvm.dbg.value(metadata !{float %y1}, i64 0, metadata !16), !dbg !17 ; [debug line = 3:31] [debug variable = y1]
  call void @llvm.dbg.value(metadata !{float %y2}, i64 0, metadata !18), !dbg !19 ; [debug line = 3:41] [debug variable = y2]
  call void @llvm.dbg.value(metadata !{float* %max}, i64 0, metadata !20), !dbg !21 ; [debug line = 3:52] [debug variable = max]
  call void @llvm.dbg.value(metadata !{i1 %en}, i64 0, metadata !22), !dbg !23 ; [debug line = 3:63] [debug variable = en]
  br i1 %en, label %1, label %._crit_edge, !dbg !24 ; [debug line = 4:5]

; <label>:1                                       ; preds = %0
  %tmp = fcmp ogt float %y0, %y1, !dbg !26        ; [#uses=1 type=i1] [debug line = 5:9]
  %tmp.1 = fcmp ogt float %y0, %y2, !dbg !26      ; [#uses=1 type=i1] [debug line = 5:9]
  %or.cond = and i1 %tmp, %tmp.1, !dbg !26        ; [#uses=1 type=i1] [debug line = 5:9]
  br i1 %or.cond, label %._crit_edge3, label %2, !dbg !26 ; [debug line = 5:9]

; <label>:2                                       ; preds = %1
  %tmp.2 = fcmp ogt float %y1, %y0, !dbg !28      ; [#uses=1 type=i1] [debug line = 8:14]
  %tmp.3 = fcmp ogt float %y1, %y2, !dbg !28      ; [#uses=1 type=i1] [debug line = 8:14]
  %or.cond2 = and i1 %tmp.2, %tmp.3, !dbg !28     ; [#uses=1 type=i1] [debug line = 8:14]
  %y1.assign = select i1 %or.cond2, float %y1, float %y2, !dbg !28 ; [#uses=1 type=float] [debug line = 8:14]
  call void @llvm.dbg.value(metadata !{float %y1.assign}, i64 0, metadata !16), !dbg !28 ; [debug line = 8:14] [debug variable = y1]
  br label %._crit_edge3

._crit_edge3:                                     ; preds = %2, %1
  %storemerge1 = phi float [ %y1.assign, %2 ], [ %y0, %1 ] ; [#uses=1 type=float]
  store float %storemerge1, float* %max, align 4, !dbg !29 ; [debug line = 6:13]
  br label %._crit_edge, !dbg !31                 ; [debug line = 14:5]

._crit_edge:                                      ; preds = %._crit_edge3, %0
  ret void, !dbg !32                              ; [debug line = 15:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

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
!14 = metadata !{i32 786689, metadata !5, metadata !"y0", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!15 = metadata !{i32 3, i32 21, metadata !5, null}
!16 = metadata !{i32 786689, metadata !5, metadata !"y1", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 3, i32 31, metadata !5, null}
!18 = metadata !{i32 786689, metadata !5, metadata !"y2", metadata !6, i32 50331651, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!19 = metadata !{i32 3, i32 41, metadata !5, null}
!20 = metadata !{i32 786689, metadata !5, metadata !"max", metadata !6, i32 67108867, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 3, i32 52, metadata !5, null}
!22 = metadata !{i32 786689, metadata !5, metadata !"en", metadata !6, i32 83886083, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 3, i32 63, metadata !5, null}
!24 = metadata !{i32 4, i32 5, metadata !25, null}
!25 = metadata !{i32 786443, metadata !5, i32 3, i32 67, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 5, i32 9, metadata !27, null}
!27 = metadata !{i32 786443, metadata !25, i32 4, i32 13, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 8, i32 14, metadata !27, null}
!29 = metadata !{i32 6, i32 13, metadata !30, null}
!30 = metadata !{i32 786443, metadata !27, i32 5, i32 33, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 14, i32 5, metadata !27, null}
!32 = metadata !{i32 15, i32 1, metadata !25, null}
