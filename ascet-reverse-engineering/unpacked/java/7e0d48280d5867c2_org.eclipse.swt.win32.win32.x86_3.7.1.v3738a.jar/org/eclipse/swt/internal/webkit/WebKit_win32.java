/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.webkit.JSClassDefinition;
import org.eclipse.swt.internal.win32.OS;

public class WebKit_win32
extends C {
    public static final GUID CLSID_WebCookieManager = WebKit_win32.IIDFromString("{3F35F332-BB2B-49b3-AEDD-27B317687E07}");
    public static final GUID CLSID_WebMutableURLRequest = WebKit_win32.IIDFromString("{a062ecc3-bb1b-4694-a569-f59e0ad6be0c}");
    public static final GUID CLSID_WebPreferences = WebKit_win32.IIDFromString("{67B89F90-F778-438B-ABBF-34D1ACBF8651}");
    public static final GUID CLSID_WebURLCredential = WebKit_win32.IIDFromString("{7433F53B-7FE9-484a-9432-72909457A646}");
    public static final GUID CLSID_WebView = WebKit_win32.IIDFromString("{d6bca079-f61c-4e1e-b453-32a0477d02e3}");
    public static final GUID IID_IWebCookieManager = WebKit_win32.IIDFromString("{7053FE94-3623-444f-A298-209A90879A8C}");
    public static final GUID IID_IWebDownloadDelegate = WebKit_win32.IIDFromString("{16A32AE6-C862-40cd-9225-2CAF823F40F9}");
    public static final GUID IID_IWebErrorPrivate = WebKit_win32.IIDFromString("{19FED49C-7016-48a6-B5C6-07ADE116531B}");
    public static final GUID IID_IWebFrameLoadDelegate = WebKit_win32.IIDFromString("{3354665B-84BA-4fdf-B35E-BF5CF9D96026}");
    public static final GUID IID_IWebFramePrivate = WebKit_win32.IIDFromString("{A1657D07-4881-4475-9D10-76548731D448}");
    public static final GUID IID_IWebIBActions = WebKit_win32.IIDFromString("{8F0E3A30-B924-44f8-990A-1AE61ED6C632}");
    public static final GUID IID_IWebMutableURLRequest = WebKit_win32.IIDFromString("{C4042773-371F-427e-AFA9-9D4B358A0D93}");
    public static final GUID IID_IWebMutableURLRequestPrivate = WebKit_win32.IIDFromString("{AD675B60-2CE9-478c-B2AA-CAD643FF18AC}");
    public static final GUID IID_IWebPolicyDelegate = WebKit_win32.IIDFromString("{9B0BAE6C-A496-4000-9E22-2E89F0747401}");
    public static final GUID IID_IWebPreferences = WebKit_win32.IIDFromString("{0930D594-A5A3-46e1-858E-AB17A13CD28E}");
    public static final GUID IID_IWebResourceLoadDelegate = WebKit_win32.IIDFromString("{AF3289AA-90DB-4ca4-A112-A1E5F0517953}");
    public static final GUID IID_IWebUIDelegate = WebKit_win32.IIDFromString("{042B7EE3-A5A4-4a8f-8C33-775CD9E89C7C}");
    public static final GUID IID_IWebURLCredential = WebKit_win32.IIDFromString("{A1E9D765-FACE-4189-BBE3-AED7EBF65EBD}");
    public static final GUID IID_IWebView = WebKit_win32.IIDFromString("{174BBEFD-058E-49C7-91DF-6F110AA4AC28}");
    public static final GUID IID_IWebViewPrivate = WebKit_win32.IIDFromString("{44914369-DEB5-4fcf-A6A3-30C02E73154F}");
    public static final int CFHTTPCookieSessionOnlyFlag = 2;
    public static final int FontSmoothingTypeWindows = 4;
    public static final int kCFStringEncodingUTF8 = 0x8000100;
    public static final int kJSTypeUndefined = 0;
    public static final int kJSTypeNull = 1;
    public static final int kJSTypeBoolean = 2;
    public static final int kJSTypeNumber = 3;
    public static final int kJSTypeString = 4;
    public static final int kJSTypeObject = 5;
    public static final int WebURLCredentialPersistenceForSession = 1;
    public static final int WebURLErrorBadURL = -1000;
    public static final int WebURLErrorServerCertificateNotYetValid = -1204;
    public static final int WebURLErrorSecureConnectionFailed = -1200;

    static GUID IIDFromString(String lpsz) {
        int length = lpsz.length();
        char[] buffer = new char[length + 1];
        lpsz.getChars(0, length, buffer, 0);
        GUID lpiid = new GUID();
        if (COM.IIDFromString(buffer, lpiid) == 0) {
            return lpiid;
        }
        return null;
    }

    public static final native int CFArrayGetCount(int var0);

    public static final native int CFArrayGetValueAtIndex(int var0, int var1);

    public static final native int CFDataCreate(int var0, byte[] var1, int var2);

    public static final native int CFDataGetBytePtr(int var0);

    public static final native int CFDataGetLength(int var0);

    public static final native int CFDictionaryCreate(int var0, int[] var1, int[] var2, int var3, int var4, int var5);

    public static final native int CFHTTPCookieCreateWithResponseHeaderFields(int var0, int var1, int var2);

    public static final native int CFHTTPCookieGetFlags(int var0);

    public static final native int CFHTTPCookieGetName(int var0);

    public static final native int CFHTTPCookieGetValue(int var0);

    public static final native int CFHTTPCookieStorageCopyCookies(int var0);

    public static final native int CFHTTPCookieStorageCopyCookiesForURL(int var0, int var1, boolean var2);

    public static final native void CFHTTPCookieStorageDeleteCookie(int var0, int var1);

    public static final native void CFHTTPCookieStorageSetCookie(int var0, int var1);

    public static final native void CFRelease(int var0);

    public static final native int CFStringCreateWithCharacters(int var0, char[] var1, int var2);

    public static final native char CFStringGetCharacterAtIndex(int var0, int var1);

    public static final native int CFStringGetCharactersPtr(int var0);

    public static final native int CFStringGetLength(int var0);

    public static final native int CFURLCreateWithString(int var0, int var1, int var2);

    public static final native int CFURLRequestCreateMutableCopy(int var0, int var1);

    public static final native int CFURLRequestCopyHTTPRequestBody(int var0);

    public static final native void CFURLRequestSetHTTPRequestBody(int var0, int var1);

    public static final native void CFURLRequestSetURL(int var0, int var1);

    public static final native int JSClassCreate(int var0);

    public static final native int JSClassRetain(int var0);

    public static final native int JSContextGetGlobalObject(int var0);

    public static final native int JSEvaluateScript(int var0, int var1, int var2, int var3, int var4, int[] var5);

    public static final native int JSGlobalContextRetain(int var0);

    public static final native int JSObjectGetPrivate(int var0);

    public static final native int JSObjectGetProperty(int var0, int var1, int var2, int[] var3);

    public static final native int JSObjectGetPropertyAtIndex(int var0, int var1, int var2, int[] var3);

    public static final native int JSObjectMake(int var0, int var1, int var2);

    public static final native int JSObjectMakeArray(int var0, int var1, int[] var2, int[] var3);

    public static final native int JSObjectMakeFunctionWithCallback(int var0, int var1, int var2);

    public static final native void JSObjectSetProperty(int var0, int var1, int var2, int var3, int var4, int[] var5);

    public static final native int JSStringCreateWithUTF8CString(byte[] var0);

    public static final native int JSStringGetLength(int var0);

    public static final native int JSStringGetMaximumUTF8CStringSize(int var0);

    public static final native int JSStringGetUTF8CString(int var0, byte[] var1, int var2);

    public static final native int JSStringIsEqualToUTF8CString(int var0, byte[] var1);

    public static final native void JSStringRelease(int var0);

    public static final native int JSValueGetType(int var0, int var1);

    public static final native int JSValueIsObjectOfClass(int var0, int var1, int var2);

    public static final native int JSValueMakeBoolean(int var0, int var1);

    public static final native int JSValueMakeNull(int var0);

    public static final native int JSValueMakeNumber(int var0, double var1);

    public static final native int JSValueMakeString(int var0, int var1);

    public static final native int JSValueMakeUndefined(int var0);

    public static final native int JSValueToBoolean(int var0, int var1);

    public static final native double JSValueToNumber(int var0, int var1, int[] var2);

    public static final native int JSValueToStringCopy(int var0, int var1, int[] var2);

    public static final native int kCFCopyStringDictionaryKeyCallBacks();

    public static final native int kCFTypeDictionaryValueCallBacks();

    public static final native int JSClassDefinition_sizeof();

    public static final native void memmove(int var0, JSClassDefinition var1, int var2);

    public static final native int WebKitCreateInstance(byte[] var0, int var1, byte[] var2, int[] var3);

    public static final int WebKitCreateInstance(GUID clsid, int pUnkOuter, GUID iid, int[] ppvObject) {
        byte[] rclsid = new byte[GUID.sizeof];
        OS.IIDFromString((String.valueOf(clsid.toString()) + '\u0000').toCharArray(), rclsid);
        byte[] refiid = new byte[GUID.sizeof];
        OS.IIDFromString((String.valueOf(iid.toString()) + '\u0000').toCharArray(), refiid);
        return WebKit_win32.WebKitCreateInstance(rclsid, pUnkOuter, refiid, ppvObject);
    }

    public static final native int JSObjectCallAsFunctionProc_CALLBACK(int var0);

    public static final native int JSObjectGetPropertyProc_CALLBACK(int var0);

    public static final native int JSObjectHasPropertyProc_CALLBACK(int var0);

    public static final native int willPerformClientRedirectToURL_CALLBACK(int var0);
}

