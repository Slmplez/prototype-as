/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIProperties
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 5;
    public static final String NS_IPROPERTIES_IID_STR = "78650582-4e93-4b60-8e85-26ebd3eb14ca";
    public static final nsID NS_IPROPERTIES_IID = new nsID("78650582-4e93-4b60-8e85-26ebd3eb14ca");

    public nsIProperties(int address) {
        super(address);
    }

    public int Get(byte[] prop, nsID iid, int[] result) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), prop, iid, result);
    }

    public int Set(byte[] prop, int value) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), prop, value);
    }

    public int Has(byte[] prop, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), prop, _retval);
    }

    public int Undefine(byte[] prop) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), prop);
    }

    public int GetKeys(int[] count, int[] keys) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), count, keys);
    }
}

