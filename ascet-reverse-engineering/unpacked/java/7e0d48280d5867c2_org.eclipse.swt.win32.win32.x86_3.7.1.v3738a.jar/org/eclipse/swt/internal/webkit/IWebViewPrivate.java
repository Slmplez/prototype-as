/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebViewPrivate
extends IUnknown {
    public IWebViewPrivate(int address) {
        super(address);
    }

    public int viewWindow(int[] window) {
        return COM.VtblCall(5, this.getAddress(), window);
    }

    public int setInitialFocus(int forwardEnabled) {
        return COM.VtblCall(28, this.getAddress(), forwardEnabled);
    }

    public int shouldClose(int[] result) {
        return COM.VtblCall(33, this.getAddress(), result);
    }
}

