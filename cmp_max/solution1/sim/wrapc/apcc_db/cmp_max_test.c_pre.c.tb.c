/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;
/* Structure forward decls */
typedef struct l_struct_OC__iobuf l_struct_OC__iobuf;

/* Structure contents */
struct l_struct_OC__iobuf {
   char *field0;
  unsigned int field1;
   char *field2;
  unsigned int field3;
  unsigned int field4;
  unsigned int field5;
  unsigned int field6;
   char *field7;
};


/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
signed int main(void);
void cmp_max(float , float , float , float *, bool );


/* Global Variable Definitions and Initialization */
static  char aesl_internal__OC_str[11] = "output.dat";
static  char aesl_internal__OC_str1[2] = "w";
static  char aesl_internal__OC_str2[42] = "Inputs\ny0: %f, y1: %f, y2: %f\nOutput: %f\n";
static  char aesl_internal__OC_str4[35] = "diff -w output.dat output_gold.dat";
static  char aesl_internal__OC_str7[45] = "PASS: The output matches the golden output!\n";
static  char aesl_internal__OC_str5[45] = "*******************************************\n";
static  char aesl_internal__OC_str6[47] = "FAIL: Output DOES NOT match the golden output\n";
static  char aesl_internal_str[31] = "Comparing against output data ";


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }
static const ConstantFloatTy FPConstant0 = 0x40400000U;    /* 3.000000e+00 */
static const ConstantFloatTy FPConstant1 = 0x3F800000U;    /* 1.000000e+00 */
static const ConstantFloatTy FPConstant2 = 0x40C00000U;    /* 6.000000e+00 */
static const ConstantFloatTy FPConstant3 = 0x40000000U;    /* 2.000000e+00 */
static const ConstantFloatTy FPConstant4 = 0x41100000U;    /* 9.000000e+00 */
static const ConstantFloatTy FPConstant5 = 0x41400000U;    /* 1.200000e+01 */
static const ConstantFloatTy FPConstant6 = 0x40800000U;    /* 4.000000e+00 */
static const ConstantFloatTy FPConstant7 = 0x41700000U;    /* 1.500000e+01 */
static const ConstantFloatTy FPConstant8 = 0x40A00000U;    /* 5.000000e+00 */
static const ConstantFloatTy FPConstant9 = 0x41900000U;    /* 1.800000e+01 */
static const ConstantFloatTy FPConstant10 = 0x41A80000U;    /* 2.100000e+01 */
static const ConstantFloatTy FPConstant11 = 0x40E00000U;    /* 7.000000e+00 */
static const ConstantFloatTy FPConstant12 = 0x41C00000U;    /* 2.400000e+01 */
static const ConstantFloatTy FPConstant13 = 0x41000000U;    /* 8.000000e+00 */
static const ConstantFloatTy FPConstant14 = 0x41D80000U;    /* 2.700000e+01 */
static const ConstantFloatTy FPConstant15 = 0x41F00000U;    /* 3.000000e+01 */
static const ConstantFloatTy FPConstant16 = 0x41200000U;    /* 1.000000e+01 */

