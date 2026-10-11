/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebDocumentRepresentation
extends IUnknown {
    public IWebDocumentRepresentation(int address) {
        super(address);
    }

    public int documentSource(int[] source) {
        return COM.VtblCall(8, this.getAddress(), source);
    }
}

