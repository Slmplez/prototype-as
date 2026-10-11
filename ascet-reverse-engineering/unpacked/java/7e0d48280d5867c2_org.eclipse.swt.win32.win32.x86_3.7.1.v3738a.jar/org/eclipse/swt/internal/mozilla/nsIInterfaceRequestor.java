/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIInterfaceRequestor
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 1;
    public static final String NS_IINTERFACEREQUESTOR_IID_STR = "033a1470-8b2a-11d3-af88-00a024ffc08c";
    public static final nsID NS_IINTERFACEREQUESTOR_IID = new nsID("033a1470-8b2a-11d3-af88-00a024ffc08c");

    public nsIInterfaceRequestor(int address) {
        super(address);
    }

    public int GetInterface(nsID uuid, int[] result) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), uuid, result);
    }
}

