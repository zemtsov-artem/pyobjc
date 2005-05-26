#ifndef PyObjC_OBJC_OBJECT_H
#define PyObjC_OBJC_OBJECT_H

#define PyObjCObject_kDEFAULT 0x00
#define PyObjCObject_kUNINITIALIZED 	0x01
#define PyObjCObject_kCLASSIC 		0x02
#define PyObjCObject_kDEALLOC_HELPER	0x04
#define PyObjCObject_kSHOULD_NOT_RELEASE      0x08
typedef struct {
	PyObject_HEAD
	id        objc_object;
	int 	  flags;
} PyObjCObject;

extern PyObjCClassObject PyObjCObject_Type;
#define PyObjCObject_Check(obj) PyObject_TypeCheck(obj, (PyTypeObject*)&PyObjCObject_Type)

PyObject* PyObjCObject_New(id objc_object, int flags, int retain);
PyObject* PyObjCObject_FindSelector(PyObject* cls, SEL selector);
id 	  PyObjCObject_GetObject(PyObject* object);
void 	  PyObjCObject_ClearObject(PyObject* object);
#define   PyObjCObject_GetObject(object) (((PyObjCObject*)(object))->objc_object)
void _PyObjCObject_FreeDeallocHelper(PyObject* obj);
PyObject* _PyObjCObject_NewDeallocHelper(id objc_object);
#define PyObjCObject_GetFlags(object) (((PyObjCObject*)(object))->flags)
#define PyObjCObject_IsClassic(object) (PyObjCObject_GetFlags(object) & PyObjCObject_kCLASSIC)

PyObject* PyObjCObject_NewTransient(id objc_object, int* cookie);
void PyObjCObject_ReleaseTransient(PyObject* proxy, int cookie);

#endif /* PyObjC_OBJC_OBJECT_H */
