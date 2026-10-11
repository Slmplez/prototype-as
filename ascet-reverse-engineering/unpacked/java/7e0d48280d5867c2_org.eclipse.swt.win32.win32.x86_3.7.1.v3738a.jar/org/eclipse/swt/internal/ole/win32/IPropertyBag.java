/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IPropertyBag
extends IUnknown {
    public IPropertyBag(int address) {
        super(address);
    }

    public int Read(int pszPropName, int pVar, int[] pErrorLog) {
        return COM.VtblCall(3, this.getAddress(), pszPropName, pVar, pErrorLog);
    }
}

