/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IDragSourceHelper;

public class IDragSourceHelper2
extends IDragSourceHelper {
    public IDragSourceHelper2(int address) {
        super(address);
    }

    public int SetFlags(int dwFlags) {
        return COM.VtblCall(5, this.address, dwFlags);
    }
}

