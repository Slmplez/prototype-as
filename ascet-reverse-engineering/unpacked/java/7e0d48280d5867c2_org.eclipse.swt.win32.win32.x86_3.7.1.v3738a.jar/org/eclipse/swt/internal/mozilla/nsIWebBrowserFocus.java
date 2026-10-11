/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIWebBrowserFocus
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 8;
    public static final String NS_IWEBBROWSERFOCUS_IID_STR = "9c5d3c58-1dd1-11b2-a1c9-f3699284657a";
    public static final nsID NS_IWEBBROWSERFOCUS_IID = new nsID("9c5d3c58-1dd1-11b2-a1c9-f3699284657a");

    public nsIWebBrowserFocus(int address) {
        super(address);
    }

    public int Activate() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress());
    }

    public int Deactivate() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress());
    }

    public int SetFocusAtFirstElement() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress());
    }

    public int SetFocusAtLastElement() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress());
    }

    public int GetFocusedWindow(int[] aFocusedWindow) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aFocusedWindow);
    }

    public int SetFocusedWindow(int aFocusedWindow) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aFocusedWindow);
    }

    public int GetFocusedElement(int[] aFocusedElement) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aFocusedElement);
    }

    public int SetFocusedElement(int aFocusedElement) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aFocusedElement);
    }
}

