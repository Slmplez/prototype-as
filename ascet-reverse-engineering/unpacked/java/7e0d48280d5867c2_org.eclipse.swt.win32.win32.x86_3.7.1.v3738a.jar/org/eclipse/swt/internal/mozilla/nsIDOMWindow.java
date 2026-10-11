/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIDOMWindow
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 17;
    public static final String NS_IDOMWINDOW_IID_STR = "a6cf906b-15b3-11d2-932e-00805f8add32";
    public static final nsID NS_IDOMWINDOW_IID = new nsID("a6cf906b-15b3-11d2-932e-00805f8add32");

    public nsIDOMWindow(int address) {
        super(address);
    }

    public int GetDocument(int[] aDocument) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aDocument);
    }

    public int GetParent(int[] aParent) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aParent);
    }

    public int GetTop(int[] aTop) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aTop);
    }

    public int GetScrollbars(int[] aScrollbars) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aScrollbars);
    }

    public int GetFrames(int[] aFrames) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aFrames);
    }

    public int GetName(int aName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aName);
    }

    public int SetName(int aName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aName);
    }

    public int GetTextZoom(float[] aTextZoom) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aTextZoom);
    }

    public int SetTextZoom(float aTextZoom) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aTextZoom);
    }

    public int GetScrollX(int[] aScrollX) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), aScrollX);
    }

    public int GetScrollY(int[] aScrollY) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 11, this.getAddress(), aScrollY);
    }

    public int ScrollTo(int xScroll, int yScroll) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 12, this.getAddress(), xScroll, yScroll);
    }

    public int ScrollBy(int xScrollDif, int yScrollDif) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 13, this.getAddress(), xScrollDif, yScrollDif);
    }

    public int GetSelection(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 14, this.getAddress(), _retval);
    }

    public int ScrollByLines(int numLines) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 15, this.getAddress(), numLines);
    }

    public int ScrollByPages(int numPages) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 16, this.getAddress(), numPages);
    }

    public int SizeToContent() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 17, this.getAddress());
    }
}

