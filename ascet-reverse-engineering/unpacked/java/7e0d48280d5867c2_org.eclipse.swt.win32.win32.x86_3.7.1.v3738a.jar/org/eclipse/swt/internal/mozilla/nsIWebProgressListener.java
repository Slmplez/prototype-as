/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIWebProgressListener
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 5;
    public static final String NS_IWEBPROGRESSLISTENER_IID_STR = "570f39d1-efd0-11d3-b093-00a024ffc08c";
    public static final nsID NS_IWEBPROGRESSLISTENER_IID = new nsID("570f39d1-efd0-11d3-b093-00a024ffc08c");
    public static final int STATE_START = 1;
    public static final int STATE_REDIRECTING = 2;
    public static final int STATE_TRANSFERRING = 4;
    public static final int STATE_NEGOTIATING = 8;
    public static final int STATE_STOP = 16;
    public static final int STATE_IS_REQUEST = 65536;
    public static final int STATE_IS_DOCUMENT = 131072;
    public static final int STATE_IS_NETWORK = 262144;
    public static final int STATE_IS_WINDOW = 524288;
    public static final int STATE_IS_INSECURE = 4;
    public static final int STATE_IS_BROKEN = 1;
    public static final int STATE_IS_SECURE = 2;
    public static final int STATE_SECURE_HIGH = 262144;
    public static final int STATE_SECURE_MED = 65536;
    public static final int STATE_SECURE_LOW = 131072;

    public nsIWebProgressListener(int address) {
        super(address);
    }

    public int OnStateChange(int aWebProgress, int aRequest, int aStateFlags, int aStatus) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aWebProgress, aRequest, aStateFlags, aStatus);
    }

    public int OnProgressChange(int aWebProgress, int aRequest, int aCurSelfProgress, int aMaxSelfProgress, int aCurTotalProgress, int aMaxTotalProgress) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aWebProgress, aRequest, aCurSelfProgress, aMaxSelfProgress, aCurTotalProgress, aMaxTotalProgress);
    }

    public int OnLocationChange(int aWebProgress, int aRequest, int location) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aWebProgress, aRequest, location);
    }

    public int OnStatusChange(int aWebProgress, int aRequest, int aStatus, char[] aMessage) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aWebProgress, aRequest, aStatus, aMessage);
    }

    public int OnSecurityChange(int aWebProgress, int aRequest, int state) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aWebProgress, aRequest, state);
    }
}

