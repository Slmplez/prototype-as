/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebDownload
extends IUnknown {
    public IWebDownload(int address) {
        super(address);
    }

    public int cancel() {
        return COM.VtblCall(4, this.getAddress());
    }

    public int setDeletesFileUponFailure(int deletesFileUponFailure) {
        return COM.VtblCall(12, this.getAddress(), deletesFileUponFailure);
    }

    public int setDestination(int path, int allowOverwrite) {
        return COM.VtblCall(13, this.getAddress(), path, allowOverwrite);
    }
}

