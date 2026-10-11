/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIFactory
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 2;
    public static final String NS_IFACTORY_IID_STR = "00000001-0000-0000-c000-000000000046";
    public static final nsID NS_IFACTORY_IID = new nsID("00000001-0000-0000-c000-000000000046");

    public nsIFactory(int address) {
        super(address);
    }

    public int CreateInstance(int aOuter, nsID iid, int[] result) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aOuter, iid, result);
    }

    public int LockFactory(int lock) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), lock);
    }
}

