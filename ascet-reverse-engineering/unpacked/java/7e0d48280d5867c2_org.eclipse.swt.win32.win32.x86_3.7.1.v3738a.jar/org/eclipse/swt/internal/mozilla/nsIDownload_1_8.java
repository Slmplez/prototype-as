/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsITransfer;

public class nsIDownload_1_8
extends nsITransfer {
    static final int LAST_METHOD_ID = nsITransfer.LAST_METHOD_ID + 10;
    public static final String NS_IDOWNLOAD_IID_STR = "9e1fd9f2-9727-4926-85cd-f16c375bba6d";
    public static final nsID NS_IDOWNLOAD_IID = new nsID("9e1fd9f2-9727-4926-85cd-f16c375bba6d");

    public nsIDownload_1_8(int address) {
        super(address);
    }

    public int GetTargetFile(int[] aTargetFile) {
        return XPCOM.VtblCall(nsITransfer.LAST_METHOD_ID + 1, this.getAddress(), aTargetFile);
    }

    public int GetPercentComplete(int[] aPercentComplete) {
        return XPCOM.VtblCall(nsITransfer.LAST_METHOD_ID + 2, this.getAddress(), aPercentComplete);
    }

    public int GetAmountTransferred(int aAmountTransferred) {
        return XPCOM.VtblCall(nsITransfer.LAST_METHOD_ID + 3, this.getAddress(), aAmountTransferred);
    }

    public int GetSize(int aSize) {
        return XPCOM.VtblCall(nsITransfer.LAST_METHOD_ID + 4, this.getAddress(), aSize);
    }

    public int GetSource(int[] aSource) {
        return XPCOM.VtblCall(nsITransfer.LAST_METHOD_ID + 5, this.getAddress(), aSource);
    }

    public int GetTarget(int[] aTarget) {
        return XPCOM.VtblCall(nsITransfer.LAST_METHOD_ID + 6, this.getAddress(), aTarget);
    }

    public int GetCancelable(int[] aCancelable) {
        return XPCOM.VtblCall(nsITransfer.LAST_METHOD_ID + 7, this.getAddress(), aCancelable);
    }

    public int GetDisplayName(int[] aDisplayName) {
        return XPCOM.VtblCall(nsITransfer.LAST_METHOD_ID + 8, this.getAddress(), aDisplayName);
    }

    public int GetStartTime(long[] aStartTime) {
        return XPCOM.VtblCall(nsITransfer.LAST_METHOD_ID + 9, this.getAddress(), aStartTime);
    }

    public int GetMIMEInfo(int[] aMIMEInfo) {
        return XPCOM.VtblCall(nsITransfer.LAST_METHOD_ID + 10, this.getAddress(), aMIMEInfo);
    }
}

