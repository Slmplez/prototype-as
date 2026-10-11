/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIJSContextStack
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 4;
    public static final String NS_IJSCONTEXTSTACK_IID_STR = "c67d8270-3189-11d3-9885-006008962422";
    public static final nsID NS_IJSCONTEXTSTACK_IID = new nsID("c67d8270-3189-11d3-9885-006008962422");

    public nsIJSContextStack(int address) {
        super(address);
    }

    public int GetCount(int[] aCount) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aCount);
    }

    public int Peek(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), _retval);
    }

    public int Pop(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), _retval);
    }

    public int Push(int cx) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), cx);
    }
}

