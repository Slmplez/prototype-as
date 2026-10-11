/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsICategoryManager
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 6;
    public static final String NS_ICATEGORYMANAGER_IID_STR = "3275b2cd-af6d-429a-80d7-f0c5120342ac";
    public static final nsID NS_ICATEGORYMANAGER_IID = new nsID("3275b2cd-af6d-429a-80d7-f0c5120342ac");

    public nsICategoryManager(int address) {
        super(address);
    }

    public int GetCategoryEntry(byte[] aCategory, byte[] aEntry, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aCategory, aEntry, _retval);
    }

    public int AddCategoryEntry(byte[] aCategory, byte[] aEntry, byte[] aValue, int aPersist, int aReplace, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aCategory, aEntry, aValue, aPersist, aReplace, _retval);
    }

    public int DeleteCategoryEntry(byte[] aCategory, byte[] aEntry, int aPersist) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aCategory, aEntry, aPersist);
    }

    public int DeleteCategory(byte[] aCategory) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aCategory);
    }

    public int EnumerateCategory(byte[] aCategory, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aCategory, _retval);
    }

    public int EnumerateCategories(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), _retval);
    }
}