signed int main(void) {
  static  unsigned long long aesl_llvm_cbe_y0_count = 0;
  float llvm_cbe_y0[10];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_y1_count = 0;
  float llvm_cbe_y1[10];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_y2_count = 0;
  float llvm_cbe_y2[10];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_outputs_count = 0;
  float llvm_cbe_outputs[10];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  float *llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  float *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  float *llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  float *llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  float *llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  float *llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  float *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  float *llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  float *llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  float *llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  float *llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  float *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  float *llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  float *llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  float *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  float *llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  float *llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  float *llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  float *llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  float *llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
  float *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
  static  unsigned long long aesl_llvm_cbe_238_count = 0;
  static  unsigned long long aesl_llvm_cbe_239_count = 0;
  static  unsigned long long aesl_llvm_cbe_240_count = 0;
  static  unsigned long long aesl_llvm_cbe_241_count = 0;
  static  unsigned long long aesl_llvm_cbe_242_count = 0;
  static  unsigned long long aesl_llvm_cbe_243_count = 0;
  static  unsigned long long aesl_llvm_cbe_244_count = 0;
  static  unsigned long long aesl_llvm_cbe_245_count = 0;
  static  unsigned long long aesl_llvm_cbe_246_count = 0;
  static  unsigned long long aesl_llvm_cbe_247_count = 0;
  static  unsigned long long aesl_llvm_cbe_248_count = 0;
  static  unsigned long long aesl_llvm_cbe_249_count = 0;
  static  unsigned long long aesl_llvm_cbe_250_count = 0;
  static  unsigned long long aesl_llvm_cbe_251_count = 0;
  static  unsigned long long aesl_llvm_cbe_252_count = 0;
  static  unsigned long long aesl_llvm_cbe_253_count = 0;
  static  unsigned long long aesl_llvm_cbe_254_count = 0;
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  float *llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  float *llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  float *llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  float *llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  float *llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  float *llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
  static  unsigned long long aesl_llvm_cbe_318_count = 0;
  static  unsigned long long aesl_llvm_cbe_319_count = 0;
  float *llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_320_count = 0;
  static  unsigned long long aesl_llvm_cbe_321_count = 0;
  float *llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_322_count = 0;
  static  unsigned long long aesl_llvm_cbe_323_count = 0;
  float *llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_324_count = 0;
  static  unsigned long long aesl_llvm_cbe_325_count = 0;
  static  unsigned long long aesl_llvm_cbe_326_count = 0;
  static  unsigned long long aesl_llvm_cbe_327_count = 0;
  static  unsigned long long aesl_llvm_cbe_328_count = 0;
  static  unsigned long long aesl_llvm_cbe_329_count = 0;
  static  unsigned long long aesl_llvm_cbe_330_count = 0;
  static  unsigned long long aesl_llvm_cbe_331_count = 0;
  static  unsigned long long aesl_llvm_cbe_332_count = 0;
  static  unsigned long long aesl_llvm_cbe_333_count = 0;
  static  unsigned long long aesl_llvm_cbe_334_count = 0;
  static  unsigned long long aesl_llvm_cbe_335_count = 0;
  static  unsigned long long aesl_llvm_cbe_336_count = 0;
  static  unsigned long long aesl_llvm_cbe_337_count = 0;
  static  unsigned long long aesl_llvm_cbe_338_count = 0;
  static  unsigned long long aesl_llvm_cbe_339_count = 0;
  static  unsigned long long aesl_llvm_cbe_340_count = 0;
  static  unsigned long long aesl_llvm_cbe_341_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_342_count = 0;
  static  unsigned long long aesl_llvm_cbe_343_count = 0;
  static  unsigned long long aesl_llvm_cbe_344_count = 0;
  static  unsigned long long aesl_llvm_cbe_345_count = 0;
  static  unsigned long long aesl_llvm_cbe_346_count = 0;
  static  unsigned long long aesl_llvm_cbe_347_count = 0;
  static  unsigned long long aesl_llvm_cbe_348_count = 0;
  static  unsigned long long aesl_llvm_cbe_349_count = 0;
  static  unsigned long long aesl_llvm_cbe_350_count = 0;
  static  unsigned long long aesl_llvm_cbe_351_count = 0;
  static  unsigned long long aesl_llvm_cbe_352_count = 0;
  static  unsigned long long aesl_llvm_cbe_353_count = 0;
  static  unsigned long long aesl_llvm_cbe_354_count = 0;
  static  unsigned long long aesl_llvm_cbe_355_count = 0;
  static  unsigned long long aesl_llvm_cbe_356_count = 0;
  static  unsigned long long aesl_llvm_cbe_357_count = 0;
  static  unsigned long long aesl_llvm_cbe_358_count = 0;
  static  unsigned long long aesl_llvm_cbe_359_count = 0;
  static  unsigned long long aesl_llvm_cbe_360_count = 0;
  static  unsigned long long aesl_llvm_cbe_361_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge13_count = 0;
  unsigned int llvm_cbe_storemerge13;
  unsigned int llvm_cbe_storemerge13__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_362_count = 0;
  unsigned long long llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_363_count = 0;
  float *llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_364_count = 0;
  float llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_365_count = 0;
  float *llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_366_count = 0;
  float llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_367_count = 0;
  float *llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_368_count = 0;
  float llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_369_count = 0;
  float *llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_370_count = 0;
  static  unsigned long long aesl_llvm_cbe_371_count = 0;
  double llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_372_count = 0;
  double llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_373_count = 0;
  double llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_374_count = 0;
  float llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_375_count = 0;
  double llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_376_count = 0;
  unsigned int llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_377_count = 0;
  unsigned int llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_378_count = 0;
  static  unsigned long long aesl_llvm_cbe_379_count = 0;
  static  unsigned long long aesl_llvm_cbe_380_count = 0;
  static  unsigned long long aesl_llvm_cbe_381_count = 0;
  static  unsigned long long aesl_llvm_cbe_382_count = 0;
  static  unsigned long long aesl_llvm_cbe_383_count = 0;
  static  unsigned long long aesl_llvm_cbe_384_count = 0;
  static  unsigned long long aesl_llvm_cbe_385_count = 0;
  static  unsigned long long aesl_llvm_cbe_386_count = 0;
  static  unsigned long long aesl_llvm_cbe_387_count = 0;
  static  unsigned long long aesl_llvm_cbe_388_count = 0;
  static  unsigned long long aesl_llvm_cbe_389_count = 0;
  static  unsigned long long aesl_llvm_cbe_390_count = 0;
  static  unsigned long long aesl_llvm_cbe_391_count = 0;
  static  unsigned long long aesl_llvm_cbe_392_count = 0;
  static  unsigned long long aesl_llvm_cbe_393_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_394_count = 0;
  static  unsigned long long aesl_llvm_cbe_395_count = 0;
  unsigned int llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_puts_count = 0;
  unsigned int llvm_cbe_puts;
  static  unsigned long long aesl_llvm_cbe_396_count = 0;
  unsigned int llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_397_count = 0;
  static  unsigned long long aesl_llvm_cbe_398_count = 0;
  static  unsigned long long aesl_llvm_cbe_399_count = 0;
  unsigned long long llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_400_count = 0;
  unsigned long long llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_401_count = 0;
  unsigned long long llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_402_count = 0;
  static  unsigned long long aesl_llvm_cbe_403_count = 0;
  unsigned long long llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_404_count = 0;
  unsigned long long llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_405_count = 0;
  unsigned long long llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_406_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_count = 0;
  unsigned int llvm_cbe_storemerge2;
  unsigned int llvm_cbe_storemerge2__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_407_count = 0;

  CODE_FOR_MAIN();
const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @main\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = getelementptr inbounds [10 x float]* %%y0, i64 0, i64 0, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_40_count);
  llvm_cbe_tmp__1 = (float *)(&llvm_cbe_y0[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 10 && "Write access out of array 'y0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 3.000000e+00, float* %%1, align 16, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_41_count);
  *llvm_cbe_tmp__1 = (*(float*)&FPConstant0);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant0));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = getelementptr inbounds [10 x float]* %%y1, i64 0, i64 0, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__2 = (float *)(&llvm_cbe_y1[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 10 && "Write access out of array 'y1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 1.000000e+00, float* %%2, align 16, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_43_count);
  *llvm_cbe_tmp__2 = (*(float*)&FPConstant1);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant1));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds [10 x float]* %%y2, i64 0, i64 0, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__3 = (float *)(&llvm_cbe_y2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )0ull) < 10 && "Write access out of array 'y2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 1.000000e+00, float* %%3, align 16, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_45_count);
  *llvm_cbe_tmp__3 = (*(float*)&FPConstant1);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant1));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = getelementptr inbounds [10 x float]* %%y0, i64 0, i64 1, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_71_count);
  llvm_cbe_tmp__4 = (float *)(&llvm_cbe_y0[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )1ull) < 10 && "Write access out of array 'y0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 6.000000e+00, float* %%4, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_72_count);
  *llvm_cbe_tmp__4 = (*(float*)&FPConstant2);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant2));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds [10 x float]* %%y1, i64 0, i64 1, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_73_count);
  llvm_cbe_tmp__5 = (float *)(&llvm_cbe_y1[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )1ull) < 10 && "Write access out of array 'y1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 2.000000e+00, float* %%5, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_74_count);
  *llvm_cbe_tmp__5 = (*(float*)&FPConstant3);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant3));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds [10 x float]* %%y2, i64 0, i64 1, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_75_count);
  llvm_cbe_tmp__6 = (float *)(&llvm_cbe_y2[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )1ull) < 10 && "Write access out of array 'y2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 2.000000e+00, float* %%6, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_76_count);
  *llvm_cbe_tmp__6 = (*(float*)&FPConstant3);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant3));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds [10 x float]* %%y0, i64 0, i64 2, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_102_count);
  llvm_cbe_tmp__7 = (float *)(&llvm_cbe_y0[(((signed long long )2ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )2ull) < 10 && "Write access out of array 'y0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 9.000000e+00, float* %%7, align 8, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_103_count);
  *llvm_cbe_tmp__7 = (*(float*)&FPConstant4);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant4));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds [10 x float]* %%y1, i64 0, i64 2, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_104_count);
  llvm_cbe_tmp__8 = (float *)(&llvm_cbe_y1[(((signed long long )2ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )2ull) < 10 && "Write access out of array 'y1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 3.000000e+00, float* %%8, align 8, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_105_count);
  *llvm_cbe_tmp__8 = (*(float*)&FPConstant0);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant0));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds [10 x float]* %%y2, i64 0, i64 2, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_106_count);
  llvm_cbe_tmp__9 = (float *)(&llvm_cbe_y2[(((signed long long )2ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )2ull) < 10 && "Write access out of array 'y2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 3.000000e+00, float* %%9, align 8, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_107_count);
  *llvm_cbe_tmp__9 = (*(float*)&FPConstant0);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant0));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds [10 x float]* %%y0, i64 0, i64 3, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_133_count);
  llvm_cbe_tmp__10 = (float *)(&llvm_cbe_y0[(((signed long long )3ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )3ull) < 10 && "Write access out of array 'y0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 1.200000e+01, float* %%10, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_134_count);
  *llvm_cbe_tmp__10 = (*(float*)&FPConstant5);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant5));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds [10 x float]* %%y1, i64 0, i64 3, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_135_count);
  llvm_cbe_tmp__11 = (float *)(&llvm_cbe_y1[(((signed long long )3ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )3ull) < 10 && "Write access out of array 'y1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 4.000000e+00, float* %%11, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_136_count);
  *llvm_cbe_tmp__11 = (*(float*)&FPConstant6);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant6));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds [10 x float]* %%y2, i64 0, i64 3, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_137_count);
  llvm_cbe_tmp__12 = (float *)(&llvm_cbe_y2[(((signed long long )3ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )3ull) < 10 && "Write access out of array 'y2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 4.000000e+00, float* %%12, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_138_count);
  *llvm_cbe_tmp__12 = (*(float*)&FPConstant6);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant6));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds [10 x float]* %%y0, i64 0, i64 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_164_count);
  llvm_cbe_tmp__13 = (float *)(&llvm_cbe_y0[(((signed long long )4ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )4ull) < 10 && "Write access out of array 'y0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 1.500000e+01, float* %%13, align 16, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_165_count);
  *llvm_cbe_tmp__13 = (*(float*)&FPConstant7);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant7));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds [10 x float]* %%y1, i64 0, i64 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_166_count);
  llvm_cbe_tmp__14 = (float *)(&llvm_cbe_y1[(((signed long long )4ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )4ull) < 10 && "Write access out of array 'y1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 5.000000e+00, float* %%14, align 16, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_167_count);
  *llvm_cbe_tmp__14 = (*(float*)&FPConstant8);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant8));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds [10 x float]* %%y2, i64 0, i64 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_168_count);
  llvm_cbe_tmp__15 = (float *)(&llvm_cbe_y2[(((signed long long )4ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )4ull) < 10 && "Write access out of array 'y2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 5.000000e+00, float* %%15, align 16, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_169_count);
  *llvm_cbe_tmp__15 = (*(float*)&FPConstant8);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant8));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr inbounds [10 x float]* %%y0, i64 0, i64 5, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_195_count);
  llvm_cbe_tmp__16 = (float *)(&llvm_cbe_y0[(((signed long long )5ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )5ull) < 10 && "Write access out of array 'y0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 1.800000e+01, float* %%16, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_196_count);
  *llvm_cbe_tmp__16 = (*(float*)&FPConstant9);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant9));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = getelementptr inbounds [10 x float]* %%y1, i64 0, i64 5, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_197_count);
  llvm_cbe_tmp__17 = (float *)(&llvm_cbe_y1[(((signed long long )5ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )5ull) < 10 && "Write access out of array 'y1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 6.000000e+00, float* %%17, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_198_count);
  *llvm_cbe_tmp__17 = (*(float*)&FPConstant2);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant2));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = getelementptr inbounds [10 x float]* %%y2, i64 0, i64 5, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_199_count);
  llvm_cbe_tmp__18 = (float *)(&llvm_cbe_y2[(((signed long long )5ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )5ull) < 10 && "Write access out of array 'y2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 6.000000e+00, float* %%18, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_200_count);
  *llvm_cbe_tmp__18 = (*(float*)&FPConstant2);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant2));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds [10 x float]* %%y0, i64 0, i64 6, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_226_count);
  llvm_cbe_tmp__19 = (float *)(&llvm_cbe_y0[(((signed long long )6ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )6ull) < 10 && "Write access out of array 'y0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 2.100000e+01, float* %%19, align 8, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_227_count);
  *llvm_cbe_tmp__19 = (*(float*)&FPConstant10);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant10));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds [10 x float]* %%y1, i64 0, i64 6, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_228_count);
  llvm_cbe_tmp__20 = (float *)(&llvm_cbe_y1[(((signed long long )6ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )6ull) < 10 && "Write access out of array 'y1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 7.000000e+00, float* %%20, align 8, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_229_count);
  *llvm_cbe_tmp__20 = (*(float*)&FPConstant11);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant11));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds [10 x float]* %%y2, i64 0, i64 6, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_230_count);
  llvm_cbe_tmp__21 = (float *)(&llvm_cbe_y2[(((signed long long )6ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )6ull) < 10 && "Write access out of array 'y2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 7.000000e+00, float* %%21, align 8, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_231_count);
  *llvm_cbe_tmp__21 = (*(float*)&FPConstant11);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant11));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds [10 x float]* %%y0, i64 0, i64 7, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_257_count);
  llvm_cbe_tmp__22 = (float *)(&llvm_cbe_y0[(((signed long long )7ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )7ull) < 10 && "Write access out of array 'y0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 2.400000e+01, float* %%22, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_258_count);
  *llvm_cbe_tmp__22 = (*(float*)&FPConstant12);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant12));
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = getelementptr inbounds [10 x float]* %%y1, i64 0, i64 7, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_259_count);
  llvm_cbe_tmp__23 = (float *)(&llvm_cbe_y1[(((signed long long )7ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )7ull) < 10 && "Write access out of array 'y1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 8.000000e+00, float* %%23, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_260_count);
  *llvm_cbe_tmp__23 = (*(float*)&FPConstant13);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant13));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds [10 x float]* %%y2, i64 0, i64 7, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_261_count);
  llvm_cbe_tmp__24 = (float *)(&llvm_cbe_y2[(((signed long long )7ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )7ull) < 10 && "Write access out of array 'y2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 8.000000e+00, float* %%24, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_262_count);
  *llvm_cbe_tmp__24 = (*(float*)&FPConstant13);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant13));
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds [10 x float]* %%y0, i64 0, i64 8, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_288_count);
  llvm_cbe_tmp__25 = (float *)(&llvm_cbe_y0[(((signed long long )8ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )8ull) < 10 && "Write access out of array 'y0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 2.700000e+01, float* %%25, align 16, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_289_count);
  *llvm_cbe_tmp__25 = (*(float*)&FPConstant14);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant14));
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds [10 x float]* %%y1, i64 0, i64 8, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_290_count);
  llvm_cbe_tmp__26 = (float *)(&llvm_cbe_y1[(((signed long long )8ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )8ull) < 10 && "Write access out of array 'y1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 9.000000e+00, float* %%26, align 16, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_291_count);
  *llvm_cbe_tmp__26 = (*(float*)&FPConstant4);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant4));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = getelementptr inbounds [10 x float]* %%y2, i64 0, i64 8, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_292_count);
  llvm_cbe_tmp__27 = (float *)(&llvm_cbe_y2[(((signed long long )8ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )8ull) < 10 && "Write access out of array 'y2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 9.000000e+00, float* %%27, align 16, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_293_count);
  *llvm_cbe_tmp__27 = (*(float*)&FPConstant4);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant4));
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = getelementptr inbounds [10 x float]* %%y0, i64 0, i64 9, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_319_count);
  llvm_cbe_tmp__28 = (float *)(&llvm_cbe_y0[(((signed long long )9ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )9ull) < 10 && "Write access out of array 'y0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 3.000000e+01, float* %%28, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_320_count);
  *llvm_cbe_tmp__28 = (*(float*)&FPConstant15);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant15));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds [10 x float]* %%y1, i64 0, i64 9, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_321_count);
  llvm_cbe_tmp__29 = (float *)(&llvm_cbe_y1[(((signed long long )9ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )9ull) < 10 && "Write access out of array 'y1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 1.000000e+01, float* %%29, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_322_count);
  *llvm_cbe_tmp__29 = (*(float*)&FPConstant16);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant16));
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = getelementptr inbounds [10 x float]* %%y2, i64 0, i64 9, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_323_count);
  llvm_cbe_tmp__30 = (float *)(&llvm_cbe_y2[(((signed long long )9ull))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
}

#ifdef AESL_BC_SIM
  assert(((signed long long )9ull) < 10 && "Write access out of array 'y2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 1.000000e+01, float* %%30, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_324_count);
  *llvm_cbe_tmp__30 = (*(float*)&FPConstant16);
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", (*(float*)&FPConstant16));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = call %%struct._iobuf* @fopen(i8* getelementptr inbounds ([11 x i8]* @aesl_internal_.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @aesl_internal_.str1, i64 0, i64 0)) nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_341_count);
  llvm_cbe_tmp__31 = (l_struct_OC__iobuf *)aesl_fopen(( char *)((&aesl_internal__OC_str[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 11
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 2
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__31);
}
  llvm_cbe_storemerge13__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__55;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__55:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge13 = phi i32 [ 0, %%0 ], [ %%47, %%32  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge13_count);
  llvm_cbe_storemerge13 = (unsigned int )llvm_cbe_storemerge13__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge13 = 0x%X",llvm_cbe_storemerge13);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__46);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = sext i32 %%storemerge13 to i64, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_362_count);
  llvm_cbe_tmp__32 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge13);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = getelementptr inbounds [10 x float]* %%y0, i64 0, i64 %%33, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_363_count);
  llvm_cbe_tmp__33 = (float *)(&llvm_cbe_y0[(((signed long long )llvm_cbe_tmp__32))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__32));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__32) < 10)) fprintf(stderr, "%s:%d: warning: Read access out of array 'y0' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = load float* %%34, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_364_count);
  llvm_cbe_tmp__34 = (float )*llvm_cbe_tmp__33;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__34, *(int*)(&llvm_cbe_tmp__34));
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = getelementptr inbounds [10 x float]* %%y1, i64 0, i64 %%33, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_365_count);
  llvm_cbe_tmp__35 = (float *)(&llvm_cbe_y1[(((signed long long )llvm_cbe_tmp__32))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__32));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__32) < 10)) fprintf(stderr, "%s:%d: warning: Read access out of array 'y1' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = load float* %%36, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_366_count);
  llvm_cbe_tmp__36 = (float )*llvm_cbe_tmp__35;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__36, *(int*)(&llvm_cbe_tmp__36));
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = getelementptr inbounds [10 x float]* %%y2, i64 0, i64 %%33, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_367_count);
  llvm_cbe_tmp__37 = (float *)(&llvm_cbe_y2[(((signed long long )llvm_cbe_tmp__32))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__32));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__32) < 10)) fprintf(stderr, "%s:%d: warning: Read access out of array 'y2' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = load float* %%38, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_368_count);
  llvm_cbe_tmp__38 = (float )*llvm_cbe_tmp__37;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__38, *(int*)(&llvm_cbe_tmp__38));
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = getelementptr inbounds [10 x float]* %%outputs, i64 0, i64 %%33, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_369_count);
  llvm_cbe_tmp__39 = (float *)(&llvm_cbe_outputs[(((signed long long )llvm_cbe_tmp__32))
#ifdef AESL_BC_SIM
 % 10
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__32));
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @cmp_max(float %%35, float %%37, float %%39, float* %%40, i1 zeroext true) nounwind, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_370_count);
  cmp_max(llvm_cbe_tmp__34, llvm_cbe_tmp__36, llvm_cbe_tmp__38, (float *)llvm_cbe_tmp__39, 1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__34, *(int*)(&llvm_cbe_tmp__34));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__36, *(int*)(&llvm_cbe_tmp__36));
