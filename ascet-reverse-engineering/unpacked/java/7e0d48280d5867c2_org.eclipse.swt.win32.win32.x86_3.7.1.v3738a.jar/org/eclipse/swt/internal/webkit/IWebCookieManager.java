/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebCookieManager
extends IUnknown {
    public IWebCookieManager(int address) {
        super(address);
    }

    public int cookieStorage(int[] storage) {
        return COM.VtblCall(3, this.getAddress(), storage);
    }
}

