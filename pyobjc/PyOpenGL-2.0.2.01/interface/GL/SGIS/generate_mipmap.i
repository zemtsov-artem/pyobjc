/*
# AUTOGENERATED DO NOT EDIT

# If you edit this file, delete the AUTOGENERATED line to prevent re-generation
# BUILD api_versions [0x001]
*/

%module generate_mipmap

#define __version__ "$Revision: 1.1.2.1 $"
#define __date__ "$Date: 2004/11/15 07:38:07 $"
#define __api_version__ API_VERSION
#define __author__ "PyOpenGL Developers <pyopengl-devel@lists.sourceforge.net>"
#define __doc__ ""

%{
/**
 *
 * GL.SGIS.generate_mipmap Module for PyOpenGL
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

#if !EXT_DEFINES_PROTO || !defined(GL_SGIS_generate_mipmap)

#endif
%}

/* FUNCTION DECLARATIONS */


/* CONSTANT DECLARATIONS */
#define        GL_GENERATE_MIPMAP_SGIS 0x8191
#define   GL_GENERATE_MIPMAP_HINT_SGIS 0x8192


%{
static char *proc_names[] =
{
#if !EXT_DEFINES_PROTO || !defined(GL_SGIS_generate_mipmap)

#endif
	NULL
};

#define glInitGenerateMipmapSGIS() InitExtension("GL_SGIS_generate_mipmap", proc_names)
%}

int glInitGenerateMipmapSGIS();
DOC(glInitGenerateMipmapSGIS, "glInitGenerateMipmapSGIS() -> bool")

%{
PyObject *__info()
{
	if (glInitGenerateMipmapSGIS())
	{
		PyObject *info = PyList_New(0);
		return info;
	}
	
	Py_INCREF(Py_None);
	return Py_None;
}
%}

PyObject *__info();

