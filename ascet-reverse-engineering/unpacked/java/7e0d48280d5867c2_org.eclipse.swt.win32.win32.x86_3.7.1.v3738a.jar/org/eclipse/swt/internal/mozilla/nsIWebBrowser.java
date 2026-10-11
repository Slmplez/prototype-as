/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIWebBrowser
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 7;
    public static final String NS_IWEBBROWSER_IID_STR = "69e5df00-7b8b-11d3-af61-00a024ffc08c";
    public static final nsID NS_IWEBBROWSER_IID = new nsID("69e5df00-7b8b-11d3-af61-00a024ffc08c");

    public nsIWebBrowser(int address) {
        super(address);
    }

    public int AddWebBrowserListener(int aListener, nsID aIID) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aListener, aIID);
    }

    public int RemoveWebBrowserListener(int aListener, nsID aIID) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aListener, aIID);
    }

    public int GetContainerWindow(int[] aContainerWindow) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aContainerWindow);
    }

    public int SetContainerWindow(int aContainerWindow) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aContainerWindow);
    }

    public int GetParentURIContentListener(int[] aParentURIContentListener) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aParentURIContentListener);
    }

    public int SetParentURIContentListener(int aParentURIContentListener) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aParentURIContentListener);
    }

    public int GetContentDOMWindow(int[] aContentDOMWindow) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aContentDOMWindow);
    }
}

