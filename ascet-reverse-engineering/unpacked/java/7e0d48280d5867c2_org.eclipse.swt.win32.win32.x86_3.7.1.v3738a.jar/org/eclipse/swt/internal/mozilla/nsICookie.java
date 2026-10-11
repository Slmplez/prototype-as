/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsICookie
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 9;
    public static final String NS_ICOOKIE_IID_STR = "e9fcb9a4-d376-458f-b720-e65e7df593bc";
    public static final nsID NS_ICOOKIE_IID = new nsID("e9fcb9a4-d376-458f-b720-e65e7df593bc");
    public static final int STATUS_UNKNOWN = 0;
    public static final int STATUS_ACCEPTED = 1;
    public static final int STATUS_DOWNGRADED = 2;
    public static final int STATUS_FLAGGED = 3;
    public static final int STATUS_REJECTED = 4;
    public static final int POLICY_UNKNOWN = 0;
    public static final int POLICY_NONE = 1;
    public static final int POLICY_NO_CONSENT = 2;
    public static final int POLICY_IMPLICIT_CONSENT = 3;
    public static final int POLICY_EXPLICIT_CONSENT = 4;
    public static final int POLICY_NO_II = 5;

    public nsICookie(int address) {
        super(address);
    }

    public int GetName(int aName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aName);
    }

    public int GetValue(int aValue) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aValue);
    }

    public int GetIsDomain(int[] aIsDomain) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aIsDomain);
    }

    public int GetHost(int aHost) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aHost);
    }

    public int GetPath(int aPath) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aPath);
    }

    public int GetIsSecure(int[] aIsSecure) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aIsSecure);
    }

    public int GetExpires(long[] aExpires) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aExpires);
    }

    public int GetStatus(int aStatus) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aStatus);
    }

    public int GetPolicy(int aPolicy) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aPolicy);
    }
}

