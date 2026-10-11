/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IConnectionPointContainer
extends IUnknown {
    public IConnectionPointContainer(int address) {
        super(address);
    }

    public int FindConnectionPoint(GUID riid, int[] ppCP) {
        return COM.VtblCall(4, this.address, riid, ppCP);
    }
}

