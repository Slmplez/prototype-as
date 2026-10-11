/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.FORMATETC;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.ole.win32.STGMEDIUM;

public class IDataObject
extends IUnknown {
    public IDataObject(int address) {
        super(address);
    }

    public int EnumFormatEtc(int dwDirection, int[] ppenumFormatetc) {
        return COM.VtblCall(8, this.address, dwDirection, ppenumFormatetc);
    }

    public int GetData(FORMATETC pFormatetc, STGMEDIUM pmedium) {
        return COM.VtblCall(3, this.address, pFormatetc, pmedium);
    }

    public int GetDataHere(FORMATETC pFormatetc, STGMEDIUM pmedium) {
        return COM.VtblCall(4, this.address, pFormatetc, pmedium);
    }

    public int QueryGetData(FORMATETC pFormatetc) {
        return COM.VtblCall(5, this.address, pFormatetc);
    }

    public int SetData(FORMATETC pFormatetc, STGMEDIUM pmedium, boolean fRelease) {
        return COM.VtblCall(7, this.address, pFormatetc, pmedium, fRelease);
    }
}

