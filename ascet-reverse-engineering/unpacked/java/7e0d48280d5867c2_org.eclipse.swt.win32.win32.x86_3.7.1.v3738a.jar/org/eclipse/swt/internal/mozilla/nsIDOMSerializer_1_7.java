/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIDOMSerializer_1_7
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 2;
    public static final String NS_IDOMSERIALIZER_IID_STR = "9fd4ba15-e67c-4c98-b52c-7715f62c9196";
    public static final nsID NS_IDOMSERIALIZER_IID = new nsID("9fd4ba15-e67c-4c98-b52c-7715f62c9196");

    public nsIDOMSerializer_1_7(int address) {
        super(address);
    }

    public int SerializeToString(int root, int _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), root, _retval);
    }

    public int SerializeToStream(int root, int stream, int charset) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), root, stream, charset);
    }
}

