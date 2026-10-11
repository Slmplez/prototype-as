/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIWebProgressListener2;

public class nsITransfer
extends nsIWebProgressListener2 {
    static final int LAST_METHOD_ID = nsIWebProgressListener2.LAST_METHOD_ID + 1;
    public static final String NS_ITRANSFER_IID_STR = "23c51569-e9a1-4a92-adeb-3723db82ef7c";
    public static final nsID NS_ITRANSFER_IID = new nsID("23c51569-e9a1-4a92-adeb-3723db82ef7c");

    public nsITransfer(int address) {
        super(address);
    }

    public int Init(int aSource, int aTarget, int aDisplayName, int aMIMEInfo, long startTime, int aTempFile, int aCancelable) {
        return XPCOM.VtblCall(nsIWebProgressListener2.LAST_METHOD_ID + 1, this.getAddress(), aSource, aTarget, aDisplayName, aMIMEInfo, startTime, aTempFile, aCancelable);
    }
}

