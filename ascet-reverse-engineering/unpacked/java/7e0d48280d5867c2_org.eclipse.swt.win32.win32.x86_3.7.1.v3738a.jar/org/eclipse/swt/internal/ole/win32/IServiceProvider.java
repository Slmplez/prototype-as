/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IServiceProvider
extends IUnknown {
    public IServiceProvider(int address) {
        super(address);
    }

    public int QueryService(GUID iid1, GUID iid2, int[] ppvObject) {
        return COM.VtblCall(3, this.address, iid1, iid2, ppvObject);
    }
}

