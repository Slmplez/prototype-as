/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIWindowCreator
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 1;
    public static final String NS_IWINDOWCREATOR_IID_STR = "30465632-a777-44cc-90f9-8145475ef999";
    public static final nsID NS_IWINDOWCREATOR_IID = new nsID("30465632-a777-44cc-90f9-8145475ef999");

    public nsIWindowCreator(int address) {
        super(address);
    }

    public int CreateChromeWindow(int parent, int chromeFlags, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), parent, chromeFlags, _retval);
    }
}

