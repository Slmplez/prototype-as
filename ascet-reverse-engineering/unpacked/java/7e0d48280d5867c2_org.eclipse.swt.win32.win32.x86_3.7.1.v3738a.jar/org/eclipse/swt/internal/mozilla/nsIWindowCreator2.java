/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIWindowCreator;

public class nsIWindowCreator2
extends nsIWindowCreator {
    static final int LAST_METHOD_ID = nsIWindowCreator.LAST_METHOD_ID + 1;
    public static final String NS_IWINDOWCREATOR2_IID_STR = "f673ec81-a4b0-11d6-964b-eb5a2bf216fc";
    public static final nsID NS_IWINDOWCREATOR2_IID = new nsID("f673ec81-a4b0-11d6-964b-eb5a2bf216fc");
    public static final int PARENT_IS_LOADING_OR_RUNNING_TIMEOUT = 1;

    public nsIWindowCreator2(int address) {
        super(address);
    }

    public int CreateChromeWindow2(int parent, int chromeFlags, int contextFlags, int uri, int[] cancel, int[] _retval) {
        return XPCOM.VtblCall(nsIWindowCreator.LAST_METHOD_ID + 1, this.getAddress(), parent, chromeFlags, contextFlags, uri, cancel, _retval);
    }
}

