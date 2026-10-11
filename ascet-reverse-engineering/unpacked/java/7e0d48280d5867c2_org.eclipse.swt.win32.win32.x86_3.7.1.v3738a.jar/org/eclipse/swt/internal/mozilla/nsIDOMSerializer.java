/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIDOMSerializer
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 2;
    public static final String NS_IDOMSERIALIZER_IID_STR = "a6cf9123-15b3-11d2-932e-00805f8add32";
    public static final nsID NS_IDOMSERIALIZER_IID = new nsID("a6cf9123-15b3-11d2-932e-00805f8add32");

    public nsIDOMSerializer(int address) {
        super(address);
    }

    public int SerializeToString(int root, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), root, _retval);
    }

    public int SerializeToStream(int root, int stream, byte[] charset) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), root, stream, charset);
    }
}

