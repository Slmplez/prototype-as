/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIDOMWindowCollection
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 3;
    public static final String NS_IDOMWINDOWCOLLECTION_IID_STR = "a6cf906f-15b3-11d2-932e-00805f8add32";
    public static final nsID NS_IDOMWINDOWCOLLECTION_IID = new nsID("a6cf906f-15b3-11d2-932e-00805f8add32");

    public nsIDOMWindowCollection(int address) {
        super(address);
    }

    public int GetLength(int[] aLength) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aLength);
    }

    public int Item(int index, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), index, _retval);
    }

    public int NamedItem(int name, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), name, _retval);
    }
}

