/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsICertOverrideService
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 6;
    public static final String NS_ICERTOVERRIDESERVICE_IID_STR = "31738d2a-77d3-4359-84c9-4be2f38fb8c5";
    public static final nsID NS_ICERTOVERRIDESERVICE_IID = new nsID("31738d2a-77d3-4359-84c9-4be2f38fb8c5");
    public static final int ERROR_UNTRUSTED = 1;
    public static final int ERROR_MISMATCH = 2;
    public static final int ERROR_TIME = 4;

    public nsICertOverrideService(int address) {
        super(address);
    }

    public int RememberValidityOverride(int aHostName, int aPort, int aCert, int aOverrideBits, int aTemporary) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aHostName, aPort, aCert, aOverrideBits, aTemporary);
    }

    public int HasMatchingOverride(int aHostName, int aPort, int aCert, int[] aOverrideBits, int[] aIsTemporary, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aHostName, aPort, aCert, aOverrideBits, aIsTemporary, _retval);
    }

    public int GetValidityOverride(int aHostName, int aPort, int aHashAlg, int aFingerprint, int[] aOverrideBits, int[] aIsTemporary, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aHostName, aPort, aHashAlg, aFingerprint, aOverrideBits, aIsTemporary, _retval);
    }

    public int ClearValidityOverride(int aHostName, int aPort) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aHostName, aPort);
    }

    public int GetAllOverrideHostsWithPorts(int[] aCount, int[] aHostsWithPortsArray) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aCount, aHostsWithPortsArray);
    }

    public int IsCertUsedForOverrides(int aCert, int aCheckTemporaries, int aCheckPermanents, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aCert, aCheckTemporaries, aCheckPermanents, _retval);
    }
}

