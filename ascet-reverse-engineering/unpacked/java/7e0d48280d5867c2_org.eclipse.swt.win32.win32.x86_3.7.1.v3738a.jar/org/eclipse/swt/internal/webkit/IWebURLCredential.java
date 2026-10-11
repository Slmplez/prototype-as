/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebURLCredential
extends IUnknown {
    public IWebURLCredential(int address) {
        super(address);
    }

    public int hasPassword(int[] result) {
        return COM.VtblCall(3, this.getAddress(), result);
    }

    public int initWithUser(int user, int password, int persistence) {
        return COM.VtblCall(4, this.getAddress(), user, password, persistence);
    }

    public int password(int[] password) {
        return COM.VtblCall(5, this.getAddress(), password);
    }

    public int user(int[] result) {
        return COM.VtblCall(7, this.getAddress(), result);
    }
}

