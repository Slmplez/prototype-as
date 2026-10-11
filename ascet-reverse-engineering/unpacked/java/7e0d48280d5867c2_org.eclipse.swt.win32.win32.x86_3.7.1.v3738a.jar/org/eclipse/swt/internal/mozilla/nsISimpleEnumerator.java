/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsISimpleEnumerator
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 2;
    public static final String NS_ISIMPLEENUMERATOR_IID_STR = "d1899240-f9d2-11d2-bdd6-000064657374";
    public static final nsID NS_ISIMPLEENUMERATOR_IID = new nsID("d1899240-f9d2-11d2-bdd6-000064657374");

    public nsISimpleEnumerator(int address) {
        super(address);
    }

    public int HasMoreElements(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), _retval);
    }

    public int GetNext(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), _retval);
    }
}

