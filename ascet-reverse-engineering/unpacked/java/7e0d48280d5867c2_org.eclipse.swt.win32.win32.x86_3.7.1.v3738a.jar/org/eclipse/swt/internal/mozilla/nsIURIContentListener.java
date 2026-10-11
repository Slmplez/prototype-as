/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIURIContentListener
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 8;
    public static final String NS_IURICONTENTLISTENER_IID_STR = "94928ab3-8b63-11d3-989d-001083010e9b";
    public static final nsID NS_IURICONTENTLISTENER_IID = new nsID("94928ab3-8b63-11d3-989d-001083010e9b");

    public nsIURIContentListener(int address) {
        super(address);
    }

    public int OnStartURIOpen(int aURI, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aURI, _retval);
    }

    public int DoContent(byte[] aContentType, int aIsContentPreferred, int aRequest, int[] aContentHandler, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aContentType, aIsContentPreferred, aRequest, aContentHandler, _retval);
    }

    public int IsPreferred(byte[] aContentType, int[] aDesiredContentType, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aContentType, aDesiredContentType, _retval);
    }

    public int CanHandleContent(byte[] aContentType, int aIsContentPreferred, int[] aDesiredContentType, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aContentType, aIsContentPreferred, aDesiredContentType, _retval);
    }

    public int GetLoadCookie(int[] aLoadCookie) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aLoadCookie);
    }

    public int SetLoadCookie(int aLoadCookie) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aLoadCookie);
    }

    public int GetParentContentListener(int[] aParentContentListener) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aParentContentListener);
    }

    public int SetParentContentListener(int aParentContentListener) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aParentContentListener);
    }
}

