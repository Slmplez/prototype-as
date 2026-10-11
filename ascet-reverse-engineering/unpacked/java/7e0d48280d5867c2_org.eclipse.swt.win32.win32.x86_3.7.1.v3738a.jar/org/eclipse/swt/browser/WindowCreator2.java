/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.CloseWindowListener;
import org.eclipse.swt.browser.Mozilla;
import org.eclipse.swt.browser.VisibilityWindowListener;
import org.eclipse.swt.browser.WindowEvent;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.XPCOMObject;
import org.eclipse.swt.internal.mozilla.nsIBaseWindow;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;
import org.eclipse.swt.internal.mozilla.nsIURI;
import org.eclipse.swt.internal.mozilla.nsIWebBrowser;
import org.eclipse.swt.internal.mozilla.nsIWebBrowserChrome;
import org.eclipse.swt.internal.mozilla.nsIWindowCreator;
import org.eclipse.swt.internal.mozilla.nsIWindowCreator2;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Widget;

class WindowCreator2 {
    XPCOMObject supports;
    XPCOMObject windowCreator;
    XPCOMObject windowCreator2;
    int refCount = 0;

    WindowCreator2() {
        this.createCOMInterfaces();
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    void createCOMInterfaces() {
        int[] nArray = new int[3];
        nArray[0] = 2;
        this.supports = new XPCOMObject(nArray){

            public int method0(int[] args) {
                return WindowCreator2.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WindowCreator2.this.AddRef();
            }

            public int method2(int[] args) {
                return WindowCreator2.this.Release();
            }
        };
        int[] nArray2 = new int[4];
        nArray2[0] = 2;
        nArray2[3] = 3;
        this.windowCreator = new XPCOMObject(nArray2){

            public int method0(int[] args) {
                return WindowCreator2.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WindowCreator2.this.AddRef();
            }

            public int method2(int[] args) {
                return WindowCreator2.this.Release();
            }

            public int method3(int[] args) {
                return WindowCreator2.this.CreateChromeWindow(args[0], args[1], args[2]);
            }
        };
        int[] nArray3 = new int[5];
        nArray3[0] = 2;
        nArray3[3] = 3;
        nArray3[4] = 6;
        this.windowCreator2 = new XPCOMObject(nArray3){

            public int method0(int[] args) {
                return WindowCreator2.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WindowCreator2.this.AddRef();
            }

            public int method2(int[] args) {
                return WindowCreator2.this.Release();
            }

            public int method3(int[] args) {
                return WindowCreator2.this.CreateChromeWindow(args[0], args[1], args[2]);
            }

            public int method4(int[] args) {
                return WindowCreator2.this.CreateChromeWindow2(args[0], args[1], args[2], args[3], args[4], args[5]);
            }
        };
    }

    void disposeCOMInterfaces() {
        if (this.supports != null) {
            this.supports.dispose();
            this.supports = null;
        }
        if (this.windowCreator != null) {
            this.windowCreator.dispose();
            this.windowCreator = null;
        }
        if (this.windowCreator2 != null) {
            this.windowCreator2.dispose();
            this.windowCreator2 = null;
        }
    }

    int getAddress() {
        return this.windowCreator.getAddress();
    }

    int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147467262;
        }
        nsID guid = new nsID();
        XPCOM.memmove(guid, riid, 16);
        if (guid.Equals(nsISupports.NS_ISUPPORTS_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.supports.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIWindowCreator.NS_IWINDOWCREATOR_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.windowCreator.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIWindowCreator2.NS_IWINDOWCREATOR2_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.windowCreator2.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        XPCOM.memmove(ppvObject, new int[1], C.PTR_SIZEOF);
        return -2147467262;
    }

    int Release() {
        --this.refCount;
        if (this.refCount == 0) {
            this.disposeCOMInterfaces();
        }
        return this.refCount;
    }

    int CreateChromeWindow(int parent, int chromeFlags, int _retval) {
        return this.CreateChromeWindow2(parent, chromeFlags, 0, 0, 0, _retval);
    }

    int CreateChromeWindow2(int parent, int chromeFlags, int contextFlags, int uri, int cancel, int _retval) {
        Browser browser;
        if (parent == 0 && (chromeFlags & Integer.MIN_VALUE) == 0) {
            return -2147467263;
        }
        Widget src = null;
        if (parent != 0) {
            int[] result;
            nsIWebBrowser webBrowser;
            nsIWebBrowserChrome browserChromeParent = new nsIWebBrowserChrome(parent);
            int[] aWebBrowser = new int[1];
            int rc = browserChromeParent.GetWebBrowser(aWebBrowser);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (aWebBrowser[0] == 0) {
                Mozilla.error(-2147467262);
            }
            if ((rc = (webBrowser = new nsIWebBrowser(aWebBrowser[0])).QueryInterface(nsIBaseWindow.NS_IBASEWINDOW_IID, result = new int[1])) != 0) {
                Mozilla.error(rc);
            }
            if (result[0] == 0) {
                Mozilla.error(-2147467262);
            }
            webBrowser.Release();
            nsIBaseWindow baseWindow = new nsIBaseWindow(result[0]);
            result[0] = 0;
            int[] aParentNativeWindow = new int[1];
            rc = baseWindow.GetParentNativeWindow(aParentNativeWindow);
            if (rc != 0) {
                Mozilla.error(rc);
            }
            if (aParentNativeWindow[0] == 0) {
                Mozilla.error(-2147467262);
            }
            baseWindow.Release();
            src = Mozilla.findBrowser(aParentNativeWindow[0]);
        }
        boolean doit = true;
        if ((chromeFlags & Integer.MIN_VALUE) != 0) {
            int style = 0;
            if ((chromeFlags & 0x8000) == 0) {
                style |= 0x860;
            }
            if ((chromeFlags & 0x20000000) != 0) {
                style |= 0x10000;
            }
            final Shell shell = src == null ? new Shell(style) : new Shell(((Control)src).getShell(), style);
            shell.setLayout(new FillLayout());
            browser = new Browser(shell, src == null ? 32768 : ((Browser)src).getStyle() & 0x8000);
            browser.addVisibilityWindowListener(new VisibilityWindowListener(){

                public void hide(WindowEvent event) {
                }

                public void show(WindowEvent event) {
                    if (event.location != null) {
                        shell.setLocation(event.location);
                    }
                    if (event.size != null) {
                        Point size = event.size;
                        shell.setSize(shell.computeSize(size.x, size.y));
                    }
                    shell.open();
                }
            });
            browser.addCloseWindowListener(new CloseWindowListener(){

                public void close(WindowEvent event) {
                    shell.close();
                }
            });
            if (uri != 0) {
                int length;
                nsIURI location = new nsIURI(uri);
                int aSpec = XPCOM.nsEmbedCString_new();
                if (location.GetSpec(aSpec) == 0 && (length = XPCOM.nsEmbedCString_Length(aSpec)) > 0) {
                    int buffer = XPCOM.nsEmbedCString_get(aSpec);
                    byte[] dest = new byte[length];
                    XPCOM.memmove(dest, buffer, length);
                    browser.setUrl(new String(dest));
                }
                XPCOM.nsEmbedCString_delete(aSpec);
            }
        } else {
            WindowEvent event = new WindowEvent(src);
            event.display = src.getDisplay();
            event.widget = src;
            event.required = true;
            int i = 0;
            while (i < ((Browser)src).webBrowser.openWindowListeners.length) {
                ((Browser)src).webBrowser.openWindowListeners[i].open(event);
                ++i;
            }
            browser = event.browser;
            boolean bl = doit = browser != null && !browser.isDisposed();
            if (doit) {
                String platform = "win32";
                boolean isMozillaNativePlatform = platform.equals("gtk") || platform.equals("motif");
                boolean bl2 = doit = isMozillaNativePlatform || (browser.getStyle() & 0x8000) != 0;
            }
        }
        if (doit) {
            Mozilla mozilla = (Mozilla)browser.webBrowser;
            mozilla.isChild = true;
            int chromePtr = mozilla.webBrowserChrome.getAddress();
            nsIWebBrowserChrome webBrowserChrome = new nsIWebBrowserChrome(chromePtr);
            webBrowserChrome.SetChromeFlags(chromeFlags);
            webBrowserChrome.AddRef();
            XPCOM.memmove(_retval, new int[]{chromePtr}, C.PTR_SIZEOF);
        } else if (cancel != 0) {
            C.memmove(cancel, new int[]{1}, 4);
        }
        return doit ? 0 : -2147467263;
    }
}

