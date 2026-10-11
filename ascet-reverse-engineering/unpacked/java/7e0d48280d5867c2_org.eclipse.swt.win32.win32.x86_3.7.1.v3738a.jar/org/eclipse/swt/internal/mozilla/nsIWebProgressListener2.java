/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIWebProgressListener;

public class nsIWebProgressListener2
extends nsIWebProgressListener {
    static final int LAST_METHOD_ID = nsIWebProgressListener.LAST_METHOD_ID + 1;
    public static final String NS_IWEBPROGRESSLISTENER2_IID_STR = "3f24610d-1e1f-4151-9d2e-239884742324";
    public static final nsID NS_IWEBPROGRESSLISTENER2_IID = new nsID("3f24610d-1e1f-4151-9d2e-239884742324");

    public nsIWebProgressListener2(int address) {
        super(address);
    }

    public int OnProgressChange64(int aWebProgress, int aRequest, long aCurSelfProgress, long aMaxSelfProgress, long aCurTotalProgress, long aMaxTotalProgress) {
        return XPCOM.VtblCall(nsIWebProgressListener.LAST_METHOD_ID + 1, this.getAddress(), aWebProgress, aRequest, aCurSelfProgress, aMaxSelfProgress, aCurTotalProgress, aMaxTotalProgress);
    }
}

