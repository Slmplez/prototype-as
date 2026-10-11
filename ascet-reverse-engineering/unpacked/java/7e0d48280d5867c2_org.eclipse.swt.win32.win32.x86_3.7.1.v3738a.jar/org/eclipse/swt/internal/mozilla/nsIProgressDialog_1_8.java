/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIDownload_1_8;

public class nsIProgressDialog_1_8
extends nsIDownload_1_8 {
    static final int LAST_METHOD_ID = nsIDownload_1_8.LAST_METHOD_ID + 7;
    public static final String NS_IPROGRESSDIALOG_IID_STR = "20e790a2-76c6-462d-851a-22ab6cbbe48b";
    public static final nsID NS_IPROGRESSDIALOG_IID = new nsID("20e790a2-76c6-462d-851a-22ab6cbbe48b");

    public nsIProgressDialog_1_8(int address) {
        super(address);
    }

    public int Open(int aParent) {
        return XPCOM.VtblCall(nsIDownload_1_8.LAST_METHOD_ID + 1, this.getAddress(), aParent);
    }

    public int GetCancelDownloadOnClose(int[] aCancelDownloadOnClose) {
        return XPCOM.VtblCall(nsIDownload_1_8.LAST_METHOD_ID + 2, this.getAddress(), aCancelDownloadOnClose);
    }

    public int SetCancelDownloadOnClose(int aCancelDownloadOnClose) {
        return XPCOM.VtblCall(nsIDownload_1_8.LAST_METHOD_ID + 3, this.getAddress(), aCancelDownloadOnClose);
    }

    public int GetObserver(int[] aObserver) {
        return XPCOM.VtblCall(nsIDownload_1_8.LAST_METHOD_ID + 4, this.getAddress(), aObserver);
    }

    public int SetObserver(int aObserver) {
        return XPCOM.VtblCall(nsIDownload_1_8.LAST_METHOD_ID + 5, this.getAddress(), aObserver);
    }

    public int GetDialog(int[] aDialog) {
        return XPCOM.VtblCall(nsIDownload_1_8.LAST_METHOD_ID + 6, this.getAddress(), aDialog);
    }

    public int SetDialog(int aDialog) {
        return XPCOM.VtblCall(nsIDownload_1_8.LAST_METHOD_ID + 7, this.getAddress(), aDialog);
    }
}

