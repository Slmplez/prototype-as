/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsICertificateDialogs
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 6;
    public static final String NS_ICERTIFICATEDIALOGS_IID_STR = "a03ca940-09be-11d5-ac5d-000064657374";
    public static final nsID NS_ICERTIFICATEDIALOGS_IID = new nsID("a03ca940-09be-11d5-ac5d-000064657374");

    public nsICertificateDialogs(int address) {
        super(address);
    }

    public int ConfirmDownloadCACert(int ctx, int cert, int[] trust, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), ctx, cert, trust, _retval);
    }

    public int NotifyCACertExists(int ctx) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), ctx);
    }

    public int SetPKCS12FilePassword(int ctx, int password, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), ctx, password, _retval);
    }

    public int GetPKCS12FilePassword(int ctx, int password, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), ctx, password, _retval);
    }

    public int ViewCert(int ctx, int cert) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), ctx, cert);
    }

    public int CrlImportStatusDialog(int ctx, int crl) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), ctx, crl);
    }
}

