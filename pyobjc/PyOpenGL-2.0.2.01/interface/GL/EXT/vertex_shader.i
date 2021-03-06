/*
# AUTOGENERATED DO NOT EDIT

# If you edit this file, delete the AUTOGENERATED line to prevent re-generation
# BUILD api_versions [0x001]
*/

%module vertex_shader

#define __version__ "$Revision: 1.1.2.1 $"
#define __date__ "$Date: 2004/11/15 07:38:07 $"
#define __api_version__ API_VERSION
#define __author__ "PyOpenGL Developers <pyopengl-devel@lists.sourceforge.net>"
#define __doc__ ""

%{
/**
 *
 * GL.EXT.vertex_shader Module for PyOpenGL
 * 
 * Authors: PyOpenGL Developers <pyopengl-devel@lists.sourceforge.net>
 * 
***/
%}

%include util.inc
%include gl_exception_handler.inc

%{
#ifdef CGL_PLATFORM
# include <OpenGL/glext.h>
#else
# include <GL/glext.h>
#endif

#if !EXT_DEFINES_PROTO || !defined(GL_EXT_vertex_shader)
DECLARE_VOID_EXT(glBeginVertexShaderEXT, (), ())
DECLARE_VOID_EXT(glEndVertexShaderEXT, (), ())
DECLARE_VOID_EXT(glBindVertexShaderEXT, (GLuint id), (id))
DECLARE_EXT(glGenVertexShadersEXT, GLuint, 0, (GLuint range), (range))
DECLARE_VOID_EXT(glDeleteVertexShaderEXT, (GLuint id), (id))
DECLARE_VOID_EXT(glShaderOp1EXT, (GLenum op, GLuint res, GLuint arg1), (op, res, arg1))
DECLARE_VOID_EXT(glShaderOp2EXT, (GLenum op, GLuint res, GLuint arg1, GLuint arg2), (op, res, arg1, arg2))
DECLARE_VOID_EXT(glShaderOp3EXT, (GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3), (op, res, arg1, arg2, arg3))
DECLARE_VOID_EXT(glSwizzleEXT, (GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW), (res, in, outX, outY, outZ, outW))
DECLARE_VOID_EXT(glWriteMaskEXT, (GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW), (res, in, outX, outY, outZ, outW))
DECLARE_VOID_EXT(glInsertComponentEXT, (GLuint res, GLuint src, GLuint num), (res, src, num))
DECLARE_VOID_EXT(glExtractComponentEXT, (GLuint res, GLuint src, GLuint num), (res, src, num))
DECLARE_EXT(glGenSymbolsEXT, GLuint, 0, (GLenum datatype, GLenum storagetype, GLenum range, GLuint components), (datatype, storagetype, range, components))
DECLARE_VOID_EXT(glSetInvariantEXT, (GLuint id, GLenum type, const GLvoid *addr), (id, type, addr))
DECLARE_VOID_EXT(glSetLocalConstantEXT, (GLuint id, GLenum type, const GLvoid *addr), (id, type, addr))
DECLARE_VOID_EXT(glVariantbvEXT, (GLuint id, const GLbyte *addr), (id, addr))
DECLARE_VOID_EXT(glVariantsvEXT, (GLuint id, const GLshort *addr), (id, addr))
DECLARE_VOID_EXT(glVariantivEXT, (GLuint id, const GLint *addr), (id, addr))
DECLARE_VOID_EXT(glVariantfvEXT, (GLuint id, const GLfloat *addr), (id, addr))
DECLARE_VOID_EXT(glVariantdvEXT, (GLuint id, const GLdouble *addr), (id, addr))
DECLARE_VOID_EXT(glVariantubvEXT, (GLuint id, const GLubyte *addr), (id, addr))
DECLARE_VOID_EXT(glVariantusvEXT, (GLuint id, const GLushort *addr), (id, addr))
DECLARE_VOID_EXT(glVariantuivEXT, (GLuint id, const GLuint *addr), (id, addr))
DECLARE_VOID_EXT(glVariantPointerEXT, (GLuint id, GLenum type, GLuint stride, const GLvoid *addr), (id, type, stride, addr))
DECLARE_VOID_EXT(glEnableVariantClientStateEXT, (GLuint id), (id))
DECLARE_VOID_EXT(glDisableVariantClientStateEXT, (GLuint id), (id))
DECLARE_EXT(glBindLightParameterEXT, GLuint, 0, (GLenum light, GLenum value), (light, value))
DECLARE_EXT(glBindMaterialParameterEXT, GLuint, 0, (GLenum face, GLenum value), (face, value))
DECLARE_EXT(glBindTexGenParameterEXT, GLuint, 0, (GLenum unit, GLenum coord, GLenum value), (unit, coord, value))
DECLARE_EXT(glBindTextureUnitParameterEXT, GLuint, 0, (GLenum unit, GLenum value), (unit, value))
DECLARE_EXT(glBindParameterEXT, GLuint, 0, (GLenum value), (value))
DECLARE_EXT(glIsVariantEnabledEXT, GLboolean, 0, (GLuint id, GLenum cap), (id, cap))
DECLARE_VOID_EXT(glGetVariantBooleanvEXT, (GLuint id, GLenum value, GLboolean *data), (id, value, data))
DECLARE_VOID_EXT(glGetVariantIntegervEXT, (GLuint id, GLenum value, GLint *data), (id, value, data))
DECLARE_VOID_EXT(glGetVariantFloatvEXT, (GLuint id, GLenum value, GLfloat *data), (id, value, data))
DECLARE_VOID_EXT(glGetVariantPointervEXT, (GLuint id, GLenum value, GLvoid* *data), (id, value, data))
DECLARE_VOID_EXT(glGetInvariantBooleanvEXT, (GLuint id, GLenum value, GLboolean *data), (id, value, data))
DECLARE_VOID_EXT(glGetInvariantIntegervEXT, (GLuint id, GLenum value, GLint *data), (id, value, data))
DECLARE_VOID_EXT(glGetInvariantFloatvEXT, (GLuint id, GLenum value, GLfloat *data), (id, value, data))
DECLARE_VOID_EXT(glGetLocalConstantBooleanvEXT, (GLuint id, GLenum value, GLboolean *data), (id, value, data))
DECLARE_VOID_EXT(glGetLocalConstantIntegervEXT, (GLuint id, GLenum value, GLint *data), (id, value, data))
DECLARE_VOID_EXT(glGetLocalConstantFloatvEXT, (GLuint id, GLenum value, GLfloat *data), (id, value, data))
#endif
%}

