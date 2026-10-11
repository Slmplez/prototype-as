/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebMutableURLRequestPrivate
extends IUnknown {
    public IWebMutableURLRequestPrivate(int address) {
        super(address);
    }

    public int cfRequest() {
        return COM.VtblCall(4, this.getAddress());
    }
}

