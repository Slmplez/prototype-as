/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIHelperAppLauncher
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 9;
    public static final String NS_IHELPERAPPLAUNCHER_IID_STR = "9503d0fe-4c9d-11d4-98d0-001083010e9b";
    public static final nsID NS_IHELPERAPPLAUNCHER_IID = new nsID("9503d0fe-4c9d-11d4-98d0-001083010e9b");

    public nsIHelperAppLauncher(int address) {
        super(address);
    }

    public int GetMIMEInfo(int[] aMIMEInfo) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aMIMEInfo);
    }

    public int GetSource(int[] aSource) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aSource);
    }

    public int GetSuggestedFileName(int[] aSuggestedFileName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aSuggestedFileName);
    }

    public int SaveToDisk(int aNewFileLocation, int aRememberThisPreference) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aNewFileLocation, aRememberThisPreference);
    }

    public int LaunchWithApplication(int aApplication, int aRememberThisPreference) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aApplication, aRememberThisPreference);
    }

    public int Cancel() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress());
    }

    public int SetWebProgressListener(int aWebProgressListener) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aWebProgressListener);
    }

    public int CloseProgressWindow() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress());
    }

    public int GetDownloadInfo(int[] aSourceUrl, long[] aTimeDownloadStarted, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aSourceUrl, aTimeDownloadStarted, _retval);
    }
}

