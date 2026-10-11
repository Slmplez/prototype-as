/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIDirectoryServiceProvider;

public class nsIDirectoryServiceProvider2
extends nsIDirectoryServiceProvider {
    static final int LAST_METHOD_ID = nsIDirectoryServiceProvider.LAST_METHOD_ID + 1;
    public static final String NS_IDIRECTORYSERVICEPROVIDER2_IID_STRING = "2f977d4b-5485-11d4-87e2-0010a4e75ef2";
    public static final nsID NS_IDIRECTORYSERVICEPROVIDER2_IID = new nsID("2f977d4b-5485-11d4-87e2-0010a4e75ef2");

    public nsIDirectoryServiceProvider2(int address) {
        super(address);
    }

    public int GetFiles(byte[] prop, int[] _retval) {
        return XPCOM.VtblCall(nsIDirectoryServiceProvider.LAST_METHOD_ID + 1, this.getAddress(), prop, _retval);
    }
}

