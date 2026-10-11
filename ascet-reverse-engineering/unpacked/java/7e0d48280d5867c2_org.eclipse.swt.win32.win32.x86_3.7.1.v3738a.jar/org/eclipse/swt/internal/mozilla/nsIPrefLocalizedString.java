/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIPrefLocalizedString
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 4;
    public static final String NS_IPREFLOCALIZEDSTRING_IID_STR = "ae419e24-1dd1-11b2-b39a-d3e5e7073802";
    public static final nsID NS_IPREFLOCALIZEDSTRING_IID = new nsID("ae419e24-1dd1-11b2-b39a-d3e5e7073802");

    public nsIPrefLocalizedString(int address) {
        super(address);
    }

    public int GetData(int[] aData) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aData);
    }

    public int SetData(char[] aData) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aData);
    }

    public int ToString(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), _retval);
    }

    public int SetDataWithLength(int length, char[] data) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), length, data);
    }
}

