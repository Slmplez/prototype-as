/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIPrefService
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 6;
    public static final String NS_IPREFSERVICE_IID_STR = "decb9cc7-c08f-4ea5-be91-a8fc637ce2d2";
    public static final nsID NS_IPREFSERVICE_IID = new nsID("decb9cc7-c08f-4ea5-be91-a8fc637ce2d2");

    public nsIPrefService(int address) {
        super(address);
    }

    public int ReadUserPrefs(int aFile) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aFile);
    }

    public int ResetPrefs() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress());
    }

    public int ResetUserPrefs() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress());
    }

    public int SavePrefFile(int aFile) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aFile);
    }

    public int GetBranch(byte[] aPrefRoot, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aPrefRoot, _retval);
    }

    public int GetDefaultBranch(byte[] aPrefRoot, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aPrefRoot, _retval);
    }
}

