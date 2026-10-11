/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIRequest;

public class nsIChannel
extends nsIRequest {
    static final int LAST_METHOD_ID = nsIRequest.LAST_METHOD_ID + 16;
    public static final String NS_ICHANNEL_IID_STR = "c63a055a-a676-4e71-bf3c-6cfa11082018";
    public static final nsID NS_ICHANNEL_IID = new nsID("c63a055a-a676-4e71-bf3c-6cfa11082018");
    public static final int LOAD_DOCUMENT_URI = 65536;
    public static final int LOAD_RETARGETED_DOCUMENT_URI = 131072;
    public static final int LOAD_REPLACE = 262144;
    public static final int LOAD_INITIAL_DOCUMENT_URI = 524288;
    public static final int LOAD_TARGETED = 0x100000;
    public static final int LOAD_CALL_CONTENT_SNIFFERS = 0x200000;

    public nsIChannel(int address) {
        super(address);
    }

    public int GetOriginalURI(int[] aOriginalURI) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 1, this.getAddress(), aOriginalURI);
    }

    public int SetOriginalURI(int aOriginalURI) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 2, this.getAddress(), aOriginalURI);
    }

    public int GetURI(int[] aURI) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 3, this.getAddress(), aURI);
    }

    public int GetOwner(int[] aOwner) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 4, this.getAddress(), aOwner);
    }

    public int SetOwner(int aOwner) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 5, this.getAddress(), aOwner);
    }

    public int GetNotificationCallbacks(int[] aNotificationCallbacks) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 6, this.getAddress(), aNotificationCallbacks);
    }

    public int SetNotificationCallbacks(int aNotificationCallbacks) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 7, this.getAddress(), aNotificationCallbacks);
    }

    public int GetSecurityInfo(int[] aSecurityInfo) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 8, this.getAddress(), aSecurityInfo);
    }

    public int GetContentType(int aContentType) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 9, this.getAddress(), aContentType);
    }

    public int SetContentType(int aContentType) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 10, this.getAddress(), aContentType);
    }

    public int GetContentCharset(int aContentCharset) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 11, this.getAddress(), aContentCharset);
    }

    public int SetContentCharset(int aContentCharset) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 12, this.getAddress(), aContentCharset);
    }

    public int GetContentLength(int[] aContentLength) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 13, this.getAddress(), aContentLength);
    }

    public int SetContentLength(int aContentLength) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 14, this.getAddress(), aContentLength);
    }

    public int Open(int[] _retval) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 15, this.getAddress(), _retval);
    }

    public int AsyncOpen(int aListener, int aContext) {
        return XPCOM.VtblCall(nsIRequest.LAST_METHOD_ID + 16, this.getAddress(), aListener, aContext);
    }
}

