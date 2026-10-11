/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebURLRequest
extends IUnknown {
    public IWebURLRequest(int address) {
        super(address);
    }

    public int HTTPMethod(int[] result) {
        return COM.VtblCall(8, this.getAddress(), result);
    }

    public int URL(int[] result) {
        return COM.VtblCall(13, this.getAddress(), result);
    }

    public int mutableCopy(int[] result) {
        return COM.VtblCall(16, this.getAddress(), result);
    }
}

