/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIWebBrowserSetup
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 1;
    public static final String NS_IWEBBROWSERSETUP_IID_STR = "f15398a0-8018-11d3-af70-00a024ffc08c";
    public static final nsID NS_IWEBBROWSERSETUP_IID = new nsID("f15398a0-8018-11d3-af70-00a024ffc08c");
    public static final int SETUP_ALLOW_PLUGINS = 1;
    public static final int SETUP_ALLOW_JAVASCRIPT = 2;
    public static final int SETUP_ALLOW_META_REDIRECTS = 3;
    public static final int SETUP_ALLOW_SUBFRAMES = 4;
    public static final int SETUP_ALLOW_IMAGES = 5;
    public static final int SETUP_FOCUS_DOC_BEFORE_CONTENT = 6;
    public static final int SETUP_USE_GLOBAL_HISTORY = 256;
    public static final int SETUP_IS_CHROME_WRAPPER = 7;

    public nsIWebBrowserSetup(int address) {
        super(address);
    }

    public int SetProperty(int aId, int aValue) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aId, aValue);
    }
}

