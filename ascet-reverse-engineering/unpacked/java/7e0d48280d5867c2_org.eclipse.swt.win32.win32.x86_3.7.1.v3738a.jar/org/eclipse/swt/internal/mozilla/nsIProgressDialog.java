/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIDownload;

public class nsIProgressDialog
extends nsIDownload {
    static final int LAST_METHOD_ID = nsIDownload.LAST_METHOD_ID + 5;
    public static final String NS_IPROGRESSDIALOG_IID_STR = "88a478b3-af65-440a-94dc-ed9b154d2990";
    public static final nsID NS_IPROGRESSDIALOG_IID = new nsID("88a478b3-af65-440a-94dc-ed9b154d2990");

    public nsIProgressDialog(int address) {
        super(address);
    }

    public int Open(int aParent) {
        return XPCOM.VtblCall(nsIDownload.LAST_METHOD_ID + 1, this.getAddress(), aParent);
    }

    public int GetCancelDownloadOnClose(int[] aCancelDownloadOnClose) {
        return XPCOM.VtblCall(nsIDownload.LAST_METHOD_ID + 2, this.getAddress(), aCancelDownloadOnClose);
    }

    public int SetCancelDownloadOnClose(int aCancelDownloadOnClose) {
        return XPCOM.VtblCall(nsIDownload.LAST_METHOD_ID + 3, this.getAddress(), aCancelDownloadOnClose);
    }

    public int GetDialog(int[] aDialog) {
        return XPCOM.VtblCall(nsIDownload.LAST_METHOD_ID + 4, this.getAddress(), aDialog);
    }

    public int SetDialog(int aDialog) {
        return XPCOM.VtblCall(nsIDownload.LAST_METHOD_ID + 5, this.getAddress(), aDialog);
    }
}

