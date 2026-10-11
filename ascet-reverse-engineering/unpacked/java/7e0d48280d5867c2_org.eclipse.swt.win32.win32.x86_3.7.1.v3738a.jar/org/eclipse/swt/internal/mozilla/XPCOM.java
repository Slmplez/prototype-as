/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.mozilla.nsDynamicFunctionLoad;
import org.eclipse.swt.internal.mozilla.nsID;

public class XPCOM
extends C {
    public static final String MOZILLA_FIVE_HOME = "MOZILLA_FIVE_HOME";
    public static final String MOZILLA_PLUGIN_PATH = "MOZ_PLUGIN_PATH";
    public static final String CONTENT_MAYBETEXT = "application/x-vnd.mozilla.maybe-text";
    public static final String CONTENT_MULTIPART = "multipart/x-mixed-replace";
    public static final String DOMEVENT_FOCUS = "focus";
    public static final String DOMEVENT_UNLOAD = "unload";
    public static final String DOMEVENT_MOUSEDOWN = "mousedown";
    public static final String DOMEVENT_MOUSEUP = "mouseup";
    public static final String DOMEVENT_MOUSEMOVE = "mousemove";
    public static final String DOMEVENT_MOUSEDRAG = "draggesture";
    public static final String DOMEVENT_MOUSEWHEEL = "DOMMouseScroll";
    public static final String DOMEVENT_MOUSEOVER = "mouseover";
    public static final String DOMEVENT_MOUSEOUT = "mouseout";
    public static final String DOMEVENT_KEYDOWN = "keydown";
    public static final String DOMEVENT_KEYPRESS = "keypress";
    public static final String DOMEVENT_KEYUP = "keyup";
    public static final nsID EXTERNAL_CID = new nsID("f2c59ad0-bd76-11dd-ad8b-0800200c9a66");
    public static final nsID NS_APPSHELL_CID = new nsID("2d96b3df-c051-11d1-a827-0040959a28c9");
    public static final nsID NS_CATEGORYMANAGER_CID = new nsID("16d222a6-1dd2-11b2-b693-f38b02c021b2");
    public static final nsID NS_DOWNLOAD_CID = new nsID("e3fa9D0a-1dd1-11b2-bdef-8c720b597445");
    public static final nsID NS_FILEPICKER_CID = new nsID("54ae32f8-1dd2-11b2-a209-df7c505370f8");
    public static final nsID NS_HELPERAPPLAUNCHERDIALOG_CID = new nsID("f68578eb-6ec2-4169-ae19-8c6243f0abe1");
    public static final nsID NS_INPUTSTREAMCHANNEL_CID = new nsID("6ddb050c-0d04-11d4-986e-00c04fa0cf4a");
    public static final nsID NS_IOSERVICE_CID = new nsID("9ac9e770-18bc-11d3-9337-00104ba0fd40");
    public static final nsID NS_LOADGROUP_CID = new nsID("e1c61582-2a84-11d3-8cce-0060b0fc14a3");
    public static final nsID NS_PROMPTSERVICE_CID = new nsID("a2112d6a-0e28-421f-b46a-25c0b308cbd0");
    public static final String EXTERNAL_CONTRACTID = "@eclipse.org/external;1";
    public static final String NS_CERTOVERRIDE_CONTRACTID = "@mozilla.org/security/certoverride;1";
    public static final String NS_CERTIFICATEDIALOGS_CONTRACTID = "@mozilla.org/nsCertificateDialogs;1";
    public static final String NS_CONTEXTSTACK_CONTRACTID = "@mozilla.org/js/xpc/ContextStack;1";
    public static final String NS_COOKIEMANAGER_CONTRACTID = "@mozilla.org/cookiemanager;1";
    public static final String NS_COOKIESERVICE_CONTRACTID = "@mozilla.org/cookieService;1";
    public static final String NS_DIRECTORYSERVICE_CONTRACTID = "@mozilla.org/file/directory_service;1";
    public static final String NS_DOMSERIALIZER_CONTRACTID = "@mozilla.org/xmlextras/xmlserializer;1";
    public static final String NS_DOWNLOAD_CONTRACTID = "@mozilla.org/download;1";
    public static final String NS_FILEPICKER_CONTRACTID = "@mozilla.org/filepicker;1";
    public static final String NS_HELPERAPPLAUNCHERDIALOG_CONTRACTID = "@mozilla.org/helperapplauncherdialog;1";
    public static final String NS_MEMORY_CONTRACTID = "@mozilla.org/xpcom/memory-service;1";
    public static final String NS_MIMEINPUTSTREAM_CONTRACTID = "@mozilla.org/network/mime-input-stream;1";
    public static final String NS_SCRIPTSECURITYMANAGER_CONTRACTID = "@mozilla.org/scriptsecuritymanager;1";
    public static final String NS_OBSERVER_CONTRACTID = "@mozilla.org/observer-service;1";
    public static final String NS_PREFLOCALIZEDSTRING_CONTRACTID = "@mozilla.org/pref-localizedstring;1";
    public static final String NS_PREFSERVICE_CONTRACTID = "@mozilla.org/preferences-service;1";
    public static final String NS_PROMPTSERVICE_CONTRACTID = "@mozilla.org/embedcomp/prompt-service;1";
    public static final String NS_TRANSFER_CONTRACTID = "@mozilla.org/transfer;1";
    public static final String NS_VARIANT_CONTRACTID = "@mozilla.org/variant;1";
    public static final String NS_WEBNAVIGATIONINFO_CONTRACTID = "@mozilla.org/webnavigation-info;1";
    public static final String NS_WINDOWWATCHER_CONTRACTID = "@mozilla.org/embedcomp/window-watcher;1";
    public static final String NS_APP_APPLICATION_REGISTRY_DIR = "AppRegD";
    public static final String NS_APP_CACHE_PARENT_DIR = "cachePDir";
    public static final String NS_APP_HISTORY_50_FILE = "UHist";
    public static final String NS_APP_LOCALSTORE_50_FILE = "LclSt";
    public static final String NS_APP_PLUGINS_DIR_LIST = "APluginsDL";
    public static final String NS_APP_PREF_DEFAULTS_50_DIR = "PrfDef";
    public static final String NS_APP_PREFS_50_DIR = "PrefD";
    public static final String NS_APP_PREFS_50_FILE = "PrefF";
    public static final String NS_APP_USER_CHROME_DIR = "UChrm";
    public static final String NS_APP_USER_MIMETYPES_50_FILE = "UMimTyp";
    public static final String NS_APP_USER_PROFILE_50_DIR = "ProfD";
    public static final String NS_GRE_COMPONENT_DIR = "GreComsD";
    public static final String NS_GRE_DIR = "GreD";
    public static final String NS_OS_CURRENT_PROCESS_DIR = "CurProcD";
    public static final String NS_OS_HOME_DIR = "Home";
    public static final String NS_OS_TEMP_DIR = "TmpD";
    public static final String NS_XPCOM_COMPONENT_DIR = "ComsD";
    public static final String NS_XPCOM_CURRENT_PROCESS_DIR = "XCurProcD";
    public static final String NS_XPCOM_INIT_CURRENT_PROCESS_DIR = "MozBinD";
    public static final int NS_OK = 0;
    public static final int NS_COMFALSE = 1;
    public static final int NS_BINDING_ABORTED = -2142568446;
    public static final int NS_ERROR_BASE = -1041039360;
    public static final int NS_ERROR_NOT_INITIALIZED = -1041039359;
    public static final int NS_ERROR_ALREADY_INITIALIZED = -1041039358;
    public static final int NS_ERROR_NOT_IMPLEMENTED = -2147467263;
    public static final int NS_NOINTERFACE = -2147467262;
    public static final int NS_ERROR_NO_INTERFACE = -2147467262;
    public static final int NS_ERROR_INVALID_POINTER = -2147467261;
    public static final int NS_ERROR_NULL_POINTER = -2147467261;
    public static final int NS_ERROR_ABORT = -2147467260;
    public static final int NS_ERROR_FAILURE = -2147467259;
    public static final int NS_ERROR_UNEXPECTED = -2147418113;
    public static final int NS_ERROR_OUT_OF_MEMORY = -2147024882;
    public static final int NS_ERROR_ILLEGAL_VALUE = -2147024809;
    public static final int NS_ERROR_INVALID_ARG = -2147024809;
    public static final int NS_ERROR_NO_AGGREGATION = -2147221232;
    public static final int NS_ERROR_NOT_AVAILABLE = -2147221231;
    public static final int NS_ERROR_FACTORY_NOT_REGISTERED = -2147221164;
    public static final int NS_ERROR_FACTORY_REGISTER_AGAIN = -2147221163;
    public static final int NS_ERROR_FACTORY_NOT_LOADED = -2147221000;
    public static final int NS_ERROR_FACTORY_NO_SIGNATURE_SUPPORT = -1041039103;
    public static final int NS_ERROR_FACTORY_EXISTS = -1041039104;
    public static final int NS_ERROR_HTMLPARSER_UNRESOLVEDDTD = -2142370829;
    public static final int NS_ERROR_FILE_NOT_FOUND = -2142109678;
    public static final int NS_ERROR_FILE_UNRECOGNIZED_PATH = -2142109695;

    public static final native int nsDynamicFunctionLoad_sizeof();

    public static final native void memmove(int var0, nsDynamicFunctionLoad var1, int var2);

    public static final native void memmove(nsID var0, int var1, int var2);

    public static final native void memmove(int var0, nsID var1, int var2);

    public static final native int strlen_PRUnichar(int var0);

    public static final native int _JS_EvaluateUCScriptForPrincipals(byte[] var0, int var1, int var2, int var3, char[] var4, int var5, byte[] var6, int var7, int[] var8);

    public static final int JS_EvaluateUCScriptForPrincipals(byte[] mozillaPath, int cx, int obj, int principals, char[] chars, int length, byte[] filename, int lineno, int[] retVal) {
        lock.lock();
        try {
            int n = XPCOM._JS_EvaluateUCScriptForPrincipals(mozillaPath, cx, obj, principals, chars, length, filename, lineno, retVal);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native boolean _NS_Free(byte[] var0, int var1);

    public static final boolean NS_Free(byte[] mozillaPath, int aPtr) {
        lock.lock();
        try {
            boolean bl = XPCOM._NS_Free(mozillaPath, aPtr);
            return bl;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _NS_GetComponentManager(int[] var0);

    public static final int NS_GetComponentManager(int[] result) {
        lock.lock();
        try {
            int n = XPCOM._NS_GetComponentManager(result);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _NS_GetServiceManager(int[] var0);

    public static final int NS_GetServiceManager(int[] result) {
        lock.lock();
        try {
            int n = XPCOM._NS_GetServiceManager(result);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _NS_InitXPCOM2(int var0, int var1, int var2);

    public static final int NS_InitXPCOM2(int result, int binDirectory, int appFileLocationProvider) {
        lock.lock();
        try {
            int n = XPCOM._NS_InitXPCOM2(result, binDirectory, appFileLocationProvider);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _NS_NewLocalFile(int var0, int var1, int[] var2);

    public static final int NS_NewLocalFile(int path, int followLinks, int[] result) {
        lock.lock();
        try {
            int n = XPCOM._NS_NewLocalFile(path, followLinks, result);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsEmbedCString_new();

    public static final int nsEmbedCString_new() {
        lock.lock();
        try {
            int n = XPCOM._nsEmbedCString_new();
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsEmbedCString_new(byte[] var0, int var1);

    public static final int nsEmbedCString_new(byte[] aString, int length) {
        lock.lock();
        try {
            int n = XPCOM._nsEmbedCString_new(aString, length);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsEmbedCString_new(int var0, int var1);

    public static final int nsEmbedCString_new(int aString, int length) {
        lock.lock();
        try {
            int n = XPCOM._nsEmbedCString_new(aString, length);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native void _nsEmbedCString_delete(int var0);

    public static final void nsEmbedCString_delete(int ptr) {
        lock.lock();
        try {
            XPCOM._nsEmbedCString_delete(ptr);
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsEmbedCString_Length(int var0);

    public static final int nsEmbedCString_Length(int ptr) {
        lock.lock();
        try {
            int n = XPCOM._nsEmbedCString_Length(ptr);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsIScriptGlobalObject_EnsureScriptEnvironment(int var0, int var1);

    public static final int nsIScriptGlobalObject_EnsureScriptEnvironment(int ptr, int lang) {
        lock.lock();
        try {
            int n = XPCOM._nsIScriptGlobalObject_EnsureScriptEnvironment(ptr, lang);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsIScriptGlobalObject_GetScriptGlobal(int var0, int var1);

    public static final int nsIScriptGlobalObject_GetScriptGlobal(int ptr, int lang) {
        lock.lock();
        try {
            int n = XPCOM._nsIScriptGlobalObject_GetScriptGlobal(ptr, lang);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsIScriptGlobalObject_GetScriptContext(int var0, int var1);

    public static final int nsIScriptGlobalObject_GetScriptContext(int ptr, int lang) {
        lock.lock();
        try {
            int n = XPCOM._nsIScriptGlobalObject_GetScriptContext(ptr, lang);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsIScriptContext_GetNativeContext(int var0);

    public static final int nsIScriptContext_GetNativeContext(int ptr) {
        lock.lock();
        try {
            int n = XPCOM._nsIScriptContext_GetNativeContext(ptr);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsEmbedCString_get(int var0);

    public static final int nsEmbedCString_get(int ptr) {
        lock.lock();
        try {
            int n = XPCOM._nsEmbedCString_get(ptr);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native void _nsID_delete(int var0);

    public static final void nsID_delete(int ptr) {
        lock.lock();
        try {
            XPCOM._nsID_delete(ptr);
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsID_new();

    public static final int nsID_new() {
        lock.lock();
        try {
            int n = XPCOM._nsID_new();
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsID_Equals(int var0, int var1);

    public static final int nsID_Equals(int ptr, int other) {
        lock.lock();
        try {
            int n = XPCOM._nsID_Equals(ptr, other);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsEmbedString_new();

    public static final int nsEmbedString_new() {
        lock.lock();
        try {
            int n = XPCOM._nsEmbedString_new();
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsEmbedString_new(char[] var0);

    public static final int nsEmbedString_new(char[] aString) {
        lock.lock();
        try {
            int n = XPCOM._nsEmbedString_new(aString);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native void _nsEmbedString_delete(int var0);

    public static final void nsEmbedString_delete(int ptr) {
        lock.lock();
        try {
            XPCOM._nsEmbedString_delete(ptr);
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsEmbedString_Length(int var0);

    public static final int nsEmbedString_Length(int ptr) {
        lock.lock();
        try {
            int n = XPCOM._nsEmbedString_Length(ptr);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsEmbedString_get(int var0);

    public static final int nsEmbedString_get(int ptr) {
        lock.lock();
        try {
            int n = XPCOM._nsEmbedString_get(ptr);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsIMemory_Alloc(int var0, int var1);

    public static final int nsIMemory_Alloc(int ptr, int size) {
        lock.lock();
        try {
            int n = XPCOM._nsIMemory_Alloc(ptr, size);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _nsIMemory_Realloc(int var0, int var1, int var2);

    public static final int nsIMemory_Realloc(int ptr1, int ptr2, int size) {
        lock.lock();
        try {
            int n = XPCOM._nsIMemory_Realloc(ptr1, ptr2, size);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _XPCOMGlueLoadXULFunctions(int var0);

    public static final int XPCOMGlueLoadXULFunctions(int functionLoad) {
        lock.lock();
        try {
            int n = XPCOM._XPCOMGlueLoadXULFunctions(functionLoad);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _XPCOMGlueStartup(byte[] var0);

    public static final int XPCOMGlueStartup(byte[] place) {
        lock.lock();
        try {
            int n = XPCOM._XPCOMGlueStartup(place);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _XPCOMGlueShutdown();

    public static final int XPCOMGlueShutdown() {
        lock.lock();
        try {
            int n = XPCOM._XPCOMGlueShutdown();
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _Call(int var0);

    public static final int Call(int ptr) {
        lock.lock();
        try {
            int n = XPCOM._Call(ptr);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _Call(int var0, int var1, int var2, byte[] var3, int var4, int var5, int[] var6);

    public static final int Call(int ptr, int aInStream, int aClosure, byte[] aFromSegment, int aToOffset, int aCount, int[] aWriteCount) {
        lock.lock();
        try {
            int n = XPCOM._Call(ptr, aInStream, aClosure, aFromSegment, aToOffset, aCount, aWriteCount);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    public static final native int _Call(int var0, int var1, int var2, int var3, int var4, int var5);

    public static final int Call(int ptr, int aLibXULDirectory, int aAppDirectory, int aAppDirProvider, int aStaticComponents, int aStaticComponentsCount) {
        lock.lock();
        try {
            int n = XPCOM._Call(ptr, aLibXULDirectory, aAppDirectory, aAppDirProvider, aStaticComponents, aStaticComponentsCount);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1);

    static final int VtblCall(int fnNumber, int ppVtbl) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, char[] var2);

    static final int VtblCall(int fnNumber, int ppVtbl, char[] arg0) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, double var2);

    static final int VtblCall(int fnNumber, int ppVtbl, double arg0) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, float var2);

    static final int VtblCall(int fnNumber, int ppVtbl, float arg0) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, float[] var2);

    static final int VtblCall(int fnNumber, int ppVtbl, float[] arg0) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int[] var2);

    static final int VtblCall(int fnNumber, int ppVtbl, int[] arg0) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long[] var2);

    static final int VtblCall(int fnNumber, int ppVtbl, long[] arg0) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, short[] var2);

    static final int VtblCall(int fnNumber, int ppVtbl, short[] arg0) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, int var4);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, int arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int[] var3);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, int[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, int[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, int[] var3);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, int[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, long[] var3);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, long[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, long var3);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, long arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, int var3);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, int arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, nsID var3);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, nsID arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, nsID var4);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, nsID arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, char[] var3);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, char[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int[] var2, int[] var3);

    static final int VtblCall(int fnNumber, int ppVtbl, int[] arg0, int[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int[] var2, long[] var3);

    static final int VtblCall(int fnNumber, int ppVtbl, int[] arg0, long[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, nsID var2, int var3);

    static final int VtblCall(int fnNumber, int ppVtbl, nsID arg0, int arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, nsID var2, long var3);

    static final int VtblCall(int fnNumber, int ppVtbl, nsID arg0, long arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, nsID var2, int[] var3);

    static final int VtblCall(int fnNumber, int ppVtbl, nsID arg0, int[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, nsID var2, long[] var3);

    static final int VtblCall(int fnNumber, int ppVtbl, nsID arg0, long[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, char[] var2, char[] var3);

    static final int VtblCall(int fnNumber, int ppVtbl, char[] arg0, char[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, byte[] var3);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, byte[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, byte[] var3);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, byte[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, byte[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, byte[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, char[] var3, int var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, char[] arg1, int arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, char[] var3, int[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, char[] arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, char[] var4, long[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, char[] arg1, long[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, char[] var4, int var5);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, char[] arg1, int arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int[] var2, int[] var3, int[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int[] arg0, int[] arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long[] var2, long[] var3);

    static final int VtblCall(int fnNumber, int ppVtbl, long[] arg0, long[] arg1) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int[] var3, int var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int[] arg1, int arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int[] var3, long var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int[] arg1, long arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long[] var2, long[] var3, long[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, long[] arg0, long[] arg1, long[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, short var2, int var3, int var4, int var5);

    static final int VtblCall(int fnNumber, int ppVtbl, short arg0, int arg1, int arg2, int arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, short var2, long var3, int var5, long var6);

    static final int VtblCall(int fnNumber, int ppVtbl, short arg0, long arg1, int arg2, long arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int[] var2, long[] var3, int[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int[] arg0, long[] arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int[] var2, long[] var3, long[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int[] arg0, long[] arg1, long[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, int var3, int[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, int arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, long var3, int[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, long arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, nsID var3, long[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, nsID arg1, long[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, nsID var3, int[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, nsID arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, char[] var2, int var3, int[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, char[] arg0, int arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, char[] var2, long var3, long[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, char[] arg0, long arg1, long[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, char[] var3, char[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, char[] arg1, char[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, char[] var4, char[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, char[] arg1, char[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, long var6);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, long arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, int var6);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, int arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, long var3, long var5);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, long arg1, long arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, long[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, long[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, long[] var6);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, long[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, int var4, long[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, int arg1, long[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, int[] var6);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, nsID var3, int[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, nsID arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, nsID var4, long[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, nsID arg1, long[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, char[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, char[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, nsID var2, nsID var3, long[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, nsID arg0, nsID arg1, long[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, nsID var2, nsID var3, int[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, nsID arg0, nsID arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, byte[] var3, int[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, byte[] arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, byte[] var3, long[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, byte[] arg1, long[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, int[] var3, int[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, int[] arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, int[] var3, long[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, int[] arg1, long[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, long[] var3, int[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, long[] arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, nsID var3, int var4);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, nsID arg1, int arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, nsID var3, long var4);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, nsID arg1, long arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, byte[] var3, char[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, byte[] arg1, char[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, byte[] var4, char[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, byte[] arg1, char[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, byte[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, byte[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, byte[] var6);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, byte[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, byte[] var3, int var4);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, byte[] arg1, int arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, byte[] var3, int[] var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, byte[] arg1, int[] arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, byte[] var4, long var5);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, byte[] arg1, long arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, byte[] var3, int var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, byte[] arg1, int arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, byte[] var4, int var5);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, byte[] arg1, int arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, byte[] var3, short var4);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, byte[] arg1, short arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, byte[] var4, short var5);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, byte[] arg1, short arg2) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, int var3, nsID var4, int[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, int arg1, nsID arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, long var3, nsID var5, long[] var6);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, long arg1, nsID arg2, long[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, byte[] var3, int var4, int[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, byte[] arg1, int arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, byte[] var4, long var5, long[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, byte[] arg1, long arg2, long[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, char[] var3, char[] var4, int[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, char[] arg1, char[] arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, char[] var4, char[] var5, long[] var6);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, char[] arg1, char[] arg2, long[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, char[] var4, char[] var5, int[] var6);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, char[] arg1, char[] arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, char[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, char[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, int var6, char[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, int arg2, char[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int var5);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, int var6, int var7);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, int arg2, int arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, long var6, int var8);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, long arg2, int arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, long var6, int[] var8);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, long arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, long var6, long[] var8);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, long arg2, long[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, int var6, int[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, int arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int[] var2, int[] var3, int[] var4, int[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, int[] arg0, int[] arg1, int[] arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int[] var3, int[] var4, int[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int[] arg1, int[] arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int[] var3, int[] var4, long[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int[] arg1, int[] arg2, long[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, nsID var2, byte[] var3, byte[] var4, int var5);

    static final int VtblCall(int fnNumber, int ppVtbl, nsID arg0, byte[] arg1, byte[] arg2, int arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, nsID var2, byte[] var3, byte[] var4, long var5);

    static final int VtblCall(int fnNumber, int ppVtbl, nsID arg0, byte[] arg1, byte[] arg2, long arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, nsID var2, int var3, nsID var4, int[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, nsID arg0, int arg1, nsID arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, nsID var2, long var3, nsID var5, long[] var6);

    static final int VtblCall(int fnNumber, int ppVtbl, nsID arg0, long arg1, nsID arg2, long[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, int var3, int[] var4, int[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, int arg1, int[] arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, int var3, long[] var4, int[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, int arg1, long[] arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, byte[] var4, byte[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, byte[] arg2, byte[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, byte[] var6, byte[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, byte[] arg2, byte[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, byte[] var4, int var5);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, byte[] arg2, int arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, byte[] var6, long var7);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, byte[] arg2, long arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, short[] var2, int var3, int[] var4, int[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, short[] arg0, int arg1, int[] arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, short[] var2, long var3, int[] var5, long[] var6);

    static final int VtblCall(int fnNumber, int ppVtbl, short[] arg0, long arg1, int[] arg2, long[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, int var4, int var5, int[] var6);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, int arg1, int arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int[] var4, int[] var5);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int[] arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, int[] var6, int[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, int[] arg2, int[] arg3) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, char[] var2, int var3, int var4, int var5, int var6);

    static final int VtblCall(int fnNumber, int ppVtbl, char[] arg0, int arg1, int arg2, int arg3, int arg4) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, char[] var2, int var3, long var4, long var6, long var8);

    static final int VtblCall(int fnNumber, int ppVtbl, char[] arg0, int arg1, long arg2, long arg3, long arg4) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, long var6, long var8, long var10);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, long arg2, long arg3, long arg4) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int var5, int var6);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int[] var3, int[] var4, int[] var5, int[] var6);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int[] arg1, int[] arg2, int[] arg3, int[] arg4) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, char[] var3, char[] var4, char[] var5, int[] var6);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, char[] arg1, char[] arg2, char[] arg3, int[] arg4) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, char[] var4, char[] var5, char[] var6, int[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, char[] arg1, char[] arg2, char[] arg3, int[] arg4) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, int var3, int var4, int[] var5, int[] var6);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, int arg1, int arg2, int[] arg3, int[] arg4) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, int var3, long var4, long[] var6, int[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, int arg1, long arg2, long[] arg3, int[] arg4) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, byte[] var4, int var5, int var6);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, byte[] arg2, int arg3, int arg4) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, byte[] var6, long var7, int var9);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, byte[] arg2, long arg3, int arg4) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, nsID var3, int var4, int var5, int[] var6);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, nsID arg1, int arg2, int arg3, int[] arg4) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, nsID var4, long var5, long var7, long[] var9);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, nsID arg1, long arg2, long arg3, long[] arg4) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, int var4, long var5, int var7, int var8);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, int arg1, long arg2, int arg3, int arg4) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, byte[] var3, byte[] var4, byte[] var5, int var6, int[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, byte[] arg1, byte[] arg2, byte[] arg3, int arg4, int[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, byte[] var4, byte[] var5, byte[] var6, long var7, long[] var9);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, byte[] arg1, byte[] arg2, byte[] arg3, long arg4, long[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, char[] var4, int var5, long var6, int var8);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, char[] arg2, int arg3, long arg4, int arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, char[] var6, int var7, long var8, int var10);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, char[] arg2, int arg3, long arg4, int arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, char[] var4, long var5, long var7, long var9);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, char[] arg2, long arg3, long arg4, long arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, char[] var6, long var7, long var9, long var11);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, char[] arg2, long arg3, long arg4, long arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int[] var2, int[] var3, int[] var4, int[] var5, int[] var6, int[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, int[] arg0, int[] arg1, int[] arg2, int[] arg3, int[] arg4, int[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long[] var2, long[] var3, long[] var4, long[] var5, long[] var6, int[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, long[] arg0, long[] arg1, long[] arg2, long[] arg3, long[] arg4, int[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int var5, int var6, int var7);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, int var6, int var7, int var8, int var9);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, int arg2, int arg3, int arg4, int arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int var5, int var6, int[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4, int[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, long var6, long var8, long var10, long[] var12);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, long arg2, long arg3, long arg4, long[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, nsID var2, byte[] var3, byte[] var4, int var5, byte[] var6, byte[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, nsID arg0, byte[] arg1, byte[] arg2, int arg3, byte[] arg4, byte[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, nsID var2, byte[] var3, byte[] var4, long var5, byte[] var7, byte[] var8);

    static final int VtblCall(int fnNumber, int ppVtbl, nsID arg0, byte[] arg1, byte[] arg2, long arg3, byte[] arg4, byte[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, long var4, long var6, long var8, long var10);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, long arg2, long arg3, long arg4, long arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, long var6, long var8, long var10, long var12);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, long arg2, long arg3, long arg4, long arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, char[] var3, char[] var4, char[] var5, int[] var6, int[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, char[] arg1, char[] arg2, char[] arg3, int[] arg4, int[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, char[] var4, char[] var5, char[] var6, int[] var7, int[] var8);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, char[] arg1, char[] arg2, char[] arg3, int[] arg4, int[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, byte[] var3, byte[] var4, int var5, int var6, int[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, byte[] arg1, byte[] arg2, int arg3, int arg4, int[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, byte[] var2, byte[] var3, byte[] var4, int var5, int var6, long[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, byte[] arg0, byte[] arg1, byte[] arg2, int arg3, int arg4, long[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int var5, int[] var6, int[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int arg3, int[] arg4, int[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, int var4, int var5, long var6, int[] var8, long[] var9);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, int arg1, int arg2, long arg3, int[] arg4, long[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, char[] var4, char[] var5, int var6, int[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, char[] arg2, char[] arg3, int arg4, int[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, char[] var6, char[] var7, int var8, long[] var9);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, char[] arg2, char[] arg3, int arg4, long[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, byte[] var5, byte[] var6, int var7);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, byte[] arg3, byte[] arg4, int arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, long var6, byte[] var8, byte[] var9, long var10);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, long arg2, byte[] arg3, byte[] arg4, long arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int[] var5, int[] var6, int[] var7);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int[] arg3, int[] arg4, int[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, int var4, long var5, int[] var7, int[] var8, int[] var9);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, int arg1, long arg2, int[] arg3, int[] arg4, int[] arg5) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, char[] var3, char[] var4, int var5, int[] var6, int[] var7, int[] var8);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, char[] arg1, char[] arg2, int arg3, int[] arg4, int[] arg5, int[] arg6) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, char[] var4, char[] var5, int var6, long[] var7, int[] var8, int[] var9);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, char[] arg1, char[] arg2, int arg3, long[] arg4, int[] arg5, int[] arg6) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, char[] var3, char[] var4, int[] var5, char[] var6, int[] var7, int[] var8);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, char[] arg1, char[] arg2, int[] arg3, char[] arg4, int[] arg5, int[] arg6) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, char[] var4, char[] var5, long[] var6, char[] var7, int[] var8, int[] var9);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, char[] arg1, char[] arg2, long[] arg3, char[] arg4, int[] arg5, int[] arg6) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int var5, char[] var6, int[] var7, int[] var8);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int arg3, char[] arg4, int[] arg5, int[] arg6) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, int var6, long var7, char[] var9, int[] var10, int[] var11);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, int arg2, long arg3, char[] arg4, int[] arg5, int[] arg6) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int var5, long var6, int var8, int var9);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int arg3, long arg4, int arg5, int arg6) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, long var6, long var8, long var10, long var12, long var14);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, long arg2, long arg3, long arg4, long arg5, long arg6) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int var5, int[] var6, int[] var7, int[] var8);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int arg3, int[] arg4, int[] arg5, int[] arg6) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, int var4, long var5, long var7, int[] var9, int[] var10, int[] var11);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, int arg1, long arg2, long arg3, int[] arg4, int[] arg5, int[] arg6) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, char[] var3, char[] var4, int[] var5, int[] var6, char[] var7, int[] var8, int[] var9);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, char[] arg1, char[] arg2, int[] arg3, int[] arg4, char[] arg5, int[] arg6, int[] arg7) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, char[] var4, char[] var5, long[] var6, long[] var7, char[] var8, int[] var9, int[] var10);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, char[] arg1, char[] arg2, long[] arg3, long[] arg4, char[] arg5, int[] arg6, int[] arg7) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int var5, int var6, int var7, int var8, int[] var9);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int[] arg7) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, long var3, long var5, long var7, long var9, long var11, long var13, long[] var15);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, long arg1, long arg2, long arg3, long arg4, long arg5, long arg6, long[] arg7) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int var5, int var6, int var7, char[] var8, int[] var9, int[] var10);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, char[] arg6, int[] arg7, int[] arg8) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, long var6, long var8, int var10, long var11, char[] var13, int[] var14, long[] var15);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, long arg2, long arg3, int arg4, long arg5, char[] arg6, int[] arg7, long[] arg8) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int var5, int var6, int var7, int var8, int var9, int var10, int var11);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, int var4, int var5, long var6, int var8, int var9, int var10, int var11, int var12, int var13);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, int arg1, int arg2, long arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, char[] var3, char[] var4, int var5, char[] var6, char[] var7, char[] var8, char[] var9, int[] var10, int[] var11);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, char[] arg1, char[] arg2, int arg3, char[] arg4, char[] arg5, char[] arg6, char[] arg7, int[] arg8, int[] arg9) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, char[] var4, char[] var5, int var6, char[] var7, char[] var8, char[] var9, char[] var10, int[] var11, int[] var12);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, char[] arg1, char[] arg2, int arg3, char[] arg4, char[] arg5, char[] arg6, char[] arg7, int[] arg8, int[] arg9) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int var5, char[] var6, int var7, int var8, int var9, int var10, int var11, int[] var12, int[] var13);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int arg3, char[] arg4, int arg5, int arg6, int arg7, int arg8, int arg9, int[] arg10, int[] arg11) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, long var6, int var8, char[] var9, long var10, long var12, int var14, long var15, int var17, long[] var18, long[] var19);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, long arg2, int arg3, char[] arg4, long arg5, long arg6, int arg7, long arg8, int arg9, long[] arg10, long[] arg11) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int var5, char[] var6, byte[] var7, int var8, int var9, int var10, int var11, int var12, int[] var13, int[] var14);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int arg3, char[] arg4, byte[] arg5, int arg6, int arg7, int arg8, int arg9, int arg10, int[] arg11, int[] arg12) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, long var4, long var6, int var8, char[] var9, byte[] var10, long var11, long var13, int var15, long var16, int var18, long[] var19, long[] var20);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, long arg1, long arg2, int arg3, char[] arg4, byte[] arg5, long arg6, long arg7, int arg8, long arg9, int arg10, long[] arg11, long[] arg12) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, int var2, int var3, int var4, int var5, int var6, int var7, int var8, int var9, int var10, int var11, int var12, int var13, int var14, short var15, int var16);

    static final int VtblCall(int fnNumber, int ppVtbl, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9, int arg10, int arg11, int arg12, short arg13, int arg14) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14);
            return n;
        }
        finally {
            lock.unlock();
        }
    }

    static final native int _VtblCall(int var0, int var1, long var2, int var4, int var5, long var6, int var8, int var9, int var10, int var11, int var12, int var13, int var14, int var15, int var16, short var17, long var18);

    static final int VtblCall(int fnNumber, int ppVtbl, long arg0, int arg1, int arg2, long arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9, int arg10, int arg11, int arg12, short arg13, long arg14) {
        lock.lock();
        try {
            int n = XPCOM._VtblCall(fnNumber, ppVtbl, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14);
            return n;
        }
        finally {
            lock.unlock();
        }
    }
}

