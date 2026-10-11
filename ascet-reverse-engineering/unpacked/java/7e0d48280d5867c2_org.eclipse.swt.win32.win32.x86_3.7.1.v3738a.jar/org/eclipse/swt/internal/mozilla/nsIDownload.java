/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIDownload
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 13;
    public static final String NS_IDOWNLOAD_IID_STR = "06cb92f2-1dd2-11b2-95f2-96dfdfb804a1";
    public static final nsID NS_IDOWNLOAD_IID = new nsID("06cb92f2-1dd2-11b2-95f2-96dfdfb804a1");

    public nsIDownload(int address) {
        super(address);
    }

    public int Init(int aSource, int aTarget, char[] aDisplayName, int aMIMEInfo, long startTime, int aPersist) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aSource, aTarget, aDisplayName, aMIMEInfo, startTime, aPersist);
    }

    public int GetSource(int[] aSource) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aSource);
    }

    public int GetTarget(int[] aTarget) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aTarget);
    }

    public int GetPersist(int[] aPersist) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aPersist);
    }

    public int GetPercentComplete(int[] aPercentComplete) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aPercentComplete);
    }

    public int GetDisplayName(int[] aDisplayName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aDisplayName);
    }

    public int SetDisplayName(char[] aDisplayName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aDisplayName);
    }

    public int GetStartTime(long[] aStartTime) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aStartTime);
    }

    public int GetMIMEInfo(int[] aMIMEInfo) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aMIMEInfo);
    }

    public int GetListener(int[] aListener) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), aListener);
    }

    public int SetListener(int aListener) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 11, this.getAddress(), aListener);
    }

    public int GetObserver(int[] aObserver) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 12, this.getAddress(), aObserver);
    }

    public int SetObserver(int aObserver) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 13, this.getAddress(), aObserver);
    }
}

