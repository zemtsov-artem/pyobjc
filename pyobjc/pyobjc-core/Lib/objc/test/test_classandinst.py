from PyObjCTools.TestSupport import *
import objc
from objc.test.testclassandinst import PyObjC_TestClassAndInstance, PyObjC_TestUnallocatable

class PyObjC_TestClassAndInstanceSubclass(PyObjC_TestClassAndInstance):
    """Simple subclass, just make sure it still works"""
    pass


# XXX: Huh? The next two classes have the same definition?
class PyObjC_TestClassAndInstanceClassOverride(PyObjC_TestClassAndInstance):
    """return YES for both"""
    def isInstance(klass):
        return objc.YES
    isInstance = classmethod(isInstance)

class PyObjC_TestClassAndInstanceInstanceOverride(PyObjC_TestClassAndInstance):
    """return NO for both"""
    def isInstance(self):
        return objc.NO

# class PyObjC_TestClassAndInstanceBothOverride(PyObjC_TestClassAndInstance):
#     """flipped"""
#     def isInstance__class__(self):
#         return objc.YES
#
#     def isInstance__inst__(self):
#         return objc.NO

class TestClassAndInstance(TestCase):
    def testClassAndInstanceInstanceOverrideWorkaround(self):
        self.failIf(PyObjC_TestClassAndInstanceInstanceOverride.pyobjc_classMethods.isInstance())
        self.failIf(PyObjC_TestClassAndInstanceInstanceOverride.alloc().init().pyobjc_instanceMethods.isInstance())

    def testClassAndInstanceClassOverrideWorkaround(self):
        self.failUnless(PyObjC_TestClassAndInstanceClassOverride.pyobjc_classMethods.isInstance())

    def testClassAndInstanceSubclassWorkaround(self):
        self.failIf(PyObjC_TestClassAndInstanceSubclass.pyobjc_classMethods.isInstance())
        self.failUnless(PyObjC_TestClassAndInstanceSubclass.alloc().init().pyobjc_instanceMethods.isInstance())

    def testClassAndInstanceWorkaround(self):
        if PyObjC_TestClassAndInstance.pyobjc_classMethods.isInstance():
            self.fail()

        self.failIf(PyObjC_TestClassAndInstance.pyobjc_classMethods.isInstance())
        self.failUnless(PyObjC_TestClassAndInstance.alloc().init().pyobjc_instanceMethods.isInstance())

    def testClassAndInstanceClassOverride(self):
        self.failUnless(PyObjC_TestClassAndInstanceClassOverride.isInstance())
        self.failUnless(PyObjC_TestClassAndInstanceClassOverride.alloc().init().isInstance())

    def testClassAndInstanceInstanceOverride(self):
        # Having the next line true would be nice:
        #self.failIf(PyObjC_TestClassAndInstanceInstanceOverride.isInstance())
        # But we'll have to settle for this one instead:
        self.failIf(PyObjC_TestClassAndInstanceInstanceOverride.pyobjc_classMethods.isInstance())
        self.failIf(PyObjC_TestClassAndInstanceInstanceOverride.alloc().init().isInstance())

    def testClassAndInstanceSubclass(self):
        # Having the next line true would be nice:
        #self.failIf(PyObjC_TestClassAndInstanceSubclass.isInstance())
        # But we'll have to settle for this one instead:
        self.failIf(PyObjC_TestClassAndInstanceSubclass.pyobjc_classMethods.isInstance())
        self.failUnless(PyObjC_TestClassAndInstanceSubclass.alloc().init().isInstance())

    def testClassAndInstance(self):

        # Having the next line true would be nice:
        #self.assertEquals(PyObjC_TestClassAndInstance.isInstance(), objc.NO)
        # But we'll have to settle for this one instead:
        self.failIf(PyObjC_TestClassAndInstance.pyobjc_classMethods.isInstance())
        self.failUnless(PyObjC_TestClassAndInstance.alloc().init().isInstance())

    def testUnallocatable(self):
        self.assertEquals(PyObjC_TestUnallocatable.alloc(), None)

if __name__ == '__main__':
    main()
