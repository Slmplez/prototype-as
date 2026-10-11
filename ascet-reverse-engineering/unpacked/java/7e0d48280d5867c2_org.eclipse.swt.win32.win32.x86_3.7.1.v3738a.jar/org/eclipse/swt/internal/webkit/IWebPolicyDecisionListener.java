/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebPolicyDecisionListener
extends IUnknown {
    public IWebPolicyDecisionListener(int address) {
        super(address);
    }

    public int use() {
        return COM.VtblCall(3, this.getAddress());
    }

    public int download() {
        return COM.VtblCall(4, this.getAddress());
    }

    public int ignore() {
        return COM.VtblCall(5, this.getAddress());
    }
}

