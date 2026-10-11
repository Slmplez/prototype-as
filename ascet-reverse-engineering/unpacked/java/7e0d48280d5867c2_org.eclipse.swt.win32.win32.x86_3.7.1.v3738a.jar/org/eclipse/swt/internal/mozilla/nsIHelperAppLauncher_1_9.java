/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsICancelable;
import org.eclipse.swt.internal.mozilla.nsID;

public class nsIHelperAppLauncher_1_9
extends nsICancelable {
    static final int LAST_METHOD_ID = nsICancelable.LAST_METHOD_ID + 10;
    public static final String NS_IHELPERAPPLAUNCHER_IID_STR = "cc75c21a-0a79-4f68-90e1-563253d0c555";
    public static final nsID NS_IHELPERAPPLAUNCHER_IID = new nsID("cc75c21a-0a79-4f68-90e1-563253d0c555");

    public nsIHelperAppLauncher_1_9(int address) {
        super(address);
    }

    public int GetMIMEInfo(int[] aMIMEInfo) {
        return XPCOM.VtblCall(nsICancelable.LAST_METHOD_ID + 1, this.getAddress(), aMIMEInfo);
    }

    public int GetSource(int[] aSource) {
        return XPCOM.VtblCall(nsICancelable.LAST_METHOD_ID + 2, this.getAddress(), aSource);
    }

    public int GetSuggestedFileName(int aSuggestedFileName) {
        return XPCOM.VtblCall(nsICancelable.LAST_METHOD_ID + 3, this.getAddress(), aSuggestedFileName);
    }

    public int SaveToDisk(int aNewFileLocation, int aRememberThisPreference) {
        return XPCOM.VtblCall(nsICancelable.LAST_METHOD_ID + 4, this.getAddress(), aNewFileLocation, aRememberThisPreference);
    }

    public int LaunchWithApplication(int aApplication, int aRememberThisPreference) {
        return XPCOM.VtblCall(nsICancelable.LAST_METHOD_ID + 5, this.getAddress(), aApplication, aRememberThisPreference);
    }

    public int SetWebProgressListener(int aWebProgressListener) {
        return XPCOM.VtblCall(nsICancelable.LAST_METHOD_ID + 6, this.getAddress(), aWebProgressListener);
    }

    public int CloseProgressWindow() {
        return XPCOM.VtblCall(nsICancelable.LAST_METHOD_ID + 7, this.getAddress());
    }

    public int GetTargetFile(int[] aTargetFile) {
        return XPCOM.VtblCall(nsICancelable.LAST_METHOD_ID + 8, this.getAddress(), aTargetFile);
    }

    public int GetTargetFileIsExecutable(int[] aTargetFileIsExecutable) {
        return XPCOM.VtblCall(nsICancelable.LAST_METHOD_ID + 9, this.getAddress(), aTargetFileIsExecutable);
    }

    public int GetTimeDownloadStarted(int aTimeDownloadStarted) {
        return XPCOM.VtblCall(nsICancelable.LAST_METHOD_ID + 10, this.getAddress(), aTimeDownloadStarted);
    }
}

