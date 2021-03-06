/*
# AUTOGENERATED DO NOT EDIT

# If you edit this file, delete the AUTOGENERATED line to prevent re-generation
# BUILD api_versions [0x001]
*/

%module fog_distance

#define __version__ "$Revision: 1.1.2.1 $"
#define __date__ "$Date: 2004/11/15 07:38:07 $"
#define __api_version__ API_VERSION
#define __author__ "PyOpenGL Developers <pyopengl-devel@lists.sourceforge.net>"
#define __doc__ ""

%{
/**
 *
 * GL.NV.fog_distance Module for PyOpenGL
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

#if !EXT_DEFINES_PROTO || !defined(GL_NV_fog_distance)

#endif
%}

/* FUNCTION DECLARATIONS */


/* CONSTANT DECLARATIONS */
#define        GL_FOG_DISTANCE_MODE_NV 0x855A
#define               GL_EYE_RADIAL_NV 0x855B
#define       GL_EYE_PLANE_ABSOLUTE_NV 0x855C


%{
static char *proc_names[] =
{
#if !EXT_DEFINES_PROTO || !defined(GL_NV_fog_distance)

#endif
	NULL
};

#define glInitFogDistanceNV() InitExtension("GL_NV_fog_distance", proc_names)
%}

int glInitFogDistanceNV();
DOC(glInitFogDistanceNV, "glInitFogDistanceNV() -> bool")

%{
PyObject *__info()
{
	if (glInitFogDistanceNV())
	{
		PyObject *info = PyList_New(0);
		return info;
	}
	
	Py_INCREF(Py_None);
	return Py_None;
}
%}

PyObject *__info();

