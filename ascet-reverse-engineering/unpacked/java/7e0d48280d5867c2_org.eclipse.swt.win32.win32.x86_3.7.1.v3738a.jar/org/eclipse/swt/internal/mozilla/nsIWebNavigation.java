/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIWebNavigation
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 13;
    public static final String NS_IWEBNAVIGATION_IID_STR = "f5d9e7b0-d930-11d3-b057-00a024ffc08c";
    public static final nsID NS_IWEBNAVIGATION_IID = new nsID("f5d9e7b0-d930-11d3-b057-00a024ffc08c");
    public static final int LOAD_FLAGS_MASK = 65535;
    public static final int LOAD_FLAGS_NONE = 0;
    public static final int LOAD_FLAGS_IS_REFRESH = 16;
    public static final int LOAD_FLAGS_IS_LINK = 32;
    public static final int LOAD_FLAGS_BYPASS_HISTORY = 64;
    public static final int LOAD_FLAGS_REPLACE_HISTORY = 128;
    public static final int LOAD_FLAGS_BYPASS_CACHE = 256;
    public static final int LOAD_FLAGS_BYPASS_PROXY = 512;
    public static final int LOAD_FLAGS_CHARSET_CHANGE = 1024;
    public static final int STOP_NETWORK = 1;
    public static final int STOP_CONTENT = 2;
    public static final int STOP_ALL = 3;

    public nsIWebNavigation(int address) {
        super(address);
    }

    public int GetCanGoBack(int[] aCanGoBack) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aCanGoBack);
    }

    public int GetCanGoForward(int[] aCanGoForward) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aCanGoForward);
    }

    public int GoBack() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress());
    }

    public int GoForward() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress());
    }

    public int GotoIndex(int index) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), index);
    }

    public int LoadURI(char[] uri, int loadFlags, int referrer, int postData, int headers) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), uri, loadFlags, referrer, postData, headers);
    }

    public int Reload(int reloadFlags) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), reloadFlags);
    }

    public int Stop(int stopFlags) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), stopFlags);
    }

    public int GetDocument(int[] aDocument) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aDocument);
    }

    public int GetCurrentURI(int[] aCurrentURI) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), aCurrentURI);
    }

    public int GetReferringURI(int[] aReferringURI) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 11, this.getAddress(), aReferringURI);
    }

    public int GetSessionHistory(int[] aSessionHistory) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 12, this.getAddress(), aSessionHistory);
    }

    public int SetSessionHistory(int aSessionHistory) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 13, this.getAddress(), aSessionHistory);
    }
}

