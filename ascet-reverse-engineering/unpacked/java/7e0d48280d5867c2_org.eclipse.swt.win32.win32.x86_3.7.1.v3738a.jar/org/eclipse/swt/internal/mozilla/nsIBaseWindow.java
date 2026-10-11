/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIBaseWindow
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 24;
    public static final String NS_IBASEWINDOW_IID_STR = "046bc8a0-8015-11d3-af70-00a024ffc08c";
    public static final nsID NS_IBASEWINDOW_IID = new nsID("046bc8a0-8015-11d3-af70-00a024ffc08c");

    public nsIBaseWindow(int address) {
        super(address);
    }

    public int InitWindow(int parentNativeWindow, int parentWidget, int x, int y, int cx, int cy) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), parentNativeWindow, parentWidget, x, y, cx, cy);
    }

    public int Create() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress());
    }

    public int Destroy() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress());
    }

    public int SetPosition(int x, int y) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), x, y);
    }

    public int GetPosition(int[] x, int[] y) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), x, y);
    }

    public int SetSize(int cx, int cy, int fRepaint) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), cx, cy, fRepaint);
    }

    public int GetSize(int[] cx, int[] cy) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), cx, cy);
    }

    public int SetPositionAndSize(int x, int y, int cx, int cy, int fRepaint) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), x, y, cx, cy, fRepaint);
    }

    public int GetPositionAndSize(int[] x, int[] y, int[] cx, int[] cy) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), x, y, cx, cy);
    }

    public int Repaint(int force) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), force);
    }

    public int GetParentWidget(int[] aParentWidget) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 11, this.getAddress(), aParentWidget);
    }

    public int SetParentWidget(int aParentWidget) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 12, this.getAddress(), aParentWidget);
    }

    public int GetParentNativeWindow(int[] aParentNativeWindow) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 13, this.getAddress(), aParentNativeWindow);
    }

    public int SetParentNativeWindow(int aParentNativeWindow) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 14, this.getAddress(), aParentNativeWindow);
    }

    public int GetVisibility(int[] aVisibility) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 15, this.getAddress(), aVisibility);
    }

    public int SetVisibility(int aVisibility) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 16, this.getAddress(), aVisibility);
    }

    public int GetEnabled(int[] aEnabled) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 17, this.getAddress(), aEnabled);
    }

    public int SetEnabled(int aEnabled) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 18, this.getAddress(), aEnabled);
    }

    public int GetBlurSuppression(int[] aBlurSuppression) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 19, this.getAddress(), aBlurSuppression);
    }

    public int SetBlurSuppression(int aBlurSuppression) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 20, this.getAddress(), aBlurSuppression);
    }

    public int GetMainWidget(int[] aMainWidget) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 21, this.getAddress(), aMainWidget);
    }

    public int SetFocus() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 22, this.getAddress());
    }

    public int GetTitle(int[] aTitle) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 23, this.getAddress(), aTitle);
    }

    public int SetTitle(char[] aTitle) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 24, this.getAddress(), aTitle);
    }
}

