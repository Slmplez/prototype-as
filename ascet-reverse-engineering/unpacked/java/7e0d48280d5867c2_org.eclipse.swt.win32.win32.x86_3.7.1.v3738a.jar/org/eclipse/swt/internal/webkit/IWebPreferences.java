/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;

public class IWebPreferences
extends IUnknown {
    public IWebPreferences(int address) {
        super(address);
    }

    public int initWithIdentifier(int identifier, int[] preferences) {
        return COM.VtblCall(4, this.getAddress(), identifier, preferences);
    }

    public int setJavaEnabled(int enabled) {
        return COM.VtblCall(33, this.getAddress(), enabled);
    }

    public int setJavaScriptEnabled(int enabled) {
        return COM.VtblCall(35, this.getAddress(), enabled);
    }

    public int setJavaScriptCanOpenWindowsAutomatically(int enabled) {
        return COM.VtblCall(37, this.getAddress(), enabled);
    }

    public int setTabsToLinks(int enabled) {
        return COM.VtblCall(52, this.getAddress(), enabled);
    }

    public int setFontSmoothing(int smoothingType) {
        return COM.VtblCall(63, this.getAddress(), smoothingType);
    }
}

