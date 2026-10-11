/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIInputStream
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 5;
    public static final String NS_IINPUTSTREAM_IID_STR = "fa9c7f6c-61b3-11d4-9877-00c04fa0cf4a";
    public static final nsID NS_IINPUTSTREAM_IID = new nsID("fa9c7f6c-61b3-11d4-9877-00c04fa0cf4a");

    public nsIInputStream(int address) {
        super(address);
    }

    public int Close() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress());
    }

    public int Available(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), _retval);
    }

    public int Read(byte[] aBuf, int aCount, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aBuf, aCount, _retval);
    }

    public int ReadSegments(int aWriter, int aClosure, int aCount, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aWriter, aClosure, aCount, _retval);
    }

    public int IsNonBlocking(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), _retval);
    }
}

