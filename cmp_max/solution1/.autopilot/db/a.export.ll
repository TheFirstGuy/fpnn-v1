; ModuleID = 'C:/Users/stevenlee/Documents/cmp_max/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@cmp_max_str = internal unnamed_addr constant [8 x i8] c"cmp_max\00"

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @cmp_max(float %y0, float %y1, float %y2, float* %max, i1 zeroext %en) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float %y0) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(float %y1) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(float %y2) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(float* %max) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %en) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @cmp_max_str) nounwind
  %en_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %en) nounwind
  %y2_read = call float @_ssdm_op_Read.ap_auto.float(float %y2) nounwind
  %y1_read = call float @_ssdm_op_Read.ap_auto.float(float %y1) nounwind
  %y0_read = call float @_ssdm_op_Read.ap_auto.float(float %y0) nounwind
  br i1 %en_read, label %_ifconv, label %._crit_edge

_ifconv:                                          ; preds = %0
  %y0_to_int = bitcast float %y0_read to i32
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %y0_to_int, i32 23, i32 30)
  %tmp_1 = trunc i32 %y0_to_int to i23
  %y1_to_int = bitcast float %y1_read to i32
  %tmp_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %y1_to_int, i32 23, i32 30)
  %tmp_3 = trunc i32 %y1_to_int to i23
  %notlhs = icmp ne i8 %tmp, -1
  %notrhs = icmp eq i23 %tmp_1, 0
  %tmp_4 = or i1 %notrhs, %notlhs
  %notlhs6 = icmp ne i8 %tmp_2, -1
  %notrhs7 = icmp eq i23 %tmp_3, 0
  %tmp_5 = or i1 %notrhs7, %notlhs6
  %tmp_6 = and i1 %tmp_4, %tmp_5
  %tmp_7 = fcmp ogt float %y0_read, %y1_read
  %tmp_8 = and i1 %tmp_6, %tmp_7
  %y2_to_int = bitcast float %y2_read to i32
  %tmp_s = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %y2_to_int, i32 23, i32 30)
  %tmp_9 = trunc i32 %y2_to_int to i23
  %notlhs1 = icmp ne i8 %tmp_s, -1
  %notrhs1 = icmp eq i23 %tmp_9, 0
  %tmp_10 = or i1 %notrhs1, %notlhs1
  %tmp_11 = and i1 %tmp_4, %tmp_10
  %tmp_12 = fcmp ogt float %y0_read, %y2_read
  %tmp_13 = and i1 %tmp_11, %tmp_12
  %or_cond = and i1 %tmp_8, %tmp_13
  %tmp_14 = fcmp ogt float %y1_read, %y0_read
  %tmp_15 = and i1 %tmp_6, %tmp_14
  %tmp_16 = and i1 %tmp_5, %tmp_10
  %tmp_17 = fcmp ogt float %y1_read, %y2_read
  %tmp_18 = and i1 %tmp_16, %tmp_17
  %or_cond2 = and i1 %tmp_15, %tmp_18
  %y1_assign = select i1 %or_cond2, float %y1_read, float %y2_read
  %storemerge1 = select i1 %or_cond, float %y0_read, float %y1_assign
  call void @_ssdm_op_Write.ap_auto.floatP(float* %max, float %storemerge1) nounwind
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ifconv, %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_4 = trunc i32 %empty to i8
  ret i8 %empty_4
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

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
