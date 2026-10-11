/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.ole.win32.OLECMD;
import org.eclipse.swt.internal.ole.win32.OLECMDTEXT;

public class IOleCommandTarget
extends IUnknown {
    public IOleCommandTarget(int address) {
        super(address);
    }

    public int Exec(GUID pguidCmdGroup, int nCmdID, int nCmdExecOpt, int pvaIn, int pvaOut) {
        return COM.VtblCall(4, this.address, pguidCmdGroup, nCmdID, nCmdExecOpt, pvaIn, pvaOut);
    }

    public int QueryStatus(GUID pguidCmdGroup, int cCmds, OLECMD prgCmds, OLECMDTEXT pCmdText) {
        if (cCmds > 1) {
            return -2147024809;
        }
        return COM.VtblCall(3, this.address, pguidCmdGroup, cCmds, prgCmds, pCmdText);
    }
}

