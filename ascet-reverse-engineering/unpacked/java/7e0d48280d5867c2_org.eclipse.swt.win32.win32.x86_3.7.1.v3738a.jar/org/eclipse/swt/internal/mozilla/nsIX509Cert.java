/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIX509Cert
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 27;
    public static final String NS_IX509CERT_IID_STR = "f0980f60-ee3d-11d4-998b-00b0d02354a0";
    public static final nsID NS_IX509CERT_IID = new nsID("f0980f60-ee3d-11d4-998b-00b0d02354a0");
    public static final int UNKNOWN_CERT = 0;
    public static final int CA_CERT = 1;
    public static final int USER_CERT = 2;
    public static final int EMAIL_CERT = 4;
    public static final int SERVER_CERT = 8;
    public static final int VERIFIED_OK = 0;
    public static final int NOT_VERIFIED_UNKNOWN = 1;
    public static final int CERT_REVOKED = 2;
    public static final int CERT_EXPIRED = 4;
    public static final int CERT_NOT_TRUSTED = 8;
    public static final int ISSUER_NOT_TRUSTED = 16;
    public static final int ISSUER_UNKNOWN = 32;
    public static final int INVALID_CA = 64;
    public static final int USAGE_NOT_ALLOWED = 128;
    public static final int CERT_USAGE_SSLClient = 0;
    public static final int CERT_USAGE_SSLServer = 1;
    public static final int CERT_USAGE_SSLServerWithStepUp = 2;
    public static final int CERT_USAGE_SSLCA = 3;
    public static final int CERT_USAGE_EmailSigner = 4;
    public static final int CERT_USAGE_EmailRecipient = 5;
    public static final int CERT_USAGE_ObjectSigner = 6;
    public static final int CERT_USAGE_UserCertImport = 7;
    public static final int CERT_USAGE_VerifyCA = 8;
    public static final int CERT_USAGE_ProtectedObjectSigner = 9;
    public static final int CERT_USAGE_StatusResponder = 10;
    public static final int CERT_USAGE_AnyCA = 11;

    public nsIX509Cert(int address) {
        super(address);
    }

    public int GetNickname(int aNickname) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aNickname);
    }

    public int GetEmailAddress(int aEmailAddress) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aEmailAddress);
    }

    public int GetEmailAddresses(int[] length, int[] addresses) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), length, addresses);
    }

    public int ContainsEmailAddress(int aEmailAddress, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aEmailAddress, _retval);
    }

    public int GetSubjectName(int aSubjectName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aSubjectName);
    }

    public int GetCommonName(int aCommonName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aCommonName);
    }

    public int GetOrganization(int aOrganization) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aOrganization);
    }

    public int GetOrganizationalUnit(int aOrganizationalUnit) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aOrganizationalUnit);
    }

    public int GetSha1Fingerprint(int aSha1Fingerprint) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aSha1Fingerprint);
    }

    public int GetMd5Fingerprint(int aMd5Fingerprint) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), aMd5Fingerprint);
    }

    public int GetTokenName(int aTokenName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 11, this.getAddress(), aTokenName);
    }

    public int GetIssuerName(int aIssuerName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 12, this.getAddress(), aIssuerName);
    }

    public int GetSerialNumber(int aSerialNumber) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 13, this.getAddress(), aSerialNumber);
    }

    public int GetIssuerCommonName(int aIssuerCommonName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 14, this.getAddress(), aIssuerCommonName);
    }

    public int GetIssuerOrganization(int aIssuerOrganization) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 15, this.getAddress(), aIssuerOrganization);
    }

    public int GetIssuerOrganizationUnit(int aIssuerOrganizationUnit) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 16, this.getAddress(), aIssuerOrganizationUnit);
    }

    public int GetIssuer(int[] aIssuer) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 17, this.getAddress(), aIssuer);
    }

    public int GetValidity(int[] aValidity) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 18, this.getAddress(), aValidity);
    }

    public int GetDbKey(int[] aDbKey) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 19, this.getAddress(), aDbKey);
    }

    public int GetWindowTitle(int[] aWindowTitle) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 20, this.getAddress(), aWindowTitle);
    }

    public int GetChain(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 21, this.getAddress(), _retval);
    }

    public int GetUsagesArray(int ignoreOcsp, int[] verified, int[] count, int[] usages) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 22, this.getAddress(), ignoreOcsp, verified, count, usages);
    }

    public int GetUsagesString(int ignoreOcsp, int[] verified, int usages) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 23, this.getAddress(), ignoreOcsp, verified, usages);
    }

    public int VerifyForUsage(int usage, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 24, this.getAddress(), usage, _retval);
    }

    public int GetASN1Structure(int[] aASN1Structure) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 25, this.getAddress(), aASN1Structure);
    }

    public int GetRawDER(int[] length, int[] data) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 26, this.getAddress(), length, data);
    }

    public int Equals(int other, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 27, this.getAddress(), other, _retval);
    }
}

