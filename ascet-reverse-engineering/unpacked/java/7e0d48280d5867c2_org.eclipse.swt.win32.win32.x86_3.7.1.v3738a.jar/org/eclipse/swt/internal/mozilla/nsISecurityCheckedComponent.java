/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsISecurityCheckedComponent
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 4;
    public static final String NS_ISECURITYCHECKEDCOMPONENT_IID_STR = "0dad9e8c-a12d-4dcb-9a6f-7d09839356e1";
    public static final nsID NS_ISECURITYCHECKEDCOMPONENT_IID = new nsID("0dad9e8c-a12d-4dcb-9a6f-7d09839356e1");

    public nsISecurityCheckedComponent(int address) {
        super(address);
    }

    public int CanCreateWrapper(int iid, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), iid, _retval);
    }

    public int CanCallMethod(int iid, char[] methodName, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), iid, methodName, _retval);
    }

    public int CanGetProperty(int iid, char[] propertyName, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), iid, propertyName, _retval);
    }

    public int CanSetProperty(int iid, char[] propertyName, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), iid, propertyName, _retval);
    }
}

