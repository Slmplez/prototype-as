/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IPersist;

public class IPersistStorage
extends IPersist {
    public IPersistStorage(int address) {
        super(address);
    }

    public int IsDirty() {
        return COM.VtblCall(4, this.address);
    }

    public int InitNew(int pStg) {
        return COM.VtblCall(5, this.address, pStg);
    }

    public int Load(int pStg) {
        return COM.VtblCall(6, this.address, pStg);
    }

    public int Save(int pStgSave, boolean fSameAsLoad) {
        return COM.VtblCall(7, this.address, pStgSave, fSameAsLoad);
    }

    public int SaveCompleted(int pStgNew) {
        return COM.VtblCall(8, this.address, pStgNew);
    }

    public int HandsOffStorage() {
        return COM.VtblCall(9, this.address);
    }
}

