/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Enumeration;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.BrowserFunction;
import org.eclipse.swt.browser.WebBrowser;
import org.eclipse.swt.browser.WebDownloadDelegate;
import org.eclipse.swt.browser.WebFrameLoadDelegate;
import org.eclipse.swt.browser.WebPolicyDelegate;
import org.eclipse.swt.browser.WebResourceLoadDelegate;
import org.eclipse.swt.browser.WebUIDelegate;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.Library;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.webkit.IWebCookieManager;
import org.eclipse.swt.internal.webkit.IWebDataSource;
import org.eclipse.swt.internal.webkit.IWebDocumentRepresentation;
import org.eclipse.swt.internal.webkit.IWebFrame;
import org.eclipse.swt.internal.webkit.IWebIBActions;
import org.eclipse.swt.internal.webkit.IWebMutableURLRequest;
import org.eclipse.swt.internal.webkit.IWebPreferences;
import org.eclipse.swt.internal.webkit.IWebView;
import org.eclipse.swt.internal.webkit.IWebViewPrivate;
import org.eclipse.swt.internal.webkit.JSClassDefinition;
import org.eclipse.swt.internal.webkit.WebKit_win32;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Widget;

class WebKit
extends WebBrowser {
    IWebView webView;
    int webViewWindowHandle;
    int webViewData;
    int refCount = 0;
    int lastKeyCode;
    int lastCharCode;
    WebDownloadDelegate webDownloadDelegate;
    WebFrameLoadDelegate webFrameLoadDelegate;
    WebPolicyDelegate webPolicyDelegate;
    WebResourceLoadDelegate webResourceLoadDelegate;
    WebUIDelegate webUIDelegate;
    boolean ignoreDispose;
    boolean loadingText = false;
    boolean traverseNext = true;
    boolean traverseOut = false;
    boolean untrustedText;
    String lastNavigateURL;
    BrowserFunction eventFunction;
    static int prefsIdentifier;
    static int ExternalClass;
    static boolean LibraryLoaded;
    static String LibraryLoadError;
    static Callback JSObjectHasPropertyProc;
    static Callback JSObjectGetPropertyProc;
    static Callback JSObjectCallAsFunctionProc;
    static final int MAX_PROGRESS = 100;
    static final String ABOUT_BLANK = "about:blank";
    static final String CHARSET_UTF8 = "UTF-8";
    static final String CLASSNAME_EXTERNAL = "External";
    static final String EMPTY_STRING = "";
    static final String FUNCTIONNAME_CALLJAVA = "callJava";
    static final String HEADER_SETCOOKIE = "Set-Cookie";
    static final String POST = "POST";
    static final String PROPERTY_LENGTH = "length";
    static final String PROTOCOL_HTTPS = "https://";
    static final String PROTOCOL_FILE = "file://";
    static final String PROTOCOL_HTTP = "http://";
    static final String USER_AGENT = "user-agent";
    static final String URI_FILEROOT = "file:///";
    static final String DOMEVENT_DRAGSTART = "dragstart";
    static final String DOMEVENT_KEYDOWN = "keydown";
    static final String DOMEVENT_KEYPRESS = "keypress";
    static final String DOMEVENT_KEYUP = "keyup";
    static final String DOMEVENT_MOUSEDOWN = "mousedown";
    static final String DOMEVENT_MOUSEUP = "mouseup";
    static final String DOMEVENT_MOUSEMOVE = "mousemove";
    static final String DOMEVENT_MOUSEOUT = "mouseout";
    static final String DOMEVENT_MOUSEOVER = "mouseover";
    static final String DOMEVENT_MOUSEWHEEL = "mousewheel";
    static /* synthetic */ Class class$0;

    static {
        LibraryLoaded = false;
        try {
            Library.loadLibrary("swt-webkit");
            LibraryLoaded = true;
        }
        catch (Throwable throwable) {}
        if (!LibraryLoaded) {
            boolean AASDetected = false;
            TCHAR key = new TCHAR(0, "SOFTWARE\\Apple Inc.\\Apple Application Support", true);
            int[] phkResult = new int[1];
            if (OS.RegOpenKeyEx(-2147483646, key, 0, 131097, phkResult) == 0) {
                TCHAR lpData;
                TCHAR buffer = new TCHAR(0, "InstallDir", true);
                int[] lpcbData = new int[1];
                int result = OS.RegQueryValueEx(phkResult[0], buffer, 0, null, null, lpcbData);
                if (result == 0 && (result = OS.RegQueryValueEx(phkResult[0], buffer, 0, null, lpData = new TCHAR(0, lpcbData[0] / TCHAR.sizeof), lpcbData)) == 0) {
                    AASDetected = true;
                    String AASDirectory = lpData.toString(0, lpData.strlen());
                    buffer = new TCHAR(0, AASDirectory, true);
                    boolean success = OS.SetDllDirectory(buffer);
                    if (success) {
                        try {
                            Library.loadLibrary("swt-webkit");
                            LibraryLoaded = true;
                        }
                        catch (Throwable throwable) {
                            LibraryLoadError = "Failed to load the swt-webkit library";
                        }
                    } else {
                        LibraryLoadError = "Failed to add the Apple Application Support package to the library lookup path.  ";
                        LibraryLoadError = String.valueOf(LibraryLoadError) + "To use a SWT.WEBKIT-style Browser prepend " + AASDirectory + " to your Windows 'Path' environment variable and restart.";
                    }
                }
                OS.RegCloseKey(phkResult[0]);
            }
            if (!AASDetected) {
                LibraryLoadError = "Safari must be installed to use a SWT.WEBKIT-style Browser";
            }
        }
        if (LibraryLoaded) {
            Class<?> clazz;
            Class<?> clazz2;
            Class<?> clazz3 = class$0;
            if (clazz3 == null) {
                try {
                    clazz3 = class$0 = Class.forName("org.eclipse.swt.browser.WebKit");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((JSObjectHasPropertyProc = new Callback(clazz3, "JSObjectHasPropertyProc", 3)).getAddress() == 0) {
                SWT.error(3);
            }
            if ((clazz2 = class$0) == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.swt.browser.WebKit");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((JSObjectGetPropertyProc = new Callback(clazz2, "JSObjectGetPropertyProc", 4)).getAddress() == 0) {
                SWT.error(3);
            }
            if ((clazz = class$0) == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.swt.browser.WebKit");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((JSObjectCallAsFunctionProc = new Callback(clazz, "JSObjectCallAsFunctionProc", 6)).getAddress() == 0) {
                SWT.error(3);
            }
            NativeClearSessions = new Runnable(){

                public void run() {
                    int[] result = new int[1];
                    int hr = WebKit_win32.WebKitCreateInstance(WebKit_win32.CLSID_WebCookieManager, 0, WebKit_win32.IID_IWebCookieManager, result);
                    if (hr != 0 || result[0] == 0) {
                        return;
                    }
                    IWebCookieManager cookieManager = new IWebCookieManager(result[0]);
                    int[] storage = new int[1];
                    hr = cookieManager.cookieStorage(storage);
                    cookieManager.Release();
                    if (hr != 0 || storage[0] == 0) {
                        return;
                    }
                    int cookies = WebKit_win32.CFHTTPCookieStorageCopyCookies(storage[0]);
                    if (cookies != 0) {
                        int count = WebKit_win32.CFArrayGetCount(cookies);
                        int i = 0;
                        while (i < count) {
                            int cookie = WebKit_win32.CFArrayGetValueAtIndex(cookies, i);
                            int flags = WebKit_win32.CFHTTPCookieGetFlags(cookie);
                            if ((flags & 2) != 0) {
                                WebKit_win32.CFHTTPCookieStorageDeleteCookie(storage[0], cookie);
                            }
                            ++i;
                        }
                        WebKit_win32.CFRelease(cookies);
                    }
                }
            };
            NativeGetCookie = new Runnable(){

                public void run() {
                    int[] result = new int[1];
                    int hr = WebKit_win32.WebKitCreateInstance(WebKit_win32.CLSID_WebCookieManager, 0, WebKit_win32.IID_IWebCookieManager, result);
                    if (hr != 0 || result[0] == 0) {
                        return;
                    }
                    IWebCookieManager cookieManager = new IWebCookieManager(result[0]);
                    int[] storage = new int[1];
                    hr = cookieManager.cookieStorage(storage);
                    cookieManager.Release();
                    if (hr != 0 || storage[0] == 0) {
                        return;
                    }
                    char[] chars = CookieUrl.toCharArray();
                    int string = WebKit_win32.CFStringCreateWithCharacters(0, chars, chars.length);
                    if (string != 0) {
                        int cfUrl = WebKit_win32.CFURLCreateWithString(0, string, 0);
                        if (cfUrl != 0) {
                            boolean secure = CookieUrl.startsWith(WebKit.PROTOCOL_HTTPS);
                            int cookiesArray = WebKit_win32.CFHTTPCookieStorageCopyCookiesForURL(storage[0], cfUrl, secure);
                            if (cookiesArray != 0) {
                                int count = WebKit_win32.CFArrayGetCount(cookiesArray);
                                int i = 0;
                                while (i < count) {
                                    String name;
                                    int cookieName;
                                    int cookie = WebKit_win32.CFArrayGetValueAtIndex(cookiesArray, i);
                                    if (cookie != 0 && (cookieName = WebKit_win32.CFHTTPCookieGetName(cookie)) != 0 && CookieName.equals(name = WebKit.stringFromCFString(cookieName))) {
                                        int value = WebKit_win32.CFHTTPCookieGetValue(cookie);
                                        if (value == 0) break;
                                        CookieValue = WebKit.stringFromCFString(value);
                                        break;
                                    }
                                    ++i;
                                }
                                WebKit_win32.CFRelease(cookiesArray);
                            }
                            WebKit_win32.CFRelease(cfUrl);
                        }
                        WebKit_win32.CFRelease(string);
                    }
                }
            };
            NativeSetCookie = new Runnable(){

                public void run() {
                    int[] result = new int[1];
                    int hr = WebKit_win32.WebKitCreateInstance(WebKit_win32.CLSID_WebCookieManager, 0, WebKit_win32.IID_IWebCookieManager, result);
                    if (hr != 0 || result[0] == 0) {
                        return;
                    }
                    IWebCookieManager cookieManager = new IWebCookieManager(result[0]);
                    int[] storage = new int[1];
                    hr = cookieManager.cookieStorage(storage);
                    cookieManager.Release();
                    if (hr != 0 || storage[0] == 0) {
                        return;
                    }
                    char[] chars = CookieUrl.toCharArray();
                    int string = WebKit_win32.CFStringCreateWithCharacters(0, chars, chars.length);
                    if (string != 0) {
                        int cfUrl = WebKit_win32.CFURLCreateWithString(0, string, 0);
                        if (cfUrl != 0) {
                            chars = CookieValue.toCharArray();
                            int value = WebKit_win32.CFStringCreateWithCharacters(0, chars, chars.length);
                            if (value != 0) {
                                chars = WebKit.HEADER_SETCOOKIE.toCharArray();
                                int key = WebKit_win32.CFStringCreateWithCharacters(0, chars, chars.length);
                                if (key != 0) {
                                    int headers = WebKit_win32.CFDictionaryCreate(0, new int[]{key}, new int[]{value}, 1, WebKit_win32.kCFCopyStringDictionaryKeyCallBacks(), WebKit_win32.kCFTypeDictionaryValueCallBacks());
                                    if (headers != 0) {
                                        int cookies = WebKit_win32.CFHTTPCookieCreateWithResponseHeaderFields(0, headers, cfUrl);
                                        if (cookies != 0) {
                                            int cookie = WebKit_win32.CFArrayGetValueAtIndex(cookies, 0);
                                            if (cookie != 0) {
                                                WebKit_win32.CFHTTPCookieStorageSetCookie(storage[0], cookie);
                                                CookieResult = true;
                                            }
                                            WebKit_win32.CFRelease(cookies);
                                        }
                                        WebKit_win32.CFRelease(headers);
                                    }
                                    WebKit_win32.CFRelease(key);
                                }
                                WebKit_win32.CFRelease(value);
                            }
                            WebKit_win32.CFRelease(cfUrl);
                        }
                        WebKit_win32.CFRelease(string);
                    }
                }
            };
            if (NativePendingCookies != null) {
                WebKit.SetPendingCookies(NativePendingCookies);
            }
            NativePendingCookies = null;
        }
    }

    WebKit() {
    }

    static int createBSTR(String string) {
        char[] data = (String.valueOf(string) + '\u0000').toCharArray();
        return COM.SysAllocString(data);
    }

    static String error(int code) {
        throw new SWTError("WebKit error " + code);
    }

    static String extractBSTR(int bstrString) {
        int size = COM.SysStringByteLen(bstrString);
        if (size == 0) {
            return EMPTY_STRING;
        }
        char[] buffer = new char[(size + 1) / 2];
        COM.MoveMemory(buffer, bstrString, size);
        return new String(buffer);
    }

    static Browser findBrowser(int webView) {
        Widget widget;
        if (webView == 0) {
            return null;
        }
        IWebView iwebView = new IWebView(webView);
        int[] result = new int[1];
        int hr = iwebView.hostWindow(result);
        if (hr == 0 && result[0] != 0 && (widget = Display.getCurrent().findWidget(result[0])) != null && widget instanceof Browser) {
            return (Browser)widget;
        }
        return null;
    }

    static int JSObjectCallAsFunctionProc(int ctx, int function, int thisObject, int argumentCount, int arguments, int exception) {
        WebKit_win32.JSGlobalContextRetain(ctx);
        if (WebKit_win32.JSValueIsObjectOfClass(ctx, thisObject, ExternalClass) == 0) {
            return WebKit_win32.JSValueMakeUndefined(ctx);
        }
        int ptr = WebKit_win32.JSObjectGetPrivate(thisObject);
        int[] handle = new int[1];
        C.memmove(handle, ptr, C.PTR_SIZEOF);
        Browser browser = WebKit.findBrowser(handle[0]);
        if (browser == null) {
            return WebKit_win32.JSValueMakeUndefined(ctx);
        }
        WebKit webkit = (WebKit)browser.webBrowser;
        return webkit.callJava(ctx, function, thisObject, argumentCount, arguments, exception);
    }

    static int JSObjectGetPropertyProc(int ctx, int object, int propertyName, int exception) {
        byte[] bytes = null;
        try {
            bytes = "callJava\u0000".getBytes(CHARSET_UTF8);
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            bytes = "callJava\u0000".getBytes();
        }
        int name = WebKit_win32.JSStringCreateWithUTF8CString(bytes);
        int addr = WebKit_win32.JSObjectCallAsFunctionProc_CALLBACK(JSObjectCallAsFunctionProc.getAddress());
        int function = WebKit_win32.JSObjectMakeFunctionWithCallback(ctx, name, addr);
        WebKit_win32.JSStringRelease(name);
        return function;
    }

    static int JSObjectHasPropertyProc(int ctx, int object, int propertyName) {
        byte[] bytes = null;
        try {
            bytes = "callJava\u0000".getBytes(CHARSET_UTF8);
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            bytes = "callJava\u0000".getBytes();
        }
        return WebKit_win32.JSStringIsEqualToUTF8CString(propertyName, bytes);
    }

    static String stringFromCFString(int cfString) {
        if (cfString == 0) {
            return null;
        }
        int length = WebKit_win32.CFStringGetLength(cfString);
        int ptr = WebKit_win32.CFStringGetCharactersPtr(cfString);
        char[] chars = new char[length];
        if (ptr != 0) {
            OS.MoveMemory(chars, ptr, length);
        } else {
            int j = 0;
            while (j < length) {
                chars[j] = WebKit_win32.CFStringGetCharacterAtIndex(cfString, j);
                ++j;
            }
        }
        return new String(chars);
    }

    static String stringFromJSString(int jsString) {
        if (jsString == 0) {
            return null;
        }
        int length = WebKit_win32.JSStringGetLength(jsString);
        byte[] bytes = new byte[length + 1];
        WebKit_win32.JSStringGetUTF8CString(jsString, bytes, length + 1);
        return new String(bytes);
    }

    public boolean back() {
        int[] result = new int[1];
        this.webView.goBack(result);
        return result[0] != 0;
    }

    int callJava(int ctx, int func, int thisObject, int argumentCount, int arguments, int exception) {
        Object returnValue = null;
        if (argumentCount == 3) {
            int[] result = new int[1];
            C.memmove(result, arguments, C.PTR_SIZEOF);
            int type = WebKit_win32.JSValueGetType(ctx, result[0]);
            if (type == 3) {
                int index = ((Double)this.convertToJava(ctx, result[0])).intValue();
                result[0] = 0;
                if (index > 0) {
                    Integer key = new Integer(index);
                    C.memmove(result, arguments + C.PTR_SIZEOF, C.PTR_SIZEOF);
                    type = WebKit_win32.JSValueGetType(ctx, result[0]);
                    if (type == 3) {
                        long token = ((Double)this.convertToJava(ctx, result[0])).longValue();
                        BrowserFunction function = (BrowserFunction)this.functions.get(key);
                        if (function != null && token == function.token) {
                            try {
                                C.memmove(result, arguments + 2 * C.PTR_SIZEOF, C.PTR_SIZEOF);
                                Object temp = this.convertToJava(ctx, result[0]);
                                if (temp instanceof Object[]) {
                                    Object[] args = (Object[])temp;
                                    try {
                                        returnValue = function.function(args);
                                    }
                                    catch (Exception e) {
                                        returnValue = WebBrowser.CreateErrorString(e.getLocalizedMessage());
                                    }
                                }
                            }
                            catch (IllegalArgumentException e) {
                                if (function.isEvaluate) {
                                    function.function(new String[]{WebBrowser.CreateErrorString(new SWTException(51).getLocalizedMessage())});
                                }
                                returnValue = WebBrowser.CreateErrorString(e.getLocalizedMessage());
                            }
                        }
                    }
                }
            }
        }
        return this.convertToJS(ctx, returnValue);
    }

    public boolean close() {
        return this.shouldClose();
    }

    Object convertToJava(int ctx, int value) {
        int type = WebKit_win32.JSValueGetType(ctx, value);
        switch (type) {
            case 2: {
                int result = WebKit_win32.JSValueToBoolean(ctx, value);
                return new Boolean(result != 0);
            }
            case 3: {
                double result = WebKit_win32.JSValueToNumber(ctx, value, null);
                return new Double(result);
            }
            case 4: {
                int string = WebKit_win32.JSValueToStringCopy(ctx, value, null);
                if (string == 0) {
                    return EMPTY_STRING;
                }
                int length = WebKit_win32.JSStringGetMaximumUTF8CStringSize(string);
                byte[] bytes = new byte[length];
                length = WebKit_win32.JSStringGetUTF8CString(string, bytes, length);
                WebKit_win32.JSStringRelease(string);
                try {
                    return new String(bytes, 0, length - 1, CHARSET_UTF8);
                }
                catch (UnsupportedEncodingException unsupportedEncodingException) {
                    return new String(bytes);
                }
            }
            case 0: 
            case 1: {
                return null;
            }
            case 5: {
                byte[] bytes = null;
                try {
                    bytes = "length\u0000".getBytes(CHARSET_UTF8);
                }
                catch (UnsupportedEncodingException unsupportedEncodingException) {
                    bytes = "length\u0000".getBytes();
                }
                int propertyName = WebKit_win32.JSStringCreateWithUTF8CString(bytes);
                int valuePtr = WebKit_win32.JSObjectGetProperty(ctx, value, propertyName, null);
                WebKit_win32.JSStringRelease(propertyName);
                type = WebKit_win32.JSValueGetType(ctx, valuePtr);
                if (type != 3) break;
                int length = (int)WebKit_win32.JSValueToNumber(ctx, valuePtr, null);
                Object[] result = new Object[length];
                int i = 0;
                while (i < length) {
                    int current = WebKit_win32.JSObjectGetPropertyAtIndex(ctx, value, i, null);
                    if (current != 0) {
                        result[i] = this.convertToJava(ctx, current);
                    }
                    ++i;
                }
                return result;
            }
        }
        SWT.error(5);
        return null;
    }

    int convertToJS(int ctx, Object value) {
        if (value == null) {
            return WebKit_win32.JSValueMakeNull(ctx);
        }
        if (value instanceof String) {
            byte[] bytes = null;
            try {
                bytes = (String.valueOf((String)value) + '\u0000').getBytes(CHARSET_UTF8);
            }
            catch (UnsupportedEncodingException unsupportedEncodingException) {
                bytes = (String.valueOf((String)value) + '\u0000').getBytes();
            }
            int stringRef = WebKit_win32.JSStringCreateWithUTF8CString(bytes);
            int result = WebKit_win32.JSValueMakeString(ctx, stringRef);
            WebKit_win32.JSStringRelease(stringRef);
            return result;
        }
        if (value instanceof Boolean) {
            return WebKit_win32.JSValueMakeBoolean(ctx, (Boolean)value != false ? 1 : 0);
        }
        if (value instanceof Number) {
            return WebKit_win32.JSValueMakeNumber(ctx, ((Number)value).doubleValue());
        }
        if (value instanceof Object[]) {
            Object[] arrayValue = (Object[])value;
            int length = arrayValue.length;
            int[] arguments = new int[length];
            int i = 0;
            while (i < length) {
                int jsObject;
                Object javaObject = arrayValue[i];
                arguments[i] = jsObject = this.convertToJS(ctx, javaObject);
                ++i;
            }
            return WebKit_win32.JSObjectMakeArray(ctx, length, arguments, null);
        }
        SWT.error(51);
        return 0;
    }

    public void create(Composite parent, int style) {
        int[] result;
        int hr;
        if (!LibraryLoaded) {
            this.browser.dispose();
            SWT.error(2, null, LibraryLoadError == null ? null : " [" + LibraryLoadError + ']');
        }
        if (ExternalClass == 0) {
            int addr;
            JSClassDefinition jsClassDefinition = new JSClassDefinition();
            byte[] bytes = "External\u0000".getBytes();
            jsClassDefinition.className = C.malloc(bytes.length);
            OS.memmove(jsClassDefinition.className, bytes, bytes.length);
            jsClassDefinition.hasProperty = addr = WebKit_win32.JSObjectHasPropertyProc_CALLBACK(JSObjectHasPropertyProc.getAddress());
            jsClassDefinition.getProperty = addr = WebKit_win32.JSObjectGetPropertyProc_CALLBACK(JSObjectGetPropertyProc.getAddress());
            int classDefinitionPtr = C.malloc(JSClassDefinition.sizeof);
            WebKit_win32.memmove(classDefinitionPtr, jsClassDefinition, JSClassDefinition.sizeof);
            ExternalClass = WebKit_win32.JSClassCreate(classDefinitionPtr);
            WebKit_win32.JSClassRetain(ExternalClass);
        }
        if ((hr = WebKit_win32.WebKitCreateInstance(WebKit_win32.CLSID_WebView, 0, WebKit_win32.IID_IWebView, result = new int[1])) != 0 || result[0] == 0) {
            this.browser.dispose();
            WebKit.error(hr);
        }
        this.webView = new IWebView(result[0]);
        this.webViewData = C.malloc(C.PTR_SIZEOF);
        C.memmove(this.webViewData, new int[]{this.webView.getAddress()}, C.PTR_SIZEOF);
        hr = this.webView.setHostWindow(this.browser.handle);
        if (hr != 0) {
            this.browser.dispose();
            WebKit.error(hr);
        }
        if ((hr = this.webView.initWithFrame(new RECT(), 0, 0)) != 0) {
            this.browser.dispose();
            WebKit.error(hr);
        }
        result[0] = 0;
        hr = this.webView.QueryInterface(WebKit_win32.IID_IWebViewPrivate, result);
        if (hr != 0 || result[0] == 0) {
            this.browser.dispose();
            WebKit.error(hr);
        }
        IWebViewPrivate webViewPrivate = new IWebViewPrivate(result[0]);
        result[0] = 0;
        hr = webViewPrivate.viewWindow(result);
        if (hr != 0 || result[0] == 0) {
            this.browser.dispose();
            WebKit.error(hr);
        }
        webViewPrivate.Release();
        this.webViewWindowHandle = result[0];
        this.webFrameLoadDelegate = new WebFrameLoadDelegate(this.browser);
        hr = this.webView.setFrameLoadDelegate(this.webFrameLoadDelegate.getAddress());
        if (hr != 0) {
            this.browser.dispose();
            WebKit.error(hr);
        }
        this.webUIDelegate = new WebUIDelegate(this.browser);
        hr = this.webView.setUIDelegate(this.webUIDelegate.getAddress());
        if (hr != 0) {
            this.browser.dispose();
            WebKit.error(hr);
        }
        this.webResourceLoadDelegate = new WebResourceLoadDelegate(this.browser);
        hr = this.webView.setResourceLoadDelegate(this.webResourceLoadDelegate.getAddress());
        if (hr != 0) {
            this.browser.dispose();
            WebKit.error(hr);
        }
        this.webDownloadDelegate = new WebDownloadDelegate(this.browser);
        hr = this.webView.setDownloadDelegate(this.webDownloadDelegate.getAddress());
        if (hr != 0) {
            this.browser.dispose();
            WebKit.error(hr);
        }
        this.webPolicyDelegate = new WebPolicyDelegate(this.browser);
        hr = this.webView.setPolicyDelegate(this.webPolicyDelegate.getAddress());
        if (hr != 0) {
            this.browser.dispose();
            WebKit.error(hr);
        }
        this.initializeWebViewPreferences();
        Listener listener = new Listener(){

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 12: {
                        if (WebKit.this.ignoreDispose) {
                            WebKit.this.ignoreDispose = false;
                            break;
                        }
                        WebKit.this.ignoreDispose = true;
                        WebKit.this.browser.notifyListeners(e.type, e);
                        e.type = 0;
                        WebKit.this.onDispose();
                        break;
                    }
                    case 15: {
                        OS.SetFocus(WebKit.this.webViewWindowHandle);
                        break;
                    }
                    case 11: {
                        Rectangle bounds = WebKit.this.browser.getClientArea();
                        OS.SetWindowPos(WebKit.this.webViewWindowHandle, 0, bounds.x, bounds.y, bounds.width, bounds.height, 32);
                        break;
                    }
                    case 31: {
                        if (WebKit.this.traverseOut) {
                            e.doit = true;
                            WebKit.this.traverseOut = false;
                            break;
                        }
                        e.doit = false;
                    }
                }
            }
        };
        this.browser.addListener(12, listener);
        this.browser.addListener(1, listener);
        this.browser.addListener(15, listener);
        this.browser.addListener(11, listener);
        this.browser.addListener(31, listener);
        this.eventFunction = new BrowserFunction(this.browser, "HandleWebKitEvent"){

            public Object function(Object[] arguments) {
                return WebKit.this.handleEvent(arguments) ? Boolean.TRUE : Boolean.FALSE;
            }
        };
    }

    public boolean execute(String script) {
        int[] result = new int[1];
        int hr = this.webView.mainFrame(result);
        if (hr != 0 || result[0] == 0) {
            return false;
        }
        IWebFrame frame = new IWebFrame(result[0]);
        int context = frame.globalContext();
        frame.Release();
        if (context == 0) {
            return false;
        }
        byte[] bytes = null;
        try {
            bytes = (String.valueOf(script) + '\u0000').getBytes(CHARSET_UTF8);
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            bytes = (String.valueOf(script) + '\u0000').getBytes();
        }
        int scriptString = WebKit_win32.JSStringCreateWithUTF8CString(bytes);
        if (scriptString == 0) {
            return false;
        }
        try {
            bytes = (String.valueOf(this.getUrl()) + '\u0000').getBytes(CHARSET_UTF8);
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            bytes = (String.valueOf(this.getUrl()) + '\u0000').getBytes();
        }
        int urlString = WebKit_win32.JSStringCreateWithUTF8CString(bytes);
        if (urlString == 0) {
            WebKit_win32.JSStringRelease(scriptString);
            return false;
        }
        int evalResult = WebKit_win32.JSEvaluateScript(context, scriptString, 0, urlString, 0, null);
        WebKit_win32.JSStringRelease(urlString);
        WebKit_win32.JSStringRelease(scriptString);
        return evalResult != 0;
    }

    public boolean forward() {
        int[] result = new int[1];
        this.webView.goForward(result);
        return result[0] != 0;
    }

    public String getBrowserType() {
        return "webkit";
    }

    public String getText() {
        int[] result = new int[1];
        int hr = this.webView.mainFrame(result);
        if (hr != 0 || result[0] == 0) {
            return EMPTY_STRING;
        }
        IWebFrame mainFrame = new IWebFrame(result[0]);
        result[0] = 0;
        hr = mainFrame.dataSource(result);
        mainFrame.Release();
        if (hr != 0 || result[0] == 0) {
            return EMPTY_STRING;
        }
        IWebDataSource dataSource = new IWebDataSource(result[0]);
        result[0] = 0;
        hr = dataSource.representation(result);
        dataSource.Release();
        if (hr != 0 || result[0] == 0) {
            return EMPTY_STRING;
        }
        IWebDocumentRepresentation representation = new IWebDocumentRepresentation(result[0]);
        result[0] = 0;
        hr = representation.documentSource(result);
        representation.Release();
        if (hr != 0 || result[0] == 0) {
            return EMPTY_STRING;
        }
        String source = WebKit.extractBSTR(result[0]);
        COM.SysFreeString(result[0]);
        return source;
    }

    public String getUrl() {
        return this.webFrameLoadDelegate.getUrl();
    }

    boolean handleEvent(Object[] arguments) {
        int mask;
        String type = (String)arguments[0];
        if (type.equals(DOMEVENT_KEYDOWN)) {
            int keyCode;
            this.lastKeyCode = keyCode = this.translateKey(((Double)arguments[1]).intValue());
            switch (keyCode) {
                case 9: 
                case 127: 
                case 65536: 
                case 131072: 
                case 262144: 
                case 0x400000: 
                case 0x1000001: 
                case 0x1000002: 
                case 0x1000003: 
                case 0x1000004: 
                case 0x1000005: 
                case 0x1000006: 
                case 0x1000007: 
                case 0x1000008: 
                case 0x1000009: 
                case 0x100000A: 
                case 0x100000B: 
                case 0x100000C: 
                case 0x100000D: 
                case 0x100000E: 
                case 0x100000F: 
                case 0x1000010: 
                case 0x1000011: 
                case 0x1000012: 
                case 0x1000013: 
                case 0x1000014: 
                case 0x1000015: 
                case 16777298: 
                case 16777299: 
                case 16777300: 
                case 0x1000055: {
                    Event keyEvent = new Event();
                    keyEvent.widget = this.browser;
                    keyEvent.type = type.equals(DOMEVENT_KEYDOWN) ? 1 : 2;
                    keyEvent.keyCode = keyCode;
                    switch (keyCode) {
                        case 8: {
                            keyEvent.character = (char)8;
                            break;
                        }
                        case 127: {
                            keyEvent.character = (char)127;
                            break;
                        }
                        case 27: {
                            keyEvent.character = (char)27;
                            break;
                        }
                        case 9: {
                            keyEvent.character = (char)9;
                        }
                    }
                    this.lastCharCode = keyEvent.character;
                    keyEvent.stateMask = ((Boolean)arguments[3] != false ? 65536 : 0) | ((Boolean)arguments[4] != false ? 262144 : 0) | ((Boolean)arguments[5] != false ? 131072 : 0) | ((Boolean)arguments[6] != false ? 0x400000 : 0);
                    keyEvent.stateMask &= ~keyCode;
                    if (this.sendKeyEvent(keyEvent) && !this.browser.isDisposed()) break;
                    return false;
                }
            }
            return true;
        }
        if (type.equals(DOMEVENT_KEYPRESS)) {
            if (this.lastKeyCode == 0) {
                return true;
            }
            this.lastCharCode = ((Double)arguments[2]).intValue();
            if (((Boolean)arguments[4]).booleanValue() && this.lastCharCode >= 0 && this.lastCharCode <= 127) {
                if (97 <= this.lastCharCode && this.lastCharCode <= 122) {
                    this.lastCharCode -= 32;
                }
                if (64 <= this.lastCharCode && this.lastCharCode <= 95) {
                    this.lastCharCode -= 64;
                }
            }
            Event keyEvent = new Event();
            keyEvent.widget = this.browser;
            keyEvent.type = 1;
            keyEvent.keyCode = this.lastKeyCode;
            keyEvent.character = (char)this.lastCharCode;
            keyEvent.stateMask = ((Boolean)arguments[3] != false ? 65536 : 0) | ((Boolean)arguments[4] != false ? 262144 : 0) | ((Boolean)arguments[5] != false ? 131072 : 0) | ((Boolean)arguments[6] != false ? 0x400000 : 0);
            return this.sendKeyEvent(keyEvent) && !this.browser.isDisposed();
        }
        if (type.equals(DOMEVENT_KEYUP)) {
            int keyCode = this.translateKey(((Double)arguments[1]).intValue());
            if (keyCode == 0) {
                return true;
            }
            if (keyCode != this.lastKeyCode) {
                this.lastKeyCode = keyCode;
                this.lastCharCode = 0;
            }
            Event keyEvent = new Event();
            keyEvent.widget = this.browser;
            keyEvent.type = 2;
            keyEvent.keyCode = this.lastKeyCode;
            keyEvent.character = (char)this.lastCharCode;
            keyEvent.stateMask = ((Boolean)arguments[3] != false ? 65536 : 0) | ((Boolean)arguments[4] != false ? 262144 : 0) | ((Boolean)arguments[5] != false ? 131072 : 0) | ((Boolean)arguments[6] != false ? 0x400000 : 0);
            switch (this.lastKeyCode) {
                case 65536: 
                case 131072: 
                case 262144: 
                case 0x400000: {
                    keyEvent.stateMask |= this.lastKeyCode;
                }
            }
            this.browser.notifyListeners(keyEvent.type, keyEvent);
            this.lastCharCode = 0;
            this.lastKeyCode = 0;
            return keyEvent.doit && !this.browser.isDisposed();
        }
        if ((type.equals(DOMEVENT_MOUSEOVER) || type.equals(DOMEVENT_MOUSEOUT)) && ((Boolean)arguments[9]).booleanValue()) {
            return true;
        }
        Point position = new Point(((Double)arguments[1]).intValue(), ((Double)arguments[2]).intValue());
        position = this.browser.getDisplay().map(null, (Control)this.browser, position);
        Event mouseEvent = new Event();
        mouseEvent.widget = this.browser;
        mouseEvent.x = position.x;
        mouseEvent.y = position.y;
        mouseEvent.stateMask = mask = ((Boolean)arguments[5] != false ? 65536 : 0) | ((Boolean)arguments[6] != false ? 262144 : 0) | ((Boolean)arguments[7] != false ? 131072 : 0);
        if (type.equals(DOMEVENT_MOUSEDOWN)) {
            mouseEvent.type = 3;
            mouseEvent.count = ((Double)arguments[3]).intValue();
            mouseEvent.button = ((Double)arguments[4]).intValue();
            this.browser.notifyListeners(mouseEvent.type, mouseEvent);
            if (this.browser.isDisposed()) {
                return true;
            }
            if (((Double)arguments[3]).intValue() == 2) {
                mouseEvent = new Event();
                mouseEvent.type = 8;
                mouseEvent.widget = this.browser;
                mouseEvent.x = position.x;
                mouseEvent.y = position.y;
                mouseEvent.stateMask = mask;
                mouseEvent.count = ((Double)arguments[3]).intValue();
                mouseEvent.button = ((Double)arguments[4]).intValue();
                this.browser.notifyListeners(mouseEvent.type, mouseEvent);
            }
            return true;
        }
        if (type.equals(DOMEVENT_MOUSEUP)) {
            mouseEvent.type = 4;
            mouseEvent.count = ((Double)arguments[3]).intValue();
            mouseEvent.button = ((Double)arguments[4]).intValue();
            switch (mouseEvent.button) {
                case 1: {
                    mouseEvent.stateMask |= 0x80000;
                    break;
                }
                case 2: {
                    mouseEvent.stateMask |= 0x100000;
                    break;
                }
                case 3: {
                    mouseEvent.stateMask |= 0x200000;
                    break;
                }
                case 4: {
                    mouseEvent.stateMask |= 0x800000;
                    break;
                }
                case 5: {
                    mouseEvent.stateMask |= 0x2000000;
                }
            }
        } else if (type.equals(DOMEVENT_MOUSEMOVE)) {
            mouseEvent.type = 5;
        } else if (type.equals(DOMEVENT_MOUSEWHEEL)) {
            mouseEvent.type = 37;
            mouseEvent.count = ((Double)arguments[3]).intValue();
        } else if (type.equals(DOMEVENT_MOUSEOVER)) {
            mouseEvent.type = 6;
        } else if (type.equals(DOMEVENT_MOUSEOUT)) {
            mouseEvent.type = 7;
            if (mouseEvent.x < 0) {
                mouseEvent.x = -1;
            }
            if (mouseEvent.y < 0) {
                mouseEvent.y = -1;
            }
        } else if (type.equals(DOMEVENT_DRAGSTART)) {
            mouseEvent.type = 29;
            mouseEvent.button = ((Double)arguments[4]).intValue() + 1;
            switch (mouseEvent.button) {
                case 1: {
                    mouseEvent.stateMask |= 0x80000;
                    break;
                }
                case 2: {
                    mouseEvent.stateMask |= 0x100000;
                    break;
                }
                case 3: {
                    mouseEvent.stateMask |= 0x200000;
                    break;
                }
                case 4: {
                    mouseEvent.stateMask |= 0x800000;
                    break;
                }
                case 5: {
                    mouseEvent.stateMask |= 0x2000000;
                }
            }
        }
        this.browser.notifyListeners(mouseEvent.type, mouseEvent);
        return true;
    }

    public boolean isBackEnabled() {
        int[] address = new int[1];
        int hr = this.webView.QueryInterface(WebKit_win32.IID_IWebIBActions, address);
        if (hr != 0 || address[0] == 0) {
            return false;
        }
        IWebIBActions webIBActions = new IWebIBActions(address[0]);
        int[] result = new int[1];
        webIBActions.canGoBack(this.webView.getAddress(), result);
        webIBActions.Release();
        return result[0] != 0;
    }

    public boolean isFocusControl() {
        int hwndFocus = OS.GetFocus();
        return hwndFocus != 0 && hwndFocus == this.webViewWindowHandle;
    }

    public boolean isForwardEnabled() {
        int[] address = new int[1];
        int hr = this.webView.QueryInterface(WebKit_win32.IID_IWebIBActions, address);
        if (hr != 0 || address[0] == 0) {
            return false;
        }
        IWebIBActions webIBActions = new IWebIBActions(address[0]);
        int[] result = new int[1];
        webIBActions.canGoForward(this.webView.getAddress(), result);
        webIBActions.Release();
        return result[0] != 0;
    }

    void onDispose() {
        if (!this.browser.isDisposed() && !this.browser.isClosing) {
            this.webUIDelegate.prompt = false;
            this.shouldClose();
            this.webUIDelegate.prompt = true;
        }
        Enumeration elements = this.functions.elements();
        while (elements.hasMoreElements()) {
            ((BrowserFunction)elements.nextElement()).dispose(false);
        }
        this.functions = null;
        this.eventFunction.dispose();
        this.eventFunction = null;
        C.free(this.webViewData);
        this.webView.setPreferences(0);
        this.webView.setHostWindow(0);
        this.webView.setFrameLoadDelegate(0);
        this.webView.setResourceLoadDelegate(0);
        this.webView.setUIDelegate(0);
        this.webView.setPolicyDelegate(0);
        this.webView.setDownloadDelegate(0);
        this.webView.Release();
        this.webView = null;
        this.webDownloadDelegate = null;
        this.webFrameLoadDelegate = null;
        this.webPolicyDelegate = null;
        this.webResourceLoadDelegate = null;
        this.webUIDelegate = null;
        this.lastNavigateURL = null;
    }

    public void refresh() {
        this.webFrameLoadDelegate.html = null;
        int[] result = new int[1];
        int hr = this.webView.QueryInterface(WebKit_win32.IID_IWebIBActions, result);
        if (hr != 0 || result[0] == 0) {
            return;
        }
        IWebIBActions webIBActions = new IWebIBActions(result[0]);
        webIBActions.reload(this.webView.getAddress());
        webIBActions.Release();
    }

    boolean sendKeyEvent(Event event) {
        boolean doit = true;
        switch (event.keyCode) {
            case 9: 
            case 13: 
            case 27: 
            case 0x1000001: 
            case 0x1000002: 
            case 0x1000003: 
            case 0x1000004: 
            case 0x1000005: 
            case 0x1000006: {
                break;
            }
            default: {
                if (!this.translateMnemonics() || event.character == '\u0000' || (event.stateMask & 0x50000) != 65536) break;
                int traversal = 128;
                boolean oldEventDoit = event.doit;
                event.doit = true;
                doit = !this.browser.traverse(traversal, event);
                event.doit = oldEventDoit;
            }
        }
        if (doit) {
            this.browser.notifyListeners(event.type, event);
            doit = event.doit;
        }
        return doit;
    }

    public boolean setText(String html, boolean trusted) {
        boolean blankLoading = this.webFrameLoadDelegate.html != null;
        this.webFrameLoadDelegate.html = html;
        boolean bl = this.untrustedText = !trusted;
        if (blankLoading) {
            return true;
        }
        int[] result = new int[1];
        int hr = this.webView.mainFrame(result);
        if (hr != 0 || result[0] == 0) {
            return false;
        }
        IWebFrame frame = new IWebFrame(result[0]);
        result[0] = 0;
        hr = WebKit_win32.WebKitCreateInstance(WebKit_win32.CLSID_WebMutableURLRequest, 0, WebKit_win32.IID_IWebMutableURLRequest, result);
        if (hr != 0 || result[0] == 0) {
            frame.Release();
            return false;
        }
        IWebMutableURLRequest request = new IWebMutableURLRequest(result[0]);
        int urlString = WebKit.createBSTR(ABOUT_BLANK);
        hr = request.setURL(urlString);
        COM.SysFreeString(urlString);
        if (hr == 0) {
            hr = frame.loadRequest(request.getAddress());
        }
        frame.Release();
        request.Release();
        return hr == 0;
    }

    public boolean setUrl(String url, String postData, String[] headers) {
        if (url.length() == 0) {
            return false;
        }
        try {
            new URL(url);
        }
        catch (MalformedURLException malformedURLException) {
            String testUrl = null;
            testUrl = new File(url).isAbsolute() ? PROTOCOL_FILE + url : PROTOCOL_HTTP + url;
            try {
                new URL(testUrl);
                url = testUrl;
            }
            catch (MalformedURLException malformedURLException2) {}
        }
        this.webFrameLoadDelegate.html = null;
        this.lastNavigateURL = url;
        int[] result = new int[1];
        int hr = this.webView.mainFrame(result);
        if (hr != 0 || result[0] == 0) {
            return false;
        }
        IWebFrame frame = new IWebFrame(result[0]);
        result[0] = 0;
        hr = WebKit_win32.WebKitCreateInstance(WebKit_win32.CLSID_WebMutableURLRequest, 0, WebKit_win32.IID_IWebMutableURLRequest, result);
        if (hr != 0 || result[0] == 0) {
            frame.Release();
            return false;
        }
        IWebMutableURLRequest request = new IWebMutableURLRequest(result[0]);
        hr = 0;
        if (headers != null) {
            int i = 0;
            while (i < headers.length) {
                int index;
                String current = headers[i];
                if (current != null && (index = current.indexOf(58)) != -1) {
                    String key = current.substring(0, index).trim();
                    String value = current.substring(index + 1).trim();
                    if (key.length() > 0 && value.length() > 0) {
                        int valueString = WebKit.createBSTR(value);
                        if (key.equalsIgnoreCase(USER_AGENT)) {
                            hr = this.webView.setCustomUserAgent(valueString);
                        } else {
                            int keyString = WebKit.createBSTR(key);
                            hr = request.setValue(valueString, keyString);
                            COM.SysFreeString(keyString);
                        }
                        COM.SysFreeString(valueString);
                    }
                }
                ++i;
            }
        }
        if (hr == 0) {
            int urlString = WebKit.createBSTR(url);
            hr = request.setURL(urlString);
            COM.SysFreeString(urlString);
            if (hr == 0) {
                hr = frame.loadRequest(request.getAddress());
            }
            this.webView.setCustomUserAgent(0);
        }
        frame.Release();
        request.Release();
        return hr == 0;
    }

    boolean shouldClose() {
        if (!this.jsEnabled) {
            return true;
        }
        int[] address = new int[1];
        int hr = this.webView.QueryInterface(WebKit_win32.IID_IWebViewPrivate, address);
        if (hr != 0 || address[0] == 0) {
            return false;
        }
        IWebViewPrivate webViewPrivate = new IWebViewPrivate(address[0]);
        int[] result = new int[1];
        webViewPrivate.shouldClose(result);
        webViewPrivate.Release();
        return result[0] != 0;
    }

    public void stop() {
        this.webFrameLoadDelegate.html = null;
        int[] result = new int[1];
        int hr = this.webView.QueryInterface(WebKit_win32.IID_IWebIBActions, result);
        if (hr != 0 || result[0] == 0) {
            return;
        }
        IWebIBActions webIBActions = new IWebIBActions(result[0]);
        webIBActions.stopLoading(this.webView.getAddress());
        webIBActions.Release();
    }

    void initializeWebViewPreferences() {
        IWebPreferences preferences;
        int[] result = new int[1];
        int hr = WebKit_win32.WebKitCreateInstance(WebKit_win32.CLSID_WebPreferences, 0, WebKit_win32.IID_IWebPreferences, result);
        if (hr == 0 && result[0] != 0) {
            preferences = new IWebPreferences(result[0]);
            result[0] = 0;
            hr = preferences.initWithIdentifier(WebKit.createBSTR(String.valueOf(prefsIdentifier++)), result);
            preferences.Release();
            if (hr == 0 && result[0] != 0) {
                preferences = new IWebPreferences(result[0]);
                this.webView.setPreferences(preferences.getAddress());
                preferences.Release();
            }
        }
        result[0] = 0;
        hr = this.webView.preferences(result);
        if (hr == 0 && result[0] != 0) {
            preferences = new IWebPreferences(result[0]);
            preferences.setJavaScriptEnabled(1);
            preferences.setJavaScriptCanOpenWindowsAutomatically(1);
            preferences.setJavaEnabled(0);
            preferences.setTabsToLinks(1);
            preferences.setFontSmoothing(4);
            preferences.Release();
        }
    }
}

