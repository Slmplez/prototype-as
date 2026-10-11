/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebError
extends IUnknown {
    public IWebError(int address) {
        super(address);
    }

    public int code(int[] result) {
        return COM.VtblCall(4, this.getAddress(), result);
    }

    public int localizedDescription(int[] result) {
        return COM.VtblCall(6, this.getAddress(), result);
    }

    public int failingURL(int[] result) {
        return COM.VtblCall(12, this.getAddress(), result);
    }
}

