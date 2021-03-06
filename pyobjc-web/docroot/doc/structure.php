<?
    $title = "Structure of the PyObjC package";
    $cvs_author = '$Author: ronaldoussoren $';
    $cvs_date = '$Date: 2003/07/05 14:59:47 $';

    include "header.inc";
?>
<h1 class="title">Structure of the PyObjC package</h1>
<div class="section" id="introduction">
<h3><a name="introduction">Introduction</a></h3>
<p>This document gives an overview of the PyObjC for developers (of the package).</p>
<p>One of the sections describes how all of it works, and some of the limitations.</p>
<p>This document is a incomplete, it should be updated.</p>
</div>
<div class="section" id="methods">
<h3><a name="methods">Methods</a></h3>
<p>Classes are scanned for methods when the Python wrapper for a class is created.
We then create Python wrappers for those methods.  This way users can use the
normal Python introspection methods to check which methods are available.</p>
<p>There are several occasions when these method tables are rescanned, because
classes can grow new methods when categories are loaded into the runtime.
Additionally, it is known that some Cocoa frameworks in Mac OS X change
their method tables when the first instance is created.</p>
</div>
<div class="section" id="subclassing">
<h3><a name="subclassing">Subclassing</a></h3>
<p>It is possible to subclass Objective-C classes from Python.  These classes
end up in a structure containing both a Python type object and an Objective-C
class.  Instances of these classes also contain both a Python instance and
an Objective-C object.</p>
<p>The first Python subclass of an Objective-C class introduces a new instance
variable in the Objective-C object to store the pointer to the Python half of
the cluster.  This variable is always referenced by name.  The Python half is 
a subclass of <tt class="docutils literal"><span class="pre">objc_object</span></tt> that already contains a pointer to an Objective-C 
object.  This first subclass also introduces a number of class and instance
methods that the PyObjC bridge uses to maintain the illusion of a single
object on both sides.  Check class-builder.m for details.</p>
</div>
<div class="section" id="directory-structure">
<h3><a name="directory-structure">Directory structure</a></h3>
<dl class="docutils">
<dt>Doc/</dt>
<dd>Documentation</dd>
<dt>Examples/</dt>
<dd>Example scripts and applets.</dd>
<dt>Lib/</dt>
<dd>The pure Python parts of the packages that comprise PyObjC.  Currently
contains the packages 'objc', 'PyObjCScripts', 'PyObjCTools' and the
semi-automatically generated wrappers for the 'AddressBook',
'AppKit', 'ExceptionHandling', 'Foundation', 'InterfaceBuilder', 'Message',
'PreferencePanes', 'ScreenSaver', 'SecurityInterface' and 'WebKit'
frameworks.</dd>
<dt>Modules/</dt>
<dd>Extension modules related to the packages in 'Lib'.</dd>
<dt>Scripts/</dt>
<dd>Scripts used during building and/or development of PyObjC.</dd>
<dt>Installer Package/</dt>
<dd>Resources used for building the Apple Installer packages.</dd>
<dt>Xcode/</dt>
<dd>Xcode templates for PyObjC development.</dd>
<dt>libffi-src/</dt>
<dd>A local copy of libffi, the Foreign Function Interface library used by
PyObjC.</dd>
<dt>setup-lib/</dt>
<dd>Modules used by setup.py for building and distributing PyObjC.</dd>
<dt>source-deps/</dt>
<dd>Local copies of Python packages and modules used by PyObjC that are not
expected to be found in the minimum supported version of Python.  These
are not automatically installed by setup.py, but some may be included in
a bdist_mpkg installer (currently, just py2app).</dd>
</dl>
</div>
<div class="section" id="reference-counts">
<h3><a name="reference-counts">Reference counts</a></h3>
<p>The Objective-C rules for reference counts are pretty easy: A small number
of class methods (<tt class="docutils literal"><span class="pre">alloc</span></tt>, <tt class="docutils literal"><span class="pre">allocWithZone:</span></tt>, <tt class="docutils literal"><span class="pre">copy</span></tt>, ...) transfer
object ownership to the caller.  For all other objects you have to call
<tt class="docutils literal"><span class="pre">retain</span></tt> if you want to keep a reference.  This includes all factory
methods, such as <tt class="docutils literal"><span class="pre">[NSString</span> <span class="pre">stringWithCString:&quot;bla&quot;]</span></tt>!</p>
<p>When programming Cocoa in Python, you rarely need to worry about
reference counts: the <tt class="docutils literal"><span class="pre">objc</span></tt> module makes this completely transparent to
user.  This is mostly implemented in <tt class="docutils literal"><span class="pre">[de]pythonify_c_value</span></tt>.  Additonal
code is needed when calling methods that transfer ownership of their return
value (as described above) and when updating a instance variable in an
Objective-C object (retain new and release old, in that order).  Both are
implemented.</p>
</div>
<div class="section" id="strings">
<h3><a name="strings">Strings</a></h3>
<p>Python <tt class="docutils literal"><span class="pre">unicode</span></tt> instances are proxied by the <tt class="docutils literal"><span class="pre">OC_PythonUnicode</span></tt> subclass
of <tt class="docutils literal"><span class="pre">NSString</span></tt>.  This is a proxy, and will maintain the identity of the
original <tt class="docutils literal"><span class="pre">unicode</span></tt> instance.</p>
<p><tt class="docutils literal"><span class="pre">NSString</span></tt> instances are represented in Python as a subtype of <tt class="docutils literal"><span class="pre">unicode</span></tt>:
<tt class="docutils literal"><span class="pre">objc.pyobjc_unicode</span></tt>.  This performs a conversion, because Python's
<tt class="docutils literal"><span class="pre">unicode</span></tt> type is immutable, but it also maintains a <em>reference</em> to the
original <tt class="docutils literal"><span class="pre">NSString</span></tt>.  <tt class="docutils literal"><span class="pre">NSString</span></tt> and <tt class="docutils literal"><span class="pre">NSMutableString</span></tt> methods are
available from the <tt class="docutils literal"><span class="pre">objc.pyobjc_unicode</span></tt> object, though they do not show up
via Python's introspection mechanisms.  In order to get the latest Python
representation of a <tt class="docutils literal"><span class="pre">NSMutableString</span></tt>, use the return value of its <tt class="docutils literal"><span class="pre">self()</span></tt>
method.</p>
<p>Python <tt class="docutils literal"><span class="pre">str</span></tt> instances are proxied by the <tt class="docutils literal"><span class="pre">OC_PythonString</span></tt> subclass of
<tt class="docutils literal"><span class="pre">NSString</span></tt>.  This is a proxy, and will maintain the identity of the
original <tt class="docutils literal"><span class="pre">str</span></tt> instance.  <tt class="docutils literal"><span class="pre">OC_PythonString</span></tt> will use the default encoding
of <tt class="docutils literal"><span class="pre">NSString</span></tt>, so its results might be surprising if you are using non-ASCII
text.  It is recommended that you use <tt class="docutils literal"><span class="pre">unicode</span></tt> whenever possible.  In order
to help you determine where you are not using <tt class="docutils literal"><span class="pre">unicode</span></tt>, it is possible
to trigger an <tt class="docutils literal"><span class="pre">objc.PyObjCStrBridgeWarning</span></tt> warning whenever a <tt class="docutils literal"><span class="pre">str</span></tt>
instance crosses the bridge:</p>
<pre class="literal-block">
import objc
objc.setStrBridgeEnabled(False)
</pre>
<p>To promote these to an exception, do the following:</p>
<pre class="literal-block">
import objc
import warnings
warnings.filterwarnings('error', objc.PyObjCStrBridgeWarning)
</pre>
</div>
</div>
<?
    include "footer.inc";
?>