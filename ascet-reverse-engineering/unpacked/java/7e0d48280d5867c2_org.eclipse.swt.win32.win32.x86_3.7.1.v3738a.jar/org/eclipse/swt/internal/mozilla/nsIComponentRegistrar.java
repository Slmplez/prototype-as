/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIComponentRegistrar
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 12;
    public static final String NS_ICOMPONENTREGISTRAR_IID_STR = "2417cbfe-65ad-48a6-b4b6-eb84db174392";
    public static final nsID NS_ICOMPONENTREGISTRAR_IID = new nsID("2417cbfe-65ad-48a6-b4b6-eb84db174392");

    public nsIComponentRegistrar(int address) {
        super(address);
    }

    public int AutoRegister(int aSpec) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), aSpec);
    }

    public int AutoUnregister(int aSpec) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), aSpec);
    }

    public int RegisterFactory(nsID aClass, byte[] aClassName, byte[] aContractID, int aFactory) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), aClass, aClassName, aContractID, aFactory);
    }

    public int UnregisterFactory(nsID aClass, int aFactory) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aClass, aFactory);
    }

    public int RegisterFactoryLocation(nsID aClass, byte[] aClassName, byte[] aContractID, int aFile, byte[] aLoaderStr, byte[] aType) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aClass, aClassName, aContractID, aFile, aLoaderStr, aType);
    }

    public int UnregisterFactoryLocation(nsID aClass, int aFile) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aClass, aFile);
    }

    public int IsCIDRegistered(nsID aClass, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aClass, _retval);
    }

    public int IsContractIDRegistered(byte[] aContractID, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aContractID, _retval);
    }

    public int EnumerateCIDs(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), _retval);
    }

    public int EnumerateContractIDs(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), _retval);
    }

    public int CIDToContractID(nsID aClass, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 11, this.getAddress(), aClass, _retval);
    }

    public int ContractIDToCID(byte[] aContractID, int _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 12, this.getAddress(), aContractID, _retval);
    }
}

