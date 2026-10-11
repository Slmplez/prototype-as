/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebFrame
extends IUnknown {
    public IWebFrame(int address) {
        super(address);
    }

    public int loadRequest(int request) {
        return COM.VtblCall(8, this.getAddress(), request);
    }

    public int loadHTMLString(int string, int baseURL) {
        return COM.VtblCall(10, this.getAddress(), string, baseURL);
    }

    public int dataSource(int[] source) {
        return COM.VtblCall(13, this.getAddress(), source);
    }

    public int globalContext() {
        return COM.VtblCall(23, this.getAddress());
    }
}

