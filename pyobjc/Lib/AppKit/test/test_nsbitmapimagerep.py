import unittest
import objc
import array

from objc import YES, NO
from AppKit import NSBitmapImageRep, NSDeviceRGBColorSpace

class TestNSBitmapImageRep(unittest.TestCase):
    def testInstantiation(self):
        # widthxheight RGB 24bpp image
        width = 256
        height = 256
        dataPlanes = (None, None, None, None, None)
        i1 = NSBitmapImageRep.alloc().initWithBitmapDataPlanes_pixelsWide_pixelsHigh_bitsPerSample_samplesPerPixel_hasAlpha_isPlanar_colorSpaceName_bytesPerRow_bitsPerPixel_(dataPlanes, width, height, 8, 3, NO, NO, NSDeviceRGBColorSpace, 0, 0)
        self.assert_(i1)
        
        i2 = NSBitmapImageRep.alloc().initWithBitmapDataPlanes_pixelsWide_pixelsHigh_bitsPerSample_samplesPerPixel_hasAlpha_isPlanar_colorSpaceName_bytesPerRow_bitsPerPixel_(None, width, height, 8, 3, NO, NO, NSDeviceRGBColorSpace, 0, 0)
        self.assert_(i2)

    def testImageData(self):
        width = 256
        height = 256

        rPlane = array.array('B')
        rPlane.fromlist( [y%256 for y in range(0,height) for x in range(0,width)] )
        rPlane = buffer(rPlane)

        gPlane = array.array('B')
        gPlane.fromlist( [y%256 for x in range(0,height) for x in range(width,0,-1)] )
        gPlane = buffer(gPlane)

        bPlane = array.array('B')
        bPlane.fromlist( [x%256 for x in range(0,height) for x in range(0,width)] )
        bPlane = buffer(bPlane)

        dataPlanes = (rPlane, gPlane, bPlane, None, None)

        # test planar, pre-made buffer
        i1 = NSBitmapImageRep.alloc().initWithBitmapDataPlanes_pixelsWide_pixelsHigh_bitsPerSample_samplesPerPixel_hasAlpha_isPlanar_colorSpaceName_bytesPerRow_bitsPerPixel_(dataPlanes, width, height, 8, 3, NO, YES, NSDeviceRGBColorSpace, 0, 0)
        self.assert_(i1)

        singlePlane = objc.allocateBuffer(width*height*3)
        for i in range(0, 256*256):
            si = i * 3
            singlePlane[si] = rPlane[i]
            singlePlane[si+1] = gPlane[i]
            singlePlane[si+2] = bPlane[i]

        dataPlanes = (singlePlane, None, None, None, None)
        # test non-planar, premade buffer
        i2 = NSBitmapImageRep.alloc().initWithBitmapDataPlanes_pixelsWide_pixelsHigh_bitsPerSample_samplesPerPixel_hasAlpha_isPlanar_colorSpaceName_bytesPerRow_bitsPerPixel_(dataPlanes, width, height, 8, 3, NO, NO, NSDeviceRGBColorSpace, 0, 0)

        # test planar, NSBIR allocated buffer
        i3 = NSBitmapImageRep.alloc().initWithBitmapDataPlanes_pixelsWide_pixelsHigh_bitsPerSample_samplesPerPixel_hasAlpha_isPlanar_colorSpaceName_bytesPerRow_bitsPerPixel_(None, width, height, 8, 3, NO, YES, NSDeviceRGBColorSpace, 0, 0)

        r,g,b,a,o = i3.getBitmapDataPlanes_()
        self.assert_(r)
        self.assert_(g)
        self.assert_(b)
        self.assert_(not a)
        self.assert_(not o)

        self.assertEquals(len(r), len(rPlane))
        self.assertEquals(len(g), len(gPlane))
        self.assertEquals(len(b), len(bPlane))
       
        r[0:len(r)] = rPlane[0:len(rPlane)]
        g[0:len(g)] = gPlane[0:len(gPlane)]
        b[0:len(b)] = bPlane[0:len(bPlane)]

        bitmapData = i2.bitmapData()
        self.assertEquals(len(bitmapData), len(singlePlane))
        self.assertEquals(bitmapData, singlePlane)

def suite():
    suite = unittest.TestSuite()
    suite.addTest(unittest.makeSuite(TestNSBitmapImageRep))
    return suite

if __name__ == '__main__':
    unittest.main( )
