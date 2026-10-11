/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIBadCertListener2
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 1;
    public static final String NS_IBADCERTLISTENER2_IID_STR = "2c3d268c-ad82-49f3-99aa-e9ffddd7a0dc";
    public static final nsID NS_IBADCERTLISTENER2_IID = new nsID("2c3d268c-ad82-49f3-99aa-e9ffddd7a0dc");

    public nsIBadCertListener2(int address) {
        super(address);
    }

    public int NotifyCertProblem(int socketInfo, int status, int targetSite, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), socketInfo, status, targetSite, _retval);
    }
}

