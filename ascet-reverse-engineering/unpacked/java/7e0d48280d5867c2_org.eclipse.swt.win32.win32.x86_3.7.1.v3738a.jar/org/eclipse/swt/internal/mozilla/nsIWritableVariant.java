/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIVariant;

public class nsIWritableVariant
extends nsIVariant {
    static final int LAST_METHOD_ID = nsIVariant.LAST_METHOD_ID + 31;
    public static final String NS_IWRITABLEVARIANT_IID_STR = "5586a590-8c82-11d5-90f3-0010a4e73d9a";
    public static final nsID NS_IWRITABLEVARIANT_IID = new nsID("5586a590-8c82-11d5-90f3-0010a4e73d9a");

    public nsIWritableVariant(int address) {
        super(address);
    }

    public int GetWritable(int[] aWritable) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 1, this.getAddress(), aWritable);
    }

    public int SetWritable(int aWritable) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 2, this.getAddress(), aWritable);
    }

    public int SetAsInt32(int aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 5, this.getAddress(), aValue);
    }

    public int SetAsInt64(long aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 6, this.getAddress(), aValue);
    }

    public int SetAsUint16(short aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 8, this.getAddress(), aValue);
    }

    public int SetAsUint32(int aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 9, this.getAddress(), aValue);
    }

    public int SetAsFloat(float aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 11, this.getAddress(), aValue);
    }

    public int SetAsDouble(double aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 12, this.getAddress(), aValue);
    }

    public int SetAsBool(int aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 13, this.getAddress(), aValue);
    }

    public int SetAsID(int aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 16, this.getAddress(), aValue);
    }

    public int SetAsAString(int aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 17, this.getAddress(), aValue);
    }

    public int SetAsDOMString(int aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 18, this.getAddress(), aValue);
    }

    public int SetAsACString(int aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 19, this.getAddress(), aValue);
    }

    public int SetAsAUTF8String(int aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 20, this.getAddress(), aValue);
    }

    public int SetAsString(byte[] aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 21, this.getAddress(), aValue);
    }

    public int SetAsWString(char[] aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 22, this.getAddress(), aValue);
    }

    public int SetAsISupports(int aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 23, this.getAddress(), aValue);
    }

    public int SetAsInterface(nsID iid, int iface) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 24, this.getAddress(), iid, iface);
    }

    public int SetAsArray(short type, int iid, int count, int ptr) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 25, this.getAddress(), type, iid, count, ptr);
    }

    public int SetAsStringWithSize(int size, byte[] str) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 26, this.getAddress(), size, str);
    }

    public int SetAsWStringWithSize(int size, char[] str) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 27, this.getAddress(), size, str);
    }

    public int SetAsVoid() {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 28, this.getAddress());
    }

    public int SetAsEmpty() {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 29, this.getAddress());
    }

    public int SetAsEmptyArray() {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 30, this.getAddress());
    }

    public int SetFromVariant(int aValue) {
        return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 31, this.getAddress(), aValue);
    }
}

