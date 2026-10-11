/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.GUID;

public class IUnknown {
    int address;

    public IUnknown(int address) {
        this.address = address;
    }

    public int AddRef() {
        return COM.VtblCall(1, this.address);
    }

    public int getAddress() {
        return this.address;
    }

    public int QueryInterface(GUID riid, int[] ppvObject) {
        return COM.VtblCall(0, this.address, riid, ppvObject);
    }

    public int Release() {
        return COM.VtblCall(2, this.address);
    }
}

