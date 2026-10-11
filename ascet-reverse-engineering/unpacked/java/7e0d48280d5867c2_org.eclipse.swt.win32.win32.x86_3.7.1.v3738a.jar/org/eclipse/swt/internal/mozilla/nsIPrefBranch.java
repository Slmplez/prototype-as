/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIPrefBranch
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 18;
    public static final String NS_IPREFBRANCH_IID_STR = "56c35506-f14b-11d3-99d3-ddbfac2ccf65";
    public static final nsID NS_IPREFBRANCH_IID = new nsID("56c35506-f14b-11d3-99d3-ddbfac2ccf65");
    public static final int PREF_INVALID = 0;
    public static final int PREF_STRING = 32;
    public static final int PREF_INT = 64;
    public static final int PREF_BOOL = 128;

    public nsIPrefBranch(int address) {
        super(address);
    }

    public int GetRoot(int[] aRoot) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aRoot);
    }

    public int GetPrefType(byte[] aPrefName, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aPrefName, _retval);
    }

    public int GetBoolPref(byte[] aPrefName, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aPrefName, _retval);
    }

    public int SetBoolPref(byte[] aPrefName, int aValue) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aPrefName, aValue);
    }

    public int GetCharPref(byte[] aPrefName, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aPrefName, _retval);
    }

    public int SetCharPref(byte[] aPrefName, byte[] aValue) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aPrefName, aValue);
    }

    public int GetIntPref(byte[] aPrefName, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aPrefName, _retval);
    }

    public int SetIntPref(byte[] aPrefName, int aValue) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aPrefName, aValue);
    }

    public int GetComplexValue(byte[] aPrefName, nsID aType, int[] aValue) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aPrefName, aType, aValue);
    }

    public int SetComplexValue(byte[] aPrefName, nsID aType, int aValue) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), aPrefName, aType, aValue);
    }

    public int ClearUserPref(byte[] aPrefName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 11, this.getAddress(), aPrefName);
    }

    public int LockPref(byte[] aPrefName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 12, this.getAddress(), aPrefName);
    }

    public int PrefHasUserValue(byte[] aPrefName, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 13, this.getAddress(), aPrefName, _retval);
    }

    public int PrefIsLocked(byte[] aPrefName, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 14, this.getAddress(), aPrefName, _retval);
    }

    public int UnlockPref(byte[] aPrefName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 15, this.getAddress(), aPrefName);
    }

    public int DeleteBranch(byte[] aStartingAt) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 16, this.getAddress(), aStartingAt);
    }

    public int GetChildList(byte[] aStartingAt, int[] aCount, int[] aChildArray) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 17, this.getAddress(), aStartingAt, aCount, aChildArray);
    }

    public int ResetBranch(byte[] aStartingAt) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 18, this.getAddress(), aStartingAt);
    }
}

