/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;

public class nsISupports {
    static final boolean IsSolaris;
    static final int FIRST_METHOD_ID;
    static final int LAST_METHOD_ID;
    public static final String NS_ISUPPORTS_IID_STR = "00000000-0000-0000-c000-000000000046";
    public static final nsID NS_ISUPPORTS_IID;
    int address;

    static {
        String osName = System.getProperty("os.name").toLowerCase();
        IsSolaris = osName.startsWith("sunos") || osName.startsWith("solaris");
        FIRST_METHOD_ID = IsSolaris ? 2 : 0;
        LAST_METHOD_ID = FIRST_METHOD_ID + 2;
        NS_ISUPPORTS_IID = new nsID(NS_ISUPPORTS_IID_STR);
    }

    public nsISupports(int address) {
        this.address = address;
    }

    public int getAddress() {
        return this.address;
    }

    public int QueryInterface(nsID uuid, int[] result) {
        return XPCOM.VtblCall(FIRST_METHOD_ID, this.getAddress(), uuid, result);
    }

    public int AddRef() {
        return XPCOM.VtblCall(FIRST_METHOD_ID + 1, this.getAddress());
    }

    public int Release() {
        return XPCOM.VtblCall(FIRST_METHOD_ID + 2, this.getAddress());
    }
}

