/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsISSLStatus
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 7;
    public static final String NS_ISSLSTATUS_IID_STR = "cfede939-def1-49be-81ed-d401b3a07d1c";
    public static final nsID NS_ISSLSTATUS_IID = new nsID("cfede939-def1-49be-81ed-d401b3a07d1c");

    public nsISSLStatus(int address) {
        super(address);
    }

    public int GetServerCert(int[] aServerCert) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aServerCert);
    }

    public int GetCipherName(int[] aCipherName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aCipherName);
    }

    public int GetKeyLength(int[] aKeyLength) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aKeyLength);
    }

    public int GetSecretKeyLength(int[] aSecretKeyLength) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aSecretKeyLength);
    }

    public int GetIsDomainMismatch(int[] aIsDomainMismatch) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aIsDomainMismatch);
    }

    public int GetIsNotValidAtThisTime(int[] aIsNotValidAtThisTime) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aIsNotValidAtThisTime);
    }

    public int GetIsUntrusted(int[] aIsUntrusted) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aIsUntrusted);
    }
}

