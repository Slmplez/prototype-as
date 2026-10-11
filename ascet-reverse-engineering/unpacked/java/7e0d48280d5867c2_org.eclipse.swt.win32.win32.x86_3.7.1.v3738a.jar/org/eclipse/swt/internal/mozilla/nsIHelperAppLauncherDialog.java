/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIHelperAppLauncherDialog
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 3;
    public static final String NS_IHELPERAPPLAUNCHERDIALOG_IID_STR = "d7ebddf0-4c84-11d4-807a-00600811a9c3";
    public static final nsID NS_IHELPERAPPLAUNCHERDIALOG_IID = new nsID("d7ebddf0-4c84-11d4-807a-00600811a9c3");

    public nsIHelperAppLauncherDialog(int address) {
        super(address);
    }

    public int Show(int aLauncher, int aContext) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aLauncher, aContext);
    }

    public int PromptForSaveToFile(int aWindowContext, char[] aDefaultFile, char[] aSuggestedFileExtension, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aWindowContext, aDefaultFile, aSuggestedFileExtension, _retval);
    }

    public int ShowProgressDialog(int aLauncher, int aContext) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aLauncher, aContext);
    }
}

