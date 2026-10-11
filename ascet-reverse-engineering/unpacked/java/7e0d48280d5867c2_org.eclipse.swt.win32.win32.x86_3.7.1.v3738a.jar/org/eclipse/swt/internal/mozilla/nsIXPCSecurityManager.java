/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIXPCSecurityManager
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 4;
    public static final String NS_IXPCSECURITYMANAGER_IID_STR = "31431440-f1ce-11d2-985a-006008962422";
    public static final nsID NS_IXPCSECURITYMANAGER_IID = new nsID("31431440-f1ce-11d2-985a-006008962422");
    public static final int HOOK_CREATE_WRAPPER = 1;
    public static final int HOOK_CREATE_INSTANCE = 2;
    public static final int HOOK_GET_SERVICE = 4;
    public static final int HOOK_CALL_METHOD = 8;
    public static final int HOOK_GET_PROPERTY = 16;
    public static final int HOOK_SET_PROPERTY = 32;
    public static final int HOOK_ALL = 63;
    public static final int ACCESS_CALL_METHOD = 0;
    public static final int ACCESS_GET_PROPERTY = 1;
    public static final int ACCESS_SET_PROPERTY = 2;

    public nsIXPCSecurityManager(int address) {
        super(address);
    }

    public int CanCreateWrapper(int aJSContext, nsID aIID, int aObj, int aClassInfo, int[] aPolicy) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aJSContext, aIID, aObj, aClassInfo, aPolicy);
    }

    public int CanCreateInstance(int aJSContext, nsID aCID) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aJSContext, aCID);
    }

    public int CanGetService(int aJSContext, nsID aCID) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aJSContext, aCID);
    }

    public int CanAccess(int aAction, int aCallContext, int aJSContext, int aJSObject, int aObj, int aClassInfo, int aName, int[] aPolicy) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aAction, aCallContext, aJSContext, aJSObject, aObj, aClassInfo, aName, aPolicy);
    }
}

