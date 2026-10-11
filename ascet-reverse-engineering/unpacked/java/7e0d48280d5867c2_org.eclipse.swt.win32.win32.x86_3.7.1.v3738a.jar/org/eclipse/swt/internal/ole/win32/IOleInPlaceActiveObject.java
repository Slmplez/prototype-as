/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IOleWindow;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.RECT;

public class IOleInPlaceActiveObject
extends IOleWindow {
    public IOleInPlaceActiveObject(int address) {
        super(address);
    }

    public int TranslateAccelerator(MSG lpmsg) {
        return COM.VtblCall(5, this.address, lpmsg);
    }

    public void OnFrameWindowActivate(boolean fActivate) {
        COM.VtblCall(6, this.getAddress(), fActivate);
    }

    public void OnDocWindowActivate(boolean fActivate) {
        COM.VtblCall(7, this.getAddress(), fActivate);
    }

    public int ResizeBorder(RECT prcBorder, int pUIWindow, boolean fFrameWindow) {
        return COM.VtblCall(8, this.address, prcBorder, pUIWindow, fFrameWindow);
    }
}

