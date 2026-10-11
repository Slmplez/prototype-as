/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISerializable;

public class nsIPrincipal
extends nsISerializable {
    static final int LAST_METHOD_ID = nsISerializable.LAST_METHOD_ID + 23;
    public static final String NS_IPRINCIPAL_IID_STR = "b8268b9a-2403-44ed-81e3-614075c92034";
    public static final nsID NS_IPRINCIPAL_IID = new nsID("b8268b9a-2403-44ed-81e3-614075c92034");
    public static final int ENABLE_DENIED = 1;
    public static final int ENABLE_UNKNOWN = 2;
    public static final int ENABLE_WITH_USER_PERMISSION = 3;
    public static final int ENABLE_GRANTED = 4;

    public nsIPrincipal(int address) {
        super(address);
    }

    public int GetPreferences(int[] prefBranch, int[] id, int[] subjectName, int[] grantedList, int[] deniedList, int[] isTrusted) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 1, this.getAddress(), prefBranch, id, subjectName, grantedList, deniedList, isTrusted);
    }

    public int Equals(int other, int[] _retval) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 2, this.getAddress(), other, _retval);
    }

    public int GetHashValue(int[] aHashValue) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 3, this.getAddress(), aHashValue);
    }

    public int GetJSPrincipals(int cx, int[] _retval) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 4, this.getAddress(), cx, _retval);
    }

    public int GetSecurityPolicy(int[] aSecurityPolicy) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 5, this.getAddress(), aSecurityPolicy);
    }

    public int SetSecurityPolicy(int aSecurityPolicy) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 6, this.getAddress(), aSecurityPolicy);
    }

    public int CanEnableCapability(byte[] capability, int _retval) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 7, this.getAddress(), capability, _retval);
    }

    public int SetCanEnableCapability(byte[] capability, short canEnable) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 8, this.getAddress(), capability, (int)canEnable);
    }

    public int IsCapabilityEnabled(byte[] capability, int annotation, int[] _retval) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 9, this.getAddress(), capability, annotation, _retval);
    }

    public int EnableCapability(byte[] capability, int[] annotation) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 10, this.getAddress(), capability, annotation);
    }

    public int RevertCapability(byte[] capability, int[] annotation) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 11, this.getAddress(), capability, annotation);
    }

    public int DisableCapability(byte[] capability, int[] annotation) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 12, this.getAddress(), capability, annotation);
    }

    public int GetURI(int[] aURI) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 13, this.getAddress(), aURI);
    }

    public int GetDomain(int[] aDomain) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 14, this.getAddress(), aDomain);
    }

    public int SetDomain(int aDomain) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 15, this.getAddress(), aDomain);
    }

    public int GetOrigin(int[] aOrigin) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 16, this.getAddress(), aOrigin);
    }

    public int GetHasCertificate(int[] aHasCertificate) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 17, this.getAddress(), aHasCertificate);
    }

    public int GetFingerprint(int aFingerprint) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 18, this.getAddress(), aFingerprint);
    }

    public int GetPrettyName(int aPrettyName) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 19, this.getAddress(), aPrettyName);
    }

    public int Subsumes(int other, int[] _retval) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 20, this.getAddress(), other, _retval);
    }

    public int CheckMayLoad(int uri, int report) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 21, this.getAddress(), uri, report);
    }

    public int GetSubjectName(int aSubjectName) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 22, this.getAddress(), aSubjectName);
    }

    public int GetCertificate(int[] aCertificate) {
        return XPCOM.VtblCall(nsISerializable.LAST_METHOD_ID + 23, this.getAddress(), aCertificate);
    }
}

