/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.win32.POINT;

public class IDropTargetHelper
extends IUnknown {
    public IDropTargetHelper(int address) {
        super(address);
    }

    public int DragEnter(int hwndTarget, int pDataObject, POINT ppt, int dwEffect) {
        return COM.VtblCall(3, this.address, hwndTarget, pDataObject, ppt, dwEffect);
    }

    public int DragLeave() {
        return COM.VtblCall(4, this.address);
    }

    public int DragOver(POINT ppt, int dwEffect) {
        return COM.VtblCall(5, this.address, ppt, dwEffect);
    }

    public int Drop(int pDataObject, POINT ppt, int dwEffect) {
        return COM.VtblCall(6, this.address, pDataObject, ppt, dwEffect);
    }

    public int Show(boolean fShow) {
        return COM.VtblCall(7, this.address, fShow);
    }
}

