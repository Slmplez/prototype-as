/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.browser;

import org.eclipse.ui.PartInitException;
import org.eclipse.ui.browser.IWebBrowser;

public interface IWorkbenchBrowserSupport {
    public static final int LOCATION_BAR = 2;
    public static final int NAVIGATION_BAR = 4;
    public static final int STATUS = 8;
    public static final int PERSISTENT = 16;
    public static final int AS_EDITOR = 32;
    public static final int AS_VIEW = 64;
    public static final int AS_EXTERNAL = 128;

    public IWebBrowser createBrowser(int var1, String var2, String var3, String var4) throws PartInitException;

    public IWebBrowser createBrowser(String var1) throws PartInitException;

    public IWebBrowser getExternalBrowser() throws PartInitException;

    public boolean isInternalWebBrowserAvailable();
}

