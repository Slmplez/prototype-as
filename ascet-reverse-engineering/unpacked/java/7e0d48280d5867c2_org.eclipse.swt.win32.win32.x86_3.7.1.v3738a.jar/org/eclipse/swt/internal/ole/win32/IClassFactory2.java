/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.ole.win32.LICINFO;

public class IClassFactory2
extends IUnknown {
    public IClassFactory2(int address) {
        super(address);
    }

    public int CreateInstanceLic(int pUnkOuter, int pUnkReserved, GUID riid, int bstrKey, int[] ppvObject) {
        return COM.VtblCall(7, this.address, pUnkOuter, pUnkReserved, riid, bstrKey, ppvObject);
    }

    public int GetLicInfo(LICINFO licInfo) {
        return COM.VtblCall(5, this.address, licInfo);
    }

    public int RequestLicKey(int dwReserved, int[] pBstrKey) {
        return COM.VtblCall(6, this.address, dwReserved, pBstrKey);
    }
}

