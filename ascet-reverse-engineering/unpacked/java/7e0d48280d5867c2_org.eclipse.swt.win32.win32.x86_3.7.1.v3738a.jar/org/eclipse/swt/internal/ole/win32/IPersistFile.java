/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IPersist;

public class IPersistFile
extends IPersist {
    public IPersistFile(int address) {
        super(address);
    }

    public int IsDirty() {
        return COM.VtblCall(4, this.address);
    }

    public int Load(int pszFileName, int dwMode) {
        return COM.VtblCall(5, this.address, pszFileName, dwMode);
    }

    public int Save(int pszFileName, boolean fRemember) {
        return COM.VtblCall(6, this.address, pszFileName, fRemember);
    }

    public int SaveCompleted(int pszFileName) {
        return COM.VtblCall(7, this.address, pszFileName);
    }

    public int GetCurFile(int[] ppszFileName) {
        return COM.VtblCall(8, this.address, ppszFileName);
    }
}

