/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.browser;

import org.eclipse.ui.PartInitException;
import org.eclipse.ui.browser.IWebBrowser;
import org.eclipse.ui.browser.IWorkbenchBrowserSupport;

public abstract class AbstractWorkbenchBrowserSupport
implements IWorkbenchBrowserSupport {
    private static final String SHARED_EXTERNAL_BROWSER_ID = "org.eclipse.ui.externalBrowser";

    public IWebBrowser getExternalBrowser() throws PartInitException {
        return this.createBrowser(128, SHARED_EXTERNAL_BROWSER_ID, null, null);
    }

    public boolean isInternalWebBrowserAvailable() {
        return false;
    }
}

