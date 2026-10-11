/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.win32.RECT;

public class IOleDocumentView
extends IUnknown {
    public IOleDocumentView(int address) {
        super(address);
    }

    public int SetInPlaceSite(int pIPSite) {
        return COM.VtblCall(3, this.address, pIPSite);
    }

    public int SetRect(RECT prcView) {
        return COM.VtblCall(6, this.address, prcView);
    }

    public int Show(int fShow) {
        return COM.VtblCall(9, this.address, fShow);
    }

    public int UIActivate(int fUIActivate) {
        return COM.VtblCall(10, this.address, fUIActivate);
    }
}

