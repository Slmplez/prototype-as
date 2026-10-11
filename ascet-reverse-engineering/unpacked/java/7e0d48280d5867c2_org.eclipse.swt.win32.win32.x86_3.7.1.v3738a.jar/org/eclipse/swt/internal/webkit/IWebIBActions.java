/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebIBActions
extends IUnknown {
    public IWebIBActions(int address) {
        super(address);
    }

    public int stopLoading(int sender) {
        return COM.VtblCall(4, this.getAddress(), sender);
    }

    public int reload(int sender) {
        return COM.VtblCall(5, this.getAddress(), sender);
    }

    public int canGoBack(int sender, int[] result) {
        return COM.VtblCall(6, this.getAddress(), sender, result);
    }

    public int canGoForward(int sender, int[] result) {
        return COM.VtblCall(8, this.getAddress(), sender, result);
    }
}

