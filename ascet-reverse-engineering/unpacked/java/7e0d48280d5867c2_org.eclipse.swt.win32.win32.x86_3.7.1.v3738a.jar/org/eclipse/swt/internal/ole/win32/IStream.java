/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IStream
extends IUnknown {
    public IStream(int address) {
        super(address);
    }

    public int Clone(int[] ppstm) {
        return COM.VtblCall(13, this.address, ppstm);
    }

    public int Commit(int grfCommitFlags) {
        return COM.VtblCall(8, this.address, grfCommitFlags);
    }

    public int Read(int pv, int cb, int[] pcbWritten) {
        return COM.VtblCall(3, this.address, pv, cb, pcbWritten);
    }

    public int Revert() {
        return COM.VtblCall(9, this.address);
    }

    public int Write(int pv, int cb, int[] pcbWritten) {
        return COM.VtblCall(4, this.address, pv, cb, pcbWritten);
    }
}

