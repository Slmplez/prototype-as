/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IOleDocument
extends IUnknown {
    public IOleDocument(int address) {
        super(address);
    }

    public int CreateView(int pIPSite, int pstm, int dwReserved, int[] ppView) {
        return COM.VtblCall(3, this.address, pIPSite, pstm, dwReserved, ppView);
    }
}

