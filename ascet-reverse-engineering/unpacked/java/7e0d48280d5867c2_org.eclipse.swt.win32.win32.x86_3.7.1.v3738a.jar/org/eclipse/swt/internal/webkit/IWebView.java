/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.webkit;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.win32.RECT;

public class IWebView
extends IUnknown {
    public IWebView(int address) {
        super(address);
    }

    public int canShowMIMEType(int mimeType, int[] canShow) {
        return COM.VtblCall(3, this.getAddress(), mimeType, canShow);
    }

    public int initWithFrame(RECT frame, int frameName, int groupName) {
        return COM.VtblCall(9, this.getAddress(), frame, frameName, groupName);
    }

    public int setUIDelegate(int delegate) {
        return COM.VtblCall(10, this.getAddress(), delegate);
    }

    public int setResourceLoadDelegate(int delegate) {
        return COM.VtblCall(12, this.getAddress(), delegate);
    }

    public int setDownloadDelegate(int delegate) {
        return COM.VtblCall(14, this.getAddress(), delegate);
    }

    public int setFrameLoadDelegate(int delegate) {
        return COM.VtblCall(16, this.getAddress(), delegate);
    }

    public int setPolicyDelegate(int delegate) {
        return COM.VtblCall(18, this.getAddress(), delegate);
    }

    public int mainFrame(int[] frame) {
        return COM.VtblCall(20, this.getAddress(), frame);
    }

    public int goBack(int[] succeeded) {
        return COM.VtblCall(24, this.getAddress(), succeeded);
    }

    public int goForward(int[] succeeded) {
        return COM.VtblCall(25, this.getAddress(), succeeded);
    }

    public int setCustomUserAgent(int valueString) {
        return COM.VtblCall(31, this.getAddress(), valueString);
    }

    public int setPreferences(int prefs) {
        return COM.VtblCall(41, this.getAddress(), prefs);
    }

    public int preferences(int[] prefs) {
        return COM.VtblCall(42, this.getAddress(), prefs);
    }

    public int setHostWindow(int window) {
        return COM.VtblCall(45, this.getAddress(), window);
    }

    public int hostWindow(int[] window) {
        return COM.VtblCall(46, this.getAddress(), window);
    }

    public int estimatedProgress(int estimatedProgress) {
        return COM.VtblCall(51, this.getAddress(), estimatedProgress);
    }
}

