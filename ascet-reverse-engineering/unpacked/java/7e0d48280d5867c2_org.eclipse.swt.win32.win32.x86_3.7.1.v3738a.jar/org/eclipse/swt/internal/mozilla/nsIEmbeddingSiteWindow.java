/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIEmbeddingSiteWindow
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 8;
    public static final String NS_IEMBEDDINGSITEWINDOW_IID_STR = "3e5432cd-9568-4bd1-8cbe-d50aba110743";
    public static final nsID NS_IEMBEDDINGSITEWINDOW_IID = new nsID("3e5432cd-9568-4bd1-8cbe-d50aba110743");
    public static final int DIM_FLAGS_POSITION = 1;
    public static final int DIM_FLAGS_SIZE_INNER = 2;
    public static final int DIM_FLAGS_SIZE_OUTER = 4;

    public nsIEmbeddingSiteWindow(int address) {
        super(address);
    }

    public int SetDimensions(int flags, int x, int y, int cx, int cy) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), flags, x, y, cx, cy);
    }

    public int GetDimensions(int flags, int[] x, int[] y, int[] cx, int[] cy) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), flags, x, y, cx, cy);
    }

    public int SetFocus() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress());
    }

    public int GetVisibility(int[] aVisibility) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aVisibility);
    }

    public int SetVisibility(int aVisibility) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aVisibility);
    }

    public int GetTitle(int[] aTitle) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aTitle);
    }

    public int SetTitle(char[] aTitle) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aTitle);
    }

    public int GetSiteWindow(int[] aSiteWindow) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aSiteWindow);
    }
}

