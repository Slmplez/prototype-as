/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIObserverService
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 4;
    public static final String NS_IOBSERVERSERVICE_IID_STR = "d07f5192-e3d1-11d2-8acd-00105a1b8860";
    public static final nsID NS_IOBSERVERSERVICE_IID = new nsID("d07f5192-e3d1-11d2-8acd-00105a1b8860");

    public nsIObserverService(int address) {
        super(address);
    }

    public int AddObserver(int anObserver, byte[] aTopic, int ownsWeak) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), anObserver, aTopic, ownsWeak);
    }

    public int RemoveObserver(int anObserver, byte[] aTopic) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), anObserver, aTopic);
    }

    public int NotifyObservers(int aSubject, byte[] aTopic, char[] someData) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aSubject, aTopic, someData);
    }

    public int EnumerateObservers(byte[] aTopic, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aTopic, _retval);
    }
}

