/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebURLResponse
extends IUnknown {
    public IWebURLResponse(int address) {
        super(address);
    }

    public int expectedContentLength(long[] result) {
        return COM.VtblCall(3, this.getAddress(), result);
    }

    public int URL(int[] result) {
        return COM.VtblCall(8, this.getAddress(), result);
    }
}

