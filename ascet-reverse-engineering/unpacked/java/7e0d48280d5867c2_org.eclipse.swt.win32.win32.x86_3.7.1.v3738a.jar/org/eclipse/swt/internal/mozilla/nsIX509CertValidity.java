/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIX509CertValidity
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 8;
    public static final String NS_IX509CERTVALIDITY_IID_STR = "e701dfd8-1dd1-11b2-a172-ffa6cc6156ad";
    public static final nsID NS_IX509CERTVALIDITY_IID = new nsID("e701dfd8-1dd1-11b2-a172-ffa6cc6156ad");

    public nsIX509CertValidity(int address) {
        super(address);
    }

    public int GetNotBefore(int aNotBefore) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aNotBefore);
    }

    public int GetNotBeforeLocalTime(int aNotBeforeLocalTime) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aNotBeforeLocalTime);
    }

    public int GetNotBeforeLocalDay(int aNotBeforeLocalDay) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aNotBeforeLocalDay);
    }

    public int GetNotBeforeGMT(int aNotBeforeGMT) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aNotBeforeGMT);
    }

    public int GetNotAfter(int aNotAfter) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aNotAfter);
    }

    public int GetNotAfterLocalTime(int aNotAfterLocalTime) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aNotAfterLocalTime);
    }

    public int GetNotAfterLocalDay(int aNotAfterLocalDay) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aNotAfterLocalDay);
    }

    public int GetNotAfterGMT(int aNotAfterGMT) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aNotAfterGMT);
    }
}

