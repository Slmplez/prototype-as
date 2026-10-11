/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIAuthInformation
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 9;
    public static final String NS_IAUTHINFORMATION_IID_STR = "0d73639c-2a92-4518-9f92-28f71fea5f20";
    public static final nsID NS_IAUTHINFORMATION_IID = new nsID("0d73639c-2a92-4518-9f92-28f71fea5f20");
    public static final int AUTH_HOST = 1;
    public static final int AUTH_PROXY = 2;
    public static final int NEED_DOMAIN = 4;
    public static final int ONLY_PASSWORD = 8;

    public nsIAuthInformation(int address) {
        super(address);
    }

    public int GetFlags(int[] aFlags) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aFlags);
    }

    public int GetRealm(int aRealm) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aRealm);
    }

    public int GetAuthenticationScheme(int aAuthenticationScheme) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aAuthenticationScheme);
    }

    public int GetUsername(int aUsername) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aUsername);
    }

    public int SetUsername(int aUsername) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aUsername);
    }

    public int GetPassword(int aPassword) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aPassword);
    }

    public int SetPassword(int aPassword) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aPassword);
    }

    public int GetDomain(int aDomain) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aDomain);
    }

    public int SetDomain(int aDomain) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aDomain);
    }
}

