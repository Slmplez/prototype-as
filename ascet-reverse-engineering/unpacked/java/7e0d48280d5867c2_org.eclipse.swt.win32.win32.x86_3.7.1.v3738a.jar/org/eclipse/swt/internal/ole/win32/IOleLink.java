/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IOleLink
extends IUnknown {
    public IOleLink(int address) {
        super(address);
    }

    public int BindIfRunning() {
        return COM.VtblCall(10, this.address);
    }

    public int GetSourceMoniker(int[] ppmk) {
        return COM.VtblCall(6, this.address, ppmk);
    }
}

