/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIDirectoryService
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 3;
    public static final String NS_IDIRECTORYSERVICE_IID_STR = "57a66a60-d43a-11d3-8cc2-00609792278c";
    public static final nsID NS_IDIRECTORYSERVICE_IID = new nsID("57a66a60-d43a-11d3-8cc2-00609792278c");

    public nsIDirectoryService(int address) {
        super(address);
    }

    public int Init() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress());
    }

    public int RegisterProvider(int prov) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), prov);
    }

    public int UnregisterProvider(int prov) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), prov);
    }
}

