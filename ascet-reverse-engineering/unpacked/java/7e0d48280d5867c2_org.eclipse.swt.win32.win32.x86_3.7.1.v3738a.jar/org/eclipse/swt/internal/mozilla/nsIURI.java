/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIURI
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 26;
    public static final String NS_IURI_IID_STR = "07a22cc0-0ce5-11d3-9331-00104ba0fd40";
    public static final nsID NS_IURI_IID = new nsID("07a22cc0-0ce5-11d3-9331-00104ba0fd40");

    public nsIURI(int address) {
        super(address);
    }

    public int GetSpec(int aSpec) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aSpec);
    }

    public int SetSpec(int aSpec) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aSpec);
    }

    public int GetPrePath(int aPrePath) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aPrePath);
    }

    public int GetScheme(int aScheme) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aScheme);
    }

    public int SetScheme(int aScheme) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aScheme);
    }

    public int GetUserPass(int aUserPass) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aUserPass);
    }

    public int SetUserPass(int aUserPass) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aUserPass);
    }

    public int GetUsername(int aUsername) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aUsername);
    }

    public int SetUsername(int aUsername) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aUsername);
    }

    public int GetPassword(int aPassword) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), aPassword);
    }

    public int SetPassword(int aPassword) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 11, this.getAddress(), aPassword);
    }

    public int GetHostPort(int aHostPort) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 12, this.getAddress(), aHostPort);
    }

    public int SetHostPort(int aHostPort) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 13, this.getAddress(), aHostPort);
    }

    public int GetHost(int aHost) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 14, this.getAddress(), aHost);
    }

    public int SetHost(int aHost) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 15, this.getAddress(), aHost);
    }

    public int GetPort(int[] aPort) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 16, this.getAddress(), aPort);
    }

    public int SetPort(int aPort) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 17, this.getAddress(), aPort);
    }

    public int GetPath(int aPath) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 18, this.getAddress(), aPath);
    }

    public int SetPath(int aPath) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 19, this.getAddress(), aPath);
    }

    public int Equals(int other, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 20, this.getAddress(), other, _retval);
    }

    public int SchemeIs(byte[] scheme, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 21, this.getAddress(), scheme, _retval);
    }

    public int Clone(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 22, this.getAddress(), _retval);
    }

    public int Resolve(int relativePath, int _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 23, this.getAddress(), relativePath, _retval);
    }

    public int GetAsciiSpec(int aAsciiSpec) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 24, this.getAddress(), aAsciiSpec);
    }

    public int GetAsciiHost(int aAsciiHost) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 25, this.getAddress(), aAsciiHost);
    }

    public int GetOriginCharset(int aOriginCharset) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 26, this.getAddress(), aOriginCharset);
    }
}

