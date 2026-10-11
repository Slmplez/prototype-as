/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IFont
extends IUnknown {
    public IFont(int address) {
        super(address);
    }

    public int get_hFont(int[] phfont) {
        return COM.VtblCall(3, this.address, phfont);
    }
}

