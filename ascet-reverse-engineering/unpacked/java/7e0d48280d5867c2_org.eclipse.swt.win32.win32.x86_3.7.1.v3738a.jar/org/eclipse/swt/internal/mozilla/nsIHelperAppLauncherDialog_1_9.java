/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIHelperAppLauncherDialog_1_9
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 2;
    public static final String NS_IHELPERAPPLAUNCHERDIALOG_IID_STR = "f3704fdc-8ae6-4eba-a3c3-f02958ac0649";
    public static final nsID NS_IHELPERAPPLAUNCHERDIALOG_IID = new nsID("f3704fdc-8ae6-4eba-a3c3-f02958ac0649");
    public static final int REASON_CANTHANDLE = 0;
    public static final int REASON_SERVERREQUEST = 1;
    public static final int REASON_TYPESNIFFED = 2;

    public nsIHelperAppLauncherDialog_1_9(int address) {
        super(address);
    }

    public int Show(int aLauncher, int aWindowContext, int aReason) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aLauncher, aWindowContext, aReason);
    }

    public int PromptForSaveToFile(int aLauncher, int aWindowContext, char[] aDefaultFileName, char[] aSuggestedFileExtension, int aForcePrompt, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aLauncher, aWindowContext, aDefaultFileName, aSuggestedFileExtension, aForcePrompt, _retval);
    }
}

