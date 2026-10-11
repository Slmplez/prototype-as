/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIMemory
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 5;
    public static final String NS_IMEMORY_IID_STR = "59e7e77a-38e4-11d4-8cf5-0060b0fc14a3";
    public static final nsID NS_IMEMORY_IID = new nsID("59e7e77a-38e4-11d4-8cf5-0060b0fc14a3");

    public nsIMemory(int address) {
        super(address);
    }

    public int Alloc(int size) {
        return XPCOM.nsIMemory_Alloc(this.getAddress(), size);
    }

    public int Realloc(int ptr, int newSize) {
        return XPCOM.nsIMemory_Realloc(this.getAddress(), ptr, newSize);
    }

    public int Free(int ptr) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), ptr);
    }

    public int HeapMinimize(int immediate) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), immediate);
    }

    public int IsLowMemory(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), _retval);
    }
}

