/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIWebNavigationInfo
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 1;
    public static final String NS_IWEBNAVIGATIONINFO_IID_STR = "62a93afb-93a1-465c-84c8-0432264229de";
    public static final nsID NS_IWEBNAVIGATIONINFO_IID = new nsID("62a93afb-93a1-465c-84c8-0432264229de");
    public static final int UNSUPPORTED = 0;
    public static final int IMAGE = 1;
    public static final int PLUGIN = 2;
    public static final int OTHER = 32768;

    public nsIWebNavigationInfo(int address) {
        super(address);
    }

    public int IsTypeSupported(int aType, int aWebNav, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aType, aWebNav, _retval);
    }
}

