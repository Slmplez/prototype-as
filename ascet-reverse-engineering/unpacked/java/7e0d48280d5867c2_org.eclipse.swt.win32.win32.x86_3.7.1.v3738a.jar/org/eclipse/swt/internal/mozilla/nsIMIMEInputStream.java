/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIInputStream;

public class nsIMIMEInputStream
extends nsIInputStream {
    static final int LAST_METHOD_ID = nsIInputStream.LAST_METHOD_ID + 4;
    public static final String NS_IMIMEINPUTSTREAM_IID_STR = "dcbce63c-1dd1-11b2-b94d-91f6d49a3161";
    public static final nsID NS_IMIMEINPUTSTREAM_IID = new nsID("dcbce63c-1dd1-11b2-b94d-91f6d49a3161");

    public nsIMIMEInputStream(int address) {
        super(address);
    }

    public int GetAddContentLength(int[] aAddContentLength) {
        return XPCOM.VtblCall(nsIInputStream.LAST_METHOD_ID + 1, this.getAddress(), aAddContentLength);
    }

    public int SetAddContentLength(int aAddContentLength) {
        return XPCOM.VtblCall(nsIInputStream.LAST_METHOD_ID + 2, this.getAddress(), aAddContentLength);
    }

    public int AddHeader(byte[] name, byte[] value) {
        return XPCOM.VtblCall(nsIInputStream.LAST_METHOD_ID + 3, this.getAddress(), name, value);
    }

    public int SetData(int stream) {
        return XPCOM.VtblCall(nsIInputStream.LAST_METHOD_ID + 4, this.getAddress(), stream);
    }
}

