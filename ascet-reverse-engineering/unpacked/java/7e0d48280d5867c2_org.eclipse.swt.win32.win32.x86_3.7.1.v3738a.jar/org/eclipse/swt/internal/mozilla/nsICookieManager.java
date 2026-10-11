/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsICookieManager
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 3;
    public static final String NS_ICOOKIEMANAGER_IID_STR = "aaab6710-0f2c-11d5-a53b-0010a401eb10";
    public static final nsID NS_ICOOKIEMANAGER_IID = new nsID("aaab6710-0f2c-11d5-a53b-0010a401eb10");

    public nsICookieManager(int address) {
        super(address);
    }

    public int RemoveAll() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress());
    }

    public int GetEnumerator(int[] aEnumerator) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aEnumerator);
    }

    public int Remove(int aDomain, int aName, int aPath, int aBlocked) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aDomain, aName, aPath, aBlocked);
    }
}

