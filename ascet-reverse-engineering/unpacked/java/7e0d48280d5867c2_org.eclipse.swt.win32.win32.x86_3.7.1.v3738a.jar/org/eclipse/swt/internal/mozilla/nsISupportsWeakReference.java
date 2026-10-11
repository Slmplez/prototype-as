/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsISupportsWeakReference
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 1;
    public static final String NS_ISUPPORTSWEAKREFERENCE_IID_STR = "9188bc86-f92e-11d2-81ef-0060083a0bcf";
    public static final nsID NS_ISUPPORTSWEAKREFERENCE_IID = new nsID("9188bc86-f92e-11d2-81ef-0060083a0bcf");

    public nsISupportsWeakReference(int address) {
        super(address);
    }

    public int GetWeakReference(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), _retval);
    }
}

