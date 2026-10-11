/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebOpenPanelResultListener
extends IUnknown {
    public IWebOpenPanelResultListener(int address) {
        super(address);
    }

    public int chooseFilename(int fileName) {
        return COM.VtblCall(3, this.getAddress(), fileName);
    }

    public int cancel() {
        return COM.VtblCall(4, this.getAddress());
    }
}

