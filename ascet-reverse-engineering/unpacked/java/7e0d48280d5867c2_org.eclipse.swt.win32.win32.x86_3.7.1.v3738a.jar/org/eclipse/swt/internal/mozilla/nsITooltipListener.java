/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsITooltipListener
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 2;
    public static final String NS_ITOOLTIPLISTENER_IID_STR = "44b78386-1dd2-11b2-9ad2-e4eee2ca1916";
    public static final nsID NS_ITOOLTIPLISTENER_IID = new nsID("44b78386-1dd2-11b2-9ad2-e4eee2ca1916");

    public nsITooltipListener(int address) {
        super(address);
    }

    public int OnShowTooltip(int aXCoords, int aYCoords, char[] aTipText) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aXCoords, aYCoords, aTipText);
    }

    public int OnHideTooltip() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress());
    }
}

