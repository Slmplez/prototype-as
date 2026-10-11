/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIWeakReference
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 1;
    public static final String NS_IWEAKREFERENCE_IID_STR = "9188bc85-f92e-11d2-81ef-0060083a0bcf";
    public static final nsID NS_IWEAKREFERENCE_IID = new nsID("9188bc85-f92e-11d2-81ef-0060083a0bcf");

    public nsIWeakReference(int address) {
        super(address);
    }

    public int QueryReferent(nsID uuid, int[] result) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), uuid, result);
    }
}

