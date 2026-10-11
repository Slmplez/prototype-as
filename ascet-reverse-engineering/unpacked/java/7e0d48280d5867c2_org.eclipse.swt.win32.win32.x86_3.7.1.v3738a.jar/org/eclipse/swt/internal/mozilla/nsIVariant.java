/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIVariant
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 26;
    public static final String NS_IVARIANT_IID_STR = "6c9eb060-8c6a-11d5-90f3-0010a4e73d9a";
    public static final nsID NS_IVARIANT_IID = new nsID("6c9eb060-8c6a-11d5-90f3-0010a4e73d9a");

    public nsIVariant(int address) {
        super(address);
    }

    public int GetDataType(short[] aDataType) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aDataType);
    }

    public int GetAsInt8(int _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), _retval);
    }

    public int GetAsInt16(int _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), _retval);
    }

    public int GetAsInt32(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), _retval);
    }

    public int GetAsInt64(long[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), _retval);
    }

    public int GetAsUint8(int _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), _retval);
    }

    public int GetAsUint16(short[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), _retval);
    }

    public int GetAsUint32(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), _retval);
    }

    public int GetAsUint64(int _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), _retval);
    }

    public int GetAsFloat(float[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), _retval);
    }

    public int GetAsDouble(int _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 11, this.getAddress(), _retval);
    }

    public int GetAsBool(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 12, this.getAddress(), _retval);
    }

    public int GetAsChar(byte[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 13, this.getAddress(), _retval);
    }

    public int GetAsWChar(char[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 14, this.getAddress(), _retval);
    }

    public int GetAsID(int retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 15, this.getAddress(), retval);
    }

    public int GetAsAString(int _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 16, this.getAddress(), _retval);
    }

    public int GetAsDOMString(int _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 17, this.getAddress(), _retval);
    }

    public int GetAsACString(int _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 18, this.getAddress(), _retval);
    }

    public int GetAsAUTF8String(int _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 19, this.getAddress(), _retval);
    }

    public int GetAsString(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 20, this.getAddress(), _retval);
    }

    public int GetAsWString(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 21, this.getAddress(), _retval);
    }

    public int GetAsISupports(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 22, this.getAddress(), _retval);
    }

    public int GetAsInterface(int[] iid, int[] iface) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 23, this.getAddress(), iid, iface);
    }

    public int GetAsArray(short[] type, int iid, int[] count, int[] ptr) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 24, this.getAddress(), type, iid, count, ptr);
    }

    public int GetAsStringWithSize(int[] size, int[] str) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 25, this.getAddress(), size, str);
    }

    public int GetAsWStringWithSize(int[] size, int[] str) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 26, this.getAddress(), size, str);
    }
}

