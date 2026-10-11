/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIWebBrowserChrome
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 10;
    public static final String NS_IWEBBROWSERCHROME_IID_STR = "ba434c60-9d52-11d3-afb0-00a024ffc08c";
    public static final nsID NS_IWEBBROWSERCHROME_IID = new nsID("ba434c60-9d52-11d3-afb0-00a024ffc08c");
    public static final int STATUS_SCRIPT = 1;
    public static final int STATUS_SCRIPT_DEFAULT = 2;
    public static final int STATUS_LINK = 3;
    public static final int CHROME_DEFAULT = 1;
    public static final int CHROME_WINDOW_BORDERS = 2;
    public static final int CHROME_WINDOW_CLOSE = 4;
    public static final int CHROME_WINDOW_RESIZE = 8;
    public static final int CHROME_MENUBAR = 16;
    public static final int CHROME_TOOLBAR = 32;
    public static final int CHROME_LOCATIONBAR = 64;
    public static final int CHROME_STATUSBAR = 128;
    public static final int CHROME_PERSONAL_TOOLBAR = 256;
    public static final int CHROME_SCROLLBARS = 512;
    public static final int CHROME_TITLEBAR = 1024;
    public static final int CHROME_EXTRA = 2048;
    public static final int CHROME_WITH_SIZE = 4096;
    public static final int CHROME_WITH_POSITION = 8192;
    public static final int CHROME_WINDOW_MIN = 16384;
    public static final int CHROME_WINDOW_POPUP = 32768;
    public static final int CHROME_WINDOW_RAISED = 0x2000000;
    public static final int CHROME_WINDOW_LOWERED = 0x4000000;
    public static final int CHROME_CENTER_SCREEN = 0x8000000;
    public static final int CHROME_DEPENDENT = 0x10000000;
    public static final int CHROME_MODAL = 0x20000000;
    public static final int CHROME_OPENAS_DIALOG = 0x40000000;
    public static final int CHROME_OPENAS_CHROME = Integer.MIN_VALUE;
    public static final int CHROME_ALL = 4094;

    public nsIWebBrowserChrome(int address) {
        super(address);
    }

    public int SetStatus(int statusType, char[] status) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), statusType, status);
    }

    public int GetWebBrowser(int[] aWebBrowser) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aWebBrowser);
    }

    public int SetWebBrowser(int aWebBrowser) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aWebBrowser);
    }

    public int GetChromeFlags(int[] aChromeFlags) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aChromeFlags);
    }

    public int SetChromeFlags(int aChromeFlags) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aChromeFlags);
    }

    public int DestroyBrowserWindow() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress());
    }

    public int SizeBrowserTo(int aCX, int aCY) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aCX, aCY);
    }

    public int ShowAsModal() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress());
    }

    public int IsWindowModal(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), _retval);
    }

    public int ExitModalEventLoop(int aStatus) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), aStatus);
    }
}

