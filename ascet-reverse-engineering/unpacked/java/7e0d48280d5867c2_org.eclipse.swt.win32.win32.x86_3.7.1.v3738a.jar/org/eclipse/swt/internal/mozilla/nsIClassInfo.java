/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIClassInfo
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 8;
    public static final String NS_ICLASSINFO_IID_STR = "986c11d0-f340-11d4-9075-0010a4e73d9a";
    public static final nsID NS_ICLASSINFO_IID = new nsID("986c11d0-f340-11d4-9075-0010a4e73d9a");
    public static final int SINGLETON = 1;
    public static final int THREADSAFE = 2;
    public static final int MAIN_THREAD_ONLY = 4;
    public static final int DOM_OBJECT = 8;
    public static final int PLUGIN_OBJECT = 16;
    public static final int EAGER_CLASSINFO = 32;
    public static final int CONTENT_NODE = 64;

    public nsIClassInfo(int address) {
        super(address);
    }

    public int GetInterfaces(int[] count, int[] array) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), count, array);
    }

    public int GetHelperForLanguage(int language, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), language, _retval);
    }

    public int GetContractID(int[] aContractID) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aContractID);
    }

    public int GetClassDescription(int[] aClassDescription) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aClassDescription);
    }

    public int GetClassID(int aClassID) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aClassID);
    }

    public int GetImplementationLanguage(int[] aImplementationLanguage) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aImplementationLanguage);
    }

    public int GetFlags(int[] aFlags) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aFlags);
    }

    public int GetClassIDNoAlloc(int aClassIDNoAlloc) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aClassIDNoAlloc);
    }
}

