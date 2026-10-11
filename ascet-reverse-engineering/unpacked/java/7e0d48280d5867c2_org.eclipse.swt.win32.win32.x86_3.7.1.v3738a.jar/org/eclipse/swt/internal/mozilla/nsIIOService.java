/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIIOService
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 10;
    public static final String NS_IIOSERVICE_IID_STR = "bddeda3f-9020-4d12-8c70-984ee9f7935e";
    public static final nsID NS_IIOSERVICE_IID = new nsID("bddeda3f-9020-4d12-8c70-984ee9f7935e");

    public nsIIOService(int address) {
        super(address);
    }

    public int GetProtocolHandler(byte[] aScheme, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aScheme, _retval);
    }

    public int GetProtocolFlags(byte[] aScheme, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aScheme, _retval);
    }

    public int NewURI(int aSpec, byte[] aOriginCharset, int aBaseURI, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aSpec, aOriginCharset, aBaseURI, _retval);
    }

    public int NewFileURI(int aFile, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aFile, _retval);
    }

    public int NewChannelFromURI(int aURI, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aURI, _retval);
    }

    public int NewChannel(int aSpec, byte[] aOriginCharset, int aBaseURI, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aSpec, aOriginCharset, aBaseURI, _retval);
    }

    public int GetOffline(int[] aOffline) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aOffline);
    }

    public int SetOffline(int aOffline) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aOffline);
    }

    public int AllowPort(int aPort, byte[] aScheme, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aPort, aScheme, _retval);
    }

    public int ExtractScheme(int urlString, int _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), urlString, _retval);
    }
}

