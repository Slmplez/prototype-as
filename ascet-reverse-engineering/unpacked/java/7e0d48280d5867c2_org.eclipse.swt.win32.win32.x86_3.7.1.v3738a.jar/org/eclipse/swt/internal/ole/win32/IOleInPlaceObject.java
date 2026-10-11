/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IOleWindow;
import org.eclipse.swt.internal.win32.RECT;

public class IOleInPlaceObject
extends IOleWindow {
    public IOleInPlaceObject(int address) {
        super(address);
    }

    public int InPlaceDeactivate() {
        return COM.VtblCall(5, this.address);
    }

    public int UIDeactivate() {
        return COM.VtblCall(6, this.address);
    }

    public int SetObjectRects(RECT lprcPosRect, RECT lprcClipRect) {
        return COM.VtblCall(7, this.address, lprcPosRect, lprcClipRect);
    }

    public int ReactivateAndUndo() {
        return COM.VtblCall(8, this.address);
    }
}