/* FUNCTION DECLARATIONS */
void glBeginVertexShaderEXT();
DOC(glBeginVertexShaderEXT, "glBeginVertexShaderEXT()")
void glEndVertexShaderEXT();
DOC(glEndVertexShaderEXT, "glEndVertexShaderEXT()")
void glBindVertexShaderEXT(GLuint id);
DOC(glBindVertexShaderEXT, "glBindVertexShaderEXT(id)")
GLuint glGenVertexShadersEXT(GLuint range);
DOC(glGenVertexShadersEXT, "glGenVertexShadersEXT(range)")
void glDeleteVertexShaderEXT(GLuint id);
DOC(glDeleteVertexShaderEXT, "glDeleteVertexShaderEXT(id)")
void glShaderOp1EXT(GLenum op, GLuint res, GLuint arg1);
DOC(glShaderOp1EXT, "glShaderOp1EXT(op, res, arg1)")
void glShaderOp2EXT(GLenum op, GLuint res, GLuint arg1, GLuint arg2);
DOC(glShaderOp2EXT, "glShaderOp2EXT(op, res, arg1, arg2)")
void glShaderOp3EXT(GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3);
DOC(glShaderOp3EXT, "glShaderOp3EXT(op, res, arg1, arg2, arg3)")
void glSwizzleEXT(GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
DOC(glSwizzleEXT, "glSwizzleEXT(res, in, outX, outY, outZ, outW)")
void glWriteMaskEXT(GLuint res, GLuint in, GLenum outX, GLenum outY, GLenum outZ, GLenum outW);
DOC(glWriteMaskEXT, "glWriteMaskEXT(res, in, outX, outY, outZ, outW)")
void glInsertComponentEXT(GLuint res, GLuint src, GLuint num);
DOC(glInsertComponentEXT, "glInsertComponentEXT(res, src, num)")
void glExtractComponentEXT(GLuint res, GLuint src, GLuint num);
DOC(glExtractComponentEXT, "glExtractComponentEXT(res, src, num)")
GLuint glGenSymbolsEXT(GLenum datatype, GLenum storagetype, GLenum range, GLuint components);
DOC(glGenSymbolsEXT, "glGenSymbolsEXT(datatype, storagetype, range, components)")
void glSetInvariantEXT(GLuint id, GLenum type, const GLvoid *addr);
DOC(glSetInvariantEXT, "glSetInvariantEXT(id, type, addr)")
void glSetLocalConstantEXT(GLuint id, GLenum type, const GLvoid *addr);
DOC(glSetLocalConstantEXT, "glSetLocalConstantEXT(id, type, addr)")
void glVariantbvEXT(GLuint id, const GLbyte *addr);
DOC(glVariantbvEXT, "glVariantbvEXT(id, addr)")
void glVariantsvEXT(GLuint id, const GLshort *addr);
DOC(glVariantsvEXT, "glVariantsvEXT(id, addr)")
void glVariantivEXT(GLuint id, const GLint *addr);
DOC(glVariantivEXT, "glVariantivEXT(id, addr)")
void glVariantfvEXT(GLuint id, const GLfloat *addr);
DOC(glVariantfvEXT, "glVariantfvEXT(id, addr)")
void glVariantdvEXT(GLuint id, const GLdouble *addr);
DOC(glVariantdvEXT, "glVariantdvEXT(id, addr)")
void glVariantubvEXT(GLuint id, const GLubyte *addr);
DOC(glVariantubvEXT, "glVariantubvEXT(id, addr)")
void glVariantusvEXT(GLuint id, const GLushort *addr);
DOC(glVariantusvEXT, "glVariantusvEXT(id, addr)")
void glVariantuivEXT(GLuint id, const GLuint *addr);
DOC(glVariantuivEXT, "glVariantuivEXT(id, addr)")
void glVariantPointerEXT(GLuint id, GLenum type, GLuint stride, const GLvoid *addr);
DOC(glVariantPointerEXT, "glVariantPointerEXT(id, type, stride, addr)")
void glEnableVariantClientStateEXT(GLuint id);
DOC(glEnableVariantClientStateEXT, "glEnableVariantClientStateEXT(id)")
void glDisableVariantClientStateEXT(GLuint id);
DOC(glDisableVariantClientStateEXT, "glDisableVariantClientStateEXT(id)")
GLuint glBindLightParameterEXT(GLenum light, GLenum value);
DOC(glBindLightParameterEXT, "glBindLightParameterEXT(light, value)")
GLuint glBindMaterialParameterEXT(GLenum face, GLenum value);
DOC(glBindMaterialParameterEXT, "glBindMaterialParameterEXT(face, value)")
GLuint glBindTexGenParameterEXT(GLenum unit, GLenum coord, GLenum value);
DOC(glBindTexGenParameterEXT, "glBindTexGenParameterEXT(unit, coord, value)")
GLuint glBindTextureUnitParameterEXT(GLenum unit, GLenum value);
DOC(glBindTextureUnitParameterEXT, "glBindTextureUnitParameterEXT(unit, value)")
GLuint glBindParameterEXT(GLenum value);
DOC(glBindParameterEXT, "glBindParameterEXT(value)")
GLboolean glIsVariantEnabledEXT(GLuint id, GLenum cap);
DOC(glIsVariantEnabledEXT, "glIsVariantEnabledEXT(id, cap)")
void glGetVariantBooleanvEXT(GLuint id, GLenum value, GLboolean *data);
DOC(glGetVariantBooleanvEXT, "glGetVariantBooleanvEXT(id, value, data)")
void glGetVariantIntegervEXT(GLuint id, GLenum value, GLint *data);
DOC(glGetVariantIntegervEXT, "glGetVariantIntegervEXT(id, value, data)")
void glGetVariantFloatvEXT(GLuint id, GLenum value, GLfloat *data);
DOC(glGetVariantFloatvEXT, "glGetVariantFloatvEXT(id, value, data)")
void glGetVariantPointervEXT(GLuint id, GLenum value, GLvoid* *data);
DOC(glGetVariantPointervEXT, "glGetVariantPointervEXT(id, value, data)")
void glGetInvariantBooleanvEXT(GLuint id, GLenum value, GLboolean *data);
DOC(glGetInvariantBooleanvEXT, "glGetInvariantBooleanvEXT(id, value, data)")
void glGetInvariantIntegervEXT(GLuint id, GLenum value, GLint *data);
DOC(glGetInvariantIntegervEXT, "glGetInvariantIntegervEXT(id, value, data)")
void glGetInvariantFloatvEXT(GLuint id, GLenum value, GLfloat *data);
DOC(glGetInvariantFloatvEXT, "glGetInvariantFloatvEXT(id, value, data)")
void glGetLocalConstantBooleanvEXT(GLuint id, GLenum value, GLboolean *data);
DOC(glGetLocalConstantBooleanvEXT, "glGetLocalConstantBooleanvEXT(id, value, data)")
void glGetLocalConstantIntegervEXT(GLuint id, GLenum value, GLint *data);
DOC(glGetLocalConstantIntegervEXT, "glGetLocalConstantIntegervEXT(id, value, data)")
void glGetLocalConstantFloatvEXT(GLuint id, GLenum value, GLfloat *data);
DOC(glGetLocalConstantFloatvEXT, "glGetLocalConstantFloatvEXT(id, value, data)")

/* CONSTANT DECLARATIONS */
#define           GL_VERTEX_SHADER_EXT 0x8780
#define   GL_VERTEX_SHADER_BINDING_EXT 0x8781
#define                GL_OP_INDEX_EXT 0x8782
#define               GL_OP_NEGATE_EXT 0x8783
#define                 GL_OP_DOT3_EXT 0x8784
#define                 GL_OP_DOT4_EXT 0x8785
#define                  GL_OP_MUL_EXT 0x8786
#define                  GL_OP_ADD_EXT 0x8787
#define                 GL_OP_MADD_EXT 0x8788
#define                 GL_OP_FRAC_EXT 0x8789
#define                  GL_OP_MAX_EXT 0x878A
#define                  GL_OP_MIN_EXT 0x878B
#define               GL_OP_SET_GE_EXT 0x878C
#define               GL_OP_SET_LT_EXT 0x878D
#define                GL_OP_CLAMP_EXT 0x878E
#define                GL_OP_FLOOR_EXT 0x878F
#define                GL_OP_ROUND_EXT 0x8790
#define           GL_OP_EXP_BASE_2_EXT 0x8791
#define           GL_OP_LOG_BASE_2_EXT 0x8792
#define                GL_OP_POWER_EXT 0x8793
#define                GL_OP_RECIP_EXT 0x8794
#define           GL_OP_RECIP_SQRT_EXT 0x8795
#define                  GL_OP_SUB_EXT 0x8796
#define        GL_OP_CROSS_PRODUCT_EXT 0x8797
#define      GL_OP_MULTIPLY_MATRIX_EXT 0x8798
#define                  GL_OP_MOV_EXT 0x8799
#define           GL_OUTPUT_VERTEX_EXT 0x879A
#define           GL_OUTPUT_COLOR0_EXT 0x879B
#define           GL_OUTPUT_COLOR1_EXT 0x879C
#define   GL_OUTPUT_TEXTURE_COORD0_EXT 0x879D
#define   GL_OUTPUT_TEXTURE_COORD1_EXT 0x879E
#define   GL_OUTPUT_TEXTURE_COORD2_EXT 0x879F
#define   GL_OUTPUT_TEXTURE_COORD3_EXT 0x87A0
#define   GL_OUTPUT_TEXTURE_COORD4_EXT 0x87A1
#define   GL_OUTPUT_TEXTURE_COORD5_EXT 0x87A2
#define   GL_OUTPUT_TEXTURE_COORD6_EXT 0x87A3
#define   GL_OUTPUT_TEXTURE_COORD7_EXT 0x87A4
#define   GL_OUTPUT_TEXTURE_COORD8_EXT 0x87A5
#define   GL_OUTPUT_TEXTURE_COORD9_EXT 0x87A6
#define  GL_OUTPUT_TEXTURE_COORD10_EXT 0x87A7
#define  GL_OUTPUT_TEXTURE_COORD11_EXT 0x87A8
#define  GL_OUTPUT_TEXTURE_COORD12_EXT 0x87A9
#define  GL_OUTPUT_TEXTURE_COORD13_EXT 0x87AA
#define  GL_OUTPUT_TEXTURE_COORD14_EXT 0x87AB
#define  GL_OUTPUT_TEXTURE_COORD15_EXT 0x87AC
#define  GL_OUTPUT_TEXTURE_COORD16_EXT 0x87AD
#define  GL_OUTPUT_TEXTURE_COORD17_EXT 0x87AE
#define  GL_OUTPUT_TEXTURE_COORD18_EXT 0x87AF
#define  GL_OUTPUT_TEXTURE_COORD19_EXT 0x87B0
#define  GL_OUTPUT_TEXTURE_COORD20_EXT 0x87B1
#define  GL_OUTPUT_TEXTURE_COORD21_EXT 0x87B2
#define  GL_OUTPUT_TEXTURE_COORD22_EXT 0x87B3
#define  GL_OUTPUT_TEXTURE_COORD23_EXT 0x87B4
#define  GL_OUTPUT_TEXTURE_COORD24_EXT 0x87B5
#define  GL_OUTPUT_TEXTURE_COORD25_EXT 0x87B6
#define  GL_OUTPUT_TEXTURE_COORD26_EXT 0x87B7
#define  GL_OUTPUT_TEXTURE_COORD27_EXT 0x87B8
#define  GL_OUTPUT_TEXTURE_COORD28_EXT 0x87B9
#define  GL_OUTPUT_TEXTURE_COORD29_EXT 0x87BA
#define  GL_OUTPUT_TEXTURE_COORD30_EXT 0x87BB
#define  GL_OUTPUT_TEXTURE_COORD31_EXT 0x87BC
#define              GL_OUTPUT_FOG_EXT 0x87BD
#define                  GL_SCALAR_EXT 0x87BE
#define                  GL_VECTOR_EXT 0x87BF
#define                  GL_MATRIX_EXT 0x87C0
#define                 GL_VARIANT_EXT 0x87C1
#define               GL_INVARIANT_EXT 0x87C2
#define          GL_LOCAL_CONSTANT_EXT 0x87C3
#define                   GL_LOCAL_EXT 0x87C4
#define GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT 0x87C5
#define GL_MAX_VERTEX_SHADER_VARIANTS_EXT 0x87C6
#define GL_MAX_VERTEX_SHADER_INVARIANTS_EXT 0x87C7
#define GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT 0x87C8
#define GL_MAX_VERTEX_SHADER_LOCALS_EXT 0x87C9
#define GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT 0x87CA
#define GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT 0x87CB
#define GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT 0x87CC
#define GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT 0x87CD
#define GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT 0x87CE
#define GL_VERTEX_SHADER_INSTRUCTIONS_EXT 0x87CF
#define  GL_VERTEX_SHADER_VARIANTS_EXT 0x87D0
#define GL_VERTEX_SHADER_INVARIANTS_EXT 0x87D1
#define GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT 0x87D2
#define    GL_VERTEX_SHADER_LOCALS_EXT 0x87D3
#define GL_VERTEX_SHADER_OPTIMIZED_EXT 0x87D4
#define                       GL_X_EXT 0x87D5
#define                       GL_Y_EXT 0x87D6
#define                       GL_Z_EXT 0x87D7
#define                       GL_W_EXT 0x87D8
#define              GL_NEGATIVE_X_EXT 0x87D9
#define              GL_NEGATIVE_Y_EXT 0x87DA
#define              GL_NEGATIVE_Z_EXT 0x87DB
#define              GL_NEGATIVE_W_EXT 0x87DC
#define                    GL_ZERO_EXT 0x87DD
#define                     GL_ONE_EXT 0x87DE
#define            GL_NEGATIVE_ONE_EXT 0x87DF
#define        GL_NORMALIZED_RANGE_EXT 0x87E0
#define              GL_FULL_RANGE_EXT 0x87E1
#define          GL_CURRENT_VERTEX_EXT 0x87E2
#define              GL_MVP_MATRIX_EXT 0x87E3
#define           GL_VARIANT_VALUE_EXT 0x87E4
#define        GL_VARIANT_DATATYPE_EXT 0x87E5
#define    GL_VARIANT_ARRAY_STRIDE_EXT 0x87E6
#define      GL_VARIANT_ARRAY_TYPE_EXT 0x87E7
#define           GL_VARIANT_ARRAY_EXT 0x87E8
#define   GL_VARIANT_ARRAY_POINTER_EXT 0x87E9
#define         GL_INVARIANT_VALUE_EXT 0x87EA
#define      GL_INVARIANT_DATATYPE_EXT 0x87EB
#define    GL_LOCAL_CONSTANT_VALUE_EXT 0x87EC
#define GL_LOCAL_CONSTANT_DATATYPE_EXT 0x87ED


%{
static char *proc_names[] =
{
#if !EXT_DEFINES_PROTO || !defined(GL_EXT_vertex_shader)
"glBeginVertexShaderEXT",
"glEndVertexShaderEXT",
"glBindVertexShaderEXT",
"glGenVertexShadersEXT",
"glDeleteVertexShaderEXT",
"glShaderOp1EXT",
"glShaderOp2EXT",
"glShaderOp3EXT",
"glSwizzleEXT",
"glWriteMaskEXT",
"glInsertComponentEXT",
"glExtractComponentEXT",
"glGenSymbolsEXT",
"glSetInvariantEXT",
"glSetLocalConstantEXT",
"glVariantbvEXT",
"glVariantsvEXT",
"glVariantivEXT",
"glVariantfvEXT",
"glVariantdvEXT",
"glVariantubvEXT",
"glVariantusvEXT",
"glVariantuivEXT",
"glVariantPointerEXT",
"glEnableVariantClientStateEXT",
"glDisableVariantClientStateEXT",
"glBindLightParameterEXT",
"glBindMaterialParameterEXT",
"glBindTexGenParameterEXT",
"glBindTextureUnitParameterEXT",
"glBindParameterEXT",
"glIsVariantEnabledEXT",
"glGetVariantBooleanvEXT",
"glGetVariantIntegervEXT",
"glGetVariantFloatvEXT",
"glGetVariantPointervEXT",
"glGetInvariantBooleanvEXT",
"glGetInvariantIntegervEXT",
"glGetInvariantFloatvEXT",
"glGetLocalConstantBooleanvEXT",
"glGetLocalConstantIntegervEXT",
"glGetLocalConstantFloatvEXT",
#endif
	NULL
};

#define glInitVertexShaderEXT() InitExtension("GL_EXT_vertex_shader", proc_names)
%}

int glInitVertexShaderEXT();
DOC(glInitVertexShaderEXT, "glInitVertexShaderEXT() -> bool")

%{
PyObject *__info()
{
	if (glInitVertexShaderEXT())
	{
		PyObject *info = PyList_New(0);
		return info;
	}
	
	Py_INCREF(Py_None);
	return Py_None;
}
%}

PyObject *__info();