printf("\nArgument  = %f,  0x%x",llvm_cbe_tmp__38, *(int*)(&llvm_cbe_tmp__38));
printf("\nArgument  = 0x%X",1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = fpext float %%35 to double, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_371_count);
  llvm_cbe_tmp__40 = (double )((double )llvm_cbe_tmp__34);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__40, *(long long*)(&llvm_cbe_tmp__40));
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = fpext float %%37 to double, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_372_count);
  llvm_cbe_tmp__41 = (double )((double )llvm_cbe_tmp__36);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__41, *(long long*)(&llvm_cbe_tmp__41));
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = fpext float %%39 to double, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_373_count);
  llvm_cbe_tmp__42 = (double )((double )llvm_cbe_tmp__38);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__42, *(long long*)(&llvm_cbe_tmp__42));

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__32) < 10)) fprintf(stderr, "%s:%d: warning: Read access out of array 'outputs' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = load float* %%40, align 4, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_374_count);
  llvm_cbe_tmp__43 = (float )*llvm_cbe_tmp__39;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__43, *(int*)(&llvm_cbe_tmp__43));
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = fpext float %%44 to double, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_375_count);
  llvm_cbe_tmp__44 = (double )((double )llvm_cbe_tmp__43);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__44, *(long long*)(&llvm_cbe_tmp__44));
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = call i32 (%%struct._iobuf*, i8*, ...)* @fprintf(%%struct._iobuf* %%31, i8* getelementptr inbounds ([42 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%41, double %%42, double %%43, double %%45) nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_376_count);
  fprintf((l_struct_OC__iobuf *)llvm_cbe_tmp__31, ( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 42
#endif
])), llvm_cbe_tmp__40, llvm_cbe_tmp__41, llvm_cbe_tmp__42, llvm_cbe_tmp__44);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__40, *(long long*)(&llvm_cbe_tmp__40));
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__41, *(long long*)(&llvm_cbe_tmp__41));
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__42, *(long long*)(&llvm_cbe_tmp__42));
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__44, *(long long*)(&llvm_cbe_tmp__44));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__45);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = add nsw i32 %%storemerge13, 1, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_377_count);
  llvm_cbe_tmp__46 = (unsigned int )((unsigned int )(llvm_cbe_storemerge13&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__46&4294967295ull)));
  if (((llvm_cbe_tmp__46&4294967295U) == (10u&4294967295U))) {
    goto llvm_cbe_tmp__56;
  } else {
    llvm_cbe_storemerge13__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__46;   /* for PHI node */
    goto llvm_cbe_tmp__55;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__56:
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = call i32 @fclose(%%struct._iobuf* %%31) nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_395_count);
  fclose((l_struct_OC__iobuf *)llvm_cbe_tmp__31);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__47);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%puts = call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @aesl_internal_str, i64 0, i64 0)), !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_puts_count);
  puts(( char *)((&aesl_internal_str[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 31
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts = 0x%X",llvm_cbe_puts);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = call i32 bitcast (i32 (...)* @system to i32 (i8*)*)(i8* getelementptr inbounds ([35 x i8]* @aesl_internal_.str4, i64 0, i64 0)) nounwind, !dbg !8 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_396_count);
  llvm_cbe_tmp__48 = (unsigned int )system(( char *)((&aesl_internal__OC_str4[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 35
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__48);
}
  if (((llvm_cbe_tmp__48&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__57;
  } else {
    goto llvm_cbe_tmp__58;
  }

llvm_cbe_tmp__58:
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str5, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* getelementptr inbounds ([0 x %%struct._iobuf]* @_iob, i64 0, i64 1)), !dbg !8 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_399_count);
  fwrite(( char *)((&aesl_internal__OC_str5[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)((&_iob[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 0
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__49);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @aesl_internal_.str6, i64 0, i64 0), i64 46, i64 1, %%struct._iobuf* getelementptr inbounds ([0 x %%struct._iobuf]* @_iob, i64 0, i64 1)), !dbg !8 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_400_count);
  fwrite(( char *)((&aesl_internal__OC_str6[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 47
#endif
])), 46ull, 1ull, (l_struct_OC__iobuf *)((&_iob[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 0
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",46ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__50);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str5, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* getelementptr inbounds ([0 x %%struct._iobuf]* @_iob, i64 0, i64 1)), !dbg !8 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_401_count);
  fwrite(( char *)((&aesl_internal__OC_str5[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)((&_iob[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 0
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__51);
}
  llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe_tmp__59;

llvm_cbe_tmp__57:
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str5, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* getelementptr inbounds ([0 x %%struct._iobuf]* @_iob, i64 0, i64 1)), !dbg !8 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_403_count);
  fwrite(( char *)((&aesl_internal__OC_str5[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)((&_iob[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 0
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__52);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str7, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* getelementptr inbounds ([0 x %%struct._iobuf]* @_iob, i64 0, i64 1)), !dbg !8 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_404_count);
  fwrite(( char *)((&aesl_internal__OC_str7[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)((&_iob[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 0
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__53);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str5, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* getelementptr inbounds ([0 x %%struct._iobuf]* @_iob, i64 0, i64 1)), !dbg !8 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_405_count);
  fwrite(( char *)((&aesl_internal__OC_str5[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)((&_iob[(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 0
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__54);
}
  llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__59;

llvm_cbe_tmp__59:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2 = phi i32 [ 1, %%52 ], [ 0, %%56  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge2_count);
  llvm_cbe_storemerge2 = (unsigned int )llvm_cbe_storemerge2__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2 = 0x%X",llvm_cbe_storemerge2);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",0u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @main}\n");
  return llvm_cbe_storemerge2;
}

