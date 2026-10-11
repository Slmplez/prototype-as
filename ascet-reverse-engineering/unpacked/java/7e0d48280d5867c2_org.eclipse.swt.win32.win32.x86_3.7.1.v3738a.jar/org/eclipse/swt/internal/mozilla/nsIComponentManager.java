/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIComponentManager
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 4;
    public static final String NS_ICOMPONENTMANAGER_IID_STR = "a88e5a60-205a-4bb1-94e1-2628daf51eae";
    public static final nsID NS_ICOMPONENTMANAGER_IID = new nsID("a88e5a60-205a-4bb1-94e1-2628daf51eae");

    public nsIComponentManager(int address) {
        super(address);
    }

    public int GetClassObject(nsID aClass, nsID aIID, int[] result) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aClass, aIID, result);
    }

    public int GetClassObjectByContractID(byte[] aContractID, nsID aIID, int[] result) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aContractID, aIID, result);
    }

    public int CreateInstance(nsID aClass, int aDelegate, nsID aIID, int[] result) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aClass, aDelegate, aIID, result);
    }

    public int CreateInstanceByContractID(byte[] aContractID, int aDelegate, nsID aIID, int[] result) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aContractID, aDelegate, aIID, result);
    }
}

