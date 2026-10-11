/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.LocationEvent;
import org.eclipse.swt.browser.LocationListener;
import org.eclipse.swt.browser.WebKit;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.webkit.IWebError;
import org.eclipse.swt.internal.webkit.IWebPolicyDecisionListener;
import org.eclipse.swt.internal.webkit.IWebPreferences;
import org.eclipse.swt.internal.webkit.IWebURLRequest;
import org.eclipse.swt.internal.webkit.IWebView;
import org.eclipse.swt.internal.webkit.WebKit_win32;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.widgets.MessageBox;

class WebPolicyDelegate {
    COMObject iWebPolicyDelegate;
    int refCount = 0;
    Browser browser;

    WebPolicyDelegate(Browser browser) {
        this.createCOMInterfaces();
        this.browser = browser;
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    void createCOMInterfaces() {
        int[] nArray = new int[7];
        nArray[0] = 2;
        nArray[3] = 5;
        nArray[4] = 5;
        nArray[5] = 5;
        nArray[6] = 3;
        this.iWebPolicyDelegate = new COMObject(nArray){

            public int method0(int[] args) {
                return WebPolicyDelegate.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WebPolicyDelegate.this.AddRef();
            }

            public int method2(int[] args) {
                return WebPolicyDelegate.this.Release();
            }

            public int method3(int[] args) {
                return WebPolicyDelegate.this.decidePolicyForNavigationAction(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method4(int[] args) {
                return WebPolicyDelegate.this.decidePolicyForNewWindowAction(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method5(int[] args) {
                return WebPolicyDelegate.this.decidePolicyForMIMEType(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method6(int[] args) {
                return WebPolicyDelegate.this.unableToImplementPolicyWithError(args[0], args[1], args[2]);
            }
        };
    }

    int decidePolicyForMIMEType(int webView, int type, int request, int frame, int listener) {
        IWebView iwebView = new IWebView(webView);
        int[] canShow = new int[1];
        iwebView.canShowMIMEType(type, canShow);
        IWebPolicyDecisionListener pdListener = new IWebPolicyDecisionListener(listener);
        if (canShow[0] != 0) {
            pdListener.use();
        } else {
            pdListener.download();
        }
        return 0;
    }

    int decidePolicyForNavigationAction(int webView, int actionInformation, int request, int frame, int listener) {
        IWebURLRequest iwebUrlRequest = new IWebURLRequest(request);
        int[] result = new int[1];
        int hr = iwebUrlRequest.URL(result);
        if (hr != 0 || result[0] == 0) {
            return 0;
        }
        String url = WebKit.extractBSTR(result[0]);
        COM.SysFreeString(result[0]);
        IWebPolicyDecisionListener pdListener = new IWebPolicyDecisionListener(listener);
        WebKit webKit = (WebKit)this.browser.webBrowser;
        if (webKit.loadingText) {
            pdListener.use();
            return 0;
        }
        if (url.length() == 0) {
            pdListener.ignore();
            return 0;
        }
        if (url.startsWith("file://") && webKit.getUrl().startsWith("about:blank") && webKit.untrustedText) {
            pdListener.ignore();
            return 0;
        }
        if (url.equals("file:///")) {
            url = "about:blank";
        } else {
            int length = "file:///".length();
            if (url.startsWith("file:///") && url.charAt(length) == '#') {
                url = "about:blank" + url.substring(length);
            }
        }
        LocationEvent newEvent = new LocationEvent(this.browser);
        newEvent.display = this.browser.getDisplay();
        newEvent.widget = this.browser;
        newEvent.location = url;
        newEvent.doit = true;
        LocationListener[] locationListeners = webKit.locationListeners;
        if (locationListeners != null) {
            int i = 0;
            while (i < locationListeners.length) {
                locationListeners[i].changing(newEvent);
                ++i;
            }
        }
        if (newEvent.doit) {
            if (webKit.jsEnabledChanged) {
                webKit.jsEnabledChanged = false;
                IWebView view = new IWebView(webView);
                result[0] = 0;
                hr = view.preferences(result);
                if (hr == 0 && result[0] != 0) {
                    IWebPreferences preferences = new IWebPreferences(result[0]);
                    hr = preferences.setJavaScriptEnabled(webKit.jsEnabled ? 1 : 0);
                    view.setPreferences(preferences.getAddress());
                    preferences.Release();
                }
            }
            pdListener.use();
            webKit.lastNavigateURL = url;
        } else {
            pdListener.ignore();
        }
        return 0;
    }

    int decidePolicyForNewWindowAction(int webView, int actionInformation, int request, int frameName, int listener) {
        IWebPolicyDecisionListener pdListener = new IWebPolicyDecisionListener(listener);
        pdListener.use();
        return 0;
    }

    protected void disposeCOMInterfaces() {
        if (this.iWebPolicyDelegate != null) {
            this.iWebPolicyDelegate.dispose();
            this.iWebPolicyDelegate = null;
        }
    }

    int getAddress() {
        return this.iWebPolicyDelegate.getAddress();
    }

    int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147024809;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown)) {
            COM.MoveMemory(ppvObject, new int[]{this.iWebPolicyDelegate.getAddress()}, OS.PTR_SIZEOF);
            new IUnknown(this.iWebPolicyDelegate.getAddress()).AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, WebKit_win32.IID_IWebPolicyDelegate)) {
            COM.MoveMemory(ppvObject, new int[]{this.iWebPolicyDelegate.getAddress()}, OS.PTR_SIZEOF);
            new IUnknown(this.iWebPolicyDelegate.getAddress()).AddRef();
            return 0;
        }
        COM.MoveMemory(ppvObject, new int[1], OS.PTR_SIZEOF);
        return -2147467262;
    }

    int Release() {
        --this.refCount;
        if (this.refCount == 0) {
            this.disposeCOMInterfaces();
        }
        return this.refCount;
    }

    int unableToImplementPolicyWithError(int webView, int error, int frame) {
        if (this.browser.isDisposed()) {
            return 0;
        }
        IWebError iweberror = new IWebError(error);
        String failingURL = null;
        int[] result = new int[1];
        int hr = iweberror.failingURL(result);
        if (hr == 0 && result[0] != 0) {
            failingURL = WebKit.extractBSTR(result[0]);
            COM.SysFreeString(result[0]);
        }
        result[0] = 0;
        hr = iweberror.localizedDescription(result);
        if (hr != 0 || result[0] == 0) {
            return 0;
        }
        String description = WebKit.extractBSTR(result[0]);
        COM.SysFreeString(result[0]);
        String message = failingURL != null ? String.valueOf(failingURL) + "\n\n" : "";
        message = String.valueOf(message) + Compatibility.getMessage("SWT_Page_Load_Failed", new Object[]{description});
        MessageBox messageBox = new MessageBox(this.browser.getShell(), 33);
        messageBox.setMessage(message);
        messageBox.open();
        return 0;
    }
}

