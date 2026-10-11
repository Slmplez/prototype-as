/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.DVTARGETDEVICE;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.win32.SIZE;

public class IViewObject2
extends IUnknown {
    public IViewObject2(int address) {
        super(address);
    }

    public int GetExtent(int dwAspect, int lindex, DVTARGETDEVICE ptd, SIZE lpsizel) {
        return COM.VtblCall(9, this.address, dwAspect, lindex, ptd, lpsizel);
    }

    public int SetAdvise(int dwAspects, int dwAdvf, int pIAdviseSink) {
        return COM.VtblCall(7, this.address, dwAspects, dwAdvf, pIAdviseSink);
    }
}

