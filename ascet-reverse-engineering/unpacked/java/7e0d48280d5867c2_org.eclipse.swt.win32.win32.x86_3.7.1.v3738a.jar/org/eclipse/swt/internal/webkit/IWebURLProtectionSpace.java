/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebURLProtectionSpace
extends IUnknown {
    public IWebURLProtectionSpace(int address) {
        super(address);
    }

    public int host(int[] result) {
        return COM.VtblCall(4, this.getAddress(), result);
    }

    public int port(int[] result) {
        return COM.VtblCall(8, this.getAddress(), result);
    }

    public int realm(int[] result) {
        return COM.VtblCall(11, this.getAddress(), result);
    }
}

