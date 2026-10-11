/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IPersist;

public class IPersistStreamInit
extends IPersist {
    public IPersistStreamInit(int address) {
        super(address);
    }

    public int Load(int pStm) {
        return COM.VtblCall(5, this.address, pStm);
    }

    public int InitNew() {
        return COM.VtblCall(8, this.address);
    }
}

