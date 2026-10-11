/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIDirectoryServiceProvider
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 1;
    public static final String NS_IDIRECTORYSERVICEPROVIDER_IID_STR = "bbf8cab0-d43a-11d3-8cc2-00609792278c";
    public static final nsID NS_IDIRECTORYSERVICEPROVIDER_IID = new nsID("bbf8cab0-d43a-11d3-8cc2-00609792278c");

    public nsIDirectoryServiceProvider(int address) {
        super(address);
    }

    public int GetFile(byte[] prop, int[] persistent, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), prop, persistent, _retval);
    }
}

