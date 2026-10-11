/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IConnectionPoint
extends IUnknown {
    public IConnectionPoint(int address) {
        super(address);
    }

    public int Advise(int pUnk, int[] pdwCookie) {
        return COM.VtblCall(5, this.address, pUnk, pdwCookie);
    }

    public int Unadvise(int dwCookie) {
        return COM.VtblCall(6, this.address, dwCookie);
    }
}

