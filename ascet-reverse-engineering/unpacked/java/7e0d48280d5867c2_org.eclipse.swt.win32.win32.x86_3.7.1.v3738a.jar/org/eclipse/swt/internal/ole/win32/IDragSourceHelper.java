/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.SHDRAGIMAGE;

public class IDragSourceHelper
extends IUnknown {
    public IDragSourceHelper(int address) {
        super(address);
    }

    public int InitializeFromBitmap(SHDRAGIMAGE pshdi, int pDataObject) {
        return COM.VtblCall(3, this.address, pshdi, pDataObject);
    }

    public int InitializeFromWindow(int hwnd, POINT ppt, int pDataObject) {
        return COM.VtblCall(4, this.address, hwnd, ppt, pDataObject);
    }
}

