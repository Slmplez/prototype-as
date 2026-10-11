/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebDataSource
extends IUnknown {
    public IWebDataSource(int address) {
        super(address);
    }

    public int representation(int[] rep) {
        return COM.VtblCall(5, this.getAddress(), rep);
    }

    public int webFrame(int[] frame) {
        return COM.VtblCall(6, this.getAddress(), frame);
    }

    public int request(int[] request) {
        return COM.VtblCall(8, this.getAddress(), request);
    }

    public int pageTitle(int[] title) {
        return COM.VtblCall(12, this.getAddress(), title);
    }
}

