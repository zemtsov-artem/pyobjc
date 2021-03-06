/*
# AUTOGENERATED DO NOT EDIT

# If you edit this file, delete the AUTOGENERATED line to prevent re-generation
# BUILD api_versions [0x001]
*/

%module polynomial_ffd

#define __version__ "$Revision: 1.1.2.1 $"
#define __date__ "$Date: 2004/11/15 07:38:07 $"
#define __api_version__ API_VERSION
#define __author__ "PyOpenGL Developers <pyopengl-devel@lists.sourceforge.net>"
#define __doc__ ""

%{
/**
 *
 * GL.SGIX.polynomial_ffd Module for PyOpenGL
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

#if !EXT_DEFINES_PROTO || !defined(GL_SGIX_polynomial_ffd)
DECLARE_VOID_EXT(glDeformationMap3dSGIX, (GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, const GLdouble *points), (target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, w1, w2, wstride, worder, points))
DECLARE_VOID_EXT(glDeformationMap3fSGIX, (GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, const GLfloat *points), (target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, w1, w2, wstride, worder, points))
DECLARE_VOID_EXT(glDeformSGIX, (GLbitfield mask), (mask))
DECLARE_VOID_EXT(glLoadIdentityDeformationMapSGIX, (GLbitfield mask), (mask))
#endif
%}

/* FUNCTION DECLARATIONS */
void glDeformationMap3dSGIX(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, const GLdouble *points);
DOC(glDeformationMap3dSGIX, "glDeformationMap3dSGIX(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, w1, w2, wstride, worder, points)")
void glDeformationMap3fSGIX(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, const GLfloat *points);
DOC(glDeformationMap3fSGIX, "glDeformationMap3fSGIX(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, w1, w2, wstride, worder, points)")
void glDeformSGIX(GLbitfield mask);
DOC(glDeformSGIX, "glDeformSGIX(mask)")
void glLoadIdentityDeformationMapSGIX(GLbitfield mask);
DOC(glLoadIdentityDeformationMapSGIX, "glLoadIdentityDeformationMapSGIX(mask)")

/* CONSTANT DECLARATIONS */
#define   GL_GEOMETRY_DEFORMATION_SGIX 0x8194
#define    GL_TEXTURE_DEFORMATION_SGIX 0x8195
#define      GL_DEFORMATIONS_MASK_SGIX 0x8196
#define  GL_MAX_DEFORMATION_ORDER_SGIX 0x8197


%{
static char *proc_names[] =
{
#if !EXT_DEFINES_PROTO || !defined(GL_SGIX_polynomial_ffd)
"glDeformationMap3dSGIX",
"glDeformationMap3fSGIX",
"glDeformSGIX",
"glLoadIdentityDeformationMapSGIX",
#endif
	NULL
};

#define glInitPolynomialFfdSGIX() InitExtension("GL_SGIX_polynomial_ffd", proc_names)
%}

int glInitPolynomialFfdSGIX();
DOC(glInitPolynomialFfdSGIX, "glInitPolynomialFfdSGIX() -> bool")

%{
PyObject *__info()
{
	if (glInitPolynomialFfdSGIX())
	{
		PyObject *info = PyList_New(0);
		return info;
	}
	
	Py_INCREF(Py_None);
	return Py_None;
}
%}

PyObject *__info();

