/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebURLAuthenticationChallengeSender
extends IUnknown {
    public IWebURLAuthenticationChallengeSender(int address) {
        super(address);
    }

    public int cancelAuthenticationChallenge(int challenge) {
        return COM.VtblCall(3, this.getAddress(), challenge);
    }

    public int useCredential(int credential, int challenge) {
        return COM.VtblCall(5, this.getAddress(), credential, challenge);
    }
}

