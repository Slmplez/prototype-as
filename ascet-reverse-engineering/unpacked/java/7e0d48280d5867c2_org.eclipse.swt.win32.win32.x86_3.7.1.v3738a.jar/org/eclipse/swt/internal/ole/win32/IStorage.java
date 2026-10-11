/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IStorage
extends IUnknown {
    public IStorage(int address) {
        super(address);
    }

    public int Commit(int grfCommitFlag) {
        return COM.VtblCall(9, this.address, grfCommitFlag);
    }

    public int CopyTo(int ciidExclude, GUID rgiidExclude, String[] snbExclude, int pstgDest) {
        if (snbExclude != null) {
            return -2147024809;
        }
        return COM.VtblCall(7, this.address, ciidExclude, rgiidExclude, 0, pstgDest);
    }

    public int CreateStorage(String pwcsName, int grfMode, int reserved1, int reserved2, int[] ppStg) {
        char[] buffer = null;
        if (pwcsName != null) {
            buffer = (String.valueOf(pwcsName) + "\u0000").toCharArray();
        }
        return COM.VtblCall(5, this.address, buffer, grfMode, reserved1, reserved2, ppStg);
    }

    public int CreateStream(String pwcsName, int grfMode, int reserved1, int reserved2, int[] ppStm) {
        char[] buffer = null;
        if (pwcsName != null) {
            buffer = (String.valueOf(pwcsName) + "\u0000").toCharArray();
        }
        return COM.VtblCall(3, this.address, buffer, grfMode, reserved1, reserved2, ppStm);
    }

    public int DestroyElement(String pwcsName) {
        char[] buffer = null;
        if (pwcsName != null) {
            buffer = (String.valueOf(pwcsName) + "\u0000").toCharArray();
        }
        return COM.VtblCall(12, this.address, buffer);
    }

    public int EnumElements(int reserved1, int reserved2, int reserved3, int[] ppenum) {
        return COM.VtblCall(11, this.address, reserved1, reserved2, reserved3, ppenum);
    }

    public int OpenStorage(String pwcsName, int pstgPriority, int grfMode, String[] snbExclude, int reserved, int[] ppStg) {
        char[] buffer = null;
        if (pwcsName != null) {
            buffer = (String.valueOf(pwcsName) + "\u0000").toCharArray();
        }
        if (snbExclude != null) {
            return -2147024809;
        }
        return COM.VtblCall(6, this.address, buffer, pstgPriority, grfMode, 0, reserved, ppStg);
    }

    public int OpenStream(String pwcsName, int reserved1, int grfMode, int reserved2, int[] ppStm) {
        char[] buffer = null;
        if (pwcsName != null) {
            buffer = (String.valueOf(pwcsName) + "\u0000").toCharArray();
        }
        return COM.VtblCall(4, this.address, buffer, reserved1, grfMode, reserved2, ppStm);
    }

    public int RenameElement(String pwcsOldName, String pwcsNewName) {
        char[] buffer1 = null;
        if (pwcsOldName != null) {
            buffer1 = (String.valueOf(pwcsOldName) + "\u0000").toCharArray();
        }
        char[] buffer2 = null;
        if (pwcsNewName != null) {
            buffer2 = (String.valueOf(pwcsNewName) + "\u0000").toCharArray();
        }
        return COM.VtblCall(13, this.address, buffer1, buffer2);
    }

    public int Revert() {
        return COM.VtblCall(10, this.address);
    }

    public int SetClass(GUID clsid) {
        return COM.VtblCall(15, this.address, clsid);
    }
}

