/*
# AUTOGENERATED DO NOT EDIT

# If you edit this file, delete the AUTOGENERATED line to prevent re-generation
# BUILD api_versions [0x001]
*/

%module texture_env_combine4

#define __version__ "$Revision: 1.1.2.1 $"
#define __date__ "$Date: 2004/11/15 07:38:07 $"
#define __api_version__ API_VERSION
#define __author__ "PyOpenGL Developers <pyopengl-devel@lists.sourceforge.net>"
#define __doc__ ""

%{
/**
 *
 * GL.NV.texture_env_combine4 Module for PyOpenGL
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

#if !EXT_DEFINES_PROTO || !defined(GL_NV_texture_env_combine4)

#endif
%}

/* FUNCTION DECLARATIONS */


/* CONSTANT DECLARATIONS */
#define                 GL_COMBINE4_NV 0x8503
#define              GL_SOURCE3_RGB_NV 0x8583
#define            GL_SOURCE3_ALPHA_NV 0x858B
#define             GL_OPERAND3_RGB_NV 0x8593
#define           GL_OPERAND3_ALPHA_NV 0x859B


%{
static char *proc_names[] =
{
#if !EXT_DEFINES_PROTO || !defined(GL_NV_texture_env_combine4)

#endif
	NULL
};

#define glInitTextureEnvCombine4NV() InitExtension("GL_NV_texture_env_combine4", proc_names)
%}

int glInitTextureEnvCombine4NV();
DOC(glInitTextureEnvCombine4NV, "glInitTextureEnvCombine4NV() -> bool")

%{
PyObject *__info()
{
	if (glInitTextureEnvCombine4NV())
	{
		PyObject *info = PyList_New(0);
		return info;
	}
	
	Py_INCREF(Py_None);
	return Py_None;
}
%}

PyObject *__info();

