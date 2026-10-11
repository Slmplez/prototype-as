/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebURLAuthenticationChallenge
extends IUnknown {
    public IWebURLAuthenticationChallenge(int address) {
        super(address);
    }

    public int previousFailureCount(int[] result) {
        return COM.VtblCall(7, this.getAddress(), result);
    }

    public int proposedCredential(int[] result) {
        return COM.VtblCall(8, this.getAddress(), result);
    }

    public int protectionSpace(int[] result) {
        return COM.VtblCall(9, this.getAddress(), result);
    }

    public int sender(int[] sender) {
        return COM.VtblCall(10, this.getAddress(), sender);
    }
}

