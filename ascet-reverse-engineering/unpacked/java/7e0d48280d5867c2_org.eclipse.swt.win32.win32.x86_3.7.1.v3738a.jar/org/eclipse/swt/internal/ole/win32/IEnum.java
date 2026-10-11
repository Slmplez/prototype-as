/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IEnum
extends IUnknown {
    public IEnum(int address) {
        super(address);
    }

    public int Clone(int[] ppenum) {
        return COM.VtblCall(6, this.address, ppenum);
    }

    public int Next(int celt, int rgelt, int[] pceltFetched) {
        return COM.VtblCall(3, this.address, celt, rgelt, pceltFetched);
    }

    public int Reset() {
        return COM.VtblCall(5, this.address);
    }

    public int Skip(int celt) {
        return COM.VtblCall(4, this.address, celt);
    }
}

