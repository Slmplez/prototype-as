/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIWebBrowserChromeFocus
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 2;
    public static final String NS_IWEBBROWSERCHROMEFOCUS_IID_STR = "d2206418-1dd1-11b2-8e55-acddcd2bcfb8";
    public static final nsID NS_IWEBBROWSERCHROMEFOCUS_IID = new nsID("d2206418-1dd1-11b2-8e55-acddcd2bcfb8");

    public nsIWebBrowserChromeFocus(int address) {
        super(address);
    }

    public int FocusNextElement() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress());
    }

    public int FocusPrevElement() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress());
    }
}

