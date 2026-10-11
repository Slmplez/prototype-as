/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIDOMEventTarget
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 3;
    public static final String NS_IDOMEVENTTARGET_IID_STR = "1c773b30-d1cf-11d2-bd95-00805f8ae3f4";
    public static final nsID NS_IDOMEVENTTARGET_IID = new nsID("1c773b30-d1cf-11d2-bd95-00805f8ae3f4");

    public nsIDOMEventTarget(int address) {
        super(address);
    }

    public int AddEventListener(int type, int listener, int useCapture) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), type, listener, useCapture);
    }

    public int RemoveEventListener(int type, int listener, int useCapture) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), type, listener, useCapture);
    }

    public int DispatchEvent(int evt, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), evt, _retval);
    }
}

