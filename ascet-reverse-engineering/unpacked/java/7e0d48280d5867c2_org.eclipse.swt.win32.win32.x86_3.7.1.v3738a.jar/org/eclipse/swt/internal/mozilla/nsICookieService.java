/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsICookieService
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 5;
    public static final String NS_ICOOKIESERVICE_IID_STR = "011c3190-1434-11d6-a618-0010a401eb10";
    public static final nsID NS_ICOOKIESERVICE_IID = new nsID("011c3190-1434-11d6-a618-0010a401eb10");

    public nsICookieService(int address) {
        super(address);
    }

    public int GetCookieString(int aURI, int aChannel, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aURI, aChannel, _retval);
    }

    public int GetCookieStringFromHttp(int aURI, int aFirstURI, int aChannel, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aURI, aFirstURI, aChannel, _retval);
    }

    public int SetCookieString(int aURI, int aPrompt, byte[] aCookie, int aChannel) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aURI, aPrompt, aCookie, aChannel);
    }

    public int SetCookieStringFromHttp(int aURI, int aFirstURI, int aPrompt, byte[] aCookie, byte[] aServerTime, int aChannel) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aURI, aFirstURI, aPrompt, aCookie, aServerTime, aChannel);
    }

    public int GetCookieIconIsVisible(int[] aCookieIconIsVisible) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aCookieIconIsVisible);
    }
}

