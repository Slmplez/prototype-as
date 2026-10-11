/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIServiceManager
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 4;
    public static final String NS_ISERVICEMANAGER_IID_STR = "8bb35ed9-e332-462d-9155-4a002ab5c958";
    public static final nsID NS_ISERVICEMANAGER_IID = new nsID("8bb35ed9-e332-462d-9155-4a002ab5c958");

    public nsIServiceManager(int address) {
        super(address);
    }

    public int GetService(nsID aClass, nsID aIID, int[] result) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aClass, aIID, result);
    }

    public int GetServiceByContractID(byte[] aContractID, nsID aIID, int[] result) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aContractID, aIID, result);
    }

    public int IsServiceInstantiated(nsID aClass, nsID aIID, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aClass, aIID, _retval);
    }

    public int IsServiceInstantiatedByContractID(byte[] aContractID, nsID aIID, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aContractID, aIID, _retval);
    }
}

