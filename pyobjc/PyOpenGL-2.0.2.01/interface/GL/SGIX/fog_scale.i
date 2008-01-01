/*
# AUTOGENERATED DO NOT EDIT

# If you edit this file, delete the AUTOGENERATED line to prevent re-generation
# BUILD api_versions [0x001]
*/

%module fog_scale

#define __version__ "$Revision: 1.1.2.1 $"
#define __date__ "$Date: 2004/11/15 07:38:07 $"
#define __api_version__ API_VERSION
#define __author__ "PyOpenGL Developers <pyopengl-devel@lists.sourceforge.net>"
#define __doc__ ""

%{
/**
 *
 * GL.SGIX.fog_scale Module for PyOpenGL
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

#if !EXT_DEFINES_PROTO || !defined(GL_SGIX_fog_scale)

#endif
%}

/* FUNCTION DECLARATIONS */


/* CONSTANT DECLARATIONS */
#define              GL_FOG_SCALE_SGIX 0x81FC
#define        GL_FOG_SCALE_VALUE_SGIX 0x81FD


%{
static char *proc_names[] =
{
#if !EXT_DEFINES_PROTO || !defined(GL_SGIX_fog_scale)

#endif
	NULL
};

#define glInitFogScaleSGIX() InitExtension("GL_SGIX_fog_scale", proc_names)
%}

int glInitFogScaleSGIX();
DOC(glInitFogScaleSGIX, "glInitFogScaleSGIX() -> bool")

%{
PyObject *__info()
{
	if (glInitFogScaleSGIX())
	{
		PyObject *info = PyList_New(0);
		return info;
	}
	
	Py_INCREF(Py_None);
	return Py_None;
}
%}

PyObject *__info();

