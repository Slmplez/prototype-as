/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIRequest
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 10;
    public static final String NS_IREQUEST_IID_STR = "ef6bfbd2-fd46-48d8-96b7-9f8f0fd387fe";
    public static final nsID NS_IREQUEST_IID = new nsID("ef6bfbd2-fd46-48d8-96b7-9f8f0fd387fe");
    public static final int LOAD_NORMAL = 0;
    public static final int LOAD_BACKGROUND = 1;
    public static final int INHIBIT_CACHING = 128;
    public static final int INHIBIT_PERSISTENT_CACHING = 256;
    public static final int LOAD_BYPASS_CACHE = 512;
    public static final int LOAD_FROM_CACHE = 1024;
    public static final int VALIDATE_ALWAYS = 2048;
    public static final int VALIDATE_NEVER = 4096;
    public static final int VALIDATE_ONCE_PER_SESSION = 8192;

    public nsIRequest(int address) {
        super(address);
    }

    public int GetName(int aName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aName);
    }

    public int IsPending(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), _retval);
    }

    public int GetStatus(int[] aStatus) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aStatus);
    }

    public int Cancel(int aStatus) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aStatus);
    }

    public int Suspend() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress());
    }

    public int Resume() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress());
    }

    public int GetLoadGroup(int[] aLoadGroup) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aLoadGroup);
    }

    public int SetLoadGroup(int aLoadGroup) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aLoadGroup);
    }

    public int GetLoadFlags(int[] aLoadFlags) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aLoadFlags);
    }

    public int SetLoadFlags(int aLoadFlags) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), aLoadFlags);
    }
}

