/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.CAUUID;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class ISpecifyPropertyPages
extends IUnknown {
    public ISpecifyPropertyPages(int address) {
        super(address);
    }

    public int GetPages(CAUUID pPages) {
        return COM.VtblCall(3, this.address, pPages);
    }
}

