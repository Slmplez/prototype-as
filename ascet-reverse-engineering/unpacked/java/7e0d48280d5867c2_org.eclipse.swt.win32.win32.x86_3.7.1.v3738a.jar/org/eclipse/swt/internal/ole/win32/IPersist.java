/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IPersist
extends IUnknown {
    public IPersist(int address) {
        super(address);
    }

    public int GetClassID(GUID pClassID) {
        return COM.VtblCall(3, this.address, pClassID);
    }
}

